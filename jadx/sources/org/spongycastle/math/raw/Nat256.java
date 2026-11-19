package org.spongycastle.math.raw;

import defpackage.ct0;
import defpackage.z81;
import java.math.BigInteger;
import org.bouncycastle.asn1.cmc.BodyPartID;
import org.spongycastle.util.Pack;

/* JADX INFO: loaded from: classes5.dex */
public abstract class Nat256 {
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
        long j7 = (((long) iArr[5]) & BodyPartID.bodyIdMax) + (((long) iArr2[5]) & BodyPartID.bodyIdMax) + (j6 >>> 32);
        iArr3[5] = (int) j7;
        long j8 = (((long) iArr[6]) & BodyPartID.bodyIdMax) + (((long) iArr2[6]) & BodyPartID.bodyIdMax) + (j7 >>> 32);
        iArr3[6] = (int) j8;
        long j9 = (((long) iArr[7]) & BodyPartID.bodyIdMax) + (((long) iArr2[7]) & BodyPartID.bodyIdMax) + (j8 >>> 32);
        iArr3[7] = (int) j9;
        return (int) (j9 >>> 32);
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
        long j7 = (((long) iArr[5]) & BodyPartID.bodyIdMax) + (((long) iArr2[5]) & BodyPartID.bodyIdMax) + (((long) iArr3[5]) & BodyPartID.bodyIdMax) + (j6 >>> 32);
        iArr3[5] = (int) j7;
        long j8 = (((long) iArr[6]) & BodyPartID.bodyIdMax) + (((long) iArr2[6]) & BodyPartID.bodyIdMax) + (((long) iArr3[6]) & BodyPartID.bodyIdMax) + (j7 >>> 32);
        iArr3[6] = (int) j8;
        long j9 = (((long) iArr[7]) & BodyPartID.bodyIdMax) + (((long) iArr2[7]) & BodyPartID.bodyIdMax) + (((long) iArr3[7]) & BodyPartID.bodyIdMax) + (j8 >>> 32);
        iArr3[7] = (int) j9;
        return (int) (j9 >>> 32);
    }

    public static int c(int[] iArr, int i2, int[] iArr2, int i3, int i4) {
        long j2 = (((long) iArr[i2]) & BodyPartID.bodyIdMax) + (((long) iArr2[i3]) & BodyPartID.bodyIdMax) + (((long) i4) & BodyPartID.bodyIdMax);
        iArr2[i3] = (int) j2;
        int i5 = i3 + 1;
        long j3 = (((long) iArr[i2 + 1]) & BodyPartID.bodyIdMax) + (((long) iArr2[i5]) & BodyPartID.bodyIdMax) + (j2 >>> 32);
        iArr2[i5] = (int) j3;
        int i6 = i3 + 2;
        long j4 = (((long) iArr[i2 + 2]) & BodyPartID.bodyIdMax) + (((long) iArr2[i6]) & BodyPartID.bodyIdMax) + (j3 >>> 32);
        iArr2[i6] = (int) j4;
        int i7 = i3 + 3;
        long j5 = (((long) iArr[i2 + 3]) & BodyPartID.bodyIdMax) + (((long) iArr2[i7]) & BodyPartID.bodyIdMax) + (j4 >>> 32);
        iArr2[i7] = (int) j5;
        int i8 = i3 + 4;
        long j6 = (((long) iArr[i2 + 4]) & BodyPartID.bodyIdMax) + (((long) iArr2[i8]) & BodyPartID.bodyIdMax) + (j5 >>> 32);
        iArr2[i8] = (int) j6;
        int i9 = i3 + 5;
        long j7 = (((long) iArr[i2 + 5]) & BodyPartID.bodyIdMax) + (((long) iArr2[i9]) & BodyPartID.bodyIdMax) + (j6 >>> 32);
        iArr2[i9] = (int) j7;
        int i10 = i3 + 6;
        long j8 = (((long) iArr[i2 + 6]) & BodyPartID.bodyIdMax) + (((long) iArr2[i10]) & BodyPartID.bodyIdMax) + (j7 >>> 32);
        iArr2[i10] = (int) j8;
        int i11 = i3 + 7;
        long j9 = (((long) iArr[i2 + 7]) & BodyPartID.bodyIdMax) + (BodyPartID.bodyIdMax & ((long) iArr2[i11])) + (j8 >>> 32);
        iArr2[i11] = (int) j9;
        return (int) (j9 >>> 32);
    }

    public static int d(int[] iArr, int[] iArr2) {
        long j2 = (((long) iArr[8]) & BodyPartID.bodyIdMax) + (((long) iArr2[16]) & BodyPartID.bodyIdMax);
        int i2 = (int) j2;
        iArr[8] = i2;
        iArr2[16] = i2;
        long j3 = (((long) iArr[9]) & BodyPartID.bodyIdMax) + (((long) iArr2[17]) & BodyPartID.bodyIdMax) + (j2 >>> 32);
        int i3 = (int) j3;
        iArr[9] = i3;
        iArr2[17] = i3;
        long j4 = (((long) iArr[10]) & BodyPartID.bodyIdMax) + (((long) iArr2[18]) & BodyPartID.bodyIdMax) + (j3 >>> 32);
        int i4 = (int) j4;
        iArr[10] = i4;
        iArr2[18] = i4;
        long j5 = (((long) iArr[11]) & BodyPartID.bodyIdMax) + (((long) iArr2[19]) & BodyPartID.bodyIdMax) + (j4 >>> 32);
        int i5 = (int) j5;
        iArr[11] = i5;
        iArr2[19] = i5;
        long j6 = (((long) iArr[12]) & BodyPartID.bodyIdMax) + (((long) iArr2[20]) & BodyPartID.bodyIdMax) + (j5 >>> 32);
        int i6 = (int) j6;
        iArr[12] = i6;
        iArr2[20] = i6;
        long j7 = (((long) iArr[13]) & BodyPartID.bodyIdMax) + (((long) iArr2[21]) & BodyPartID.bodyIdMax) + (j6 >>> 32);
        int i7 = (int) j7;
        iArr[13] = i7;
        iArr2[21] = i7;
        long j8 = (((long) iArr[14]) & BodyPartID.bodyIdMax) + (((long) iArr2[22]) & BodyPartID.bodyIdMax) + (j7 >>> 32);
        int i8 = (int) j8;
        iArr[14] = i8;
        iArr2[22] = i8;
        long j9 = (((long) iArr[15]) & BodyPartID.bodyIdMax) + (BodyPartID.bodyIdMax & ((long) iArr2[23])) + (j8 >>> 32);
        int i9 = (int) j9;
        iArr[15] = i9;
        iArr2[23] = i9;
        return (int) (j9 >>> 32);
    }

    public static boolean e(int[] iArr, int[] iArr2, int[] iArr3) {
        boolean z;
        int i2 = 7;
        while (true) {
            z = true;
            if (i2 < 0) {
                break;
            }
            int i3 = iArr[8 + i2] ^ Integer.MIN_VALUE;
            int i4 = Integer.MIN_VALUE ^ iArr2[i2];
            if (i3 < i4) {
                z = false;
                break;
            }
            if (i3 > i4) {
                break;
            }
            i2--;
        }
        if (z) {
            t(8, 0, iArr, iArr2, iArr3);
            return z;
        }
        t(0, 8, iArr2, iArr, iArr3);
        return z;
    }

    public static boolean f(int[] iArr, int[] iArr2) {
        for (int i2 = 7; i2 >= 0; i2--) {
            if (iArr[i2] != iArr2[i2]) {
                return false;
            }
        }
        return true;
    }

    public static boolean g(long[] jArr, long[] jArr2) {
        for (int i2 = 3; i2 >= 0; i2--) {
            if (jArr[i2] != jArr2[i2]) {
                return false;
            }
        }
        return true;
    }

    public static int[] h(BigInteger bigInteger) {
        if (bigInteger.signum() < 0 || bigInteger.bitLength() > 256) {
            ct0.c();
            return null;
        }
        int[] iArr = new int[8];
        int i2 = 0;
        while (bigInteger.signum() != 0) {
            iArr[i2] = bigInteger.intValue();
            bigInteger = bigInteger.shiftRight(32);
            i2++;
        }
        return iArr;
    }

    public static long[] i(BigInteger bigInteger) {
        if (bigInteger.signum() < 0 || bigInteger.bitLength() > 256) {
            ct0.c();
            return null;
        }
        long[] jArr = new long[4];
        int i2 = 0;
        while (bigInteger.signum() != 0) {
            jArr[i2] = bigInteger.longValue();
            bigInteger = bigInteger.shiftRight(64);
            i2++;
        }
        return jArr;
    }

    public static int j(int[] iArr) {
        return iArr[0] & 1;
    }

    public static boolean k(int[] iArr, int[] iArr2) {
        for (int i2 = 7; i2 >= 0; i2--) {
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

    public static boolean l(int[] iArr) {
        if (iArr[0] != 1) {
            return false;
        }
        for (int i2 = 1; i2 < 8; i2++) {
            if (iArr[i2] != 0) {
                return false;
            }
        }
        return true;
    }

    public static boolean m(long[] jArr) {
        if (jArr[0] != 1) {
            return false;
        }
        for (int i2 = 1; i2 < 4; i2++) {
            if (jArr[i2] != 0) {
                return false;
            }
        }
        return true;
    }

    public static boolean n(int[] iArr) {
        for (int i2 = 0; i2 < 8; i2++) {
            if (iArr[i2] != 0) {
                return false;
            }
        }
        return true;
    }

    public static boolean o(long[] jArr) {
        for (int i2 = 0; i2 < 4; i2++) {
            if (jArr[i2] != 0) {
                return false;
            }
        }
        return true;
    }

    public static void p(int[] iArr, int[] iArr2, int[] iArr3) {
        long j2 = ((long) iArr2[0]) & BodyPartID.bodyIdMax;
        long j3 = ((long) iArr2[1]) & BodyPartID.bodyIdMax;
        long j4 = ((long) iArr2[2]) & BodyPartID.bodyIdMax;
        long j5 = ((long) iArr2[3]) & BodyPartID.bodyIdMax;
        long j6 = ((long) iArr2[4]) & BodyPartID.bodyIdMax;
        long j7 = ((long) iArr2[5]) & BodyPartID.bodyIdMax;
        long j8 = ((long) iArr2[6]) & BodyPartID.bodyIdMax;
        long j9 = ((long) iArr2[7]) & BodyPartID.bodyIdMax;
        long j10 = ((long) iArr[0]) & BodyPartID.bodyIdMax;
        long j11 = j10 * j2;
        iArr3[0] = (int) j11;
        long j12 = (j10 * j3) + (j11 >>> 32);
        iArr3[1] = (int) j12;
        long j13 = (j10 * j4) + (j12 >>> 32);
        iArr3[2] = (int) j13;
        long j14 = (j10 * j5) + (j13 >>> 32);
        iArr3[3] = (int) j14;
        long j15 = (j10 * j6) + (j14 >>> 32);
        iArr3[4] = (int) j15;
        long j16 = (j10 * j7) + (j15 >>> 32);
        iArr3[5] = (int) j16;
        long j17 = (j10 * j8) + (j16 >>> 32);
        iArr3[6] = (int) j17;
        long j18 = (j10 * j9) + (j17 >>> 32);
        iArr3[7] = (int) j18;
        int i2 = (int) (j18 >>> 32);
        iArr3[8] = i2;
        int i3 = 1;
        for (int i4 = 8; i3 < i4; i4 = 8) {
            long j19 = ((long) iArr[i3]) & BodyPartID.bodyIdMax;
            long j20 = j6;
            long j21 = (j19 * j2) + (((long) iArr3[i3]) & BodyPartID.bodyIdMax);
            iArr3[i3] = (int) j21;
            int i5 = i3 + 1;
            long j22 = (j19 * j3) + (((long) iArr3[i5]) & BodyPartID.bodyIdMax) + (j21 >>> 32);
            iArr3[i5] = (int) j22;
            int i6 = i3 + 2;
            long j23 = (j19 * j4) + (((long) iArr3[i6]) & BodyPartID.bodyIdMax) + (j22 >>> 32);
            iArr3[i6] = (int) j23;
            int i7 = i3 + 3;
            long j24 = (j19 * j5) + (((long) iArr3[i7]) & BodyPartID.bodyIdMax) + (j23 >>> 32);
            iArr3[i7] = (int) j24;
            int i8 = i3 + 4;
            long j25 = (j19 * j20) + (((long) iArr3[i8]) & BodyPartID.bodyIdMax) + (j24 >>> 32);
            iArr3[i8] = (int) j25;
            int i9 = i3 + 5;
            long j26 = (j19 * j7) + (((long) iArr3[i9]) & BodyPartID.bodyIdMax) + (j25 >>> 32);
            iArr3[i9] = (int) j26;
            int i10 = i3 + 6;
            long j27 = (j19 * j8) + (((long) iArr3[i10]) & BodyPartID.bodyIdMax) + (j26 >>> 32);
            iArr3[i10] = (int) j27;
            long j28 = j27 >>> 32;
            int i11 = i3 + 7;
            long j29 = (j19 * j9) + (((long) iArr3[i11]) & BodyPartID.bodyIdMax) + j28;
            iArr3[i11] = (int) j29;
            iArr3[i3 + 8] = (int) (j29 >>> 32);
            i3 = i5;
            j6 = j20;
        }
    }

    public static int q(int[] iArr, int[] iArr2, int[] iArr3) {
        long j2 = ((long) iArr2[0]) & BodyPartID.bodyIdMax;
        long j3 = ((long) iArr2[1]) & BodyPartID.bodyIdMax;
        long j4 = ((long) iArr2[2]) & BodyPartID.bodyIdMax;
        long j5 = ((long) iArr2[3]) & BodyPartID.bodyIdMax;
        long j6 = ((long) iArr2[4]) & BodyPartID.bodyIdMax;
        long j7 = ((long) iArr2[5]) & BodyPartID.bodyIdMax;
        long j8 = ((long) iArr2[6]) & BodyPartID.bodyIdMax;
        long j9 = ((long) iArr2[7]) & BodyPartID.bodyIdMax;
        long j10 = 0;
        int i2 = 0;
        while (i2 < 8) {
            long j11 = ((long) iArr[i2]) & BodyPartID.bodyIdMax;
            long j12 = (j11 * j2) + (((long) iArr3[i2]) & BodyPartID.bodyIdMax);
            int i3 = i2;
            iArr3[i3] = (int) j12;
            int i4 = i3 + 1;
            long j13 = (j11 * j3) + (((long) iArr3[i4]) & BodyPartID.bodyIdMax) + (j12 >>> 32);
            iArr3[i4] = (int) j13;
            int i5 = i3 + 2;
            long j14 = (j11 * j4) + (((long) iArr3[i5]) & BodyPartID.bodyIdMax) + (j13 >>> 32);
            iArr3[i5] = (int) j14;
            int i6 = i3 + 3;
            long j15 = (j11 * j5) + (((long) iArr3[i6]) & BodyPartID.bodyIdMax) + (j14 >>> 32);
            iArr3[i6] = (int) j15;
            int i7 = i3 + 4;
            long j16 = (j11 * j6) + (((long) iArr3[i7]) & BodyPartID.bodyIdMax) + (j15 >>> 32);
            iArr3[i7] = (int) j16;
            int i8 = i3 + 5;
            long j17 = (j11 * j7) + (((long) iArr3[i8]) & BodyPartID.bodyIdMax) + (j16 >>> 32);
            iArr3[i8] = (int) j17;
            int i9 = i3 + 6;
            long j18 = (j11 * j8) + (((long) iArr3[i9]) & BodyPartID.bodyIdMax) + (j17 >>> 32);
            iArr3[i9] = (int) j18;
            int i10 = i3 + 7;
            long j19 = (j11 * j9) + (((long) iArr3[i10]) & BodyPartID.bodyIdMax) + (j18 >>> 32);
            iArr3[i10] = (int) j19;
            int i11 = i3 + 8;
            long j20 = j10 + (((long) iArr3[i11]) & BodyPartID.bodyIdMax) + (j19 >>> 32);
            iArr3[i11] = (int) j20;
            j10 = j20 >>> 32;
            i2 = i4;
        }
        return (int) j10;
    }

    public static void r(int[] iArr, int[] iArr2) {
        long j2 = ((long) iArr[0]) & BodyPartID.bodyIdMax;
        int i2 = 16;
        int i3 = 0;
        int i4 = 7;
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
                long jC4 = z81.c(j25, j7, j30 >>> 32, j24);
                long jC5 = z81.c(j25, j10, jC4 >>> 32, j27);
                long j31 = jC4 & BodyPartID.bodyIdMax;
                long jC6 = z81.c(j25, j16, jC5 >>> 32, j29);
                long j32 = jC5 & BodyPartID.bodyIdMax;
                long j33 = j28 + (jC6 >>> 32);
                long j34 = jC6 & BodyPartID.bodyIdMax;
                long j35 = ((long) iArr[5]) & BodyPartID.bodyIdMax;
                long j36 = (((long) iArr2[9]) & BodyPartID.bodyIdMax) + (j33 >>> 32);
                long j37 = j33 & BodyPartID.bodyIdMax;
                long j38 = (((long) iArr2[10]) & BodyPartID.bodyIdMax) + (j36 >>> 32);
                long j39 = j36 & BodyPartID.bodyIdMax;
                long j40 = (j35 * j2) + j31;
                int i12 = (int) j40;
                iArr2[5] = (i11 >>> 31) | (i12 << 1);
                int i13 = i12 >>> 31;
                long jC7 = z81.c(j35, j7, j40 >>> 32, j32);
                long jC8 = z81.c(j35, j10, jC7 >>> 32, j34);
                long j41 = jC7 & BodyPartID.bodyIdMax;
                long jC9 = z81.c(j35, j16, jC8 >>> 32, j37);
                long j42 = jC8 & BodyPartID.bodyIdMax;
                long jC10 = z81.c(j35, j25, jC9 >>> 32, j39);
                long j43 = jC9 & BodyPartID.bodyIdMax;
                long j44 = j38 + (jC10 >>> 32);
                long j45 = jC10 & BodyPartID.bodyIdMax;
                long j46 = ((long) iArr[6]) & BodyPartID.bodyIdMax;
                long j47 = (((long) iArr2[11]) & BodyPartID.bodyIdMax) + (j44 >>> 32);
                long j48 = j44 & BodyPartID.bodyIdMax;
                long j49 = (((long) iArr2[12]) & BodyPartID.bodyIdMax) + (j47 >>> 32);
                long j50 = j47 & BodyPartID.bodyIdMax;
                long j51 = (j46 * j2) + j41;
                int i14 = (int) j51;
                iArr2[6] = i13 | (i14 << 1);
                int i15 = i14 >>> 31;
                long jC11 = z81.c(j46, j7, j51 >>> 32, j42);
                long jC12 = z81.c(j46, j10, jC11 >>> 32, j43);
                long j52 = jC11 & BodyPartID.bodyIdMax;
                long jC13 = z81.c(j46, j16, jC12 >>> 32, j45);
                long j53 = jC12 & BodyPartID.bodyIdMax;
                long jC14 = z81.c(j46, j25, jC13 >>> 32, j48);
                long j54 = jC13 & BodyPartID.bodyIdMax;
                long jC15 = z81.c(j46, j35, jC14 >>> 32, j50);
                long j55 = jC14 & BodyPartID.bodyIdMax;
                long j56 = j49 + (jC15 >>> 32);
                long j57 = jC15 & BodyPartID.bodyIdMax;
                long j58 = ((long) iArr[7]) & BodyPartID.bodyIdMax;
                long j59 = (((long) iArr2[13]) & BodyPartID.bodyIdMax) + (j56 >>> 32);
                long j60 = j56 & BodyPartID.bodyIdMax;
                long j61 = (((long) iArr2[14]) & BodyPartID.bodyIdMax) + (j59 >>> 32);
                long j62 = j59 & BodyPartID.bodyIdMax;
                long j63 = (j58 * j2) + j52;
                int i16 = (int) j63;
                iArr2[7] = (i16 << 1) | i15;
                int i17 = i16 >>> 31;
                long jC16 = z81.c(j58, j7, j63 >>> 32, j53);
                long jC17 = z81.c(j58, j10, jC16 >>> 32, j54);
                long jC18 = z81.c(j58, j16, jC17 >>> 32, j55);
                long jC19 = z81.c(j58, j25, jC18 >>> 32, j57);
                long jC20 = z81.c(j58, j35, jC19 >>> 32, j60);
                long jC21 = z81.c(j58, j46, jC20 >>> 32, j62);
                long j64 = j61 + (jC21 >>> 32);
                int i18 = (int) jC16;
                iArr2[8] = (i18 << 1) | i17;
                int i19 = (int) jC17;
                iArr2[9] = (i18 >>> 31) | (i19 << 1);
                int i20 = i19 >>> 31;
                int i21 = (int) jC18;
                iArr2[10] = i20 | (i21 << 1);
                int i22 = i21 >>> 31;
                int i23 = (int) jC19;
                iArr2[11] = i22 | (i23 << 1);
                int i24 = i23 >>> 31;
                int i25 = (int) jC20;
                iArr2[12] = i24 | (i25 << 1);
                int i26 = i25 >>> 31;
                int i27 = (int) jC21;
                iArr2[13] = i26 | (i27 << 1);
                int i28 = i27 >>> 31;
                int i29 = (int) j64;
                iArr2[14] = i28 | (i29 << 1);
                iArr2[15] = ((iArr2[15] + ((int) (j64 >>> 32))) << 1) | (i29 >>> 31);
                return;
            }
            i4 = i5;
        }
    }

    public static int s(int[] iArr, int[] iArr2, int[] iArr3) {
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
        long j7 = ((((long) iArr[5]) & BodyPartID.bodyIdMax) - (((long) iArr2[5]) & BodyPartID.bodyIdMax)) + (j6 >> 32);
        iArr3[5] = (int) j7;
        long j8 = ((((long) iArr[6]) & BodyPartID.bodyIdMax) - (((long) iArr2[6]) & BodyPartID.bodyIdMax)) + (j7 >> 32);
        iArr3[6] = (int) j8;
        long j9 = ((((long) iArr[7]) & BodyPartID.bodyIdMax) - (((long) iArr2[7]) & BodyPartID.bodyIdMax)) + (j8 >> 32);
        iArr3[7] = (int) j9;
        return (int) (j9 >> 32);
    }

    public static void t(int i2, int i3, int[] iArr, int[] iArr2, int[] iArr3) {
        long j2 = (((long) iArr[i2]) & BodyPartID.bodyIdMax) - (((long) iArr2[i3]) & BodyPartID.bodyIdMax);
        iArr3[0] = (int) j2;
        long j3 = ((((long) iArr[i2 + 1]) & BodyPartID.bodyIdMax) - (((long) iArr2[i3 + 1]) & BodyPartID.bodyIdMax)) + (j2 >> 32);
        iArr3[1] = (int) j3;
        long j4 = ((((long) iArr[i2 + 2]) & BodyPartID.bodyIdMax) - (((long) iArr2[i3 + 2]) & BodyPartID.bodyIdMax)) + (j3 >> 32);
        iArr3[2] = (int) j4;
        long j5 = ((((long) iArr[i2 + 3]) & BodyPartID.bodyIdMax) - (((long) iArr2[i3 + 3]) & BodyPartID.bodyIdMax)) + (j4 >> 32);
        iArr3[3] = (int) j5;
        long j6 = ((((long) iArr[i2 + 4]) & BodyPartID.bodyIdMax) - (((long) iArr2[i3 + 4]) & BodyPartID.bodyIdMax)) + (j5 >> 32);
        iArr3[4] = (int) j6;
        long j7 = ((((long) iArr[i2 + 5]) & BodyPartID.bodyIdMax) - (((long) iArr2[i3 + 5]) & BodyPartID.bodyIdMax)) + (j6 >> 32);
        iArr3[5] = (int) j7;
        long j8 = ((((long) iArr[i2 + 6]) & BodyPartID.bodyIdMax) - (((long) iArr2[i3 + 6]) & BodyPartID.bodyIdMax)) + (j7 >> 32);
        iArr3[6] = (int) j8;
        iArr3[7] = (int) (((((long) iArr[i2 + 7]) & BodyPartID.bodyIdMax) - (((long) iArr2[i3 + 7]) & BodyPartID.bodyIdMax)) + (j8 >> 32));
    }

    public static void u(int[] iArr, int[] iArr2) {
        long j2 = (((long) iArr2[0]) & BodyPartID.bodyIdMax) - (((long) iArr[0]) & BodyPartID.bodyIdMax);
        iArr2[0] = (int) j2;
        long j3 = ((((long) iArr2[1]) & BodyPartID.bodyIdMax) - (((long) iArr[1]) & BodyPartID.bodyIdMax)) + (j2 >> 32);
        iArr2[1] = (int) j3;
        long j4 = ((((long) iArr2[2]) & BodyPartID.bodyIdMax) - (((long) iArr[2]) & BodyPartID.bodyIdMax)) + (j3 >> 32);
        iArr2[2] = (int) j4;
        long j5 = ((((long) iArr2[3]) & BodyPartID.bodyIdMax) - (((long) iArr[3]) & BodyPartID.bodyIdMax)) + (j4 >> 32);
        iArr2[3] = (int) j5;
        long j6 = ((((long) iArr2[4]) & BodyPartID.bodyIdMax) - (((long) iArr[4]) & BodyPartID.bodyIdMax)) + (j5 >> 32);
        iArr2[4] = (int) j6;
        long j7 = ((((long) iArr2[5]) & BodyPartID.bodyIdMax) - (((long) iArr[5]) & BodyPartID.bodyIdMax)) + (j6 >> 32);
        iArr2[5] = (int) j7;
        long j8 = ((((long) iArr2[6]) & BodyPartID.bodyIdMax) - (((long) iArr[6]) & BodyPartID.bodyIdMax)) + (j7 >> 32);
        iArr2[6] = (int) j8;
        iArr2[7] = (int) (((((long) iArr2[7]) & BodyPartID.bodyIdMax) - (BodyPartID.bodyIdMax & ((long) iArr[7]))) + (j8 >> 32));
    }

    public static BigInteger v(int[] iArr) {
        byte[] bArr = new byte[32];
        for (int i2 = 0; i2 < 8; i2++) {
            int i3 = iArr[i2];
            if (i3 != 0) {
                Pack.c(i3, bArr, (7 - i2) << 2);
            }
        }
        return new BigInteger(1, bArr);
    }

    public static BigInteger w(long[] jArr) {
        byte[] bArr = new byte[32];
        for (int i2 = 0; i2 < 4; i2++) {
            long j2 = jArr[i2];
            if (j2 != 0) {
                Pack.g(j2, bArr, (3 - i2) << 3);
            }
        }
        return new BigInteger(1, bArr);
    }

    public static void x(int[] iArr) {
        iArr[0] = 0;
        iArr[1] = 0;
        iArr[2] = 0;
        iArr[3] = 0;
        iArr[4] = 0;
        iArr[5] = 0;
        iArr[6] = 0;
        iArr[7] = 0;
    }
}
