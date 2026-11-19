package com.perfectcorp.perfectlib.hc.database.ymk;

import com.perfectcorp.perfectlib.ymk.model.BeautyMode;

/* JADX INFO: loaded from: classes3.dex */
abstract /* synthetic */ class ae {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int[] f40291a;

    static {
        int[] iArr = new int[BeautyMode.values().length];
        f40291a = iArr;
        try {
            iArr[BeautyMode.EYE_CONTACT.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            f40291a[BeautyMode.FACE_ART.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            f40291a[BeautyMode.FACE_ART_LAYER_2.ordinal()] = 3;
        } catch (NoSuchFieldError unused3) {
        }
    }
}
