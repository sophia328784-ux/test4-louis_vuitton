package com.google.android.gms.internal.measurement;

import android.os.Handler;
import android.os.Looper;

/* JADX INFO: loaded from: classes2.dex */
public abstract class zzrn {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Object f30869a = new Object();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static Thread f30870b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static volatile Handler f30871c;

    public static boolean a(Thread thread) {
        if (f30870b == null) {
            f30870b = Looper.getMainLooper().getThread();
        }
        return thread == f30870b;
    }

    public static Handler b() {
        if (f30871c == null) {
            synchronized (f30869a) {
                try {
                    if (f30871c == null) {
                        f30871c = new Handler(Looper.getMainLooper());
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f30871c;
    }
}
