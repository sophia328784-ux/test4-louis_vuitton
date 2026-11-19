package org.bouncycastle.pqc.crypto.picnic;

import defpackage.a;
import org.bouncycastle.util.Integers;

/* JADX INFO: loaded from: classes5.dex */
class Utils {
    public static int ceil_log2(int i2) {
        if (i2 == 0) {
            return 0;
        }
        return 32 - nlz(i2 - 1);
    }

    public static byte getBit(byte[] bArr, int i2) {
        return (byte) ((bArr[i2 >>> 3] >>> ((i2 & 7) ^ 7)) & 1);
    }

    public static int getBitFromWordArray(int[] iArr, int i2) {
        return getBit(iArr, i2);
    }

    public static byte getCrumbAligned(byte[] bArr, int i2) {
        int i3 = bArr[i2 >>> 2] >>> (((i2 << 1) & 6) ^ 6);
        return (byte) (((i3 & 2) >> 1) | ((i3 & 1) << 1));
    }

    public static int getTrailingBitsMask(int i2) {
        int i3 = i2 & (-8);
        int i4 = ~((-1) << i3);
        int i5 = i2 & 7;
        return i5 != 0 ? (((65280 >>> i5) & 255) << i3) ^ i4 : i4;
    }

    private static int nlz(int i2) {
        int i3;
        if (i2 == 0) {
            return 32;
        }
        if ((i2 >>> 16) == 0) {
            i2 <<= 16;
            i3 = 17;
        } else {
            i3 = 1;
        }
        if ((i2 >>> 24) == 0) {
            i3 += 8;
            i2 <<= 8;
        }
        if ((i2 >>> 28) == 0) {
            i3 += 4;
            i2 <<= 4;
        }
        if ((i2 >>> 30) == 0) {
            i3 += 2;
            i2 <<= 2;
        }
        return i3 - (i2 >>> 31);
    }

    public static int numBytes(int i2) {
        if (i2 == 0) {
            return 0;
        }
        return a.a(i2, 1, 8, 1);
    }

    public static int parity(byte[] bArr, int i2) {
        byte b2 = bArr[0];
        for (int i3 = 1; i3 < i2; i3++) {
            b2 = (byte) (b2 ^ bArr[i3]);
        }
        return Integers.bitCount(b2 & 255) & 1;
    }

    public static int parity16(int i2) {
        return Integers.bitCount(i2 & 65535) & 1;
    }

    public static int parity32(int i2) {
        return Integers.bitCount(i2) & 1;
    }

    public static void setBit(byte[] bArr, int i2, byte b2) {
        int i3 = i2 >>> 3;
        int i4 = (i2 & 7) ^ 7;
        bArr[i3] = (byte) ((b2 << i4) | (bArr[i3] & (~(1 << i4))));
    }

    public static void setBitInWordArray(int[] iArr, int i2, int i3) {
        setBit(iArr, i2, i3);
    }

    public static void zeroTrailingBits(int[] iArr, int i2) {
        if ((i2 & 31) != 0) {
            int i3 = i2 >>> 5;
            iArr[i3] = getTrailingBitsMask(i2) & iArr[i3];
        }
    }

    public static int getBit(int i2, int i3) {
        return (i2 >>> (i3 ^ 7)) & 1;
    }

    public static int getBit(int[] iArr, int i2) {
        return (iArr[i2 >>> 5] >>> ((i2 & 31) ^ 7)) & 1;
    }

    public static int setBit(int i2, int i3, int i4) {
        int i5 = i3 ^ 7;
        return (i2 & (~(1 << i5))) | (i4 << i5);
    }

    public static void setBit(int[] iArr, int i2, int i3) {
        int i4 = i2 >>> 5;
        int i5 = (i2 & 31) ^ 7;
        iArr[i4] = (i3 << i5) | (iArr[i4] & (~(1 << i5)));
    }
}
