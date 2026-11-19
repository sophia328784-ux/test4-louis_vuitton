package com.google.android.gms.internal.vision;

/* JADX INFO: loaded from: classes2.dex */
abstract class zzhi {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Class f31180a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final boolean f31181b;

    static {
        Class<?> cls;
        Class<?> cls2 = null;
        try {
            cls = Class.forName("libcore.io.Memory");
        } catch (Throwable unused) {
            cls = null;
        }
        f31180a = cls;
        try {
            cls2 = Class.forName("org.robolectric.Robolectric");
        } catch (Throwable unused2) {
        }
        f31181b = cls2 != null;
    }

    public static boolean a() {
        return (f31180a == null || f31181b) ? false : true;
    }
}
