package com.lightup.sdk.device.features.process.programupdate;

import com.batch.android.x0.h;
import com.lightup.sdk.device.devicemanagement.BLEDevice;
import com.lightup.sdk.device.devicemanagement.BLEDevicesManager;
import com.lightup.sdk.device.enums.DeviceState;
import com.lightup.sdk.device.features.process.ProcessFeature;
import com.lightup.sdk.device.features.process.dataupload.FirmwareUpdateError;
import com.lightup.sdk.device.features.process.dataupload.FirmwareUpdateListener;
import com.lightup.sdk.device.messages.MessageBuilder;
import com.lightup.sdk.device.messages.MessageInfo;
import com.lightup.sdk.device.model.device.BLEDeviceStateListener;
import com.lightup.sdk.device.model.device.DeviceMessage;
import com.lightup.sdk.device.model.device.PriorityMode;
import com.lightup.sdk.device.utils.communication.ByteUtils;
import com.lightup.sdk.device.utils.firmware.BLEDeviceFirmwareBundle;
import com.lightup.sdk.device.utils.firmware.FirmwareManager;
import com.lightup.sdk.device.utils.firmware.UnsupportedDeviceException;
import java.util.Arrays;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
import java.util.zip.CRC32;

/* JADX INFO: loaded from: classes2.dex */
public class ProgramUpdate extends ProcessFeature {
    private static final boolean DEBUG = false;
    private static final String TAG = "ProgramUpdate";
    private BLEDevice bleDevice;
    private Thread deadlineThread;
    private FirmwareManager firmwareManager;
    private FirmwareUpdateListener firmwareUpdateListener;
    private final Lock lock;
    private DeviceMessage msgToSend;
    private double nbPages;
    private final int pageSize;
    private byte[] programPayload;
    private int programSize;
    private final Condition stepEvent;
    private boolean updateComplete;
    private String updatedVersion;

    public ProgramUpdate(BLEDevicesManager<? extends BLEDevice> bLEDevicesManager, BLEDevice bLEDevice, int i2, FirmwareUpdateListener firmwareUpdateListener) {
        super(bLEDevice);
        ReentrantLock reentrantLock = new ReentrantLock();
        this.lock = reentrantLock;
        this.stepEvent = reentrantLock.newCondition();
        this.updateComplete = false;
        this.firmwareManager = bLEDevicesManager.getFirmwareManager(bLEDevice.getDeviceId());
        this.firmwareUpdateListener = firmwareUpdateListener;
        this.bleDevice = bLEDevice;
        this.pageSize = i2;
        registerForNewMessages();
        registerForBLEDeviceStateChange();
    }

