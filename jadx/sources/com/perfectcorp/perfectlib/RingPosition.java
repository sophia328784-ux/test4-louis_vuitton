package com.perfectcorp.perfectlib;

/* JADX INFO: loaded from: classes3.dex */
public enum RingPosition {
    THUMB("thumb"),
    FOREFINGER("fore"),
    MIDDLE_FINGER("middle"),
    RING_FINGER("ring"),
    LITTLE_FINGER("little");


    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f39830a;

    RingPosition(String str) {
        this.f39830a = str;
    }

    public static RingPosition of(String str) {
        for (RingPosition ringPosition : values()) {
            if (ringPosition.f39830a.equalsIgnoreCase(str)) {
                return ringPosition;
            }
        }
        return RING_FINGER;
    }
}
