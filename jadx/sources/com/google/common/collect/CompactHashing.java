package com.google.common.collect;

import defpackage.md;
import defpackage.pq0;
import java.util.Objects;
import org.bouncycastle.crypto.hpke.HPKE;

/* JADX INFO: loaded from: classes2.dex */
abstract class CompactHashing {
    public static Object a(int i2) {
        if (i2 < 2 || i2 > 1073741824 || Integer.highestOneBit(i2) != i2) {
            md.n(pq0.k(i2, "must be power of 2 between 2^1 and 2^30: "));
            return null;
        }
        if (i2 <= 256) {
            return new byte[i2];
        }
        return i2 <= 65536 ? new short[i2] : new int[i2];
    }

    public static int b(int i2, int i3, int i4) {
        return (i2 & (~i4)) | (i3 & i4);
    }

    public static int c(int i2) {
        return (i2 + 1) * (i2 < 32 ? 4 : 2);
    }

    public static int d(Object obj, Object obj2, int i2, Object obj3, int[] iArr, Object[] objArr, Object[] objArr2) {
        int iB = Hashing.b(obj);
        int i3 = iB & i2;
        int iE = e(i3, obj3);
        if (iE != 0) {
            int i4 = ~i2;
            int i5 = iB & i4;
            int i6 = -1;
            while (true) {
                int i7 = iE - 1;
                int i8 = iArr[i7];
                if ((i8 & i4) == i5 && Objects.equals(obj, objArr[i7]) && (objArr2 == null || Objects.equals(obj2, objArr2[i7]))) {
                    int i9 = i8 & i2;
                    if (i6 == -1) {
                        f(i3, i9, obj3);
                        return i7;
                    }
                    iArr[i6] = b(iArr[i6], i9, i2);
                    return i7;
                }
                int i10 = i8 & i2;
                if (i10 == 0) {
                    break;
                }
                i6 = i7;
                iE = i10;
            }
        }
        return -1;
    }

    public static int e(int i2, Object obj) {
        if (obj instanceof byte[]) {
            return ((byte[]) obj)[i2] & 255;
        }
        return obj instanceof short[] ? ((short[]) obj)[i2] & HPKE.aead_EXPORT_ONLY : ((int[]) obj)[i2];
    }

    public static void f(int i2, int i3, Object obj) {
        if (obj instanceof byte[]) {
            ((byte[]) obj)[i2] = (byte) i3;
        } else if (obj instanceof short[]) {
            ((short[]) obj)[i2] = (short) i3;
        } else {
            ((int[]) obj)[i2] = i3;
        }
    }
}
