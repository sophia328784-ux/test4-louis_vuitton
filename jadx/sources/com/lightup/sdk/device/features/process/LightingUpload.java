package com.lightup.sdk.device.features.process;

import com.lightup.sdk.device.SpecificProperties;
import com.lightup.sdk.device.ble.scanner.listeners.DataUploadListener;
import com.lightup.sdk.device.devicemanagement.BLEDevice;
import com.lightup.sdk.device.enums.DataUploadError;
import com.lightup.sdk.device.enums.DeviceState;
import com.lightup.sdk.device.messages.MessageBuilder;
import com.lightup.sdk.device.messages.MessageInfo;
import com.lightup.sdk.device.model.device.BLEDeviceStateListener;
import com.lightup.sdk.device.model.device.DeviceMessage;
import com.lightup.sdk.device.model.device.PriorityMode;
import com.lightup.sdk.device.utils.communication.ByteUtils;
import java.util.Arrays;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
import java.util.zip.CRC32;

/* JADX INFO: loaded from: classes2.dex */
public class LightingUpload extends ProcessFeature {
    private static final boolean DEBUG = false;
    private static final String TAG = "LightingUpload";
    private int checksum;
    private DataUploadListener dataUploadListener;
    private Thread deadlineThread;
    private BLEDevice device;
    private final Lock lock;
    private DeviceMessage msgToSend;
    private int nbPages;
    private int pageSize;
    private final Condition stepEvent;
    private boolean updateComplete;
    private byte[] uploadPayload;

    public LightingUpload(BLEDevice bLEDevice, byte[] bArr, int i2, DataUploadListener dataUploadListener) {
        super(bLEDevice);
        this.updateComplete = false;
        ReentrantLock reentrantLock = new ReentrantLock();
        this.lock = reentrantLock;
        this.stepEvent = reentrantLock.newCondition();
        this.device = bLEDevice;
        this.uploadPayload = bArr;
        this.dataUploadListener = dataUploadListener;
        this.pageSize = i2;
        this.nbPages = bArr.length / i2;
        CRC32 crc32 = new CRC32();
        byte[] bArr2 = this.uploadPayload;
        crc32.update(bArr2, 0, bArr2.length);
        this.checksum = (int) crc32.getValue();
        registerForNewMessages();
        registerForBLEDeviceStateChange();
    }

    private void handleDeadline(final long j2) {
        stopDeadline();
        Thread thread = new Thread(new Runnable() { // from class: com.lightup.sdk.device.features.process.LightingUpload.1
            @Override // java.lang.Runnable
            public void run() {
                long j3 = 0;
                while (!Thread.currentThread().isInterrupted()) {
                    try {
                        Thread.sleep(500L);
                        j3 += 500;
                        if (j3 > j2) {
                            break;
                        }
                    } catch (InterruptedException unused) {
                        return;
                    }
                }
                if (!this.isCompleted()) {
                    LightingUpload.this.dataUploadListener.onError(DataUploadError.TimeOut);
                }
                LightingUpload.this.deregisterForNewMessages();
                LightingUpload.this.deregisterForBLEDeviceStateChange();
            }
        });
        this.deadlineThread = thread;
        thread.start();
    }

    private DeviceMessage handlePageRequest(byte[] bArr) {
        long jB = ByteUtils.b(Arrays.copyOfRange(bArr, 0, 4));
        int iA = ByteUtils.a(Arrays.copyOfRange(bArr, 4, 6));
        int i2 = this.nbPages;
        if (iA > i2) {
            return null;
        }
        this.dataUploadListener.onProgress((((double) iA) * 100.0d) / ((double) i2));
        int i3 = this.pageSize;
        int i4 = iA * i3;
        byte[] bArrCopyOfRange = Arrays.copyOfRange(this.uploadPayload, i4, Math.min(i3 + i4, this.uploadPayload.length));
        ByteUtils.g(bArrCopyOfRange.length, bArrCopyOfRange, false);
        handleDeadline(jB);
        return MessageBuilder.b(this.pageSize, iA, bArrCopyOfRange);
    }

    private void handleUploadDone() {
        deregisterForNewMessages();
        deregisterForBLEDeviceStateChange();
        this.device.setUpdating(false);
        this.updateComplete = true;
        this.dataUploadListener.onCompleted();
    }

