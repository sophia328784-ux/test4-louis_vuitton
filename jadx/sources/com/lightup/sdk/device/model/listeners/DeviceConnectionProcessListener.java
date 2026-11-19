package com.lightup.sdk.device.model.listeners;

import com.lightup.sdk.device.devicemanagement.BLEDevice;
import com.lightup.sdk.device.enums.PowerOffReason;

/* JADX INFO: loaded from: classes2.dex */
public abstract class DeviceConnectionProcessListener<D extends BLEDevice> {
    public abstract void onConnected(D d, boolean z);

    public abstract void onConnecting();

    public abstract void onDeviceShutDown(PowerOffReason powerOffReason);

    public abstract void onLost();

    public abstract void onNoDeviceFound();

    public abstract void onReconnecting();

    public abstract void onRequiresUpdate(D d, boolean z);
}
