package com.lp.ble.manager;

import com.lp.ble.entity.LPBluetoothDevice;

/* JADX INFO: loaded from: classes2.dex */
public interface LPBLEScanListener {
    void LPBLEScanFailed(int i2);

    void LPBLEScanFinish();

    void LPBLEScanResult(LPBluetoothDevice lPBluetoothDevice);
}
