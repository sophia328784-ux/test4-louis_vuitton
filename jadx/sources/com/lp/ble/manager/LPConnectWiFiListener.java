package com.lp.ble.manager;

/* JADX INFO: loaded from: classes2.dex */
public interface LPConnectWiFiListener {
    void LPConnectFailed(Exception exc);

    void LPConnectResult(BLEConnectApResult bLEConnectApResult, String str);
}
