package com.lightup.sdk.device.features.process.ackable;

import com.lightup.sdk.device.devicemanagement.BLEDevice;
import com.lightup.sdk.device.enums.DeviceState;
import com.lightup.sdk.device.messages.MessageInfo;
import com.lightup.sdk.device.model.device.BLEDeviceStateListener;
import com.lightup.sdk.device.model.device.DeviceMessage;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

/* JADX INFO: loaded from: classes2.dex */
public abstract class AckableThread extends Thread {
    private static final boolean DEBUG = false;
    private static final String TAG = "AckableThread";
    private final MessageInfo ackToReceive;
    private final BLEDevice bleDevice;
    private final boolean breakOnUpdateRequired;
    private boolean canTransmit;
    private int defaultTimeOut;
    private final Condition eventOccurred;
    boolean featureComplete;
    private String identifier;
    private final Lock lock;
    private final DeviceMessage messageToAck;
    private byte[] receivedPayload;
    private boolean requiresUpdate;
    private int retries;
    private long tick;
    private long timeout;

    public AckableThread(BLEDevice bLEDevice, DeviceMessage deviceMessage, MessageInfo messageInfo, boolean z, int i2) {
        this.identifier = "n/a";
        this.featureComplete = false;
        ReentrantLock reentrantLock = new ReentrantLock();
        this.lock = reentrantLock;
        this.eventOccurred = reentrantLock.newCondition();
        this.bleDevice = bLEDevice;
        this.messageToAck = deviceMessage;
        this.ackToReceive = messageInfo;
        this.breakOnUpdateRequired = z;
        this.defaultTimeOut = i2;
        this.retries = 0;
    }

    private void triggerAck() {
        if (this.canTransmit) {
            putMessage(this.messageToAck);
        }
        this.timeout = this.defaultTimeOut;
        this.tick = System.currentTimeMillis();
    }

    public String getIdentifier() {
        return this.identifier;
    }

    public void handleBLEDeviceStateChange(BLEDeviceStateListener.StateChangeType stateChangeType, BLEDevice.DeviceStateBundle deviceStateBundle) {
        DeviceState deviceState;
        boolean z = false;
        if (!this.breakOnUpdateRequired ? (deviceState = deviceStateBundle.bleDeviceState) == DeviceState.REGISTERED || deviceState == DeviceState.REGISTERED_REQUIRES_UPDATE || deviceState == DeviceState.IN_BOOTLOADER : deviceStateBundle.bleDeviceState == DeviceState.REGISTERED) {
            z = true;
        }
        this.canTransmit = z;
        if (stateChangeType == BLEDeviceStateListener.StateChangeType.BLE_DEVICE_STATE) {
            DeviceState deviceState2 = deviceStateBundle.bleDeviceState;
            if (deviceState2 == DeviceState.REGISTERED_REQUIRES_UPDATE || deviceState2 == DeviceState.IN_BOOTLOADER) {
                this.lock.lock();
                this.requiresUpdate = true;
                if (this.breakOnUpdateRequired) {
                    this.eventOccurred.signal();
                }
                this.lock.unlock();
            }
        }
    }

    public void handleNewMessage(byte b2, byte[] bArr) {
        if (b2 == this.ackToReceive.b()) {
            this.lock.lock();
            this.receivedPayload = bArr;
            this.eventOccurred.signal();
            this.lock.unlock();
        }
    }

    public abstract boolean onAckReceived(byte[] bArr);

    public abstract void putMessage(DeviceMessage deviceMessage);

    public boolean requiresUpdate() {
        return this.requiresUpdate && this.breakOnUpdateRequired;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        int i2;
        this.lock.lock();
        boolean zRequiresUpdate = this.bleDevice.requiresUpdate();
        this.requiresUpdate = zRequiresUpdate;
        boolean z = this.breakOnUpdateRequired;
        if (!z || !zRequiresUpdate) {
            BLEDevice bLEDevice = this.bleDevice;
            this.canTransmit = z ? bLEDevice.isRegistered() : bLEDevice.isUp();
            triggerAck();
            while (!Thread.currentThread().isInterrupted()) {
                try {
                    if (!this.eventOccurred.await(this.timeout, TimeUnit.MILLISECONDS)) {
                        int i3 = this.retries;
                        if (i3 >= 7) {
                            break;
                        }
                        this.retries = i3 + 1;
                        triggerAck();
                    } else if ((this.breakOnUpdateRequired && this.requiresUpdate) || onAckReceived(this.receivedPayload) || (i2 = this.retries) >= 7) {
                        break;
                        break;
                        break;
                    } else {
                        this.retries = i2 + 1;
                        this.timeout = (((long) this.defaultTimeOut) - System.currentTimeMillis()) + this.tick;
                    }
                } catch (InterruptedException e2) {
                    e2.getMessage();
                    Thread.currentThread().interrupt();
                }
            }
        }
        this.lock.unlock();
    }

    public AckableThread(BLEDevice bLEDevice, DeviceMessage deviceMessage, MessageInfo messageInfo, boolean z) {
        this(bLEDevice, deviceMessage, messageInfo, z, 1000);
    }

    public AckableThread(BLEDevice bLEDevice, DeviceMessage deviceMessage, MessageInfo messageInfo, String str) {
        this(bLEDevice, deviceMessage, messageInfo, true);
        this.identifier = str;
    }

    public AckableThread(BLEDevice bLEDevice, DeviceMessage deviceMessage, MessageInfo messageInfo) {
        this(bLEDevice, deviceMessage, messageInfo, true);
    }
}
