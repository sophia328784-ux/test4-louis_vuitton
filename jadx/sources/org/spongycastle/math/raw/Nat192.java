package org.spongycastle.math.raw;

import defpackage.ct0;
import defpackage.z81;
import java.math.BigInteger;
import org.bouncycastle.asn1.cmc.BodyPartID;
import org.spongycastle.util.Pack;

/* JADX INFO: loaded from: classes5.dex */
public abstract class Nat192 {
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
        return (int) (j7 >>> 32);
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
        return (int) (j7 >>> 32);
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
        long j7 = (((long) iArr[i2 + 5]) & BodyPartID.bodyIdMax) + (BodyPartID.bodyIdMax & ((long) iArr2[i9])) + (j6 >>> 32);
        iArr2[i9] = (int) j7;
        return (int) (j7 >>> 32);
    }

    public static int d(int[] iArr, int[] iArr2) {
        long j2 = (((long) iArr[6]) & BodyPartID.bodyIdMax) + (((long) iArr2[12]) & BodyPartID.bodyIdMax);
        int i2 = (int) j2;
        iArr[6] = i2;
        iArr2[12] = i2;
        long j3 = (((long) iArr[7]) & BodyPartID.bodyIdMax) + (((long) iArr2[13]) & BodyPartID.bodyIdMax) + (j2 >>> 32);
        int i3 = (int) j3;
        iArr[7] = i3;
        iArr2[13] = i3;
        long j4 = (((long) iArr[8]) & BodyPartID.bodyIdMax) + (((long) iArr2[14]) & BodyPartID.bodyIdMax) + (j3 >>> 32);
        int i4 = (int) j4;
        iArr[8] = i4;
        iArr2[14] = i4;
        long j5 = (((long) iArr[9]) & BodyPartID.bodyIdMax) + (((long) iArr2[15]) & BodyPartID.bodyIdMax) + (j4 >>> 32);
        int i5 = (int) j5;
        iArr[9] = i5;
        iArr2[15] = i5;
        long j6 = (((long) iArr[10]) & BodyPartID.bodyIdMax) + (((long) iArr2[16]) & BodyPartID.bodyIdMax) + (j5 >>> 32);
        int i6 = (int) j6;
        iArr[10] = i6;
        iArr2[16] = i6;
        long j7 = (((long) iArr[11]) & BodyPartID.bodyIdMax) + (BodyPartID.bodyIdMax & ((long) iArr2[17])) + (j6 >>> 32);
        int i7 = (int) j7;
        iArr[11] = i7;
        iArr2[17] = i7;
        return (int) (j7 >>> 32);
    }

    public static boolean e(int[] iArr, int[] iArr2, int[] iArr3) {
        boolean z;
        int i2 = 5;
        while (true) {
            z = true;
            if (i2 < 0) {
                break;
            }
            int i3 = iArr[6 + i2] ^ Integer.MIN_VALUE;
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
            r(6, 0, iArr, iArr2, iArr3);
            return z;
        }
        r(0, 6, iArr2, iArr, iArr3);
        return z;
    }

    public static boolean f(int[] iArr, int[] iArr2) {
        for (int i2 = 5; i2 >= 0; i2--) {
            if (iArr[i2] != iArr2[i2]) {
                return false;
            }
        }
        return true;
    }

    public static int[] g(BigInteger bigInteger) {
        if (bigInteger.signum() < 0 || bigInteger.bitLength() > 192) {
            ct0.c();
            return null;
        }
        int[] iArr = new int[6];
        int i2 = 0;
        while (bigInteger.signum() != 0) {
            iArr[i2] = bigInteger.intValue();
            bigInteger = bigInteger.shiftRight(32);
            i2++;
        }
        return iArr;
    }

    public static long[] h(BigInteger bigInteger) {
        if (bigInteger.signum() < 0 || bigInteger.bitLength() > 192) {
            ct0.c();
            return null;
        }
        long[] jArr = new long[3];
        int i2 = 0;
        while (bigInteger.signum() != 0) {
            jArr[i2] = bigInteger.longValue();
            bigInteger = bigInteger.shiftRight(64);
            i2++;
        }
        return jArr;
    }

    public static int i(int[] iArr) {
        return iArr[0] & 1;
    }

    public static boolean j(int[] iArr, int[] iArr2) {
        for (int i2 = 5; i2 >= 0; i2--) {
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

    public static boolean k(int[] iArr) {
        if (iArr[0] != 1) {
            return false;
        }
        for (int i2 = 1; i2 < 6; i2++) {
            if (iArr[i2] != 0) {
                return false;
            }
        }
        return true;
    }

    public static boolean l(int[] iArr) {
        for (int i2 = 0; i2 < 6; i2++) {
            if (iArr[i2] != 0) {
                return false;
            }
        }
        return true;
    }

    public static boolean m(long[] jArr) {
        for (int i2 = 0; i2 < 3; i2++) {
            if (jArr[i2] != 0) {
                return false;
            }
        }
        return true;
    }

    public static void n(int[] iArr, int[] iArr2, int[] iArr3) {
        long j2 = ((long) iArr2[0]) & BodyPartID.bodyIdMax;
        long j3 = ((long) iArr2[1]) & BodyPartID.bodyIdMax;
        long j4 = ((long) iArr2[2]) & BodyPartID.bodyIdMax;
        long j5 = ((long) iArr2[3]) & BodyPartID.bodyIdMax;
        long j6 = ((long) iArr2[4]) & BodyPartID.bodyIdMax;
        long j7 = ((long) iArr2[5]) & BodyPartID.bodyIdMax;
        int i2 = 1;
        long j8 = ((long) iArr[0]) & BodyPartID.bodyIdMax;
        long j9 = j8 * j2;
        iArr3[0] = (int) j9;
        long j10 = (j8 * j3) + (j9 >>> 32);
        iArr3[1] = (int) j10;
        long j11 = (j8 * j4) + (j10 >>> 32);
        iArr3[2] = (int) j11;
        long j12 = (j8 * j5) + (j11 >>> 32);
        iArr3[3] = (int) j12;
        long j13 = (j8 * j6) + (j12 >>> 32);
        iArr3[4] = (int) j13;
        long j14 = (j8 * j7) + (j13 >>> 32);
        iArr3[5] = (int) j14;
        int i3 = 6;
        iArr3[6] = (int) (j14 >>> 32);
        while (true) {
            int i4 = i2;
            if (i4 >= i3) {
                return;
            }
            long j15 = ((long) iArr[i4]) & BodyPartID.bodyIdMax;
            long j16 = (j15 * j2) + (((long) iArr3[i4]) & BodyPartID.bodyIdMax);
            iArr3[i4] = (int) j16;
            i2 = i4 + 1;
            long j17 = j6;
            long j18 = (j15 * j3) + (((long) iArr3[i2]) & BodyPartID.bodyIdMax) + (j16 >>> 32);
            iArr3[i2] = (int) j18;
            int i5 = i4 + 2;
            long j19 = (j15 * j4) + (((long) iArr3[i5]) & BodyPartID.bodyIdMax) + (j18 >>> 32);
            iArr3[i5] = (int) j19;
            int i6 = i4 + 3;
            long j20 = (j15 * j5) + (((long) iArr3[i6]) & BodyPartID.bodyIdMax) + (j19 >>> 32);
            iArr3[i6] = (int) j20;
            int i7 = i4 + 4;
            long j21 = (j15 * j17) + (((long) iArr3[i7]) & BodyPartID.bodyIdMax) + (j20 >>> 32);
            iArr3[i7] = (int) j21;
            int i8 = i4 + 5;
            long j22 = (j15 * j7) + (((long) iArr3[i8]) & BodyPartID.bodyIdMax) + (j21 >>> 32);
            iArr3[i8] = (int) j22;
            iArr3[i4 + 6] = (int) (j22 >>> 32);
            j6 = j17;
            i3 = 6;
        }
    }

    public static int o(int[] iArr, int[] iArr2, int[] iArr3) {
        int i2 = 0;
        long j2 = ((long) iArr2[0]) & BodyPartID.bodyIdMax;
        long j3 = ((long) iArr2[1]) & BodyPartID.bodyIdMax;
        long j4 = ((long) iArr2[2]) & BodyPartID.bodyIdMax;
        long j5 = ((long) iArr2[3]) & BodyPartID.bodyIdMax;
        long j6 = ((long) iArr2[4]) & BodyPartID.bodyIdMax;
        long j7 = ((long) iArr2[5]) & BodyPartID.bodyIdMax;
        long j8 = 0;
        while (i2 < 6) {
            long j9 = j2;
            int i3 = i2;
            long j10 = ((long) iArr[i2]) & BodyPartID.bodyIdMax;
            long j11 = (((long) iArr3[i3]) & BodyPartID.bodyIdMax) + (j10 * j9);
            iArr3[i3] = (int) j11;
            int i4 = i3 + 1;
            long j12 = (j10 * j3) + (((long) iArr3[i4]) & BodyPartID.bodyIdMax) + (j11 >>> 32);
            iArr3[i4] = (int) j12;
            int i5 = i3 + 2;
            long j13 = (j10 * j4) + (((long) iArr3[i5]) & BodyPartID.bodyIdMax) + (j12 >>> 32);
            iArr3[i5] = (int) j13;
            int i6 = i3 + 3;
            long j14 = (j10 * j5) + (((long) iArr3[i6]) & BodyPartID.bodyIdMax) + (j13 >>> 32);
            iArr3[i6] = (int) j14;
            int i7 = i3 + 4;
            long j15 = (j10 * j6) + (((long) iArr3[i7]) & BodyPartID.bodyIdMax) + (j14 >>> 32);
            iArr3[i7] = (int) j15;
            int i8 = i3 + 5;
            long j16 = (j10 * j7) + (((long) iArr3[i8]) & BodyPartID.bodyIdMax) + (j15 >>> 32);
            iArr3[i8] = (int) j16;
            int i9 = i3 + 6;
            long j17 = j8 + (((long) iArr3[i9]) & BodyPartID.bodyIdMax) + (j16 >>> 32);
            iArr3[i9] = (int) j17;
            j8 = j17 >>> 32;
            i2 = i4;
            j2 = j9;
        }
        return (int) j8;
    }

    public static void p(int[] iArr, int[] iArr2) {
        long j2 = ((long) iArr[0]) & BodyPartID.bodyIdMax;
        int i2 = 12;
        int i3 = 0;
        int i4 = 5;
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
                int i13 = (int) j40;
                iArr2[5] = i12 | (i13 << 1);
                int i14 = i13 >>> 31;
                long jC7 = z81.c(j35, j7, j40 >>> 32, j32);
                long jC8 = z81.c(j35, j10, jC7 >>> 32, j34);
                long jC9 = z81.c(j35, j16, jC8 >>> 32, j37);
                long jC10 = z81.c(j35, j25, jC9 >>> 32, j39);
                long j41 = j38 + (jC10 >>> 32);
                int i15 = (int) jC7;
                iArr2[6] = (i15 << 1) | i14;
                int i16 = (int) jC8;
                iArr2[7] = (i15 >>> 31) | (i16 << 1);
                int i17 = i16 >>> 31;
                int i18 = (int) jC9;
                iArr2[8] = i17 | (i18 << 1);
                int i19 = i18 >>> 31;
                int i20 = (int) jC10;
                iArr2[9] = i19 | (i20 << 1);
                int i21 = i20 >>> 31;
                int i22 = (int) j41;
                iArr2[10] = i21 | (i22 << 1);
                iArr2[11] = ((iArr2[11] + ((int) (j41 >>> 32))) << 1) | (i22 >>> 31);
                return;
            }
            i4 = i5;
        }
    }

    public static int q(int[] iArr, int[] iArr2, int[] iArr3) {
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
        return (int) (j7 >> 32);
    }

    public static void r(int i2, int i3, int[] iArr, int[] iArr2, int[] iArr3) {
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
        iArr3[5] = (int) (((((long) iArr[i2 + 5]) & BodyPartID.bodyIdMax) - (((long) iArr2[i3 + 5]) & BodyPartID.bodyIdMax)) + (j6 >> 32));
    }

    public static void s(int[] iArr, int[] iArr2) {
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
        iArr2[5] = (int) (((((long) iArr2[5]) & BodyPartID.bodyIdMax) - (BodyPartID.bodyIdMax & ((long) iArr[5]))) + (j6 >> 32));
    }

    public static BigInteger t(int[] iArr) {
        byte[] bArr = new byte[24];
        for (int i2 = 0; i2 < 6; i2++) {
            int i3 = iArr[i2];
            if (i3 != 0) {
                Pack.c(i3, bArr, (5 - i2) << 2);
            }
        }
        return new BigInteger(1, bArr);
    }

    public static BigInteger u(long[] jArr) {
        byte[] bArr = new byte[24];
        for (int i2 = 0; i2 < 3; i2++) {
            long j2 = jArr[i2];
            if (j2 != 0) {
                Pack.g(j2, bArr, (2 - i2) << 3);
            }
        }
        return new BigInteger(1, bArr);
    }
}
