package com.linkplay.core.app;

import com.linkplay.core.device.LPDevice;

/* JADX INFO: loaded from: classes2.dex */
public interface LPDeviceManagerObserver {
    void LPDeviceOffline(LPDevice lPDevice);

    void LPDeviceOnline(LPDevice lPDevice);

    void LPDeviceUpdate(LPDevice lPDevice);
}
