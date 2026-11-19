package com.perfectcorp.perfectlib.jniproxy;

/* JADX INFO: loaded from: classes3.dex */
public enum VN_HairDyeMode {
    HAIR_DYE_GENERIC_MODE,
    HAIR_DYE_SALON_MODE,
    HAIR_DYE_OLD_SALON_MODE;


    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f40422a;

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static int f40423a;
    }

    VN_HairDyeMode() {
        this.f40422a = 0;
        a.f40423a = 1;
    }

    public final int a() {
        return this.f40422a;
    }

    VN_HairDyeMode() {
        int i2 = a.f40423a;
        a.f40423a = i2 + 1;
        this.f40422a = i2;
    }
}