    private DeviceMessage handleUploadStatus(byte[] bArr) {
        byte b2 = bArr[0];
        if (b2 == 0) {
            int length = this.uploadPayload.length;
            int i2 = this.pageSize;
            int i3 = this.checksum;
            MessageInfo messageInfo = MessageInfo.SMARTPHONE_TO_DEVICE_PROGRAM_UPDATE_START;
            ByteUtils.ByteBuilder byteBuilder = new ByteUtils.ByteBuilder(messageInfo.d());
            byteBuilder.c(messageInfo.b(), 1);
            byteBuilder.c(length, 4);
            byteBuilder.c(i2, 2);
            byteBuilder.c(i3, 4);
            byteBuilder.c(SpecificProperties.DATA_UPLOAD_ADDRESS, 4);
            return new DeviceMessage(byteBuilder.f36034a);
        }
        if (b2 == 1) {
            handleUploadDone();
            return null;
        }
        if (b2 == 2) {
            this.dataUploadListener.onError(DataUploadError.TransferError);
            return null;
        }
        if (b2 == 3) {
            this.dataUploadListener.onError(DataUploadError.TransferError);
            return null;
        }
        if (b2 == 4) {
            this.dataUploadListener.onError(DataUploadError.UnexpectedError);
            return null;
        }
        if (b2 != 5) {
            return null;
        }
        handleUploadDone();
        return null;
    }

    private void startUpload() {
        this.device.setUpdating(true);
        int i2 = this.checksum;
        MessageInfo messageInfo = MessageInfo.SMARTPHONE_TO_DEVICE_DATA_UPLOAD_REQUIRED;
        ByteUtils.ByteBuilder byteBuilder = new ByteUtils.ByteBuilder(messageInfo.d());
        byteBuilder.c(messageInfo.b(), 1);
        byteBuilder.c(i2, 4);
        DeviceMessage deviceMessage = new DeviceMessage(byteBuilder.f36034a);
        this.msgToSend = deviceMessage;
        putMessage(deviceMessage);
    }

    private void stopDeadline() {
        Thread thread = this.deadlineThread;
        if (thread != null) {
            thread.interrupt();
        }
    }

    @Override // com.lightup.sdk.device.features.Feature
    public void handleBLEDeviceStateChange(BLEDeviceStateListener.StateChangeType stateChangeType, BLEDevice.DeviceStateBundle deviceStateBundle) {
        if (stateChangeType == BLEDeviceStateListener.StateChangeType.BLE_DEVICE_STATE) {
            if (deviceStateBundle.bleDeviceState == DeviceState.REGISTERED) {
                startUpload();
            } else {
                stopDeadline();
            }
        }
    }

    @Override // com.lightup.sdk.device.features.Feature
    public void handleNewMessage(BLEDevice bLEDevice, byte b2, byte[] bArr) {
        this.lock.lock();
        stopDeadline();
        String.format("%02x", Byte.valueOf(b2));
        ByteUtils.g(bArr.length, bArr, false);
        if (b2 == MessageInfo.DEVICE_TO_SMARTPHONE_DATA_UPLOAD_STATUS.b()) {
            this.msgToSend = handleUploadStatus(bArr);
        } else if (b2 == MessageInfo.DEVICE_TO_SMARTPHONE_PROGRAM_UPDATE_PAGE_REQUEST.b()) {
            this.msgToSend = handlePageRequest(bArr);
        }
        this.stepEvent.signal();
        this.lock.unlock();
    }

    @Override // com.lightup.sdk.device.features.Feature
    public boolean kill(boolean z) {
        boolean zKill = super.kill(z);
        deregisterForNewMessages();
        deregisterForBLEDeviceStateChange();
        if (!this.updateComplete) {
            this.dataUploadListener.onError(DataUploadError.TimeOut);
        }
        return zKill;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.lock.lock();
        startUpload();
        while (!Thread.currentThread().isInterrupted()) {
            try {
                this.stepEvent.await();
                DeviceMessage deviceMessage = this.msgToSend;
                if (deviceMessage != null) {
                    putMessage(PriorityMode.NORMAL, deviceMessage);
                }
                if (this.updateComplete) {
                    break;
                }
            } catch (InterruptedException unused) {
            }
        }
        this.lock.unlock();
    }

    public void setDataUploadListener(DataUploadListener dataUploadListener) {
        this.dataUploadListener = dataUploadListener;
    }
}
