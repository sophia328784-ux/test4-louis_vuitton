package com.lp.ble;

import com.lp.ble.entity.LPBluetoothDevice;

/* JADX INFO: loaded from: classes2.dex */
public interface BLEScanListener {
    void onScanFailed(int i2);

    void onScanFinished();

    void onScanResult(LPBluetoothDevice lPBluetoothDevice);
}
