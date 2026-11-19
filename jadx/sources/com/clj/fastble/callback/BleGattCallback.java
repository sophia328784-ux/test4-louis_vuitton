package com.clj.fastble.callback;

import android.bluetooth.BluetoothGatt;
import android.bluetooth.BluetoothGattCallback;
import com.clj.fastble.data.BleDevice;
import com.clj.fastble.exception.BleException;

/* JADX INFO: loaded from: classes2.dex */
public abstract class BleGattCallback extends BluetoothGattCallback {
    public abstract void a(BleDevice bleDevice, BleException bleException);

    public abstract void b(BleDevice bleDevice, BluetoothGatt bluetoothGatt, int i2);

    public abstract void c(boolean z, BleDevice bleDevice, BluetoothGatt bluetoothGatt, int i2);

    public abstract void d();
}
