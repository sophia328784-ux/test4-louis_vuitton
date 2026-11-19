package org.spongycastle.math.raw;

import defpackage.ct0;
import defpackage.z81;
import java.math.BigInteger;
import org.bouncycastle.asn1.cmc.BodyPartID;
import org.spongycastle.util.Pack;

/* JADX INFO: loaded from: classes5.dex */
public abstract class Nat160 {
    public static int a(int[] iArr, int[] iArr2, int[] iArr3) {
        long j2 = (((long) iArr[0]) & BodyPartID.bodyIdMax) + (((long) iArr2[0]) & BodyPartID.bodyIdMax);
        iArr3[0] = (int) j2;
        long j3 = (((long) iArr[1]) & BodyPartID.bodyIdMax) + (((long) iArr2[1]) & BodyPartID.bodyIdMax) + (j2 >>> 32);
        iArr3[1] = (int) j3;
        long j4 = (((long) iArr[2]) & BodyPartID.bodyIdMax) + (((long) iArr2[2]) & BodyPartID.bodyIdMax) + (j3 >>> 32);
        iArr3[2] = (int) j4;
        long j5 = (((long) iArr[3]) & BodyPartID.bodyIdMax) + (((long) iArr2[3]) & BodyPartID.bodyIdMax) + (j4 >>> 32);
        iArr3[3] = (int) j5;
        long j6 = (((long) iArr[4]) & BodyPartID.bodyIdMax) + (((long) iArr2[4]) & BodyPartID.bodyIdMax) + (j5 >>> 32);
        iArr3[4] = (int) j6;
        return (int) (j6 >>> 32);
    }

    public static int b(int[] iArr, int[] iArr2, int[] iArr3) {
        long j2 = (((long) iArr[0]) & BodyPartID.bodyIdMax) + (((long) iArr2[0]) & BodyPartID.bodyIdMax) + (((long) iArr3[0]) & BodyPartID.bodyIdMax);
        iArr3[0] = (int) j2;
        long j3 = (((long) iArr[1]) & BodyPartID.bodyIdMax) + (((long) iArr2[1]) & BodyPartID.bodyIdMax) + (((long) iArr3[1]) & BodyPartID.bodyIdMax) + (j2 >>> 32);
        iArr3[1] = (int) j3;
        long j4 = (((long) iArr[2]) & BodyPartID.bodyIdMax) + (((long) iArr2[2]) & BodyPartID.bodyIdMax) + (((long) iArr3[2]) & BodyPartID.bodyIdMax) + (j3 >>> 32);
        iArr3[2] = (int) j4;
        long j5 = (((long) iArr[3]) & BodyPartID.bodyIdMax) + (((long) iArr2[3]) & BodyPartID.bodyIdMax) + (((long) iArr3[3]) & BodyPartID.bodyIdMax) + (j4 >>> 32);
        iArr3[3] = (int) j5;
        long j6 = (((long) iArr[4]) & BodyPartID.bodyIdMax) + (((long) iArr2[4]) & BodyPartID.bodyIdMax) + (((long) iArr3[4]) & BodyPartID.bodyIdMax) + (j5 >>> 32);
        iArr3[4] = (int) j6;
        return (int) (j6 >>> 32);
    }

    public static boolean c(int[] iArr, int[] iArr2) {
        for (int i2 = 4; i2 >= 0; i2--) {
            if (iArr[i2] != iArr2[i2]) {
                return false;
            }
        }
        return true;
    }

    public static int[] d(BigInteger bigInteger) {
        if (bigInteger.signum() < 0 || bigInteger.bitLength() > 160) {
            ct0.c();
            return null;
        }
        int[] iArr = new int[5];
        int i2 = 0;
        while (bigInteger.signum() != 0) {
            iArr[i2] = bigInteger.intValue();
            bigInteger = bigInteger.shiftRight(32);
            i2++;
        }
        return iArr;
    }

    public static int e(int[] iArr) {
        return iArr[0] & 1;
    }

