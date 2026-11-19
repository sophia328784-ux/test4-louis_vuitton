package com.lightup.sdk.device.enums;

/* JADX INFO: loaded from: classes2.dex */
public enum DeviceStatus {
    OFF("Off"),
    ON("On"),
    STANDBY("Standby");

    private String value;

    DeviceStatus(String str) {
        this.value = str;
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.value;
    }
}
