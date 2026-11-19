package com.perfectcorp.perfectlib.ymk.utility;

import com.perfectcorp.perfectlib.RingPosition;

/* JADX INFO: loaded from: classes3.dex */
abstract /* synthetic */ class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int[] f42046a;

    static {
        int[] iArr = new int[RingPosition.values().length];
        f42046a = iArr;
        try {
            iArr[RingPosition.THUMB.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            f42046a[RingPosition.FOREFINGER.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            f42046a[RingPosition.MIDDLE_FINGER.ordinal()] = 3;
        } catch (NoSuchFieldError unused3) {
        }
        try {
            f42046a[RingPosition.LITTLE_FINGER.ordinal()] = 4;
        } catch (NoSuchFieldError unused4) {
        }
        try {
            f42046a[RingPosition.RING_FINGER.ordinal()] = 5;
        } catch (NoSuchFieldError unused5) {
        }
    }
}
