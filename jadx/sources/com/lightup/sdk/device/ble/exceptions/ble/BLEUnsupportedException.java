package com.lightup.sdk.device.ble.exceptions.ble;

/* JADX INFO: loaded from: classes2.dex */
public class BLEUnsupportedException extends BluetoothException {
    @Override // java.lang.Throwable
    public String toString() {
        return "BLE is not supported on this device";
    }
}
