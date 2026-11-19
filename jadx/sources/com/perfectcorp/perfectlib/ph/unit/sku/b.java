package com.perfectcorp.perfectlib.ph.unit.sku;

import com.perfectcorp.perfectlib.ymk.model.BeautyMode;

/* JADX INFO: loaded from: classes3.dex */
abstract /* synthetic */ class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int[] f41723a;

    static {
        int[] iArr = new int[BeautyMode.values().length];
        f41723a = iArr;
        try {
            iArr[BeautyMode.HAIR_DYE.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            f41723a[BeautyMode.EYE_SHADOW.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            f41723a[BeautyMode.EYE_LINES.ordinal()] = 3;
        } catch (NoSuchFieldError unused3) {
        }
        try {
            f41723a[BeautyMode.BLUSH.ordinal()] = 4;
        } catch (NoSuchFieldError unused4) {
        }
        try {
            f41723a[BeautyMode.LIP_STICK.ordinal()] = 5;
        } catch (NoSuchFieldError unused5) {
        }
        try {
            f41723a[BeautyMode.RING.ordinal()] = 6;
        } catch (NoSuchFieldError unused6) {
        }
        try {
            f41723a[BeautyMode.BRACELET.ordinal()] = 7;
        } catch (NoSuchFieldError unused7) {
        }
        try {
            f41723a[BeautyMode.WATCH.ordinal()] = 8;
        } catch (NoSuchFieldError unused8) {
        }
        try {
            f41723a[BeautyMode.JEWELRY.ordinal()] = 9;
        } catch (NoSuchFieldError unused9) {
        }
    }
}
