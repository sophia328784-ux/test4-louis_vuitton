package com.perfectcorp.perfectlib.jniproxy;

/* JADX INFO: loaded from: classes3.dex */
public enum VN_Lipliner_Type {
    LIPLINER_THICK,
    LIPLINER_BRIGHT;


    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f40425a;

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static int f40426a;
    }

    VN_Lipliner_Type() {
        int i2 = a.f40426a;
        a.f40426a = i2 + 1;
        this.f40425a = i2;
    }

    public final int a() {
        return this.f40425a;
    }

    VN_Lipliner_Type() {
        this.f40425a = 0;
        a.f40426a = 1;
    }
}