    public static boolean f(int[] iArr, int[] iArr2) {
        for (int i2 = 4; i2 >= 0; i2--) {
            int i3 = iArr[i2] ^ Integer.MIN_VALUE;
            int i4 = Integer.MIN_VALUE ^ iArr2[i2];
            if (i3 < i4) {
                return false;
            }
            if (i3 > i4) {
                return true;
            }
        }
        return true;
    }

    public static boolean g(int[] iArr) {
        if (iArr[0] != 1) {
            return false;
        }
        for (int i2 = 1; i2 < 5; i2++) {
            if (iArr[i2] != 0) {
                return false;
            }
        }
        return true;
    }

    public static boolean h(int[] iArr) {
        for (int i2 = 0; i2 < 5; i2++) {
            if (iArr[i2] != 0) {
                return false;
            }
        }
        return true;
    }

    public static void i(int[] iArr, int[] iArr2, int[] iArr3) {
        long j2 = ((long) iArr2[0]) & BodyPartID.bodyIdMax;
        long j3 = ((long) iArr2[1]) & BodyPartID.bodyIdMax;
        long j4 = ((long) iArr2[2]) & BodyPartID.bodyIdMax;
        long j5 = ((long) iArr2[3]) & BodyPartID.bodyIdMax;
        long j6 = ((long) iArr2[4]) & BodyPartID.bodyIdMax;
        long j7 = ((long) iArr[0]) & BodyPartID.bodyIdMax;
        int i2 = 1;
        long j8 = j7 * j2;
        iArr3[0] = (int) j8;
        char c2 = ' ';
        long j9 = (j8 >>> 32) + (j7 * j3);
        iArr3[1] = (int) j9;
        long j10 = (j9 >>> 32) + (j7 * j4);
        iArr3[2] = (int) j10;
        long j11 = (j10 >>> 32) + (j7 * j5);
        iArr3[3] = (int) j11;
        long j12 = (j7 * j6) + (j11 >>> 32);
        iArr3[4] = (int) j12;
        int i3 = 5;
        iArr3[5] = (int) (j12 >>> 32);
        while (true) {
            int i4 = i2;
            if (i4 >= i3) {
                return;
            }
            long j13 = ((long) iArr[i4]) & BodyPartID.bodyIdMax;
            long j14 = (j13 * j2) + (((long) iArr3[i4]) & BodyPartID.bodyIdMax);
            iArr3[i4] = (int) j14;
            i2 = i4 + 1;
            char c3 = c2;
            long j15 = (j13 * j3) + (((long) iArr3[i2]) & BodyPartID.bodyIdMax) + (j14 >>> c2);
            iArr3[i2] = (int) j15;
            int i5 = i4 + 2;
            long j16 = j6;
            long j17 = (j13 * j4) + (((long) iArr3[i5]) & BodyPartID.bodyIdMax) + (j15 >>> c3);
            iArr3[i5] = (int) j17;
            long j18 = j17 >>> c3;
            int i6 = i4 + 3;
            long j19 = (j13 * j5) + (((long) iArr3[i6]) & BodyPartID.bodyIdMax) + j18;
            iArr3[i6] = (int) j19;
            long j20 = j19 >>> c3;
            int i7 = i4 + 4;
            long j21 = (j13 * j16) + (((long) iArr3[i7]) & BodyPartID.bodyIdMax) + j20;
            iArr3[i7] = (int) j21;
            iArr3[i4 + 5] = (int) (j21 >>> c3);
            c2 = c3;
            j6 = j16;
            i3 = 5;
        }
    }

