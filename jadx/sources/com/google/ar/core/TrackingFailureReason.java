package com.google.ar.core;

import defpackage.r81;
import defpackage.z81;

/* JADX INFO: loaded from: classes2.dex */
public enum TrackingFailureReason {
    NONE(0),
    BAD_STATE(1),
    INSUFFICIENT_LIGHT(2),
    EXCESSIVE_MOTION(3),
    INSUFFICIENT_FEATURES(4),
    CAMERA_UNAVAILABLE(5);

    final int nativeCode;

    TrackingFailureReason(int i2) {
        this.nativeCode = i2;
    }

    public static TrackingFailureReason forNumber(int i2) {
        for (TrackingFailureReason trackingFailureReason : values()) {
            if (trackingFailureReason.nativeCode == i2) {
                return trackingFailureReason;
            }
        }
        r81.i(z81.f(String.valueOf(i2).length() + (byte) 57, i2, "Unexpected value for native TrackingFailureReason, value="));
        return null;
    }
}
