package androidx.camera.core;

import android.util.Log;

/* JADX INFO: loaded from: classes.dex */
public abstract class Logger {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static int f1936a = 3;

    public static void a(String str) {
        c(6, str);
    }

    public static void b(String str) {
        c(6, str);
    }

    public static boolean c(int i2, String str) {
        return f1936a <= i2 || Log.isLoggable(str, i2);
    }
}
