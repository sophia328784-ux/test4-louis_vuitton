package org.spongycastle.pqc.crypto.xmss;

import defpackage.md;
import defpackage.r81;

/* JADX INFO: loaded from: classes5.dex */
public class XMSSUtil {
    public static long a(int i2, byte[] bArr) {
        long j2 = 0;
        if (bArr == null) {
            r81.d("in == null");
            return 0L;
        }
        for (int i3 = 0; i3 < i2; i3++) {
            j2 = (j2 << 8) | ((long) (bArr[i3] & 255));
        }
        return j2;
    }

    public static byte[] b(byte[] bArr) {
        if (bArr == null) {
            r81.d("in == null");
            return null;
        }
        byte[] bArr2 = new byte[bArr.length];
        for (int i2 = 0; i2 < bArr.length; i2++) {
            bArr2[i2] = bArr[i2];
        }
        return bArr2;
    }

    public static byte[][] c(byte[][] bArr) {
        if (bArr != null) {
            for (byte[] bArr2 : bArr) {
                if (bArr2 != null) {
                }
            }
            byte[][] bArr3 = new byte[bArr.length][];
            for (int i2 = 0; i2 < bArr.length; i2++) {
                bArr3[i2] = new byte[bArr[i2].length];
                int i3 = 0;
                while (true) {
                    byte[] bArr4 = bArr[i2];
                    if (i3 < bArr4.length) {
                        bArr3[i2][i3] = bArr4[i3];
                        i3++;
                    }
                }
            }
            return bArr3;
        }
        r81.d("in has null pointers");
        return null;
    }

    public static void d(byte[] bArr, byte[] bArr2, int i2) {
        if (bArr2 == null) {
            r81.d("src == null");
            return;
        }
        if (i2 < 0) {
            md.n("offset hast to be >= 0");
            return;
        }
        if (bArr2.length + i2 > bArr.length) {
            md.n("src length + offset must not be greater than size of destination");
            return;
        }
        for (int i3 = 0; i3 < bArr2.length; i3++) {
            bArr[i2 + i3] = bArr2[i3];
        }
    }

    public static byte[] e(byte[] bArr, int i2, int i3) {
        if (i2 < 0) {
            md.n("offset hast to be >= 0");
            return null;
        }
        if (i3 < 0) {
            md.n("length hast to be >= 0");
            return null;
        }
        if (i2 + i3 > bArr.length) {
            md.n("offset + length must not be greater then size of source array");
            return null;
        }
        byte[] bArr2 = new byte[i3];
        for (int i4 = 0; i4 < i3; i4++) {
            bArr2[i4] = bArr[i2 + i4];
        }
        return bArr2;
    }

    public static boolean f(int i2, long j2) {
        if (j2 >= 0) {
            return j2 < (1 << i2);
        }
        md.k("index must not be negative");
        return false;
    }

    public static byte[] g(long j2, int i2) {
        byte[] bArr = new byte[i2];
        for (int i3 = i2 - 1; i3 >= 0; i3--) {
            bArr[i3] = (byte) j2;
            j2 >>>= 8;
        }
        return bArr;
    }
}
