package com.perfectcorp.perfectlib.jniproxy;

/* JADX INFO: loaded from: classes3.dex */
public enum PixelFormat {
    Format32bppRGBA,
    Format32bppBGRA;


    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f40405a;

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static int f40406a;
    }

    PixelFormat() {
        int i2 = a.f40406a;
        a.f40406a = i2 + 1;
        this.f40405a = i2;
    }

    public final int a() {
        return this.f40405a;
    }

    PixelFormat() {
        this.f40405a = 0;
        a.f40406a = 1;
    }
}
