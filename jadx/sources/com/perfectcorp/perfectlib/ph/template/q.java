package com.perfectcorp.perfectlib.ph.template;

import com.perfectcorp.perfectlib.ymk.model.BeautyMode;

/* JADX INFO: loaded from: classes3.dex */
abstract /* synthetic */ class q {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int[] f41705a;

    static {
        int[] iArr = new int[BeautyMode.values().length];
        f41705a = iArr;
        try {
            iArr[BeautyMode.EYE_CONTACT.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            f41705a[BeautyMode.FACE_ART.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            f41705a[BeautyMode.FACE_ART_LAYER_2.ordinal()] = 3;
        } catch (NoSuchFieldError unused3) {
        }
    }
}
