package com.linkplay.wifisetup;

import com.linkplay.core.device.LPDevice;

/* JADX INFO: loaded from: classes2.dex */
public interface LPWiFiSetupListener {
    void LPWiFiSetupFailed(int i2);

    void LPWiFiSetupSuccess(LPDevice lPDevice);
}
