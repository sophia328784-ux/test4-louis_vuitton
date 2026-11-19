package com.perfectcorp.common;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import defpackage.md;

/* JADX INFO: loaded from: classes3.dex */
public abstract class PfCommons {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Handler f39153a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final boolean f39154b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static volatile Context f39155c;
    public static volatile boolean d;

    static {
        Handler handler;
        try {
            handler = new Handler(Looper.getMainLooper());
        } catch (RuntimeException e2) {
            if (!e2.getMessage().contains("not mocked")) {
                throw e2;
            }
            handler = null;
        }
        f39153a = handler;
        f39154b = handler != null;
    }

    public static boolean a() {
        return !f39154b || Thread.currentThread() == Looper.getMainLooper().getThread();
    }

    public static Context b() {
        if (f39155c != null) {
            return f39155c;
        }
        md.k("PfCommon.init() must be called first.");
        return null;
    }

    public static void c(Runnable runnable) {
        f39153a.post(runnable);
    }
}
