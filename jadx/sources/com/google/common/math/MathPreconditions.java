package com.google.common.math;

import defpackage.lc0;

/* JADX INFO: loaded from: classes2.dex */
abstract class MathPreconditions {
    public static void a(long j2, String str) {
        if (j2 >= 0) {
            return;
        }
        throw new IllegalArgumentException(str + " (" + j2 + ") must be >= 0");
    }

    public static void b(boolean z) {
        if (z) {
            return;
        }
        lc0.l("mode was UNNECESSARY, but rounding was necessary");
    }
}
