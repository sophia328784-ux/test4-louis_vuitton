package com.lightup.sdk.device.features.commands;

import com.lightup.sdk.device.devicemanagement.BLEDevice;
import com.lightup.sdk.device.features.Feature;
import com.lightup.sdk.device.model.device.DeviceMessage;

/* JADX INFO: loaded from: classes2.dex */
public abstract class CommandFeature extends Feature {
    public CommandFeature(BLEDevice bLEDevice) {
        super(bLEDevice);
    }

    public abstract DeviceMessage getMessage();

    @Override // com.lightup.sdk.device.features.Feature
    public boolean isAtomic() {
        return true;
    }

    @Override // java.lang.Runnable
    public void run() {
        putMessage(getMessage());
    }
}
