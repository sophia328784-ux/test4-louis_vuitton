package com.lightup.sdk.device.model.listeners;

import com.lightup.sdk.device.devicemanagement.BLEDevice;

/* JADX INFO: loaded from: classes2.dex */
public interface DeviceScanProcessListener<D extends BLEDevice> {
    void onDeviceFound(D d);

    void onScanEnd(boolean z);
}
