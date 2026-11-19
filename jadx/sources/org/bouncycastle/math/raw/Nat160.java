package org.bouncycastle.math.raw;

import defpackage.ct0;
import defpackage.z81;
import java.math.BigInteger;
import org.bouncycastle.util.Pack;

/* JADX INFO: loaded from: classes5.dex */
public abstract class Nat160 {
    private static final long M = 4294967295L;

    public static int add(int[] iArr, int[] iArr2, int[] iArr3) {
        long j2 = (((long) iArr[0]) & 4294967295L) + (((long) iArr2[0]) & 4294967295L);
        iArr3[0] = (int) j2;
        long j3 = (((long) iArr[1]) & 4294967295L) + (((long) iArr2[1]) & 4294967295L) + (j2 >>> 32);
        iArr3[1] = (int) j3;
        long j4 = (((long) iArr[2]) & 4294967295L) + (((long) iArr2[2]) & 4294967295L) + (j3 >>> 32);
        iArr3[2] = (int) j4;
        long j5 = (((long) iArr[3]) & 4294967295L) + (((long) iArr2[3]) & 4294967295L) + (j4 >>> 32);
        iArr3[3] = (int) j5;
        long j6 = (((long) iArr[4]) & 4294967295L) + (((long) iArr2[4]) & 4294967295L) + (j5 >>> 32);
        iArr3[4] = (int) j6;
        return (int) (j6 >>> 32);
    }

    public static int addBothTo(int[] iArr, int[] iArr2, int[] iArr3) {
        long j2 = (((long) iArr[0]) & 4294967295L) + (((long) iArr2[0]) & 4294967295L) + (((long) iArr3[0]) & 4294967295L);
        iArr3[0] = (int) j2;
        long j3 = (((long) iArr[1]) & 4294967295L) + (((long) iArr2[1]) & 4294967295L) + (((long) iArr3[1]) & 4294967295L) + (j2 >>> 32);
        iArr3[1] = (int) j3;
        long j4 = (((long) iArr[2]) & 4294967295L) + (((long) iArr2[2]) & 4294967295L) + (((long) iArr3[2]) & 4294967295L) + (j3 >>> 32);
        iArr3[2] = (int) j4;
        long j5 = (((long) iArr[3]) & 4294967295L) + (((long) iArr2[3]) & 4294967295L) + (((long) iArr3[3]) & 4294967295L) + (j4 >>> 32);
        iArr3[3] = (int) j5;
        long j6 = (((long) iArr[4]) & 4294967295L) + (((long) iArr2[4]) & 4294967295L) + (((long) iArr3[4]) & 4294967295L) + (j5 >>> 32);
        iArr3[4] = (int) j6;
        return (int) (j6 >>> 32);
    }

    public static int addTo(int[] iArr, int i2, int[] iArr2, int i3, int i4) {
        long j2 = (((long) iArr[i2]) & 4294967295L) + (((long) iArr2[i3]) & 4294967295L) + (((long) i4) & 4294967295L);
        iArr2[i3] = (int) j2;
        int i5 = i3 + 1;
        long j3 = (((long) iArr[i2 + 1]) & 4294967295L) + (((long) iArr2[i5]) & 4294967295L) + (j2 >>> 32);
        iArr2[i5] = (int) j3;
        int i6 = i3 + 2;
        long j4 = (((long) iArr[i2 + 2]) & 4294967295L) + (((long) iArr2[i6]) & 4294967295L) + (j3 >>> 32);
        iArr2[i6] = (int) j4;
        int i7 = i3 + 3;
        long j5 = (((long) iArr[i2 + 3]) & 4294967295L) + (((long) iArr2[i7]) & 4294967295L) + (j4 >>> 32);
        iArr2[i7] = (int) j5;
        int i8 = i3 + 4;
        long j6 = (((long) iArr[i2 + 4]) & 4294967295L) + (4294967295L & ((long) iArr2[i8])) + (j5 >>> 32);
        iArr2[i8] = (int) j6;
        return (int) (j6 >>> 32);
    }

    public static int addToEachOther(int[] iArr, int i2, int[] iArr2, int i3) {
        long j2 = (((long) iArr[i2]) & 4294967295L) + (((long) iArr2[i3]) & 4294967295L);
        int i4 = (int) j2;
        iArr[i2] = i4;
        iArr2[i3] = i4;
        int i5 = i2 + 1;
        int i6 = i3 + 1;
        long j3 = (((long) iArr[i5]) & 4294967295L) + (((long) iArr2[i6]) & 4294967295L) + (j2 >>> 32);
        int i7 = (int) j3;
        iArr[i5] = i7;
        iArr2[i6] = i7;
        int i8 = i2 + 2;
        int i9 = i3 + 2;
        long j4 = (((long) iArr[i8]) & 4294967295L) + (((long) iArr2[i9]) & 4294967295L) + (j3 >>> 32);
        int i10 = (int) j4;
        iArr[i8] = i10;
        iArr2[i9] = i10;
        int i11 = i2 + 3;
        int i12 = i3 + 3;
        long j5 = (((long) iArr[i11]) & 4294967295L) + (((long) iArr2[i12]) & 4294967295L) + (j4 >>> 32);
        int i13 = (int) j5;
        iArr[i11] = i13;
        iArr2[i12] = i13;
        int i14 = i2 + 4;
        int i15 = i3 + 4;
        long j6 = (((long) iArr[i14]) & 4294967295L) + (4294967295L & ((long) iArr2[i15])) + (j5 >>> 32);
        int i16 = (int) j6;
        iArr[i14] = i16;
        iArr2[i15] = i16;
        return (int) (j6 >>> 32);
    }

