package com.google.android.gms.common.internal;

import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import com.sightcall.universal.media.offline.FileUtils;
import defpackage.az;
import defpackage.cj;
import defpackage.ct0;
import defpackage.md;
import defpackage.r81;

/* JADX INFO: loaded from: classes2.dex */
public abstract class Preconditions {
    public static void a(boolean z) {
        if (z) {
            return;
        }
        ct0.c();
    }

    public static void b(boolean z, String str) {
        if (z) {
            return;
        }
        md.n(str);
    }

    public static void c(boolean z, String str, Object... objArr) {
        if (!z) {
            throw new IllegalArgumentException(String.format(str, objArr));
        }
    }

    public static void d(Handler handler) {
        Looper looperMyLooper = Looper.myLooper();
        if (looperMyLooper != handler.getLooper()) {
            String name = looperMyLooper != null ? looperMyLooper.getThread().getName() : "null current looper";
            String name2 = handler.getLooper().getThread().getName();
            StringBuilder sb = new StringBuilder(String.valueOf(name).length() + String.valueOf(name2).length() + 35 + 1);
            cj.C(sb, "Must be called on ", name2, " thread, but got ", name);
            az.n(FileUtils.HIDDEN_PREFIX, sb);
        }
    }

    public static void e(String str) {
        if (TextUtils.isEmpty(str)) {
            md.n("Given String is empty or null");
        }
    }

    public static void f(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            md.n(str2);
        }
    }

    public static void g(String str) {
        if (Looper.getMainLooper() != Looper.myLooper()) {
            return;
        }
        md.k(str);
    }

    public static void h(Object obj) {
        if (obj != null) {
            return;
        }
        r81.d("null reference");
    }

    public static void i(Object obj, String str) {
        if (obj != null) {
            return;
        }
        r81.d(str);
    }

    public static void j(String str, boolean z) {
        if (z) {
            return;
        }
        md.k(str);
    }

    public static void k(boolean z) {
        if (z) {
            return;
        }
        r81.b();
    }
}
