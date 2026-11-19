package com.perfectcorp.perfectlib.makeupcam.camera;

/* JADX INFO: loaded from: classes3.dex */
abstract /* synthetic */ class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int[] f40879a;

    static {
        int[] iArr = new int[YMKPrimitiveData.Mask.Position.values().length];
        f40879a = iArr;
        try {
            iArr[YMKPrimitiveData.Mask.Position.UPPER.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            f40879a[YMKPrimitiveData.Mask.Position.LOWER.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            f40879a[YMKPrimitiveData.Mask.Position.NONE.ordinal()] = 3;
        } catch (NoSuchFieldError unused3) {
        }
    }
}
