package com.lightup.sdk.device.model.device;

import com.lightup.sdk.device.devicemanagement.BLEDevice;

/* JADX INFO: loaded from: classes2.dex */
public interface BLEDeviceStateListener {

    public enum StateChangeType {
        BATTERY,
        BLE_DEVICE_STATE,
        CONNECTION_STATE
    }

    void onBLEDeviceStateChange(StateChangeType stateChangeType, BLEDevice.DeviceStateBundle deviceStateBundle);
}
