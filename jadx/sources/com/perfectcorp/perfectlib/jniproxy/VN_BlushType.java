package com.perfectcorp.perfectlib.jniproxy;

/* JADX INFO: loaded from: classes3.dex */
public enum VN_BlushType {
    VN_BLUSH_MATTE,
    VN_BLUSH_SATIN,
    VN_BLUSH_SHIMMER;


    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f40416a;

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static int f40417a;
    }

    VN_BlushType() {
        this.f40416a = 0;
        a.f40417a = 1;
    }

    public final int a() {
        return this.f40416a;
    }

    VN_BlushType() {
        int i2 = a.f40417a;
        a.f40417a = i2 + 1;
        this.f40416a = i2;
    }
}
