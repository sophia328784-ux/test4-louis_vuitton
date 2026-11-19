package com.perfectcorp.perfectlib.ph.clflurry;

import com.perfectcorp.perfectlib.PerfectEffect;
import com.perfectcorp.perfectlib.ymk.model.BeautyMode;
import com.perfectcorp.perfectlib.ymk.model.YMKFeatures$EventFeature;

/* JADX INFO: loaded from: classes3.dex */
abstract /* synthetic */ class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int[] f41143a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final /* synthetic */ int[] f41144b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ int[] f41145c;

    static {
        int[] iArr = new int[BeautyMode.values().length];
        f41145c = iArr;
        try {
            iArr[BeautyMode.FACE_RESHAPE.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            f41145c[BeautyMode.FACE_RESHAPE_LEFT.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            f41145c[BeautyMode.FACE_RESHAPE_RIGHT.ordinal()] = 3;
        } catch (NoSuchFieldError unused3) {
        }
        try {
            f41145c[BeautyMode.CHIN_RESHAPE.ordinal()] = 4;
        } catch (NoSuchFieldError unused4) {
        }
        try {
            f41145c[BeautyMode.CHIN_RESHAPE_LEFT.ordinal()] = 5;
        } catch (NoSuchFieldError unused5) {
        }
        try {
            f41145c[BeautyMode.CHIN_RESHAPE_RIGHT.ordinal()] = 6;
        } catch (NoSuchFieldError unused6) {
        }
        try {
            f41145c[BeautyMode.CHIN_LENGTH.ordinal()] = 7;
        } catch (NoSuchFieldError unused7) {
        }
        try {
            f41145c[BeautyMode.FACE_WIDTH.ordinal()] = 8;
        } catch (NoSuchFieldError unused8) {
        }
        try {
            f41145c[BeautyMode.FACE_CHEEKBONE.ordinal()] = 9;
        } catch (NoSuchFieldError unused9) {
        }
        try {
            f41145c[BeautyMode.FACE_JAW.ordinal()] = 10;
        } catch (NoSuchFieldError unused10) {
        }
        try {
            f41145c[BeautyMode.NOSE_SIZE.ordinal()] = 11;
        } catch (NoSuchFieldError unused11) {
        }
        try {
            f41145c[BeautyMode.NOSE_LENGTH.ordinal()] = 12;
        } catch (NoSuchFieldError unused12) {
        }
        try {
            f41145c[BeautyMode.NOSE_BRIDGE.ordinal()] = 13;
        } catch (NoSuchFieldError unused13) {
        }
        try {
            f41145c[BeautyMode.NOSE_TIP.ordinal()] = 14;
        } catch (NoSuchFieldError unused14) {
        }
        try {
            f41145c[BeautyMode.NOSE_WING.ordinal()] = 15;
        } catch (NoSuchFieldError unused15) {
        }
        try {
            f41145c[BeautyMode.NOSE_WIDTH.ordinal()] = 16;
        } catch (NoSuchFieldError unused16) {
        }
        try {
            f41145c[BeautyMode.EYE_SIZE.ordinal()] = 17;
        } catch (NoSuchFieldError unused17) {
        }
        try {
            f41145c[BeautyMode.EYE_SIZE_LEFT.ordinal()] = 18;
        } catch (NoSuchFieldError unused18) {
        }
        try {
            f41145c[BeautyMode.EYE_SIZE_RIGHT.ordinal()] = 19;
        } catch (NoSuchFieldError unused19) {
        }
        try {
            f41145c[BeautyMode.EYE_WIDTH.ordinal()] = 20;
        } catch (NoSuchFieldError unused20) {
        }
        try {
            f41145c[BeautyMode.EYE_HEIGHT.ordinal()] = 21;
        } catch (NoSuchFieldError unused21) {
        }
        try {
            f41145c[BeautyMode.EYE_DISTANCE.ordinal()] = 22;
        } catch (NoSuchFieldError unused22) {
        }
        try {
            f41145c[BeautyMode.EYE_SLANT.ordinal()] = 23;
        } catch (NoSuchFieldError unused23) {
        }
        try {
            f41145c[BeautyMode.LIP_SIZE.ordinal()] = 24;
        } catch (NoSuchFieldError unused24) {
        }
        try {
            f41145c[BeautyMode.LIP_WIDTH.ordinal()] = 25;
        } catch (NoSuchFieldError unused25) {
        }
        try {
            f41145c[BeautyMode.LIP_HEIGHT.ordinal()] = 26;
        } catch (NoSuchFieldError unused26) {
        }
        try {
            f41145c[BeautyMode.LIP_HEIGHT_UPPER.ordinal()] = 27;
        } catch (NoSuchFieldError unused27) {
        }
        try {
            f41145c[BeautyMode.LIP_HEIGHT_LOWER.ordinal()] = 28;
        } catch (NoSuchFieldError unused28) {
        }
        try {
            f41145c[BeautyMode.LIP_PEAK.ordinal()] = 29;
        } catch (NoSuchFieldError unused29) {
        }
        try {
            f41145c[BeautyMode.SKIN_SMOOTHER.ordinal()] = 30;
        } catch (NoSuchFieldError unused30) {
        }
        try {
            f41145c[BeautyMode.TEETH_WHITENER.ordinal()] = 31;
        } catch (NoSuchFieldError unused31) {
        }
        try {
            f41145c[BeautyMode.EYE_LASHES.ordinal()] = 32;
        } catch (NoSuchFieldError unused32) {
        }
        try {
            f41145c[BeautyMode.FACE_CONTOUR.ordinal()] = 33;
        } catch (NoSuchFieldError unused33) {
        }
        int[] iArr2 = new int[PerfectEffect.values().length];
        f41144b = iArr2;
        try {
            iArr2[PerfectEffect.RING.ordinal()] = 1;
        } catch (NoSuchFieldError unused34) {
        }
        try {
            f41144b[PerfectEffect.BRACELET.ordinal()] = 2;
        } catch (NoSuchFieldError unused35) {
        }
        try {
            f41144b[PerfectEffect.WATCH.ordinal()] = 3;
        } catch (NoSuchFieldError unused36) {
        }
        int[] iArr3 = new int[YMKFeatures$EventFeature.values().length];
        f41143a = iArr3;
        try {
            iArr3[YMKFeatures$EventFeature.Eyelashes.ordinal()] = 1;
        } catch (NoSuchFieldError unused37) {
        }
        try {
            f41143a[YMKFeatures$EventFeature.Eyebrows.ordinal()] = 2;
        } catch (NoSuchFieldError unused38) {
        }
        try {
            f41143a[YMKFeatures$EventFeature.Foundation.ordinal()] = 3;
        } catch (NoSuchFieldError unused39) {
        }
        try {
            f41143a[YMKFeatures$EventFeature.Bronzer.ordinal()] = 4;
        } catch (NoSuchFieldError unused40) {
        }
        try {
            f41143a[YMKFeatures$EventFeature.Concealer.ordinal()] = 5;
        } catch (NoSuchFieldError unused41) {
        }
        try {
            f41143a[YMKFeatures$EventFeature.EyeColor.ordinal()] = 6;
        } catch (NoSuchFieldError unused42) {
        }
        try {
            f41143a[YMKFeatures$EventFeature.Wig.ordinal()] = 7;
        } catch (NoSuchFieldError unused43) {
        }
        try {
            f41143a[YMKFeatures$EventFeature.HairDye.ordinal()] = 8;
        } catch (NoSuchFieldError unused44) {
        }
        try {
            f41143a[YMKFeatures$EventFeature.Blush.ordinal()] = 9;
        } catch (NoSuchFieldError unused45) {
        }
        try {
            f41143a[YMKFeatures$EventFeature.EyeLiner.ordinal()] = 10;
        } catch (NoSuchFieldError unused46) {
        }
        try {
            f41143a[YMKFeatures$EventFeature.EyeShadow.ordinal()] = 11;
        } catch (NoSuchFieldError unused47) {
        }
        try {
            f41143a[YMKFeatures$EventFeature.FaceContourPattern.ordinal()] = 12;
        } catch (NoSuchFieldError unused48) {
        }
        try {
            f41143a[YMKFeatures$EventFeature.FaceHighlight.ordinal()] = 13;
        } catch (NoSuchFieldError unused49) {
        }
        try {
            f41143a[YMKFeatures$EventFeature.FaceContour.ordinal()] = 14;
        } catch (NoSuchFieldError unused50) {
        }
        try {
            f41143a[YMKFeatures$EventFeature.HighlightContour.ordinal()] = 15;
        } catch (NoSuchFieldError unused51) {
        }
        try {
            f41143a[YMKFeatures$EventFeature.LipColor.ordinal()] = 16;
        } catch (NoSuchFieldError unused52) {
        }
        try {
            f41143a[YMKFeatures$EventFeature.DoubleEyelid.ordinal()] = 17;
        } catch (NoSuchFieldError unused53) {
        }
        try {
            f41143a[YMKFeatures$EventFeature.FaceArt.ordinal()] = 18;
        } catch (NoSuchFieldError unused54) {
        }
        try {
            f41143a[YMKFeatures$EventFeature.EyeWear.ordinal()] = 19;
        } catch (NoSuchFieldError unused55) {
        }
        try {
            f41143a[YMKFeatures$EventFeature.Necklace.ordinal()] = 20;
        } catch (NoSuchFieldError unused56) {
        }
        try {
            f41143a[YMKFeatures$EventFeature.Earrings.ordinal()] = 21;
        } catch (NoSuchFieldError unused57) {
        }
        try {
            f41143a[YMKFeatures$EventFeature.LipLiner.ordinal()] = 22;
        } catch (NoSuchFieldError unused58) {
        }
        try {
            f41143a[YMKFeatures$EventFeature.Background.ordinal()] = 23;
        } catch (NoSuchFieldError unused59) {
        }
        try {
            f41143a[YMKFeatures$EventFeature.BlemishRemoval.ordinal()] = 24;
        } catch (NoSuchFieldError unused60) {
        }
        try {
            f41143a[YMKFeatures$EventFeature.RedEyeRemoval.ordinal()] = 25;
        } catch (NoSuchFieldError unused61) {
        }
    }
}
