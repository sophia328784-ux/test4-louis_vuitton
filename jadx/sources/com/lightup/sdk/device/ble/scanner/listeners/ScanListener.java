package com.lightup.sdk.device.ble.scanner.listeners;

/* JADX INFO: loaded from: classes2.dex */
public interface ScanListener {
    boolean onDiscoveredDevice(String str, String str2, byte[] bArr);

    void onScanEnd(boolean z);
}
