package com.lp.ble;

import android.bluetooth.BluetoothGatt;

/* JADX INFO: loaded from: classes2.dex */
public interface BLEGattListener {
    void onConnectFail(Exception exc);

    void onConnectSuccess(BluetoothGatt bluetoothGatt, int i2);

    void onDisConnected(boolean z, BluetoothGatt bluetoothGatt, int i2);

    void onFailed(int i2, String str);

    void onReConnectBLE(BluetoothGatt bluetoothGatt, int i2);

    void onStartConnect();
}
