package com.google.ar.core;

import defpackage.r81;
import defpackage.z81;

/* JADX INFO: loaded from: classes2.dex */
public enum RecordingStatus {
    NONE(0),
    OK(1),
    IO_ERROR(2);

    final int nativeCode;

    RecordingStatus(int i2) {
        this.nativeCode = i2;
    }

    public static RecordingStatus forNumber(int i2) {
        for (RecordingStatus recordingStatus : values()) {
            if (recordingStatus.nativeCode == i2) {
                return recordingStatus;
            }
        }
        r81.i(z81.f(String.valueOf(i2).length() + (byte) 51, i2, "Unexpected value for native RecordingStatus, value="));
        return null;
    }
}