    private void handleDeadline(final long j2) {
        stopDeadline();
        Thread thread = new Thread(new Runnable() { // from class: com.lightup.sdk.device.features.process.programupdate.ProgramUpdate.1
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
                        Thread.currentThread().interrupt();
                        return;
                    }
                }
                if (this.isCompleted()) {
                    return;
                }
                ProgramUpdate.this.firmwareUpdateListener.onError(FirmwareUpdateError.TIMEOUT);
            }
        });
        this.deadlineThread = thread;
        thread.start();
    }

    private DeviceMessage handlePageRequest(byte[] bArr) {
        long jB = ByteUtils.b(Arrays.copyOfRange(bArr, 0, 4));
        int iA = ByteUtils.a(Arrays.copyOfRange(bArr, 4, 6));
        double d = iA;
        double d2 = this.nbPages;
        if (d > d2) {
            return null;
        }
        this.firmwareUpdateListener.onProgress(new FirmwareUpdateListener.Progress(((double) (iA - 1)) / d2, 1, 1));
        byte[] bArr2 = this.programPayload;
        int i2 = this.pageSize;
        byte[] bArrCopyOfRange = Arrays.copyOfRange(bArr2, iA * i2, Math.min((iA * i2) + i2, this.programSize));
        handleDeadline(jB);
        return MessageBuilder.b(this.pageSize, iA, bArrCopyOfRange);
    }

    private DeviceMessage handleStartRequest(byte[] bArr) {
        int i2;
        byte b2 = bArr[0];
        try {
            BLEDeviceFirmwareBundle bLEDeviceFirmwareBundleC = this.firmwareManager.c(this.bleDevice.getDeviceId());
            this.updatedVersion = bLEDeviceFirmwareBundleC.f36039a;
            if (b2 == 0) {
                this.programPayload = bLEDeviceFirmwareBundleC.f36040b;
                i2 = bLEDeviceFirmwareBundleC.f36041c;
            } else {
                this.programPayload = bLEDeviceFirmwareBundleC.f36042e;
                i2 = bLEDeviceFirmwareBundleC.f36043f;
            }
            int length = this.programPayload.length;
            this.programSize = length;
            this.nbPages = Math.round(length / this.pageSize);
            CRC32 crc32 = new CRC32();
            crc32.update(this.programPayload, 0, this.programSize);
            int value = (int) crc32.getValue();
            int i3 = this.programSize;
            int i4 = this.pageSize;
            MessageInfo messageInfo = MessageInfo.SMARTPHONE_TO_DEVICE_PROGRAM_UPDATE_START;
            ByteUtils.ByteBuilder byteBuilder = new ByteUtils.ByteBuilder(messageInfo.d());
            byteBuilder.c(messageInfo.b(), 1);
            byteBuilder.c(i3, 4);
            byteBuilder.c(i4, 2);
            byteBuilder.c(value, 4);
            byteBuilder.c(i2, 4);
            return new DeviceMessage(byteBuilder.f36034a);
        } catch (UnsupportedDeviceException e2) {
            e2.printStackTrace();
            return null;
        }
    }

    private DeviceMessage handleUpdateDone() {
        this.firmwareUpdateListener.onCompleted();
        this.bleDevice.setUpdating(false);
        this.updateComplete = true;
        MessageInfo messageInfo = MessageInfo.SMARTPHONE_TO_DEVICE_PROGRAM_UPDATE_COMPLETE;
        byte[] bArr = new byte[messageInfo.d()];
        bArr[0] = messageInfo.b();
        return new DeviceMessage(bArr);
    }

    private DeviceMessage handleUpdateError(byte[] bArr) {
        if (bArr[0] == 1) {
            this.firmwareUpdateListener.onError(FirmwareUpdateError.TRANSFER_ERROR);
            this.updateComplete = true;
            this.stepEvent.signal();
            this.bleDevice.setUpdating(false);
            super.kill(false);
        } else {
            new Thread(new Runnable() { // from class: com.lightup.sdk.device.features.process.programupdate.ProgramUpdate.2
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        Thread.sleep(100L);
                    } catch (InterruptedException e2) {
                        e2.getMessage();
                        Thread.currentThread().interrupt();
                    }
                    ProgramUpdate.this.startProgramUpdate();
                }
            });
        }
        MessageInfo messageInfo = MessageInfo.SMARTPHONE_TO_DEVICE_PROGRAM_UPDATE_COMPLETE;
        byte[] bArr2 = new byte[messageInfo.d()];
        bArr2[0] = messageInfo.b();
        return new DeviceMessage(bArr2);
    }

    private DeviceMessage handleValidation(byte[] bArr) {
        handleDeadline(ByteUtils.b(Arrays.copyOfRange(bArr, 0, 4)));
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startProgramUpdate() {
        stopDeadline();
        this.bleDevice.setUpdating(true);
        PriorityMode priorityMode = PriorityMode.NORMAL;
        MessageInfo messageInfo = MessageInfo.SMARTPHONE_TO_DEVICE_PROGRAM_UPDATE_REQUIRED;
        byte[] bArr = new byte[messageInfo.d()];
        bArr[0] = messageInfo.b();
        bArr[1] = h.a.I;
        bArr[2] = -83;
        bArr[3] = h.a.o;
        bArr[4] = -2;
        putMessage(priorityMode, new DeviceMessage(bArr));
        this.firmwareUpdateListener.onProgress(new FirmwareUpdateListener.Progress(0.0d, 1, 1));
    }

    private void stopDeadline() {
        Thread thread = this.deadlineThread;
        if (thread != null) {
            thread.interrupt();
        }
    }

    @Override // com.lightup.sdk.device.features.Feature
    public void handleBLEDeviceStateChange(BLEDeviceStateListener.StateChangeType stateChangeType, BLEDevice.DeviceStateBundle deviceStateBundle) {
        if (stateChangeType != BLEDeviceStateListener.StateChangeType.BLE_DEVICE_STATE) {
            return;
        }
        this.lock.lock();
        DeviceState deviceState = deviceStateBundle.bleDeviceState;
        if (deviceState == DeviceState.REGISTERED_REQUIRES_UPDATE) {
            startProgramUpdate();
        } else if (deviceState == DeviceState.REGISTERED) {
            handleUpdateError(new byte[]{1});
        } else {
            stopDeadline();
        }
        this.lock.unlock();
    }

    @Override // com.lightup.sdk.device.features.Feature
    public void handleNewMessage(BLEDevice bLEDevice, byte b2, byte[] bArr) {
        this.lock.lock();
        stopDeadline();
        if (b2 == MessageInfo.DEVICE_TO_SMARTPHONE_PROGRAM_UPDATE_REQUEST.b()) {
            this.msgToSend = handleStartRequest(bArr);
        } else if (b2 == MessageInfo.DEVICE_TO_SMARTPHONE_PROGRAM_UPDATE_PAGE_REQUEST.b()) {
            this.msgToSend = handlePageRequest(bArr);
        } else if (b2 == MessageInfo.DEVICE_TO_SMARTPHONE_PROGRAM_UPDATE_VALIDATING.b()) {
            this.msgToSend = handleValidation(bArr);
        } else if (b2 == MessageInfo.DEVICE_TO_SMARTPHONE_PROGRAM_UPDATE_DONE.b()) {
            this.msgToSend = handleUpdateDone();
        } else if (b2 == MessageInfo.DEVICE_TO_SMARTPHONE_PROGRAM_UPDATE_KO.b()) {
            this.msgToSend = handleUpdateError(bArr);
        }
        this.stepEvent.signal();
        this.lock.unlock();
    }

    @Override // com.lightup.sdk.device.features.Feature
    public boolean kill(boolean z) {
        boolean zKill = super.kill(z);
        if (zKill) {
            this.firmwareUpdateListener.onError(FirmwareUpdateError.UNEXPECTED_ERROR);
        }
        return zKill;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.lock.lock();
        startProgramUpdate();
        while (!Thread.currentThread().isInterrupted()) {
            try {
                this.stepEvent.await();
                DeviceMessage deviceMessage = this.msgToSend;
                if (deviceMessage != null) {
                    putMessage(PriorityMode.NORMAL, deviceMessage);
                } else {
                    this.bleDevice.getShortId();
                }
                if (this.updateComplete) {
                    this.bleDevice.getShortId();
                    break;
                }
            } catch (InterruptedException unused) {
                Thread.currentThread().interrupt();
            }
        }
        this.lock.unlock();
    }

    public void setFirmwareUpdateListener(FirmwareUpdateListener firmwareUpdateListener) {
        this.firmwareUpdateListener = firmwareUpdateListener;
    }
}
