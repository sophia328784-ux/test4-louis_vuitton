package com.google.common.base;

import com.google.common.util.concurrent.ListenableFuture;
import defpackage.az;
import defpackage.ct0;
import defpackage.md;
import defpackage.pq0;
import defpackage.r81;

/* JADX INFO: loaded from: classes2.dex */
public abstract class Preconditions {
    public static String a(int i2, int i3, String str) {
        if (i2 < 0) {
            return Strings.b("%s (%s) must not be negative", str, Integer.valueOf(i2));
        }
        if (i3 >= 0) {
            return Strings.b("%s (%s) must not be greater than size (%s)", str, Integer.valueOf(i2), Integer.valueOf(i3));
        }
        md.n(pq0.k(i3, "negative size: "));
        return null;
    }

    public static void b(int i2, String str, boolean z) {
        if (z) {
            return;
        }
        md.n(Strings.b(str, Integer.valueOf(i2)));
    }

    public static void c(long j2, long j3, String str, boolean z) {
        if (z) {
            return;
        }
        md.n(Strings.b(str, Long.valueOf(j2), Long.valueOf(j3)));
    }

    public static void d(long j2, String str, boolean z) {
        if (z) {
            return;
        }
        md.n(Strings.b(str, Long.valueOf(j2)));
    }

    public static void e(Object obj, String str, boolean z) {
        if (z) {
            return;
        }
        md.n(Strings.b(str, obj));
    }

    public static void f(String str, int i2, int i3, boolean z) {
        if (z) {
            return;
        }
        md.n(Strings.b(str, Integer.valueOf(i2), Integer.valueOf(i3)));
    }

    public static void g(boolean z) {
        if (z) {
            return;
        }
        ct0.c();
    }

    public static void h(boolean z, String str) {
        if (z) {
            return;
        }
        md.n(str);
    }

    public static void i(boolean z, String str, Object obj, Comparable comparable) {
        if (z) {
            return;
        }
        md.n(Strings.b(str, obj, comparable));
    }

    public static void j(int i2, int i3) {
        String strB;
        if (i2 < 0 || i2 >= i3) {
            if (i2 < 0) {
                strB = Strings.b("%s (%s) must not be negative", "index", Integer.valueOf(i2));
            } else {
                if (i3 < 0) {
                    md.n(pq0.k(i3, "negative size: "));
                    return;
                }
                strB = Strings.b("%s (%s) must be less than size (%s)", "index", Integer.valueOf(i2), Integer.valueOf(i3));
            }
            throw new IndexOutOfBoundsException(strB);
        }
    }

    public static void k(ListenableFuture listenableFuture, String str, Object obj) {
        if (listenableFuture != null) {
            return;
        }
        r81.d(Strings.b(str, obj));
    }

    public static void l(Object obj) {
        obj.getClass();
    }

    public static void m(Object obj, String str) {
        if (obj != null) {
            return;
        }
        r81.d(str);
    }

    public static void n(int i2, int i3) {
        if (i2 < 0 || i2 > i3) {
            az.v(a(i2, i3, "index"));
        }
    }

    public static void o(int i2, int i3, int i4) {
        String strA;
        if (i2 < 0 || i3 < i2 || i3 > i4) {
            if (i2 < 0 || i2 > i4) {
                strA = a(i2, i4, "start index");
            } else {
                strA = (i3 < 0 || i3 > i4) ? a(i3, i4, "end index") : Strings.b("end index (%s) must not be less than start index (%s)", Integer.valueOf(i3), Integer.valueOf(i2));
            }
            throw new IndexOutOfBoundsException(strA);
        }
    }

    public static void p(String str, boolean z) {
        if (z) {
            return;
        }
        md.k(str);
    }

    public static void q(boolean z) {
        if (z) {
            return;
        }
        r81.b();
    }
}
