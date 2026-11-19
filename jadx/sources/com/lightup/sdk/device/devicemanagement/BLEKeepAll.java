package com.lightup.sdk.device.devicemanagement;

import com.lightup.sdk.device.model.device.DeviceId;

/* JADX INFO: loaded from: classes2.dex */
public class BLEKeepAll extends BLELightup {
    public BLEKeepAll(DeviceId deviceId, String str, String str2, BLELightupManager bLELightupManager) {
        super(deviceId, str, str2, bLELightupManager);
    }

    @Override // com.lightup.sdk.device.devicemanagement.BLEDevice
    public String getName() {
        return this.name;
    }
}
