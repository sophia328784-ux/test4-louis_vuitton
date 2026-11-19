package com.google.android.gms.internal.clearcut;

/* JADX INFO: loaded from: classes2.dex */
abstract class zzaw {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Class f29649a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final boolean f29650b;

    static {
        Class<?> cls;
        Class<?> cls2 = null;
        try {
            cls = Class.forName("libcore.io.Memory");
        } catch (Throwable unused) {
            cls = null;
        }
        f29649a = cls;
        try {
            cls2 = Class.forName("org.robolectric.Robolectric");
        } catch (Throwable unused2) {
        }
        f29650b = cls2 != null;
    }

    public static boolean a() {
        return (f29649a == null || f29650b) ? false : true;
    }
}
