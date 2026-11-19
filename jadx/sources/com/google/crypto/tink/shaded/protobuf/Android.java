package com.google.crypto.tink.shaded.protobuf;

/* JADX INFO: loaded from: classes2.dex */
abstract class Android {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Class f34136a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final boolean f34137b;

    static {
        Class<?> cls;
        Class<?> cls2 = null;
        try {
            cls = Class.forName("libcore.io.Memory");
        } catch (Throwable unused) {
            cls = null;
        }
        f34136a = cls;
        try {
            cls2 = Class.forName("org.robolectric.Robolectric");
        } catch (Throwable unused2) {
        }
        f34137b = cls2 != null;
    }

    public static boolean a() {
        return (f34136a == null || f34137b) ? false : true;
    }
}
