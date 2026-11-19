package com.clj.fastble.exception;

/* JADX INFO: loaded from: classes2.dex */
public class GattException extends BleException {
    public final int d;

    public GattException(int i2) {
        super(101, "Gatt Exception Occurred! ");
        this.d = i2;
    }

    @Override // com.clj.fastble.exception.BleException
    public final String toString() {
        return "GattException{gattStatus=" + this.d + "} " + super.toString();
    }
}
