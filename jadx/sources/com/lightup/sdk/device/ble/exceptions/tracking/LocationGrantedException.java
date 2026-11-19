package com.lightup.sdk.device.ble.exceptions.tracking;

/* JADX INFO: loaded from: classes2.dex */
public class LocationGrantedException extends GPSException {
    @Override // java.lang.Throwable
    public String toString() {
        return "Permission to use location has not been granted by the user";
    }
}
