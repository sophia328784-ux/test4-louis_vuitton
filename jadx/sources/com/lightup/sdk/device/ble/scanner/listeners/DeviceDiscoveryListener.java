package com.lightup.sdk.device.ble.scanner.listeners;

import com.lightup.sdk.device.model.device.Device;

/* JADX INFO: loaded from: classes2.dex */
public interface DeviceDiscoveryListener<D extends Device> {
    void onDiscoveredDevice(D d);

    void onDiscoveryEnd(boolean z);
}