    public static int j(int[] iArr, int[] iArr2, int[] iArr3) {
        int i2 = 0;
        long j2 = iArr2[0];
        long j3 = BodyPartID.bodyIdMax;
        long j4 = j2 & BodyPartID.bodyIdMax;
        long j5 = ((long) iArr2[1]) & BodyPartID.bodyIdMax;
        long j6 = ((long) iArr2[2]) & BodyPartID.bodyIdMax;
        long j7 = ((long) iArr2[3]) & BodyPartID.bodyIdMax;
        long j8 = ((long) iArr2[4]) & BodyPartID.bodyIdMax;
        long j9 = 0;
        while (i2 < 5) {
            long j10 = j3;
            long j11 = ((long) iArr[i2]) & j10;
            int i3 = i2;
            long j12 = (j11 * j4) + (((long) iArr3[i2]) & j10);
            iArr3[i3] = (int) j12;
            int i4 = i3 + 1;
            long j13 = (j11 * j5) + (((long) iArr3[i4]) & j10) + (j12 >>> 32);
            iArr3[i4] = (int) j13;
            int i5 = i3 + 2;
            long j14 = (j11 * j6) + (((long) iArr3[i5]) & j10) + (j13 >>> 32);
            iArr3[i5] = (int) j14;
            int i6 = i3 + 3;
            long j15 = (j11 * j7) + (((long) iArr3[i6]) & j10) + (j14 >>> 32);
            iArr3[i6] = (int) j15;
            int i7 = i3 + 4;
            long j16 = (j11 * j8) + (((long) iArr3[i7]) & j10) + (j15 >>> 32);
            iArr3[i7] = (int) j16;
            int i8 = i3 + 5;
            long j17 = j9 + (((long) iArr3[i8]) & j10) + (j16 >>> 32);
            iArr3[i8] = (int) j17;
            j9 = j17 >>> 32;
            j3 = j10;
            j4 = j4;
            i2 = i4;
        }
        return (int) j9;
    }

    public static void k(int[] iArr, int[] iArr2) {
        long j2 = ((long) iArr[0]) & BodyPartID.bodyIdMax;
        int i2 = 10;
        int i3 = 0;
        int i4 = 4;
        while (true) {
            int i5 = i4 - 1;
            long j3 = ((long) iArr[i4]) & BodyPartID.bodyIdMax;
            long j4 = j3 * j3;
            iArr2[i2 - 1] = (i3 << 31) | ((int) (j4 >>> 33));
            i2 -= 2;
            iArr2[i2] = (int) (j4 >>> 1);
            i3 = (int) j4;
            if (i5 <= 0) {
                long j5 = j2 * j2;
                long j6 = (j5 >>> 33) | (((long) (i3 << 31)) & BodyPartID.bodyIdMax);
                iArr2[0] = (int) j5;
                int i6 = ((int) (j5 >>> 32)) & 1;
                long j7 = ((long) iArr[1]) & BodyPartID.bodyIdMax;
                long j8 = ((long) iArr2[2]) & BodyPartID.bodyIdMax;
                long j9 = (j7 * j2) + j6;
                int i7 = (int) j9;
                iArr2[1] = i6 | (i7 << 1);
                long j10 = ((long) iArr[2]) & BodyPartID.bodyIdMax;
                long j11 = ((long) iArr2[3]) & BodyPartID.bodyIdMax;
                long j12 = ((long) iArr2[4]) & BodyPartID.bodyIdMax;
                long j13 = (j10 * j2) + j8 + (j9 >>> 32);
                int i8 = (int) j13;
                iArr2[2] = (i8 << 1) | (i7 >>> 31);
                long jC = z81.c(j10, j7, j13 >>> 32, j11);
                long j14 = j12 + (jC >>> 32);
                long j15 = jC & BodyPartID.bodyIdMax;
                long j16 = ((long) iArr[3]) & BodyPartID.bodyIdMax;
                long j17 = (((long) iArr2[5]) & BodyPartID.bodyIdMax) + (j14 >>> 32);
                long j18 = j14 & BodyPartID.bodyIdMax;
                long j19 = (((long) iArr2[6]) & BodyPartID.bodyIdMax) + (j17 >>> 32);
                long j20 = j17 & BodyPartID.bodyIdMax;
                long j21 = (j16 * j2) + j15;
                int i9 = (int) j21;
                iArr2[3] = (i8 >>> 31) | (i9 << 1);
                int i10 = i9 >>> 31;
                long jC2 = z81.c(j16, j7, j21 >>> 32, j18);
                long jC3 = z81.c(j16, j10, jC2 >>> 32, j20);
                long j22 = jC2 & BodyPartID.bodyIdMax;
                long j23 = j19 + (jC3 >>> 32);
                long j24 = jC3 & BodyPartID.bodyIdMax;
                long j25 = ((long) iArr[4]) & BodyPartID.bodyIdMax;
                long j26 = (((long) iArr2[7]) & BodyPartID.bodyIdMax) + (j23 >>> 32);
                long j27 = j23 & BodyPartID.bodyIdMax;
                long j28 = (((long) iArr2[8]) & BodyPartID.bodyIdMax) + (j26 >>> 32);
                long j29 = j26 & BodyPartID.bodyIdMax;
                long j30 = (j25 * j2) + j22;
                int i11 = (int) j30;
                iArr2[4] = i10 | (i11 << 1);
                int i12 = i11 >>> 31;
                long jC4 = z81.c(j25, j7, j30 >>> 32, j24);
                long jC5 = z81.c(j25, j10, jC4 >>> 32, j27);
                long jC6 = z81.c(j25, j16, jC5 >>> 32, j29);
                long j31 = j28 + (jC6 >>> 32);
                int i13 = (int) jC4;
                iArr2[5] = (i13 << 1) | i12;
                int i14 = (int) jC5;
                iArr2[6] = (i13 >>> 31) | (i14 << 1);
                int i15 = i14 >>> 31;
                int i16 = (int) jC6;
                iArr2[7] = i15 | (i16 << 1);
                int i17 = i16 >>> 31;
                int i18 = (int) j31;
                iArr2[8] = i17 | (i18 << 1);
                iArr2[9] = ((iArr2[9] + ((int) (j31 >>> 32))) << 1) | (i18 >>> 31);
                return;
            }
            i4 = i5;
        }
    }

