package com.linkplay.bonjour.wifi;

/* JADX INFO: loaded from: classes2.dex */
public interface IWifiCallback {
    void wifiConnected(String str);

    void wifiDisabled();

    void wifiDisconnected();

    void wifiEnabled();
}
