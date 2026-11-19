package org.spongycastle.math.raw;

import defpackage.ct0;
import defpackage.z81;
import java.math.BigInteger;
import org.bouncycastle.asn1.cmc.BodyPartID;
import org.spongycastle.util.Pack;

/* JADX INFO: loaded from: classes5.dex */
public abstract class Nat224 {
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
        return (int) (j8 >>> 32);
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
        return (int) (j8 >>> 32);
    }

    public static void c(int[] iArr, int[] iArr2) {
        iArr2[0] = iArr[0];
        iArr2[1] = iArr[1];
        iArr2[2] = iArr[2];
        iArr2[3] = iArr[3];
        iArr2[4] = iArr[4];
        iArr2[5] = iArr[5];
        iArr2[6] = iArr[6];
    }

    public static boolean d(int[] iArr, int[] iArr2) {
        for (int i2 = 6; i2 >= 0; i2--) {
            if (iArr[i2] != iArr2[i2]) {
                return false;
            }
        }
        return true;
    }

    public static int[] e(BigInteger bigInteger) {
        if (bigInteger.signum() < 0 || bigInteger.bitLength() > 224) {
            ct0.c();
            return null;
        }
        int[] iArr = new int[7];
        int i2 = 0;
        while (bigInteger.signum() != 0) {
            iArr[i2] = bigInteger.intValue();
            bigInteger = bigInteger.shiftRight(32);
            i2++;
        }
        return iArr;
    }

    public static int f(int[] iArr) {
        return iArr[0] & 1;
    }

    public static boolean g(int[] iArr, int[] iArr2) {
        for (int i2 = 6; i2 >= 0; i2--) {
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

    public static boolean h(int[] iArr) {
        if (iArr[0] != 1) {
            return false;
        }
        for (int i2 = 1; i2 < 7; i2++) {
            if (iArr[i2] != 0) {
                return false;
            }
        }
        return true;
    }

    public static boolean i(int[] iArr) {
        for (int i2 = 0; i2 < 7; i2++) {
            if (iArr[i2] != 0) {
                return false;
            }
        }
        return true;
    }

    public static void j(int[] iArr, int[] iArr2, int[] iArr3) {
        long j2 = ((long) iArr2[0]) & BodyPartID.bodyIdMax;
        long j3 = ((long) iArr2[1]) & BodyPartID.bodyIdMax;
        long j4 = ((long) iArr2[2]) & BodyPartID.bodyIdMax;
        long j5 = ((long) iArr2[3]) & BodyPartID.bodyIdMax;
        long j6 = ((long) iArr2[4]) & BodyPartID.bodyIdMax;
        long j7 = ((long) iArr2[5]) & BodyPartID.bodyIdMax;
        long j8 = ((long) iArr2[6]) & BodyPartID.bodyIdMax;
        long j9 = ((long) iArr[0]) & BodyPartID.bodyIdMax;
        long j10 = j9 * j2;
        iArr3[0] = (int) j10;
        long j11 = (j9 * j3) + (j10 >>> 32);
        iArr3[1] = (int) j11;
        long j12 = (j9 * j4) + (j11 >>> 32);
        iArr3[2] = (int) j12;
        long j13 = (j9 * j5) + (j12 >>> 32);
        iArr3[3] = (int) j13;
        long j14 = (j9 * j6) + (j13 >>> 32);
        iArr3[4] = (int) j14;
        long j15 = (j9 * j7) + (j14 >>> 32);
        iArr3[5] = (int) j15;
        long j16 = (j9 * j8) + (j15 >>> 32);
        iArr3[6] = (int) j16;
        iArr3[7] = (int) (j16 >>> 32);
        int i2 = 1;
        for (int i3 = 7; i2 < i3; i3 = 7) {
            long j17 = ((long) iArr[i2]) & BodyPartID.bodyIdMax;
            long j18 = (j17 * j2) + (((long) iArr3[i2]) & BodyPartID.bodyIdMax);
            iArr3[i2] = (int) j18;
            int i4 = i2 + 1;
            long j19 = j6;
            long j20 = (j17 * j3) + (((long) iArr3[i4]) & BodyPartID.bodyIdMax) + (j18 >>> 32);
            iArr3[i4] = (int) j20;
            int i5 = i2 + 2;
            long j21 = (j17 * j4) + (((long) iArr3[i5]) & BodyPartID.bodyIdMax) + (j20 >>> 32);
            iArr3[i5] = (int) j21;
            int i6 = i2 + 3;
            long j22 = (j17 * j5) + (((long) iArr3[i6]) & BodyPartID.bodyIdMax) + (j21 >>> 32);
            iArr3[i6] = (int) j22;
            int i7 = i2 + 4;
            long j23 = (j17 * j19) + (((long) iArr3[i7]) & BodyPartID.bodyIdMax) + (j22 >>> 32);
            iArr3[i7] = (int) j23;
            int i8 = i2 + 5;
            long j24 = (j17 * j7) + (((long) iArr3[i8]) & BodyPartID.bodyIdMax) + (j23 >>> 32);
            iArr3[i8] = (int) j24;
            int i9 = i2 + 6;
            long j25 = (j17 * j8) + (((long) iArr3[i9]) & BodyPartID.bodyIdMax) + (j24 >>> 32);
            iArr3[i9] = (int) j25;
            iArr3[i2 + 7] = (int) (j25 >>> 32);
            i2 = i4;
            j6 = j19;
        }
    }

    public static int k(int[] iArr, int[] iArr2, int[] iArr3) {
        long j2 = ((long) iArr2[0]) & BodyPartID.bodyIdMax;
        long j3 = ((long) iArr2[1]) & BodyPartID.bodyIdMax;
        long j4 = ((long) iArr2[2]) & BodyPartID.bodyIdMax;
        long j5 = ((long) iArr2[3]) & BodyPartID.bodyIdMax;
        long j6 = ((long) iArr2[4]) & BodyPartID.bodyIdMax;
        long j7 = ((long) iArr2[5]) & BodyPartID.bodyIdMax;
        long j8 = ((long) iArr2[6]) & BodyPartID.bodyIdMax;
        long j9 = 0;
        int i2 = 0;
        while (i2 < 7) {
            long j10 = j8;
            long j11 = ((long) iArr[i2]) & BodyPartID.bodyIdMax;
            long j12 = (((long) iArr3[i2]) & BodyPartID.bodyIdMax) + (j11 * j2);
            iArr3[i2] = (int) j12;
            int i3 = i2 + 1;
            long j13 = (j11 * j3) + (((long) iArr3[i3]) & BodyPartID.bodyIdMax) + (j12 >>> 32);
            iArr3[i3] = (int) j13;
            int i4 = i2 + 2;
            long j14 = (j11 * j4) + (((long) iArr3[i4]) & BodyPartID.bodyIdMax) + (j13 >>> 32);
            int i5 = i2;
            iArr3[i4] = (int) j14;
            int i6 = i5 + 3;
            long j15 = (j11 * j5) + (((long) iArr3[i6]) & BodyPartID.bodyIdMax) + (j14 >>> 32);
            iArr3[i6] = (int) j15;
            int i7 = i5 + 4;
            long j16 = (j11 * j6) + (((long) iArr3[i7]) & BodyPartID.bodyIdMax) + (j15 >>> 32);
            iArr3[i7] = (int) j16;
            int i8 = i5 + 5;
            long j17 = (j11 * j7) + (((long) iArr3[i8]) & BodyPartID.bodyIdMax) + (j16 >>> 32);
            iArr3[i8] = (int) j17;
            int i9 = i5 + 6;
            long j18 = (j11 * j10) + (((long) iArr3[i9]) & BodyPartID.bodyIdMax) + (j17 >>> 32);
            iArr3[i9] = (int) j18;
            int i10 = i5 + 7;
            long j19 = j9 + (((long) iArr3[i10]) & BodyPartID.bodyIdMax) + (j18 >>> 32);
            iArr3[i10] = (int) j19;
            j9 = j19 >>> 32;
            i2 = i3;
            j8 = j10;
        }
        return (int) j9;
    }

    public static void l(int[] iArr, int[] iArr2) {
        long j2 = ((long) iArr[0]) & BodyPartID.bodyIdMax;
        int i2 = 14;
        int i3 = 0;
        int i4 = 6;
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
                int i15 = (int) j51;
                iArr2[6] = i14 | (i15 << 1);
                int i16 = i15 >>> 31;
                long jC11 = z81.c(j46, j7, j51 >>> 32, j42);
                long jC12 = z81.c(j46, j10, jC11 >>> 32, j43);
                long jC13 = z81.c(j46, j16, jC12 >>> 32, j45);
                long jC14 = z81.c(j46, j25, jC13 >>> 32, j48);
                long jC15 = z81.c(j46, j35, jC14 >>> 32, j50);
                long j52 = j49 + (jC15 >>> 32);
                int i17 = (int) jC11;
                iArr2[7] = (i17 << 1) | i16;
                int i18 = (int) jC12;
                iArr2[8] = (i17 >>> 31) | (i18 << 1);
                int i19 = i18 >>> 31;
                int i20 = (int) jC13;
                iArr2[9] = i19 | (i20 << 1);
                int i21 = i20 >>> 31;
                int i22 = (int) jC14;
                iArr2[10] = i21 | (i22 << 1);
                int i23 = i22 >>> 31;
                int i24 = (int) jC15;
                iArr2[11] = i23 | (i24 << 1);
                int i25 = i24 >>> 31;
                int i26 = (int) j52;
                iArr2[12] = i25 | (i26 << 1);
                iArr2[13] = ((iArr2[13] + ((int) (j52 >>> 32))) << 1) | (i26 >>> 31);
                return;
            }
            i4 = i5;
        }
    }

    public static int m(int[] iArr, int[] iArr2, int[] iArr3) {
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
        return (int) (j8 >> 32);
    }

    public static BigInteger n(int[] iArr) {
        byte[] bArr = new byte[28];
        for (int i2 = 0; i2 < 7; i2++) {
            int i3 = iArr[i2];
            if (i3 != 0) {
                Pack.c(i3, bArr, (6 - i2) << 2);
            }
        }
        return new BigInteger(1, bArr);
    }
}
