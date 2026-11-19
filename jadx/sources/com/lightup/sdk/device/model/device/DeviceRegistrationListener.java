package com.lightup.sdk.device.model.device;

import com.lightup.sdk.device.devicemanagement.BLEDevice;
import com.lightup.sdk.device.messages.InternalPowerOfReason;

/* JADX INFO: loaded from: classes2.dex */
public interface DeviceRegistrationListener<D extends BLEDevice> {
    boolean onDeviceInitiatedShutdown(D d, InternalPowerOfReason internalPowerOfReason);

    void onDeviceRegistered(D d, boolean z);

    void onDeviceRegistering(D d, boolean z);

    boolean onDeviceRegistrationHanging(D d, boolean z);

    void onDeviceRequiresUpdate(D d, boolean z);
}
