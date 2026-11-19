package com.lightup.sdk.device.features.process.ackable;

import com.lightup.sdk.device.devicemanagement.BLEDevice;
import com.lightup.sdk.device.features.process.ProcessFeature;
import com.lightup.sdk.device.features.process.errors.DeviceError;
import com.lightup.sdk.device.features.process.listener.ActionListener;
import com.lightup.sdk.device.messages.MessageInfo;
import com.lightup.sdk.device.model.device.BLEDeviceStateListener;
import com.lightup.sdk.device.model.device.DeviceMessage;

/* JADX INFO: loaded from: classes2.dex */
public class AckableFeature extends ProcessFeature {
    private static final boolean DEBUG = false;
    private static final String TAG = "AckableFeature";
    private boolean ackReceived;
    private final AckableThread ackableThread;
    private ActionListener delegate;
    private byte messageId;
    private String name;

    public AckableFeature(BLEDevice bLEDevice, DeviceMessage deviceMessage, MessageInfo messageInfo, ActionListener actionListener, boolean z) {
        super(bLEDevice);
        this.name = "n/a";
        this.ackReceived = false;
        this.ackableThread = new AckableThread(bLEDevice, deviceMessage, messageInfo, z) { // from class: com.lightup.sdk.device.features.process.ackable.AckableFeature.1
            @Override // com.lightup.sdk.device.features.process.ackable.AckableThread
            public boolean onAckReceived(byte[] bArr) {
                return AckableFeature.this.onAckReceived(bArr);
            }

            @Override // com.lightup.sdk.device.features.process.ackable.AckableThread
            public void putMessage(DeviceMessage deviceMessage2) {
                AckableFeature.this.putMessage(deviceMessage2);
            }
        };
        this.messageId = deviceMessage.data[0];
        this.delegate = actionListener;
        registerForNewMessages();
        registerForBLEDeviceStateChange();
    }

    public String getName() {
        return this.name;
    }

    public int getUniqueId() {
        return this.uniqueId;
    }

    @Override // com.lightup.sdk.device.features.Feature
    public void handleBLEDeviceStateChange(BLEDeviceStateListener.StateChangeType stateChangeType, BLEDevice.DeviceStateBundle deviceStateBundle) {
        this.ackableThread.handleBLEDeviceStateChange(stateChangeType, deviceStateBundle);
    }

    @Override // com.lightup.sdk.device.features.Feature
    public void handleNewMessage(BLEDevice bLEDevice, byte b2, byte[] bArr) {
        this.ackableThread.handleNewMessage(b2, bArr);
    }

    public boolean onAckReceived(byte[] bArr) {
        boolean z = this.messageId == bArr[0];
        this.ackReceived = z;
        return z;
    }

    public void onDone() {
        deregisterForBLEDeviceStateChange();
        deregisterForNewMessages();
        this.delegate.onDone();
    }

    public void onError(DeviceError deviceError) {
        deregisterForBLEDeviceStateChange();
        deregisterForNewMessages();
        this.delegate.onDeviceError(deviceError);
    }

    public void onKilled(boolean z) {
        if (z) {
            this.delegate.onDeviceError(DeviceError.CONNECTION_LOST);
        }
        deregisterForBLEDeviceStateChange();
        deregisterForNewMessages();
    }

    public void onRequiresUpdate() {
        this.delegate.onDeviceError(DeviceError.DEVICE_REQUIRES_UPDATE);
    }

    @Override // java.lang.Runnable
    public void run() {
        this.ackableThread.start();
        try {
            this.ackableThread.join();
            if (this.ackableThread.requiresUpdate()) {
                onRequiresUpdate();
            } else if (this.ackReceived) {
                onDone();
            } else {
                onError(DeviceError.UNREACHABLE);
            }
        } catch (InterruptedException unused) {
            this.ackableThread.interrupt();
            onKilled(isDeviceUnbinding());
        }
    }

    public void setActionListener(ActionListener actionListener) {
        this.delegate = actionListener;
    }

    public void setName(String str) {
        this.name = str;
    }

    public AckableFeature(BLEDevice bLEDevice, DeviceMessage deviceMessage, MessageInfo messageInfo, ActionListener actionListener) {
        this(bLEDevice, deviceMessage, messageInfo, actionListener, true);
    }

    public AckableFeature(BLEDevice bLEDevice, DeviceMessage deviceMessage, MessageInfo messageInfo) {
        this(bLEDevice, deviceMessage, messageInfo, true);
    }

    public AckableFeature(BLEDevice bLEDevice, DeviceMessage deviceMessage, MessageInfo messageInfo, boolean z) {
        super(bLEDevice);
        this.name = "n/a";
        this.ackReceived = false;
        this.ackableThread = new AckableThread(bLEDevice, deviceMessage, messageInfo, z) { // from class: com.lightup.sdk.device.features.process.ackable.AckableFeature.2
            @Override // com.lightup.sdk.device.features.process.ackable.AckableThread
            public boolean onAckReceived(byte[] bArr) {
                return AckableFeature.this.onAckReceived(bArr);
            }

            @Override // com.lightup.sdk.device.features.process.ackable.AckableThread
            public void putMessage(DeviceMessage deviceMessage2) {
                AckableFeature.this.putMessage(deviceMessage2);
            }
        };
        this.messageId = deviceMessage.data[0];
        registerForNewMessages();
        registerForBLEDeviceStateChange();
    }

    private AckableFeature(BLEDevice bLEDevice, DeviceMessage deviceMessage, MessageInfo messageInfo, boolean z, int i2) {
        super(bLEDevice);
        this.name = "n/a";
        this.ackReceived = false;
        this.ackableThread = new AckableThread(bLEDevice, deviceMessage, messageInfo, z, i2) { // from class: com.lightup.sdk.device.features.process.ackable.AckableFeature.3
            @Override // com.lightup.sdk.device.features.process.ackable.AckableThread
            public boolean onAckReceived(byte[] bArr) {
                return AckableFeature.this.onAckReceived(bArr);
            }

            @Override // com.lightup.sdk.device.features.process.ackable.AckableThread
            public void putMessage(DeviceMessage deviceMessage2) {
                AckableFeature.this.putMessage(deviceMessage2);
            }
        };
        registerForNewMessages();
        registerForBLEDeviceStateChange();
    }
}
