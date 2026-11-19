package com.google.ar.core;

import defpackage.r81;
import defpackage.z81;

/* JADX INFO: loaded from: classes2.dex */
public enum TrackingState {
    TRACKING(0),
    PAUSED(1),
    STOPPED(2);

    final int nativeCode;

    TrackingState(int i2) {
        this.nativeCode = i2;
    }

    public static TrackingState forNumber(int i2) {
        for (TrackingState trackingState : values()) {
            if (trackingState.nativeCode == i2) {
                return trackingState;
            }
        }
        r81.i(z81.f(String.valueOf(i2).length() + (byte) 49, i2, "Unexpected value for native TrackingState, value="));
        return null;
    }
}
