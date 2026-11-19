package com.google.android.exoplayer2;

import com.google.android.exoplayer2.util.Util;
import defpackage.a;
import defpackage.tr;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
@Deprecated
public final class Format implements Bundleable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f28143b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f28144c;
    public final int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f28145e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f28146f;
    public final List g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final long f28147h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f28148i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int f28149j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final float f28150k;
    public final float l;
    public final int m;
    public final int n;
    public final int o;
    public final int p;
    public final int q;
    public final int r;
    public final int s;
    public int t;

    public static final class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public String f28151a;
    }

    static {
        new Format(new Builder());
        Util.e(0);
        Util.e(1);
        Util.e(2);
        Util.e(3);
        tr.v(4, 5, 6, 7, 8);
        tr.v(9, 10, 11, 12, 13);
        tr.v(14, 15, 16, 17, 18);
        tr.v(19, 20, 21, 22, 23);
        tr.v(24, 25, 26, 27, 28);
        Util.e(29);
        Util.e(30);
        Util.e(31);
    }

    public Format(Builder builder) {
        int i2 = Util.f28451a;
        this.f28143b = -1;
        this.f28144c = -1;
        this.d = -1;
        this.f28145e = builder.f28151a;
        this.f28146f = -1;
        this.g = Collections.EMPTY_LIST;
        this.f28147h = Long.MAX_VALUE;
        this.f28148i = -1;
        this.f28149j = -1;
        this.f28150k = -1.0f;
        this.l = 1.0f;
        this.m = -1;
        this.n = -1;
        this.o = -1;
        this.p = -1;
        this.q = -1;
        this.r = -1;
        this.s = -1;
    }

    public final boolean equals(Object obj) {
        int i2;
        if (this == obj) {
            return true;
        }
        if (obj != null && Format.class == obj.getClass()) {
            Format format = (Format) obj;
            List list = format.g;
            int i3 = this.t;
            if ((i3 == 0 || (i2 = format.t) == 0 || i3 == i2) && this.f28143b == format.f28143b && this.f28144c == format.f28144c && this.f28146f == format.f28146f && this.f28147h == format.f28147h && this.f28148i == format.f28148i && this.f28149j == format.f28149j && this.m == format.m && this.n == format.n && this.o == format.o && this.p == format.p && this.q == format.q && this.r == format.r && this.s == format.s && Float.compare(this.f28150k, format.f28150k) == 0 && Float.compare(this.l, format.l) == 0) {
                int i4 = Util.f28451a;
                if (Util.a(this.f28145e, format.f28145e) && Arrays.equals((byte[]) null, (byte[]) null)) {
                    List list2 = this.g;
                    if (list2.size() == list.size()) {
                        for (int i5 = 0; i5 < list2.size(); i5++) {
                            if (Arrays.equals((byte[]) list2.get(i5), (byte[]) list.get(i5))) {
                            }
                        }
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public final int hashCode() {
        if (this.t == 0) {
            int i2 = ((((527 * 31 * 923521) + this.f28143b) * 31) + this.f28144c) * 923521;
            String str = this.f28145e;
            this.t = (((((((((((((((Float.floatToIntBits(this.l) + ((Float.floatToIntBits(this.f28150k) + ((((((((((i2 + (str == null ? 0 : str.hashCode())) * 31) + this.f28146f) * 31) + ((int) this.f28147h)) * 31) + this.f28148i) * 31) + this.f28149j) * 31)) * 961)) * 31) + this.m) * 31) + this.n) * 31) + this.o) * 31) + this.p) * 29791) + this.q) * 31) + this.r) * 31) + this.s) * 31;
        }
        return this.t;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Format(null, null, null, ");
        sb.append(this.f28145e);
        sb.append(", null, ");
        sb.append(this.d);
        sb.append(", null, [");
        sb.append(this.f28148i);
        sb.append(", ");
        sb.append(this.f28149j);
        sb.append(", ");
        sb.append(this.f28150k);
        sb.append(", null], [");
        sb.append(this.n);
        sb.append(", ");
        return a.i(this.o, "])", sb);
    }
}
