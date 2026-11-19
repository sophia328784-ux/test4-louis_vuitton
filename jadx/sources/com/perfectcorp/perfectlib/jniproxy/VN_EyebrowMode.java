package com.perfectcorp.perfectlib.jniproxy;

/* JADX INFO: loaded from: classes3.dex */
public enum VN_EyebrowMode {
    EYEBROW_ORIGINAL_MODE,
    EYEBROW_2D_STYLE_MODE,
    EYEBROW_ART_DESIGN_MODE;


    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f40419a;

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static int f40420a;
    }

    VN_EyebrowMode() {
        this.f40419a = 0;
        a.f40420a = 1;
    }

    public final int a() {
        return this.f40419a;
    }

    VN_EyebrowMode() {
        int i2 = a.f40420a;
        a.f40420a = i2 + 1;
        this.f40419a = i2;
    }
}
