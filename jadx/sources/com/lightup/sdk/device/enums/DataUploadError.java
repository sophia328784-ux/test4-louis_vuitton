package com.lightup.sdk.device.enums;

/* JADX INFO: loaded from: classes2.dex */
public enum DataUploadError {
    TransferError("Error during transfer"),
    TimeOut("Device timeout"),
    ConnectionLost("Lost connection to device"),
    UnexpectedError("Unknown error"),
    Interrupted("Action was interrupted"),
    OverMemory("Memory is full on device");

    private String value;

    DataUploadError(String str) {
        this.value = str;
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.value;
    }
}
