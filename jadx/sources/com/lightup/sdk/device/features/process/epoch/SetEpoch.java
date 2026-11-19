package com.lightup.sdk.device.features.process.epoch;

import com.lightup.sdk.device.devicemanagement.BLEDevice;
import com.lightup.sdk.device.enums.DeviceState;
import com.lightup.sdk.device.features.process.ProcessFeature;
import com.lightup.sdk.device.features.process.errors.DeviceConnectionError;
import com.lightup.sdk.device.messages.MessageInfo;
import com.lightup.sdk.device.model.device.BLEDeviceStateListener;
import com.lightup.sdk.device.model.device.DeviceMessage;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

/* JADX INFO: loaded from: classes2.dex */
public class SetEpoch extends ProcessFeature {
    private int defaultTimeOut;
    private boolean deregistered;
    private final Condition kill;
    private final Lock lock;
    private final SetEpochListener setEpochListener;

    public SetEpoch(SetEpochListener setEpochListener, BLEDevice bLEDevice, int i2) {
        super(bLEDevice);
        ReentrantLock reentrantLock = new ReentrantLock();
        this.lock = reentrantLock;
        this.kill = reentrantLock.newCondition();
        this.deregistered = false;
        this.setEpochListener = setEpochListener;
        this.defaultTimeOut = i2;
        registerForBLEDeviceStateChange();
        registerForNewMessages();
    }

    private void killSignal() {
        this.lock.lock();
        this.kill.signal();
        this.lock.unlock();
    }

    @Override // com.lightup.sdk.device.features.Feature
    public void handleBLEDeviceStateChange(BLEDeviceStateListener.StateChangeType stateChangeType, BLEDevice.DeviceStateBundle deviceStateBundle) {
        if (stateChangeType != BLEDeviceStateListener.StateChangeType.BLE_DEVICE_STATE || deviceStateBundle.bleDeviceState == DeviceState.REGISTERED) {
            return;
        }
        this.deregistered = true;
        killSignal();
    }

    @Override // com.lightup.sdk.device.features.Feature
    public void handleNewMessage(BLEDevice bLEDevice, byte b2, byte[] bArr) {
        if (b2 == MessageInfo.DEVICE_TO_SMARTPHONE_GENERIC_ACK.b() && bArr[0] == MessageInfo.SMARTPHONE_TO_DEVICE_SET_EPOCH.b()) {
            killSignal();
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        this.lock.lock();
        do {
            MessageInfo messageInfo = MessageInfo.SMARTPHONE_TO_DEVICE_SET_EPOCH;
            byte[] bArr = new byte[messageInfo.d()];
            bArr[0] = messageInfo.b();
            putMessage(new DeviceMessage(bArr, 1));
            try {
            } catch (InterruptedException e2) {
                e2.getMessage();
                Thread.currentThread().interrupt();
            }
        } while (!this.kill.await(this.defaultTimeOut, TimeUnit.MILLISECONDS));
        boolean z = this.deregistered;
        SetEpochListener setEpochListener = this.setEpochListener;
        if (z) {
            setEpochListener.onDeviceError(DeviceConnectionError.CONNECTION_LOST);
        } else {
            setEpochListener.onDone();
        }
        this.lock.unlock();
    }

    public SetEpoch(SetEpochListener setEpochListener, BLEDevice bLEDevice) {
        this(setEpochListener, bLEDevice, 1000);
    }
}
