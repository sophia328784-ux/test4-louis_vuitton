package com.perfectcorp.thirdparty.com.google.common.base;

import defpackage.az;
import defpackage.ct0;
import defpackage.md;
import defpackage.pq0;
import defpackage.r81;

/* JADX INFO: loaded from: classes3.dex */
public abstract class Preconditions {
    public static String a(int i2, int i3, String str) {
        if (i2 < 0) {
            return Strings.a("%s (%s) must not be negative", str, Integer.valueOf(i2));
        }
        if (i3 >= 0) {
            return Strings.a("%s (%s) must not be greater than size (%s)", str, Integer.valueOf(i2), Integer.valueOf(i3));
        }
        md.n(pq0.k(i3, "negative size: "));
        return null;
    }

    public static void b(int i2, int i3) {
        String strA;
        if (i2 < 0 || i2 >= i3) {
            if (i2 < 0) {
                strA = Strings.a("%s (%s) must not be negative", "index", Integer.valueOf(i2));
            } else {
                if (i3 < 0) {
                    md.n(pq0.k(i3, "negative size: "));
                    return;
                }
                strA = Strings.a("%s (%s) must be less than size (%s)", "index", Integer.valueOf(i2), Integer.valueOf(i3));
            }
            throw new IndexOutOfBoundsException(strA);
        }
    }

    public static void c(int i2, int i3, int i4) {
        String strA;
        if (i2 < 0 || i3 < i2 || i3 > i4) {
            if (i2 < 0 || i2 > i4) {
                strA = a(i2, i4, "start index");
            } else {
                strA = (i3 < 0 || i3 > i4) ? a(i3, i4, "end index") : Strings.a("end index (%s) must not be less than start index (%s)", Integer.valueOf(i3), Integer.valueOf(i2));
            }
            throw new IndexOutOfBoundsException(strA);
        }
    }

    public static void d(Object obj, Object obj2) {
        if (obj == null) {
            throw new NullPointerException(String.valueOf(obj2));
        }
    }

    public static void e(int i2, int i3) {
        if (i2 < 0 || i2 > i3) {
            az.v(a(i2, i3, "index"));
        }
    }

    public static void f(boolean z) {
        if (z) {
            return;
        }
        ct0.c();
    }

    public static void g(boolean z, String str) {
        if (z) {
            return;
        }
        md.n(str);
    }

    public static void h(String str, boolean z) {
        if (z) {
            return;
        }
        md.k(str);
    }

    public static void i(boolean z) {
        if (z) {
            return;
        }
        r81.b();
    }
}
