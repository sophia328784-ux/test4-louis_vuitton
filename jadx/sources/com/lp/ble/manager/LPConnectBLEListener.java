package com.lp.ble.manager;

import android.bluetooth.BluetoothGatt;
import com.lp.ble.BLEGattListener;

/* JADX INFO: loaded from: classes2.dex */
public interface LPConnectBLEListener extends BLEGattListener {
    @Override // com.lp.ble.BLEGattListener
    /* synthetic */ void onConnectFail(Exception exc);

    @Override // com.lp.ble.BLEGattListener
    /* synthetic */ void onConnectSuccess(BluetoothGatt bluetoothGatt, int i2);

    @Override // com.lp.ble.BLEGattListener
    /* synthetic */ void onDisConnected(boolean z, BluetoothGatt bluetoothGatt, int i2);

    @Override // com.lp.ble.BLEGattListener
    /* synthetic */ void onFailed(int i2, String str);

    @Override // com.lp.ble.BLEGattListener
    /* synthetic */ void onReConnectBLE(BluetoothGatt bluetoothGatt, int i2);

    @Override // com.lp.ble.BLEGattListener
    /* synthetic */ void onStartConnect();
}
