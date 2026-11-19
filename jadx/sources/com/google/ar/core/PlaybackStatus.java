package com.google.ar.core;

import defpackage.r81;
import defpackage.z81;

/* JADX INFO: loaded from: classes2.dex */
public enum PlaybackStatus {
    NONE(0),
    OK(1),
    IO_ERROR(2),
    FINISHED(3);

    final int nativeCode;

    PlaybackStatus(int i2) {
        this.nativeCode = i2;
    }

    public static PlaybackStatus forNumber(int i2) {
        for (PlaybackStatus playbackStatus : values()) {
            if (playbackStatus.nativeCode == i2) {
                return playbackStatus;
            }
        }
        r81.i(z81.f(String.valueOf(i2).length() + (byte) 50, i2, "Unexpected value for native PlaybackStatus, value="));
        return null;
    }
}