    public static int l(int[] iArr, int[] iArr2, int[] iArr3) {
        long j2 = (((long) iArr[0]) & BodyPartID.bodyIdMax) - (((long) iArr2[0]) & BodyPartID.bodyIdMax);
        iArr3[0] = (int) j2;
        long j3 = ((((long) iArr[1]) & BodyPartID.bodyIdMax) - (((long) iArr2[1]) & BodyPartID.bodyIdMax)) + (j2 >> 32);
        iArr3[1] = (int) j3;
        long j4 = ((((long) iArr[2]) & BodyPartID.bodyIdMax) - (((long) iArr2[2]) & BodyPartID.bodyIdMax)) + (j3 >> 32);
        iArr3[2] = (int) j4;
        long j5 = ((((long) iArr[3]) & BodyPartID.bodyIdMax) - (((long) iArr2[3]) & BodyPartID.bodyIdMax)) + (j4 >> 32);
        iArr3[3] = (int) j5;
        long j6 = ((((long) iArr[4]) & BodyPartID.bodyIdMax) - (((long) iArr2[4]) & BodyPartID.bodyIdMax)) + (j5 >> 32);
        iArr3[4] = (int) j6;
        return (int) (j6 >> 32);
    }

    public static void m(int[] iArr, int[] iArr2) {
        long j2 = (((long) iArr2[0]) & BodyPartID.bodyIdMax) - (((long) iArr[0]) & BodyPartID.bodyIdMax);
        iArr2[0] = (int) j2;
        long j3 = ((((long) iArr2[1]) & BodyPartID.bodyIdMax) - (((long) iArr[1]) & BodyPartID.bodyIdMax)) + (j2 >> 32);
        iArr2[1] = (int) j3;
        long j4 = ((((long) iArr2[2]) & BodyPartID.bodyIdMax) - (((long) iArr[2]) & BodyPartID.bodyIdMax)) + (j3 >> 32);
        iArr2[2] = (int) j4;
        long j5 = ((((long) iArr2[3]) & BodyPartID.bodyIdMax) - (((long) iArr[3]) & BodyPartID.bodyIdMax)) + (j4 >> 32);
        iArr2[3] = (int) j5;
        iArr2[4] = (int) (((((long) iArr2[4]) & BodyPartID.bodyIdMax) - (BodyPartID.bodyIdMax & ((long) iArr[4]))) + (j5 >> 32));
    }

    public static BigInteger n(int[] iArr) {
        byte[] bArr = new byte[20];
        for (int i2 = 0; i2 < 5; i2++) {
            int i3 = iArr[i2];
            if (i3 != 0) {
                Pack.c(i3, bArr, (4 - i2) << 2);
            }
        }
        return new BigInteger(1, bArr);
    }
}
