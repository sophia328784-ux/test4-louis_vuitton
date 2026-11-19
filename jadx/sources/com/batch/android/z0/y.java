package com.batch.android.z0;

import java.math.BigInteger;
import java.util.AbstractMap;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class y {
    private y() {
    }

    public static <K extends x, V extends x> l a(Map<K, V> map) {
        x[] xVarArr = new x[map.size() * 2];
        int i2 = 0;
        for (Map.Entry<K, V> entry : map.entrySet()) {
            xVarArr[i2] = entry.getKey();
            xVarArr[i2 + 1] = entry.getValue();
            i2 += 2;
        }
        return new com.batch.android.a1.j(xVarArr);
    }

    public static l b(x[] xVarArr, boolean z) {
        if (xVarArr.length == 0) {
            return com.batch.android.a1.j.b0();
        }
        return z ? new com.batch.android.a1.j(xVarArr) : new com.batch.android.a1.j((x[]) Arrays.copyOf(xVarArr, xVarArr.length));
    }

    public static a c() {
        return new a();
    }

    public static m d() {
        return com.batch.android.a1.k.b0();
    }

    public static p b(byte[] bArr, boolean z) {
        if (z) {
            return new com.batch.android.a1.l(bArr);
        }
        return new com.batch.android.a1.l(Arrays.copyOf(bArr, bArr.length));
    }

    public static p b(byte[] bArr, int i2, int i3) {
        return b(bArr, i2, i3, false);
    }

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Map<x, x> f24265a = new LinkedHashMap();

        public a a(Iterable<? extends Map.Entry<? extends x, ? extends x>> iterable) {
            for (Map.Entry<? extends x, ? extends x> entry : iterable) {
                a(entry.getKey(), entry.getValue());
            }
            return this;
        }

        public a a(Map.Entry<? extends x, ? extends x> entry) {
            a(entry.getKey(), entry.getValue());
            return this;
        }

        public a a(x xVar, x xVar2) {
            this.f24265a.put(xVar, xVar2);
            return this;
        }

        public s a() {
            return y.a(this.f24265a);
        }

        public a a(Map<? extends x, ? extends x> map) {
            Iterator<Map.Entry<? extends x, ? extends x>> it = map.entrySet().iterator();
            while (it.hasNext()) {
                a(it.next());
            }
            return this;
        }
    }

    public static p b(byte[] bArr, int i2, int i3, boolean z) {
        if (z && i2 == 0 && i3 == bArr.length) {
            return new com.batch.android.a1.l(bArr);
        }
        return new com.batch.android.a1.l(Arrays.copyOfRange(bArr, i2, i3));
    }

    public static l b(x... xVarArr) {
        if (xVarArr.length == 0) {
            return com.batch.android.a1.j.b0();
        }
        return new com.batch.android.a1.j((x[]) Arrays.copyOf(xVarArr, xVarArr.length));
    }

    public static p b(byte[] bArr) {
        return new com.batch.android.a1.l(bArr);
    }

    public static l b() {
        return com.batch.android.a1.j.b0();
    }

    public static k a(byte b2) {
        return new com.batch.android.a1.i(b2);
    }

    public static k a(short s) {
        return new com.batch.android.a1.i(s);
    }

    public static k a(int i2) {
        return new com.batch.android.a1.i(i2);
    }

    public static k a(long j2) {
        return new com.batch.android.a1.i(j2);
    }

    public static k a(BigInteger bigInteger) {
        return new com.batch.android.a1.d(bigInteger);
    }

    public static j a(float f2) {
        return new com.batch.android.a1.g(f2);
    }

    public static j a(double d) {
        return new com.batch.android.a1.g(d);
    }

    public static g a(byte[] bArr) {
        return a(bArr, false);
    }

    public static g a(byte[] bArr, boolean z) {
        if (z) {
            return new com.batch.android.a1.e(bArr);
        }
        return new com.batch.android.a1.e(Arrays.copyOf(bArr, bArr.length));
    }

    public static g a(byte[] bArr, int i2, int i3) {
        return a(bArr, i2, i3, false);
    }

    public static g a(byte[] bArr, int i2, int i3, boolean z) {
        if (z && i2 == 0 && i3 == bArr.length) {
            return new com.batch.android.a1.e(bArr);
        }
        return new com.batch.android.a1.e(Arrays.copyOfRange(bArr, i2, i3));
    }

    public static p a(String str) {
        return new com.batch.android.a1.l(str);
    }

    public static f a(List<? extends x> list) {
        if (list.isEmpty()) {
            return com.batch.android.a1.c.b0();
        }
        return new com.batch.android.a1.c((x[]) list.toArray(new x[list.size()]));
    }

    public static f a(x... xVarArr) {
        if (xVarArr.length == 0) {
            return com.batch.android.a1.c.b0();
        }
        return new com.batch.android.a1.c((x[]) Arrays.copyOf(xVarArr, xVarArr.length));
    }

    public static f a(x[] xVarArr, boolean z) {
        if (xVarArr.length == 0) {
            return com.batch.android.a1.c.b0();
        }
        if (z) {
            return new com.batch.android.a1.c(xVarArr);
        }
        return new com.batch.android.a1.c((x[]) Arrays.copyOf(xVarArr, xVarArr.length));
    }

    public static f a() {
        return com.batch.android.a1.c.b0();
    }

    public static h a(boolean z) {
        return z ? com.batch.android.a1.f.f22919c : com.batch.android.a1.f.d;
    }

    @SafeVarargs
    public static s a(Map.Entry<? extends x, ? extends x>... entryArr) {
        x[] xVarArr = new x[entryArr.length * 2];
        for (int i2 = 0; i2 < entryArr.length; i2 += 2) {
            int i3 = i2 * 2;
            xVarArr[i3] = entryArr[i2].getKey();
            xVarArr[i3 + 1] = entryArr[i2].getValue();
        }
        return b(xVarArr, true);
    }

    public static Map.Entry<x, x> a(x xVar, x xVar2) {
        return new AbstractMap.SimpleEntry(xVar, xVar2);
    }

    public static i a(byte b2, byte[] bArr) {
        return new com.batch.android.a1.h(b2, bArr);
    }
}
