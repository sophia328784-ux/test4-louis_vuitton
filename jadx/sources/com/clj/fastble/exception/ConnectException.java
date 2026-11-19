package com.clj.fastble.exception;

import android.bluetooth.BluetoothGatt;

/* JADX INFO: loaded from: classes2.dex */
public class ConnectException extends BleException {
    public final BluetoothGatt d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f25297e;

    public ConnectException(BluetoothGatt bluetoothGatt, int i2) {
        super(101, "Gatt Exception Occurred! ");
        this.d = bluetoothGatt;
        this.f25297e = i2;
    }

    @Override // com.clj.fastble.exception.BleException
    public final String toString() {
        return "ConnectException{gattStatus=" + this.f25297e + ", bluetoothGatt=" + this.d + "} " + super.toString();
    }
}
