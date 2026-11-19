package com.perfectcorp.perfectlib.ph.kernelctrl.sku;

/* JADX INFO: loaded from: classes3.dex */
abstract /* synthetic */ class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int[] f41554a;

    static {
        int[] iArr = new int[com.perfectcorp.perfectlib.ph.database.ymk.sku.h.e.values().length];
        f41554a = iArr;
        try {
            iArr[com.perfectcorp.perfectlib.ph.database.ymk.sku.h.e.NOT_SUPPORT.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            f41554a[com.perfectcorp.perfectlib.ph.database.ymk.sku.h.e.NOT_FOUND.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            f41554a[com.perfectcorp.perfectlib.ph.database.ymk.sku.h.e.OK.ordinal()] = 3;
        } catch (NoSuchFieldError unused3) {
        }
    }
}