    public static void copy(int[] iArr, int i2, int[] iArr2, int i3) {
        iArr2[i3] = iArr[i2];
        iArr2[i3 + 1] = iArr[i2 + 1];
        iArr2[i3 + 2] = iArr[i2 + 2];
        iArr2[i3 + 3] = iArr[i2 + 3];
        iArr2[i3 + 4] = iArr[i2 + 4];
    }

    public static int[] create() {
        return new int[5];
    }

    public static int[] createExt() {
        return new int[10];
    }

    public static boolean diff(int[] iArr, int i2, int[] iArr2, int i3, int[] iArr3, int i4) {
        boolean zGte = gte(iArr, i2, iArr2, i3);
        if (zGte) {
            sub(iArr, i2, iArr2, i3, iArr3, i4);
            return zGte;
        }
        sub(iArr2, i3, iArr, i2, iArr3, i4);
        return zGte;
    }

    public static boolean eq(int[] iArr, int[] iArr2) {
        for (int i2 = 4; i2 >= 0; i2--) {
            if (iArr[i2] != iArr2[i2]) {
                return false;
            }
        }
        return true;
    }

    public static int[] fromBigInteger(BigInteger bigInteger) {
        if (bigInteger.signum() < 0 || bigInteger.bitLength() > 160) {
            ct0.c();
            return null;
        }
        int[] iArrCreate = create();
        for (int i2 = 0; i2 < 5; i2++) {
            iArrCreate[i2] = bigInteger.intValue();
            bigInteger = bigInteger.shiftRight(32);
        }
        return iArrCreate;
    }

    public static int getBit(int[] iArr, int i2) {
        int i3;
        if (i2 == 0) {
            i3 = iArr[0];
        } else {
            int i4 = i2 >> 5;
            if (i4 < 0 || i4 >= 5) {
                return 0;
            }
            i3 = iArr[i4] >>> (i2 & 31);
        }
        return i3 & 1;
    }

    public static boolean gte(int[] iArr, int i2, int[] iArr2, int i3) {
        for (int i4 = 4; i4 >= 0; i4--) {
            int i5 = iArr[i2 + i4] ^ Integer.MIN_VALUE;
            int i6 = Integer.MIN_VALUE ^ iArr2[i3 + i4];
            if (i5 < i6) {
                return false;
            }
            if (i5 > i6) {
                return true;
            }
        }
        return true;
    }

