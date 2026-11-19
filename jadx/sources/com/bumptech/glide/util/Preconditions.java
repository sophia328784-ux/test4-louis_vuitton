package com.bumptech.glide.util;

import defpackage.md;
import defpackage.r81;

/* JADX INFO: loaded from: classes2.dex */
public abstract class Preconditions {
    public static void a(boolean z, String str) {
        if (z) {
            return;
        }
        md.n(str);
    }

    public static void b(Object obj) {
        c(obj, "Argument must not be null");
    }

    public static void c(Object obj, String str) {
        if (obj != null) {
            return;
        }
        r81.d(str);
    }
}
