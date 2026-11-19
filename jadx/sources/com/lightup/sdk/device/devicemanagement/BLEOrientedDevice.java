package com.lightup.sdk.device.devicemanagement;

import com.lightup.sdk.device.enums.PairOrientation;
import com.lightup.sdk.device.model.device.DeviceId;
import com.lightup.sdk.device.model.device.DeviceType;

/* JADX INFO: loaded from: classes2.dex */
public abstract class BLEOrientedDevice extends BLEDevice {
    private PairOrientation orientation;

    public BLEOrientedDevice(DeviceId deviceId, String str, String str2, BLEDevicesManager<? extends BLEDevice> bLEDevicesManager, DeviceType deviceType) {
        super(deviceId, str, str2, bLEDevicesManager, deviceType);
        this.orientation = PairOrientation.from(deviceId.getAdditional()[0]);
    }

    public PairOrientation getOrientation() {
        return this.orientation;
    }

    public void setOrientation(PairOrientation pairOrientation) {
        this.orientation = pairOrientation;
    }
}