    public static boolean isOne(int[] iArr) {
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

    public static boolean isZero(int[] iArr) {
        for (int i2 = 0; i2 < 5; i2++) {
            if (iArr[i2] != 0) {
                return false;
            }
        }
        return true;
    }

    public static void mul(int[] iArr, int i2, int[] iArr2, int i3, int[] iArr3, int i4) {
        long j2 = ((long) iArr2[i3]) & 4294967295L;
        long j3 = ((long) iArr2[i3 + 1]) & 4294967295L;
        long j4 = ((long) iArr2[i3 + 2]) & 4294967295L;
        long j5 = ((long) iArr2[i3 + 3]) & 4294967295L;
        long j6 = ((long) iArr2[i3 + 4]) & 4294967295L;
        long j7 = ((long) iArr[i2]) & 4294967295L;
        long j8 = j7 * j2;
        iArr3[i4] = (int) j8;
        long j9 = (j7 * j3) + (j8 >>> 32);
        iArr3[i4 + 1] = (int) j9;
        long j10 = (j7 * j4) + (j9 >>> 32);
        iArr3[i4 + 2] = (int) j10;
        long j11 = (j7 * j5) + (j10 >>> 32);
        iArr3[i4 + 3] = (int) j11;
        long j12 = (j7 * j6) + (j11 >>> 32);
        iArr3[i4 + 4] = (int) j12;
        iArr3[i4 + 5] = (int) (j12 >>> 32);
        int i5 = 1;
        int i6 = i4;
        while (i5 < 5) {
            int i7 = i6 + 1;
            long j13 = ((long) iArr[i2 + i5]) & 4294967295L;
            long j14 = j2;
            long j15 = (j13 * j2) + (((long) iArr3[i7]) & 4294967295L);
            iArr3[i7] = (int) j15;
            int i8 = i6 + 2;
            long j16 = (j13 * j3) + (((long) iArr3[i8]) & 4294967295L) + (j15 >>> 32);
            int i9 = i6;
            iArr3[i8] = (int) j16;
            int i10 = i9 + 3;
            long j17 = (j13 * j4) + (((long) iArr3[i10]) & 4294967295L) + (j16 >>> 32);
            iArr3[i10] = (int) j17;
            int i11 = i9 + 4;
            long j18 = (j13 * j5) + (((long) iArr3[i11]) & 4294967295L) + (j17 >>> 32);
            iArr3[i11] = (int) j18;
            int i12 = i9 + 5;
            long j19 = (j13 * j6) + (((long) iArr3[i12]) & 4294967295L) + (j18 >>> 32);
            iArr3[i12] = (int) j19;
            iArr3[i9 + 6] = (int) (j19 >>> 32);
            i5++;
            i6 = i7;
            j2 = j14;
        }
    }

    public static long mul33Add(int i2, int[] iArr, int i3, int[] iArr2, int i4, int[] iArr3, int i5) {
        long j2 = ((long) i2) & 4294967295L;
        long j3 = ((long) iArr[i3]) & 4294967295L;
        long j4 = (j2 * j3) + (((long) iArr2[i4]) & 4294967295L);
        iArr3[i5] = (int) j4;
        long j5 = ((long) iArr[i3 + 1]) & 4294967295L;
        long j6 = (j2 * j5) + j3 + (((long) iArr2[i4 + 1]) & 4294967295L) + (j4 >>> 32);
        iArr3[i5 + 1] = (int) j6;
        long j7 = ((long) iArr[i3 + 2]) & 4294967295L;
        long j8 = (j2 * j7) + j5 + (((long) iArr2[i4 + 2]) & 4294967295L) + (j6 >>> 32);
        iArr3[i5 + 2] = (int) j8;
        long j9 = ((long) iArr[i3 + 3]) & 4294967295L;
        long j10 = (j2 * j9) + j7 + (((long) iArr2[i4 + 3]) & 4294967295L) + (j8 >>> 32);
        iArr3[i5 + 3] = (int) j10;
        long j11 = ((long) iArr[i3 + 4]) & 4294967295L;
        long j12 = (j2 * j11) + j9 + (4294967295L & ((long) iArr2[i4 + 4])) + (j10 >>> 32);
        iArr3[i5 + 4] = (int) j12;
        return (j12 >>> 32) + j11;
    }

    public static int mul33DWordAdd(int i2, long j2, int[] iArr, int i3) {
        long j3 = ((long) i2) & 4294967295L;
        long j4 = j2 & 4294967295L;
        long j5 = (j3 * j4) + (((long) iArr[i3]) & 4294967295L);
        iArr[i3] = (int) j5;
        long j6 = j2 >>> 32;
        long j7 = (j3 * j6) + j4;
        int i4 = i3 + 1;
        long j8 = j7 + (((long) iArr[i4]) & 4294967295L) + (j5 >>> 32);
        iArr[i4] = (int) j8;
        int i5 = i3 + 2;
        long j9 = j6 + (((long) iArr[i5]) & 4294967295L) + (j8 >>> 32);
        iArr[i5] = (int) j9;
        int i6 = i3 + 3;
        long j10 = (j9 >>> 32) + (((long) iArr[i6]) & 4294967295L);
        iArr[i6] = (int) j10;
        if ((j10 >>> 32) == 0) {
            return 0;
        }
        return Nat.incAt(5, iArr, i3, 4);
    }

    public static int mul33WordAdd(int i2, int i3, int[] iArr, int i4) {
        long j2 = ((long) i2) & 4294967295L;
        long j3 = ((long) i3) & 4294967295L;
        long j4 = (j2 * j3) + (((long) iArr[i4]) & 4294967295L);
        iArr[i4] = (int) j4;
        int i5 = i4 + 1;
        long j5 = j3 + (((long) iArr[i5]) & 4294967295L) + (j4 >>> 32);
        iArr[i5] = (int) j5;
        int i6 = i4 + 2;
        long j6 = (j5 >>> 32) + (((long) iArr[i6]) & 4294967295L);
        iArr[i6] = (int) j6;
        if ((j6 >>> 32) == 0) {
            return 0;
        }
        return Nat.incAt(5, iArr, i4, 3);
    }

    public static int mulAddTo(int[] iArr, int i2, int[] iArr2, int i3, int[] iArr3, int i4) {
        long j2 = ((long) iArr2[i3]) & 4294967295L;
        long j3 = ((long) iArr2[i3 + 1]) & 4294967295L;
        long j4 = ((long) iArr2[i3 + 2]) & 4294967295L;
        long j5 = ((long) iArr2[i3 + 3]) & 4294967295L;
        long j6 = ((long) iArr2[i3 + 4]) & 4294967295L;
        int i5 = 0;
        long j7 = 0;
        int i6 = i4;
        while (i5 < 5) {
            long j8 = ((long) iArr[i2 + i5]) & 4294967295L;
            long j9 = j2;
            long j10 = (j8 * j2) + (((long) iArr3[i6]) & 4294967295L);
            iArr3[i6] = (int) j10;
            int i7 = i6 + 1;
            long j11 = (j8 * j3) + (((long) iArr3[i7]) & 4294967295L) + (j10 >>> 32);
            iArr3[i7] = (int) j11;
            long j12 = j8 * j4;
            int i8 = i6 + 2;
            long j13 = j12 + (((long) iArr3[i8]) & 4294967295L) + (j11 >>> 32);
            iArr3[i8] = (int) j13;
            long j14 = j8 * j5;
            int i9 = i6 + 3;
            long j15 = j14 + (((long) iArr3[i9]) & 4294967295L) + (j13 >>> 32);
            iArr3[i9] = (int) j15;
            long j16 = j8 * j6;
            int i10 = i6 + 4;
            long j17 = j16 + (((long) iArr3[i10]) & 4294967295L) + (j15 >>> 32);
            iArr3[i10] = (int) j17;
            int i11 = i6 + 5;
            long j18 = (j17 >>> 32) + (((long) iArr3[i11]) & 4294967295L) + j7;
            iArr3[i11] = (int) j18;
            j7 = j18 >>> 32;
            i5++;
            i6 = i7;
            j2 = j9;
        }
        return (int) j7;
    }

    public static int mulWord(int i2, int[] iArr, int[] iArr2, int i3) {
        long j2 = ((long) i2) & 4294967295L;
        long j3 = 0;
        int i4 = 0;
        do {
            long j4 = ((((long) iArr[i4]) & 4294967295L) * j2) + j3;
            iArr2[i3 + i4] = (int) j4;
            j3 = j4 >>> 32;
            i4++;
        } while (i4 < 5);
        return (int) j3;
    }

    public static int mulWordAddExt(int i2, int[] iArr, int i3, int[] iArr2, int i4) {
        long j2 = ((long) i2) & 4294967295L;
        long j3 = ((((long) iArr[i3]) & 4294967295L) * j2) + (((long) iArr2[i4]) & 4294967295L);
        iArr2[i4] = (int) j3;
        int i5 = i4 + 1;
        long j4 = ((((long) iArr[i3 + 1]) & 4294967295L) * j2) + (((long) iArr2[i5]) & 4294967295L) + (j3 >>> 32);
        iArr2[i5] = (int) j4;
        int i6 = i4 + 2;
        long j5 = ((((long) iArr[i3 + 2]) & 4294967295L) * j2) + (((long) iArr2[i6]) & 4294967295L) + (j4 >>> 32);
        iArr2[i6] = (int) j5;
        int i7 = i4 + 3;
        long j6 = ((((long) iArr[i3 + 3]) & 4294967295L) * j2) + (((long) iArr2[i7]) & 4294967295L) + (j5 >>> 32);
        iArr2[i7] = (int) j6;
        int i8 = i4 + 4;
        long j7 = (j2 * (((long) iArr[i3 + 4]) & 4294967295L)) + (((long) iArr2[i8]) & 4294967295L) + (j6 >>> 32);
        iArr2[i8] = (int) j7;
        return (int) (j7 >>> 32);
    }

    public static int mulWordDwordAdd(int i2, long j2, int[] iArr, int i3) {
        long j3 = ((long) i2) & 4294967295L;
        long j4 = ((j2 & 4294967295L) * j3) + (((long) iArr[i3]) & 4294967295L);
        iArr[i3] = (int) j4;
        long j5 = j3 * (j2 >>> 32);
        int i4 = i3 + 1;
        long j6 = j5 + (((long) iArr[i4]) & 4294967295L) + (j4 >>> 32);
        iArr[i4] = (int) j6;
        long j7 = j6 >>> 32;
        int i5 = i3 + 2;
        long j8 = j7 + (((long) iArr[i5]) & 4294967295L);
        iArr[i5] = (int) j8;
        if ((j8 >>> 32) == 0) {
            return 0;
        }
        return Nat.incAt(5, iArr, i3, 3);
    }

    public static int mulWordsAdd(int i2, int i3, int[] iArr, int i4) {
        long j2 = ((((long) i3) & 4294967295L) * (((long) i2) & 4294967295L)) + (((long) iArr[i4]) & 4294967295L);
        iArr[i4] = (int) j2;
        int i5 = i4 + 1;
        long j3 = (j2 >>> 32) + (4294967295L & ((long) iArr[i5]));
        iArr[i5] = (int) j3;
        if ((j3 >>> 32) == 0) {
            return 0;
        }
        return Nat.incAt(5, iArr, i4, 2);
    }

    public static void square(int[] iArr, int i2, int[] iArr2, int i3) {
        long j2 = ((long) iArr[i2]) & 4294967295L;
        int i4 = 0;
        int i5 = 10;
        int i6 = 4;
        while (true) {
            int i7 = i6 - 1;
            long j3 = ((long) iArr[i2 + i6]) & 4294967295L;
            long j4 = j3 * j3;
            iArr2[(i5 - 1) + i3] = (i4 << 31) | ((int) (j4 >>> 33));
            i5 -= 2;
            iArr2[i3 + i5] = (int) (j4 >>> 1);
            i4 = (int) j4;
            if (i7 <= 0) {
                long j5 = j2 * j2;
                long j6 = (j5 >>> 33) | (((long) (i4 << 31)) & 4294967295L);
                iArr2[i3] = (int) j5;
                int i8 = ((int) (j5 >>> 32)) & 1;
                long j7 = ((long) iArr[i2 + 1]) & 4294967295L;
                int i9 = i3 + 2;
                long j8 = ((long) iArr2[i9]) & 4294967295L;
                long j9 = (j7 * j2) + j6;
                int i10 = (int) j9;
                iArr2[i3 + 1] = (i10 << 1) | i8;
                long j10 = j8 + (j9 >>> 32);
                long j11 = ((long) iArr[i2 + 2]) & 4294967295L;
                int i11 = i3 + 3;
                long j12 = ((long) iArr2[i11]) & 4294967295L;
                int i12 = i3 + 4;
                long j13 = ((long) iArr2[i12]) & 4294967295L;
                long j14 = (j11 * j2) + j10;
                int i13 = (int) j14;
                iArr2[i9] = (i13 << 1) | (i10 >>> 31);
                long jC = z81.c(j11, j7, j14 >>> 32, j12);
                long j15 = j13 + (jC >>> 32);
                long j16 = ((long) iArr[i2 + 3]) & 4294967295L;
                int i14 = i3 + 5;
                long j17 = (((long) iArr2[i14]) & 4294967295L) + (j15 >>> 32);
                long j18 = j15 & 4294967295L;
                int i15 = i3 + 6;
                long j19 = (((long) iArr2[i15]) & 4294967295L) + (j17 >>> 32);
                long j20 = j17 & 4294967295L;
                long j21 = (j16 * j2) + (jC & 4294967295L);
                int i16 = (int) j21;
                iArr2[i11] = (i13 >>> 31) | (i16 << 1);
                long jC2 = z81.c(j16, j7, j21 >>> 32, j18);
                long jC3 = z81.c(j16, j11, jC2 >>> 32, j20);
                long j22 = j19 + (jC3 >>> 32);
                long j23 = jC3 & 4294967295L;
                long j24 = ((long) iArr[i2 + 4]) & 4294967295L;
                int i17 = i3 + 7;
                long j25 = (((long) iArr2[i17]) & 4294967295L) + (j22 >>> 32);
                long j26 = j22 & 4294967295L;
                int i18 = i3 + 8;
                long j27 = (((long) iArr2[i18]) & 4294967295L) + (j25 >>> 32);
                long j28 = (j24 * j2) + (jC2 & 4294967295L);
                int i19 = (int) j28;
                iArr2[i12] = (i16 >>> 31) | (i19 << 1);
                int i20 = i19 >>> 31;
                long jC4 = z81.c(j24, j7, j28 >>> 32, j23);
                long jC5 = z81.c(j24, j11, jC4 >>> 32, j26);
                long jC6 = z81.c(j24, j16, jC5 >>> 32, j25 & 4294967295L);
                long j29 = j27 + (jC6 >>> 32);
                int i21 = (int) jC4;
                iArr2[i14] = i20 | (i21 << 1);
                int i22 = i21 >>> 31;
                int i23 = (int) jC5;
                iArr2[i15] = i22 | (i23 << 1);
                int i24 = (int) jC6;
                iArr2[i17] = (i23 >>> 31) | (i24 << 1);
                int i25 = i24 >>> 31;
                int i26 = (int) j29;
                iArr2[i18] = i25 | (i26 << 1);
                int i27 = i26 >>> 31;
                int i28 = i3 + 9;
                iArr2[i28] = ((iArr2[i28] + ((int) (j29 >>> 32))) << 1) | i27;
                return;
            }
            i6 = i7;
        }
    }

    public static int sub(int[] iArr, int i2, int[] iArr2, int i3, int[] iArr3, int i4) {
        long j2 = (((long) iArr[i2]) & 4294967295L) - (((long) iArr2[i3]) & 4294967295L);
        iArr3[i4] = (int) j2;
        long j3 = ((((long) iArr[i2 + 1]) & 4294967295L) - (((long) iArr2[i3 + 1]) & 4294967295L)) + (j2 >> 32);
        iArr3[i4 + 1] = (int) j3;
        long j4 = ((((long) iArr[i2 + 2]) & 4294967295L) - (((long) iArr2[i3 + 2]) & 4294967295L)) + (j3 >> 32);
        iArr3[i4 + 2] = (int) j4;
        long j5 = ((((long) iArr[i2 + 3]) & 4294967295L) - (((long) iArr2[i3 + 3]) & 4294967295L)) + (j4 >> 32);
        iArr3[i4 + 3] = (int) j5;
        long j6 = ((((long) iArr[i2 + 4]) & 4294967295L) - (((long) iArr2[i3 + 4]) & 4294967295L)) + (j5 >> 32);
        iArr3[i4 + 4] = (int) j6;
        return (int) (j6 >> 32);
    }

    public static int subBothFrom(int[] iArr, int[] iArr2, int[] iArr3) {
        long j2 = ((((long) iArr3[0]) & 4294967295L) - (((long) iArr[0]) & 4294967295L)) - (((long) iArr2[0]) & 4294967295L);
        iArr3[0] = (int) j2;
        long j3 = (((((long) iArr3[1]) & 4294967295L) - (((long) iArr[1]) & 4294967295L)) - (((long) iArr2[1]) & 4294967295L)) + (j2 >> 32);
        iArr3[1] = (int) j3;
        long j4 = (((((long) iArr3[2]) & 4294967295L) - (((long) iArr[2]) & 4294967295L)) - (((long) iArr2[2]) & 4294967295L)) + (j3 >> 32);
        iArr3[2] = (int) j4;
        long j5 = (((((long) iArr3[3]) & 4294967295L) - (((long) iArr[3]) & 4294967295L)) - (((long) iArr2[3]) & 4294967295L)) + (j4 >> 32);
        iArr3[3] = (int) j5;
        long j6 = (((((long) iArr3[4]) & 4294967295L) - (((long) iArr[4]) & 4294967295L)) - (((long) iArr2[4]) & 4294967295L)) + (j5 >> 32);
        iArr3[4] = (int) j6;
        return (int) (j6 >> 32);
    }

    public static int subFrom(int[] iArr, int i2, int[] iArr2, int i3) {
        long j2 = (((long) iArr2[i3]) & 4294967295L) - (((long) iArr[i2]) & 4294967295L);
        iArr2[i3] = (int) j2;
        int i4 = i3 + 1;
        long j3 = ((((long) iArr2[i4]) & 4294967295L) - (((long) iArr[i2 + 1]) & 4294967295L)) + (j2 >> 32);
        iArr2[i4] = (int) j3;
        int i5 = i3 + 2;
        long j4 = ((((long) iArr2[i5]) & 4294967295L) - (((long) iArr[i2 + 2]) & 4294967295L)) + (j3 >> 32);
        iArr2[i5] = (int) j4;
        int i6 = i3 + 3;
        long j5 = ((((long) iArr2[i6]) & 4294967295L) - (((long) iArr[i2 + 3]) & 4294967295L)) + (j4 >> 32);
        iArr2[i6] = (int) j5;
        int i7 = i3 + 4;
        long j6 = ((((long) iArr2[i7]) & 4294967295L) - (((long) iArr[i2 + 4]) & 4294967295L)) + (j5 >> 32);
        iArr2[i7] = (int) j6;
        return (int) (j6 >> 32);
    }

    public static BigInteger toBigInteger(int[] iArr) {
        byte[] bArr = new byte[20];
        for (int i2 = 0; i2 < 5; i2++) {
            int i3 = iArr[i2];
            if (i3 != 0) {
                Pack.intToBigEndian(i3, bArr, (4 - i2) << 2);
            }
        }
        return new BigInteger(1, bArr);
    }

    public static void zero(int[] iArr) {
        iArr[0] = 0;
        iArr[1] = 0;
        iArr[2] = 0;
        iArr[3] = 0;
        iArr[4] = 0;
    }

    public static boolean gte(int[] iArr, int[] iArr2) {
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

    public static void copy(int[] iArr, int[] iArr2) {
        iArr2[0] = iArr[0];
        iArr2[1] = iArr[1];
        iArr2[2] = iArr[2];
        iArr2[3] = iArr[3];
        iArr2[4] = iArr[4];
    }

    public static int subFrom(int[] iArr, int[] iArr2) {
        long j2 = (((long) iArr2[0]) & 4294967295L) - (((long) iArr[0]) & 4294967295L);
        iArr2[0] = (int) j2;
        long j3 = ((((long) iArr2[1]) & 4294967295L) - (((long) iArr[1]) & 4294967295L)) + (j2 >> 32);
        iArr2[1] = (int) j3;
        long j4 = ((((long) iArr2[2]) & 4294967295L) - (((long) iArr[2]) & 4294967295L)) + (j3 >> 32);
        iArr2[2] = (int) j4;
        long j5 = ((((long) iArr2[3]) & 4294967295L) - (((long) iArr[3]) & 4294967295L)) + (j4 >> 32);
        iArr2[3] = (int) j5;
        long j6 = ((((long) iArr2[4]) & 4294967295L) - (4294967295L & ((long) iArr[4]))) + (j5 >> 32);
        iArr2[4] = (int) j6;
        return (int) (j6 >> 32);
    }

    public static int addTo(int[] iArr, int[] iArr2) {
        long j2 = (((long) iArr[0]) & 4294967295L) + (((long) iArr2[0]) & 4294967295L);
        iArr2[0] = (int) j2;
        long j3 = (((long) iArr[1]) & 4294967295L) + (((long) iArr2[1]) & 4294967295L) + (j2 >>> 32);
        iArr2[1] = (int) j3;
        long j4 = (((long) iArr[2]) & 4294967295L) + (((long) iArr2[2]) & 4294967295L) + (j3 >>> 32);
        iArr2[2] = (int) j4;
        long j5 = (((long) iArr[3]) & 4294967295L) + (((long) iArr2[3]) & 4294967295L) + (j4 >>> 32);
        iArr2[3] = (int) j5;
        long j6 = (((long) iArr[4]) & 4294967295L) + (4294967295L & ((long) iArr2[4])) + (j5 >>> 32);
        iArr2[4] = (int) j6;
        return (int) (j6 >>> 32);
    }

    public static int sub(int[] iArr, int[] iArr2, int[] iArr3) {
        long j2 = (((long) iArr[0]) & 4294967295L) - (((long) iArr2[0]) & 4294967295L);
        iArr3[0] = (int) j2;
        long j3 = ((((long) iArr[1]) & 4294967295L) - (((long) iArr2[1]) & 4294967295L)) + (j2 >> 32);
        iArr3[1] = (int) j3;
        long j4 = ((((long) iArr[2]) & 4294967295L) - (((long) iArr2[2]) & 4294967295L)) + (j3 >> 32);
        iArr3[2] = (int) j4;
        long j5 = ((((long) iArr[3]) & 4294967295L) - (((long) iArr2[3]) & 4294967295L)) + (j4 >> 32);
        iArr3[3] = (int) j5;
        long j6 = ((((long) iArr[4]) & 4294967295L) - (((long) iArr2[4]) & 4294967295L)) + (j5 >> 32);
        iArr3[4] = (int) j6;
        return (int) (j6 >> 32);
    }

    public static int mulAddTo(int[] iArr, int[] iArr2, int[] iArr3) {
        int i2 = 0;
        long j2 = 4294967295L;
        long j3 = ((long) iArr2[0]) & 4294967295L;
        long j4 = ((long) iArr2[1]) & 4294967295L;
        long j5 = ((long) iArr2[2]) & 4294967295L;
        long j6 = ((long) iArr2[3]) & 4294967295L;
        long j7 = ((long) iArr2[4]) & 4294967295L;
        long j8 = 0;
        while (i2 < 5) {
            long j9 = j2;
            long j10 = ((long) iArr[i2]) & j9;
            int i3 = i2;
            long j11 = (j10 * j3) + (((long) iArr3[i2]) & j9);
            iArr3[i3] = (int) j11;
            int i4 = i3 + 1;
            long j12 = (j10 * j4) + (((long) iArr3[i4]) & j9) + (j11 >>> 32);
            iArr3[i4] = (int) j12;
            int i5 = i3 + 2;
            long j13 = (j10 * j5) + (((long) iArr3[i5]) & j9) + (j12 >>> 32);
            iArr3[i5] = (int) j13;
            int i6 = i3 + 3;
            long j14 = (j10 * j6) + (((long) iArr3[i6]) & j9) + (j13 >>> 32);
            iArr3[i6] = (int) j14;
            int i7 = i3 + 4;
            long j15 = (j10 * j7) + (((long) iArr3[i7]) & j9) + (j14 >>> 32);
            iArr3[i7] = (int) j15;
            int i8 = i3 + 5;
            long j16 = (j15 >>> 32) + (((long) iArr3[i8]) & j9) + j8;
            iArr3[i8] = (int) j16;
            j8 = j16 >>> 32;
            j2 = j9;
            j3 = j3;
            i2 = i4;
        }
        return (int) j8;
    }

    public static void mul(int[] iArr, int[] iArr2, int[] iArr3) {
        long j2 = ((long) iArr2[0]) & 4294967295L;
        long j3 = ((long) iArr2[1]) & 4294967295L;
        long j4 = ((long) iArr2[2]) & 4294967295L;
        long j5 = ((long) iArr2[3]) & 4294967295L;
        long j6 = ((long) iArr2[4]) & 4294967295L;
        long j7 = ((long) iArr[0]) & 4294967295L;
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
            long j13 = ((long) iArr[i4]) & 4294967295L;
            long j14 = (j13 * j2) + (((long) iArr3[i4]) & 4294967295L);
            iArr3[i4] = (int) j14;
            i2 = i4 + 1;
            char c3 = c2;
            long j15 = (j13 * j3) + (((long) iArr3[i2]) & 4294967295L) + (j14 >>> c2);
            iArr3[i2] = (int) j15;
            int i5 = i4 + 2;
            long j16 = j6;
            long j17 = (j13 * j4) + (((long) iArr3[i5]) & 4294967295L) + (j15 >>> c3);
            iArr3[i5] = (int) j17;
            long j18 = j17 >>> c3;
            int i6 = i4 + 3;
            long j19 = (j13 * j5) + (((long) iArr3[i6]) & 4294967295L) + j18;
            iArr3[i6] = (int) j19;
            long j20 = j19 >>> c3;
            int i7 = i4 + 4;
            long j21 = (j13 * j16) + (((long) iArr3[i7]) & 4294967295L) + j20;
            iArr3[i7] = (int) j21;
            iArr3[i4 + 5] = (int) (j21 >>> c3);
            c2 = c3;
            j6 = j16;
            i3 = 5;
        }
    }

    public static void square(int[] iArr, int[] iArr2) {
        long j2 = ((long) iArr[0]) & 4294967295L;
        int i2 = 10;
        int i3 = 0;
        int i4 = 4;
        while (true) {
            int i5 = i4 - 1;
            long j3 = ((long) iArr[i4]) & 4294967295L;
            long j4 = j3 * j3;
            iArr2[i2 - 1] = (i3 << 31) | ((int) (j4 >>> 33));
            i2 -= 2;
            iArr2[i2] = (int) (j4 >>> 1);
            i3 = (int) j4;
            if (i5 <= 0) {
                long j5 = j2 * j2;
                long j6 = (j5 >>> 33) | (((long) (i3 << 31)) & 4294967295L);
                iArr2[0] = (int) j5;
                int i6 = ((int) (j5 >>> 32)) & 1;
                long j7 = ((long) iArr[1]) & 4294967295L;
                long j8 = ((long) iArr2[2]) & 4294967295L;
                long j9 = (j7 * j2) + j6;
                int i7 = (int) j9;
                iArr2[1] = i6 | (i7 << 1);
                long j10 = ((long) iArr[2]) & 4294967295L;
                long j11 = ((long) iArr2[3]) & 4294967295L;
                long j12 = ((long) iArr2[4]) & 4294967295L;
                long j13 = (j10 * j2) + j8 + (j9 >>> 32);
                int i8 = (int) j13;
                iArr2[2] = (i8 << 1) | (i7 >>> 31);
                long jC = z81.c(j10, j7, j13 >>> 32, j11);
                long j14 = j12 + (jC >>> 32);
                long j15 = ((long) iArr[3]) & 4294967295L;
                long j16 = (((long) iArr2[5]) & 4294967295L) + (j14 >>> 32);
                long j17 = j14 & 4294967295L;
                long j18 = (((long) iArr2[6]) & 4294967295L) + (j16 >>> 32);
                long j19 = j16 & 4294967295L;
                long j20 = (j15 * j2) + (jC & 4294967295L);
                int i9 = (int) j20;
                iArr2[3] = (i8 >>> 31) | (i9 << 1);
                int i10 = i9 >>> 31;
                long jC2 = z81.c(j15, j7, j20 >>> 32, j17);
                long jC3 = z81.c(j15, j10, jC2 >>> 32, j19);
                long j21 = j18 + (jC3 >>> 32);
                long j22 = ((long) iArr[4]) & 4294967295L;
                long j23 = (((long) iArr2[7]) & 4294967295L) + (j21 >>> 32);
                long j24 = j21 & 4294967295L;
                long j25 = (((long) iArr2[8]) & 4294967295L) + (j23 >>> 32);
                long j26 = (j22 * j2) + (jC2 & 4294967295L);
                int i11 = (int) j26;
                iArr2[4] = i10 | (i11 << 1);
                int i12 = i11 >>> 31;
                long jC4 = z81.c(j22, j7, j26 >>> 32, jC3 & 4294967295L);
                long jC5 = z81.c(j22, j10, jC4 >>> 32, j24);
                long jC6 = z81.c(j22, j15, jC5 >>> 32, j23 & 4294967295L);
                long j27 = j25 + (jC6 >>> 32);
                int i13 = (int) jC4;
                iArr2[5] = (i13 << 1) | i12;
                int i14 = (int) jC5;
                iArr2[6] = (i13 >>> 31) | (i14 << 1);
                int i15 = i14 >>> 31;
                int i16 = (int) jC6;
                iArr2[7] = i15 | (i16 << 1);
                int i17 = i16 >>> 31;
                int i18 = (int) j27;
                iArr2[8] = i17 | (i18 << 1);
                iArr2[9] = ((iArr2[9] + ((int) (j27 >>> 32))) << 1) | (i18 >>> 31);
                return;
            }
            i4 = i5;
        }
    }
}
