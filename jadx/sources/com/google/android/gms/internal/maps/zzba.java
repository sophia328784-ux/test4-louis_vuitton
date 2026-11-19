package com.google.android.gms.internal.maps;

import defpackage.md;
import defpackage.pq0;

/* JADX INFO: loaded from: classes2.dex */
public abstract class zzba {
    public static void a(int i2, int i3) {
        String strA;
        if (i2 < 0 || i2 >= i3) {
            if (i2 < 0) {
                strA = zzbb.a("%s (%s) must not be negative", "index", Integer.valueOf(i2));
            } else {
                if (i3 < 0) {
                    md.n(pq0.k(i3, "negative size: "));
                    return;
                }
                strA = zzbb.a("%s (%s) must be less than size (%s)", "index", Integer.valueOf(i2), Integer.valueOf(i3));
            }
            throw new IndexOutOfBoundsException(strA);
        }
    }

    public static void b(int i2, int i3, int i4) {
        String strC;
        if (i2 < 0 || i3 < i2 || i3 > i4) {
            if (i2 < 0 || i2 > i4) {
                strC = c(i2, i4, "start index");
            } else {
                strC = (i3 < 0 || i3 > i4) ? c(i3, i4, "end index") : zzbb.a("end index (%s) must not be less than start index (%s)", Integer.valueOf(i3), Integer.valueOf(i2));
            }
            throw new IndexOutOfBoundsException(strC);
        }
    }

    public static String c(int i2, int i3, String str) {
        if (i2 < 0) {
            return zzbb.a("%s (%s) must not be negative", str, Integer.valueOf(i2));
        }
        if (i3 >= 0) {
            return zzbb.a("%s (%s) must not be greater than size (%s)", str, Integer.valueOf(i2), Integer.valueOf(i3));
        }
        md.n(pq0.k(i3, "negative size: "));
        return null;
    }
}
