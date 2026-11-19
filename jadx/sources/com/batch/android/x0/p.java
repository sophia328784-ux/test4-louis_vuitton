package com.batch.android.x0;

import defpackage.az;
import defpackage.ct0;
import defpackage.md;
import defpackage.pq0;
import defpackage.r81;

/* JADX INFO: loaded from: classes2.dex */
public final class p {
    private p() {
    }

    public static String a(String str, Object... objArr) {
        int iIndexOf;
        String strValueOf = String.valueOf(str);
        StringBuilder sb = new StringBuilder((objArr.length * 16) + strValueOf.length());
        int i2 = 0;
        int i3 = 0;
        while (i2 < objArr.length && (iIndexOf = strValueOf.indexOf("%s", i3)) != -1) {
            sb.append(strValueOf.substring(i3, iIndexOf));
            sb.append(objArr[i2]);
            i3 = iIndexOf + 2;
            i2++;
        }
        sb.append(strValueOf.substring(i3));
        if (i2 < objArr.length) {
            sb.append(" [");
            sb.append(objArr[i2]);
            for (int i4 = i2 + 1; i4 < objArr.length; i4++) {
                sb.append(", ");
                sb.append(objArr[i4]);
            }
            sb.append(']');
        }
        return sb.toString();
    }

    private static String b(int i2, int i3, String str) {
        if (i2 < 0) {
            return a("%s (%s) must not be negative", str, Integer.valueOf(i2));
        }
        if (i3 >= 0) {
            return a("%s (%s) must not be greater than size (%s)", str, Integer.valueOf(i2), Integer.valueOf(i3));
        }
        md.n(pq0.k(i3, "negative size: "));
        return null;
    }

    public static int c(int i2, int i3, String str) {
        if (i2 >= 0 && i2 < i3) {
            return i2;
        }
        az.v(a(i2, i3, str));
        return 0;
    }

    public static int d(int i2, int i3, String str) {
        if (i2 >= 0 && i2 <= i3) {
            return i2;
        }
        az.v(b(i2, i3, str));
        return 0;
    }

    public static void b(boolean z, Object obj) {
        if (!z) {
            throw new IllegalStateException(String.valueOf(obj));
        }
    }

    public static void b(boolean z, String str, Object... objArr) {
        if (z) {
            return;
        }
        md.k(a(str, objArr));
    }

    public static int b(int i2, int i3) {
        return d(i2, i3, "index");
    }

    public static void b(boolean z) {
        if (z) {
            return;
        }
        r81.b();
    }

    public static void b(int i2, int i3, int i4) {
        if (i2 < 0 || i3 < i2 || i3 > i4) {
            az.v(a(i2, i3, i4));
        }
    }

    public static void a(boolean z, Object obj) {
        if (!z) {
            throw new IllegalArgumentException(String.valueOf(obj));
        }
    }

    public static void a(boolean z, String str, Object... objArr) {
        if (z) {
            return;
        }
        md.n(a(str, objArr));
    }

    public static <T> T a(T t) {
        t.getClass();
        return t;
    }

    public static <T> T a(T t, Object obj) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException(String.valueOf(obj));
    }

    public static <T> T a(T t, String str, Object... objArr) {
        if (t != null) {
            return t;
        }
        r81.d(a(str, objArr));
        return null;
    }

    public static int a(int i2, int i3) {
        return c(i2, i3, "index");
    }

    private static String a(int i2, int i3, String str) {
        if (i2 < 0) {
            return a("%s (%s) must not be negative", str, Integer.valueOf(i2));
        }
        if (i3 >= 0) {
            return a("%s (%s) must be less than size (%s)", str, Integer.valueOf(i2), Integer.valueOf(i3));
        }
        md.n(pq0.k(i3, "negative size: "));
        return null;
    }

    private static String a(int i2, int i3, int i4) {
        if (i2 < 0 || i2 > i4) {
            return b(i2, i4, "start index");
        }
        if (i3 >= 0 && i3 <= i4) {
            return a("end index (%s) must not be less than start index (%s)", Integer.valueOf(i3), Integer.valueOf(i2));
        }
        return b(i3, i4, "end index");
    }

    public static void a(boolean z) {
        if (z) {
            return;
        }
        ct0.c();
    }
}
