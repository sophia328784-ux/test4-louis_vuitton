package com.perfectcorp.perfectlib.makeupcam.camera;

/* JADX INFO: loaded from: classes3.dex */
abstract /* synthetic */ class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int[] f40903a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final /* synthetic */ int[] f40904b;

    static {
        int[] iArr = new int[FunStickerTemplate.SupportedFeature.a().length];
        f40904b = iArr;
        try {
            iArr[FunStickerTemplate.SupportedFeature.f40656a.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            f40904b[FunStickerTemplate.SupportedFeature.f40657b.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            f40904b[FunStickerTemplate.SupportedFeature.FACE_DISTORTION.ordinal()] = 3;
        } catch (NoSuchFieldError unused3) {
        }
        int[] iArr2 = new int[FunStickerTemplate.ActionHint.values().length];
        f40903a = iArr2;
        try {
            iArr2[FunStickerTemplate.ActionHint.MULTIFACE.ordinal()] = 1;
        } catch (NoSuchFieldError unused4) {
        }
        try {
            f40903a[FunStickerTemplate.ActionHint.MULTIFACE3.ordinal()] = 2;
        } catch (NoSuchFieldError unused5) {
        }
    }
}
