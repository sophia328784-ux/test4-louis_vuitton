package org.spongycastle.util;

import java.util.NoSuchElementException;

/* JADX INFO: loaded from: classes5.dex */
public abstract class Arrays {

    public static class Iterator<T> implements java.util.Iterator<T> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Object[] f78262b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f78263c = 0;

        public Iterator(T[] tArr) {
            this.f78262b = tArr;
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            return this.f78263c < this.f78262b.length;
        }

        @Override // java.util.Iterator
        public final Object next() {
            int i2 = this.f78263c;
            Object[] objArr = this.f78262b;
            if (i2 != objArr.length) {
                this.f78263c = i2 + 1;
                return objArr[i2];
            }
            throw new NoSuchElementException("Out of elements: " + this.f78263c);
        }

        @Override // java.util.Iterator
        public final void remove() {
            throw new UnsupportedOperationException("Cannot remove element from an Array.");
        }
    }

    public static boolean a(byte[] bArr, byte[] bArr2) {
        if (bArr == bArr2) {
            return true;
        }
        if (bArr == null || bArr2 == null || bArr.length != bArr2.length) {
            return false;
        }
        for (int i2 = 0; i2 != bArr.length; i2++) {
            if (bArr[i2] != bArr2[i2]) {
                return false;
            }
        }
        return true;
    }

    public static boolean b(int[] iArr, int[] iArr2) {
        if (iArr == iArr2) {
            return true;
        }
        if (iArr == null || iArr2 == null || iArr.length != iArr2.length) {
            return false;
        }
        for (int i2 = 0; i2 != iArr.length; i2++) {
            if (iArr[i2] != iArr2[i2]) {
                return false;
            }
        }
        return true;
    }

    public static byte[] c(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        byte[] bArr2 = new byte[bArr.length];
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        return bArr2;
    }

    public static short[] d(short[] sArr) {
        if (sArr == null) {
            return null;
        }
        short[] sArr2 = new short[sArr.length];
        System.arraycopy(sArr, 0, sArr2, 0, sArr.length);
        return sArr2;
    }

    public static byte[] e(byte[] bArr, byte[] bArr2) {
        if (bArr2 == null) {
            return bArr2 != null ? c(bArr2) : c(bArr);
        }
        byte[] bArr3 = new byte[bArr.length + bArr2.length];
        System.arraycopy(bArr, 0, bArr3, 0, bArr.length);
        System.arraycopy(bArr2, 0, bArr3, bArr.length, bArr2.length);
        return bArr3;
    }

    public static int f(int i2, int[] iArr) {
        if (iArr == null) {
            return 0;
        }
        int i3 = i2 + 1;
        while (true) {
            i2--;
            if (i2 < 0) {
                return i3;
            }
            i3 = (i3 * 257) ^ iArr[i2];
        }
    }

    public static int g(byte[] bArr) {
        if (bArr == null) {
            return 0;
        }
        int length = bArr.length;
        int i2 = length + 1;
        while (true) {
            length--;
            if (length < 0) {
                return i2;
            }
            i2 = (i2 * 257) ^ bArr[length];
        }
    }

    public static int h(int[] iArr) {
        if (iArr == null) {
            return 0;
        }
        int length = iArr.length;
        int i2 = length + 1;
        while (true) {
            length--;
            if (length < 0) {
                return i2;
            }
            i2 = (i2 * 257) ^ iArr[length];
        }
    }

    public static int i(long[] jArr, int i2) {
        if (jArr == null) {
            return 0;
        }
        int i3 = i2 + 1;
        while (true) {
            i2--;
            if (i2 < 0) {
                return i3;
            }
            long j2 = jArr[i2];
            i3 = (((i3 * 257) ^ ((int) j2)) * 257) ^ ((int) (j2 >>> 32));
        }
    }

    public static int j(short[] sArr) {
        if (sArr == null) {
            return 0;
        }
        int length = sArr.length;
        int i2 = length + 1;
        while (true) {
            length--;
            if (length < 0) {
                return i2;
            }
            i2 = (i2 * 257) ^ (sArr[length] & 255);
        }
    }

    public static int k(short[][] sArr) {
        int iJ = 0;
        for (int i2 = 0; i2 != sArr.length; i2++) {
            iJ = (iJ * 257) + j(sArr[i2]);
        }
        return iJ;
    }
}
