package com.sightcall.uvc;

/* JADX INFO: loaded from: classes3.dex */
public interface DeviceListener {
    void onDeviceAttached(Device device);

    void onDeviceDetached(Device device);

    void onDevicePermissionDenied(Device device);

    void onDevicePermissionGranted(Device device);
}
