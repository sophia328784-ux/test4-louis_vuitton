package com.google.android.exoplayer2.util;

import defpackage.ct0;
import defpackage.r81;

/* JADX INFO: loaded from: classes2.dex */
@Deprecated
public abstract class Assertions {
    public static void a(boolean z) {
        if (z) {
            return;
        }
        ct0.c();
    }

    public static void b(boolean z) {
        if (z) {
            return;
        }
        r81.b();
    }

    public static void c(Object obj) {
        if (obj != null) {
            return;
        }
        r81.b();
    }
}
