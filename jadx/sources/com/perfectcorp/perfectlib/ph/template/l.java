package com.perfectcorp.perfectlib.ph.template;

import com.perfectcorp.perfectlib.makeupcam.camera.YMKPrimitiveData;
import com.perfectcorp.perfectlib.ymk.model.BeautyMode;

/* JADX INFO: loaded from: classes3.dex */
abstract /* synthetic */ class l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int[] f41669a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final /* synthetic */ int[] f41670b;

    static {
        int[] iArr = new int[BeautyMode.values().length];
        f41670b = iArr;
        try {
            iArr[BeautyMode.EYE_BROW.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            f41670b[BeautyMode.FACE_ART.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            f41670b[BeautyMode.FACE_CONTOUR.ordinal()] = 3;
        } catch (NoSuchFieldError unused3) {
        }
        try {
            f41670b[BeautyMode.HAIR_DYE.ordinal()] = 4;
        } catch (NoSuchFieldError unused4) {
        }
        try {
            f41670b[BeautyMode.LIP_LINER.ordinal()] = 5;
        } catch (NoSuchFieldError unused5) {
        }
        try {
            f41670b[BeautyMode.EYE_WEAR.ordinal()] = 6;
        } catch (NoSuchFieldError unused6) {
        }
        try {
            f41670b[BeautyMode.EARRINGS.ordinal()] = 7;
        } catch (NoSuchFieldError unused7) {
        }
        try {
            f41670b[BeautyMode.LIP_STICK.ordinal()] = 8;
        } catch (NoSuchFieldError unused8) {
        }
        try {
            f41670b[BeautyMode.EYE_SHADOW.ordinal()] = 9;
        } catch (NoSuchFieldError unused9) {
        }
        try {
            f41670b[BeautyMode.EYE_LINES.ordinal()] = 10;
        } catch (NoSuchFieldError unused10) {
        }
        try {
            f41670b[BeautyMode.BLUSH.ordinal()] = 11;
        } catch (NoSuchFieldError unused11) {
        }
        try {
            f41670b[BeautyMode.SKIN_TONER.ordinal()] = 12;
        } catch (NoSuchFieldError unused12) {
        }
        try {
            f41670b[BeautyMode.CUBE_EYEWEAR.ordinal()] = 13;
        } catch (NoSuchFieldError unused13) {
        }
        try {
            f41670b[BeautyMode.REAL_3D_EYEWEAR.ordinal()] = 14;
        } catch (NoSuchFieldError unused14) {
        }
        try {
            f41670b[BeautyMode.BACKGROUND.ordinal()] = 15;
        } catch (NoSuchFieldError unused15) {
        }
        try {
            f41670b[BeautyMode.CONCEALER.ordinal()] = 16;
        } catch (NoSuchFieldError unused16) {
        }
        int[] iArr2 = new int[YMKPrimitiveData.Mask.Position.values().length];
        f41669a = iArr2;
        try {
            iArr2[YMKPrimitiveData.Mask.Position.HIGHLIGHT.ordinal()] = 1;
        } catch (NoSuchFieldError unused17) {
        }
        try {
            f41669a[YMKPrimitiveData.Mask.Position.CONTOUR.ordinal()] = 2;
        } catch (NoSuchFieldError unused18) {
        }
    }
}
