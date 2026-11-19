package androidx.core.util;

import defpackage.ct0;
import defpackage.md;
import defpackage.r81;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
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

    public static void c(int i2, int i3, int i4, String str) {
        if (i2 < i3) {
            Locale locale = Locale.US;
            throw new IllegalArgumentException(str + " is out of range of [" + i3 + ", " + i4 + "] (too low)");
        }
        if (i2 <= i4) {
            return;
        }
        Locale locale2 = Locale.US;
        throw new IllegalArgumentException(str + " is out of range of [" + i3 + ", " + i4 + "] (too high)");
    }

    public static void d(int i2) {
        if (i2 >= 0) {
            return;
        }
        ct0.c();
    }

    public static void e(Object obj, String str) {
        if (obj != null) {
            return;
        }
        r81.d(str);
    }

    public static void f(String str, boolean z) {
        if (z) {
            return;
        }
        md.k(str);
    }
}
