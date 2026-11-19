package org.bouncycastle.math.raw;

import defpackage.ct0;
import defpackage.z81;
import java.math.BigInteger;
import org.bouncycastle.util.Pack;

/* JADX INFO: loaded from: classes5.dex */
public abstract class Nat224 {
    private static final long M = 4294967295L;

    public static int add(int[] iArr, int i2, int[] iArr2, int i3, int[] iArr3, int i4) {
        long j2 = (((long) iArr[i2]) & 4294967295L) + (((long) iArr2[i3]) & 4294967295L);
        iArr3[i4] = (int) j2;
        long j3 = (((long) iArr[i2 + 1]) & 4294967295L) + (((long) iArr2[i3 + 1]) & 4294967295L) + (j2 >>> 32);
        iArr3[i4 + 1] = (int) j3;
        long j4 = (((long) iArr[i2 + 2]) & 4294967295L) + (((long) iArr2[i3 + 2]) & 4294967295L) + (j3 >>> 32);
        iArr3[i4 + 2] = (int) j4;
        long j5 = (((long) iArr[i2 + 3]) & 4294967295L) + (((long) iArr2[i3 + 3]) & 4294967295L) + (j4 >>> 32);
        iArr3[i4 + 3] = (int) j5;
        long j6 = (((long) iArr[i2 + 4]) & 4294967295L) + (((long) iArr2[i3 + 4]) & 4294967295L) + (j5 >>> 32);
        iArr3[i4 + 4] = (int) j6;
        long j7 = (((long) iArr[i2 + 5]) & 4294967295L) + (((long) iArr2[i3 + 5]) & 4294967295L) + (j6 >>> 32);
        iArr3[i4 + 5] = (int) j7;
        long j8 = (((long) iArr[i2 + 6]) & 4294967295L) + (((long) iArr2[i3 + 6]) & 4294967295L) + (j7 >>> 32);
        iArr3[i4 + 6] = (int) j8;
        return (int) (j8 >>> 32);
    }

    public static int addBothTo(int[] iArr, int i2, int[] iArr2, int i3, int[] iArr3, int i4) {
        long j2 = (((long) iArr[i2]) & 4294967295L) + (((long) iArr2[i3]) & 4294967295L) + (((long) iArr3[i4]) & 4294967295L);
        iArr3[i4] = (int) j2;
        int i5 = i4 + 1;
        long j3 = (((long) iArr[i2 + 1]) & 4294967295L) + (((long) iArr2[i3 + 1]) & 4294967295L) + (((long) iArr3[i5]) & 4294967295L) + (j2 >>> 32);
        iArr3[i5] = (int) j3;
        int i6 = i4 + 2;
        long j4 = (((long) iArr[i2 + 2]) & 4294967295L) + (((long) iArr2[i3 + 2]) & 4294967295L) + (((long) iArr3[i6]) & 4294967295L) + (j3 >>> 32);
        iArr3[i6] = (int) j4;
        int i7 = i4 + 3;
        long j5 = (((long) iArr[i2 + 3]) & 4294967295L) + (((long) iArr2[i3 + 3]) & 4294967295L) + (((long) iArr3[i7]) & 4294967295L) + (j4 >>> 32);
        iArr3[i7] = (int) j5;
        int i8 = i4 + 4;
        long j6 = (((long) iArr[i2 + 4]) & 4294967295L) + (((long) iArr2[i3 + 4]) & 4294967295L) + (((long) iArr3[i8]) & 4294967295L) + (j5 >>> 32);
        iArr3[i8] = (int) j6;
        int i9 = i4 + 5;
        long j7 = (((long) iArr[i2 + 5]) & 4294967295L) + (((long) iArr2[i3 + 5]) & 4294967295L) + (((long) iArr3[i9]) & 4294967295L) + (j6 >>> 32);
        iArr3[i9] = (int) j7;
        int i10 = i4 + 6;
        long j8 = (((long) iArr[i2 + 6]) & 4294967295L) + (((long) iArr2[i3 + 6]) & 4294967295L) + (((long) iArr3[i10]) & 4294967295L) + (j7 >>> 32);
        iArr3[i10] = (int) j8;
        return (int) (j8 >>> 32);
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
        long j6 = (((long) iArr[i2 + 4]) & 4294967295L) + (((long) iArr2[i8]) & 4294967295L) + (j5 >>> 32);
        iArr2[i8] = (int) j6;
        int i9 = i3 + 5;
        long j7 = (((long) iArr[i2 + 5]) & 4294967295L) + (((long) iArr2[i9]) & 4294967295L) + (j6 >>> 32);
        iArr2[i9] = (int) j7;
        int i10 = i3 + 6;
        long j8 = (((long) iArr[i2 + 6]) & 4294967295L) + (4294967295L & ((long) iArr2[i10])) + (j7 >>> 32);
        iArr2[i10] = (int) j8;
        return (int) (j8 >>> 32);
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
        long j6 = (((long) iArr[i14]) & 4294967295L) + (((long) iArr2[i15]) & 4294967295L) + (j5 >>> 32);
        int i16 = (int) j6;
        iArr[i14] = i16;
        iArr2[i15] = i16;
        int i17 = i2 + 5;
        int i18 = i3 + 5;
        long j7 = (((long) iArr[i17]) & 4294967295L) + (((long) iArr2[i18]) & 4294967295L) + (j6 >>> 32);
        int i19 = (int) j7;
        iArr[i17] = i19;
        iArr2[i18] = i19;
        int i20 = i2 + 6;
        int i21 = i3 + 6;
        long j8 = (((long) iArr[i20]) & 4294967295L) + (4294967295L & ((long) iArr2[i21])) + (j7 >>> 32);
        int i22 = (int) j8;
        iArr[i20] = i22;
        iArr2[i21] = i22;
        return (int) (j8 >>> 32);
    }

    public static void copy(int[] iArr, int i2, int[] iArr2, int i3) {
        iArr2[i3] = iArr[i2];
        iArr2[i3 + 1] = iArr[i2 + 1];
        iArr2[i3 + 2] = iArr[i2 + 2];
        iArr2[i3 + 3] = iArr[i2 + 3];
        iArr2[i3 + 4] = iArr[i2 + 4];
        iArr2[i3 + 5] = iArr[i2 + 5];
        iArr2[i3 + 6] = iArr[i2 + 6];
    }

    public static int[] create() {
        return new int[7];
    }

    public static int[] createExt() {
        return new int[14];
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
        for (int i2 = 6; i2 >= 0; i2--) {
            if (iArr[i2] != iArr2[i2]) {
                return false;
            }
        }
        return true;
    }

    public static int[] fromBigInteger(BigInteger bigInteger) {
        if (bigInteger.signum() < 0 || bigInteger.bitLength() > 224) {
            ct0.c();
            return null;
        }
        int[] iArrCreate = create();
        for (int i2 = 0; i2 < 7; i2++) {
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
            if (i4 < 0 || i4 >= 7) {
                return 0;
            }
            i3 = iArr[i4] >>> (i2 & 31);
        }
        return i3 & 1;
    }

    public static boolean gte(int[] iArr, int i2, int[] iArr2, int i3) {
        for (int i4 = 6; i4 >= 0; i4--) {
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
        for (int i2 = 1; i2 < 7; i2++) {
            if (iArr[i2] != 0) {
                return false;
            }
        }
        return true;
    }

    public static boolean isZero(int[] iArr) {
        for (int i2 = 0; i2 < 7; i2++) {
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
        long j7 = ((long) iArr2[i3 + 5]) & 4294967295L;
        long j8 = ((long) iArr2[i3 + 6]) & 4294967295L;
        long j9 = ((long) iArr[i2]) & 4294967295L;
        long j10 = j9 * j2;
        iArr3[i4] = (int) j10;
        long j11 = (j9 * j3) + (j10 >>> 32);
        iArr3[i4 + 1] = (int) j11;
        long j12 = (j9 * j4) + (j11 >>> 32);
        iArr3[i4 + 2] = (int) j12;
        long j13 = (j9 * j5) + (j12 >>> 32);
        iArr3[i4 + 3] = (int) j13;
        long j14 = (j9 * j6) + (j13 >>> 32);
        iArr3[i4 + 4] = (int) j14;
        long j15 = (j9 * j7) + (j14 >>> 32);
        iArr3[i4 + 5] = (int) j15;
        long j16 = (j9 * j8) + (j15 >>> 32);
        iArr3[i4 + 6] = (int) j16;
        iArr3[i4 + 7] = (int) (j16 >>> 32);
        int i5 = 1;
        int i6 = i4;
        while (i5 < 7) {
            int i7 = i6 + 1;
            int i8 = i6;
            long j17 = ((long) iArr[i2 + i5]) & 4294967295L;
            long j18 = (j17 * j2) + (((long) iArr3[i7]) & 4294967295L);
            iArr3[i7] = (int) j18;
            int i9 = i8 + 2;
            long j19 = (j17 * j3) + (((long) iArr3[i9]) & 4294967295L) + (j18 >>> 32);
            iArr3[i9] = (int) j19;
            int i10 = i8 + 3;
            long j20 = (j17 * j4) + (((long) iArr3[i10]) & 4294967295L) + (j19 >>> 32);
            iArr3[i10] = (int) j20;
            int i11 = i8 + 4;
            long j21 = (j17 * j5) + (((long) iArr3[i11]) & 4294967295L) + (j20 >>> 32);
            iArr3[i11] = (int) j21;
            int i12 = i8 + 5;
            long j22 = (j17 * j6) + (((long) iArr3[i12]) & 4294967295L) + (j21 >>> 32);
            iArr3[i12] = (int) j22;
            int i13 = i8 + 6;
            long j23 = (j17 * j7) + (((long) iArr3[i13]) & 4294967295L) + (j22 >>> 32);
            iArr3[i13] = (int) j23;
            int i14 = i8 + 7;
            long j24 = (j17 * j8) + (((long) iArr3[i14]) & 4294967295L) + (j23 >>> 32);
            iArr3[i14] = (int) j24;
            iArr3[i8 + 8] = (int) (j24 >>> 32);
            i5++;
            i6 = i7;
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
        long j12 = (j2 * j11) + j9 + (((long) iArr2[i4 + 4]) & 4294967295L) + (j10 >>> 32);
        iArr3[i5 + 4] = (int) j12;
        long j13 = ((long) iArr[i3 + 5]) & 4294967295L;
        long j14 = (j2 * j13) + j11 + (((long) iArr2[i4 + 5]) & 4294967295L) + (j12 >>> 32);
        iArr3[i5 + 5] = (int) j14;
        long j15 = ((long) iArr[i3 + 6]) & 4294967295L;
        long j16 = (j2 * j15) + j13 + (4294967295L & ((long) iArr2[i4 + 6])) + (j14 >>> 32);
        iArr3[i5 + 6] = (int) j16;
        return (j16 >>> 32) + j15;
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
        return Nat.incAt(7, iArr, i3, 4);
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
        return Nat.incAt(7, iArr, i4, 3);
    }

    public static int mulAddTo(int[] iArr, int i2, int[] iArr2, int i3, int[] iArr3, int i4) {
        long j2 = ((long) iArr2[i3]) & 4294967295L;
        long j3 = ((long) iArr2[i3 + 1]) & 4294967295L;
        long j4 = ((long) iArr2[i3 + 2]) & 4294967295L;
        long j5 = ((long) iArr2[i3 + 3]) & 4294967295L;
        long j6 = ((long) iArr2[i3 + 4]) & 4294967295L;
        long j7 = ((long) iArr2[i3 + 5]) & 4294967295L;
        long j8 = ((long) iArr2[i3 + 6]) & 4294967295L;
        int i5 = 0;
        int i6 = i4;
        long j9 = 0;
        while (i5 < 7) {
            int i7 = i5;
            long j10 = ((long) iArr[i2 + i5]) & 4294967295L;
            long j11 = (j10 * j2) + (((long) iArr3[i6]) & 4294967295L);
            long j12 = j3;
            iArr3[i6] = (int) j11;
            int i8 = i6 + 1;
            long j13 = (j10 * j12) + (((long) iArr3[i8]) & 4294967295L) + (j11 >>> 32);
            iArr3[i8] = (int) j13;
            int i9 = i6 + 2;
            long j14 = (j10 * j4) + (((long) iArr3[i9]) & 4294967295L) + (j13 >>> 32);
            iArr3[i9] = (int) j14;
            int i10 = i6 + 3;
            long j15 = (j10 * j5) + (((long) iArr3[i10]) & 4294967295L) + (j14 >>> 32);
            iArr3[i10] = (int) j15;
            int i11 = i6 + 4;
            long j16 = (j10 * j6) + (((long) iArr3[i11]) & 4294967295L) + (j15 >>> 32);
            iArr3[i11] = (int) j16;
            int i12 = i6 + 5;
            long j17 = (j10 * j7) + (((long) iArr3[i12]) & 4294967295L) + (j16 >>> 32);
            iArr3[i12] = (int) j17;
            int i13 = i6 + 6;
            long j18 = (j10 * j8) + (((long) iArr3[i13]) & 4294967295L) + (j17 >>> 32);
            iArr3[i13] = (int) j18;
            int i14 = i6 + 7;
            long j19 = (j18 >>> 32) + (((long) iArr3[i14]) & 4294967295L) + j9;
            iArr3[i14] = (int) j19;
            j9 = j19 >>> 32;
            i5 = i7 + 1;
            i6 = i8;
            j3 = j12;
        }
        return (int) j9;
    }

    public static int mulByWord(int i2, int[] iArr) {
        long j2 = ((long) i2) & 4294967295L;
        long j3 = (((long) iArr[0]) & 4294967295L) * j2;
        iArr[0] = (int) j3;
        long j4 = ((((long) iArr[1]) & 4294967295L) * j2) + (j3 >>> 32);
        iArr[1] = (int) j4;
        long j5 = ((((long) iArr[2]) & 4294967295L) * j2) + (j4 >>> 32);
        iArr[2] = (int) j5;
        long j6 = ((((long) iArr[3]) & 4294967295L) * j2) + (j5 >>> 32);
        iArr[3] = (int) j6;
        long j7 = ((((long) iArr[4]) & 4294967295L) * j2) + (j6 >>> 32);
        iArr[4] = (int) j7;
        long j8 = ((((long) iArr[5]) & 4294967295L) * j2) + (j7 >>> 32);
        iArr[5] = (int) j8;
        long j9 = (j2 * (4294967295L & ((long) iArr[6]))) + (j8 >>> 32);
        iArr[6] = (int) j9;
        return (int) (j9 >>> 32);
    }

    public static int mulByWordAddTo(int i2, int[] iArr, int[] iArr2) {
        long j2 = ((long) i2) & 4294967295L;
        long j3 = ((((long) iArr2[0]) & 4294967295L) * j2) + (((long) iArr[0]) & 4294967295L);
        iArr2[0] = (int) j3;
        long j4 = ((((long) iArr2[1]) & 4294967295L) * j2) + (((long) iArr[1]) & 4294967295L) + (j3 >>> 32);
        iArr2[1] = (int) j4;
        long j5 = ((((long) iArr2[2]) & 4294967295L) * j2) + (((long) iArr[2]) & 4294967295L) + (j4 >>> 32);
        iArr2[2] = (int) j5;
        long j6 = ((((long) iArr2[3]) & 4294967295L) * j2) + (((long) iArr[3]) & 4294967295L) + (j5 >>> 32);
        iArr2[3] = (int) j6;
        long j7 = ((((long) iArr2[4]) & 4294967295L) * j2) + (((long) iArr[4]) & 4294967295L) + (j6 >>> 32);
        iArr2[4] = (int) j7;
        long j8 = ((((long) iArr2[5]) & 4294967295L) * j2) + (((long) iArr[5]) & 4294967295L) + (j7 >>> 32);
        iArr2[5] = (int) j8;
        long j9 = (j2 * (((long) iArr2[6]) & 4294967295L)) + (4294967295L & ((long) iArr[6])) + (j8 >>> 32);
        iArr2[6] = (int) j9;
        return (int) (j9 >>> 32);
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
        } while (i4 < 7);
        return (int) j3;
    }

    public static int mulWordAddTo(int i2, int[] iArr, int i3, int[] iArr2, int i4) {
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
        long j7 = ((((long) iArr[i3 + 4]) & 4294967295L) * j2) + (((long) iArr2[i8]) & 4294967295L) + (j6 >>> 32);
        iArr2[i8] = (int) j7;
        int i9 = i4 + 5;
        long j8 = ((((long) iArr[i3 + 5]) & 4294967295L) * j2) + (((long) iArr2[i9]) & 4294967295L) + (j7 >>> 32);
        iArr2[i9] = (int) j8;
        int i10 = i4 + 6;
        long j9 = (j2 * (((long) iArr[i3 + 6]) & 4294967295L)) + (((long) iArr2[i10]) & 4294967295L) + (j8 >>> 32);
        iArr2[i10] = (int) j9;
        return (int) (j9 >>> 32);
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
        return Nat.incAt(7, iArr, i3, 3);
    }

    public static void square(int[] iArr, int i2, int[] iArr2, int i3) {
        long j2 = ((long) iArr[i2]) & 4294967295L;
        int i4 = 0;
        int i5 = 14;
        int i6 = 6;
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
                long j28 = j25 & 4294967295L;
                long j29 = (j24 * j2) + (jC2 & 4294967295L);
                int i19 = (int) j29;
                iArr2[i12] = (i16 >>> 31) | (i19 << 1);
                int i20 = i19 >>> 31;
                long jC4 = z81.c(j24, j7, j29 >>> 32, j23);
                long jC5 = z81.c(j24, j11, jC4 >>> 32, j26);
                long jC6 = z81.c(j24, j16, jC5 >>> 32, j28);
                long j30 = jC5 & 4294967295L;
                long j31 = j27 + (jC6 >>> 32);
                long j32 = jC6 & 4294967295L;
                long j33 = ((long) iArr[i2 + 5]) & 4294967295L;
                int i21 = i3 + 9;
                long j34 = (((long) iArr2[i21]) & 4294967295L) + (j31 >>> 32);
                long j35 = j31 & 4294967295L;
                int i22 = i3 + 10;
                long j36 = (((long) iArr2[i22]) & 4294967295L) + (j34 >>> 32);
                long j37 = (j33 * j2) + (jC4 & 4294967295L);
                int i23 = (int) j37;
                iArr2[i14] = i20 | (i23 << 1);
                int i24 = i23 >>> 31;
                long jC7 = z81.c(j33, j7, j37 >>> 32, j30);
                long jC8 = z81.c(j33, j11, jC7 >>> 32, j32);
                long jC9 = z81.c(j33, j16, jC8 >>> 32, j35);
                long j38 = jC8 & 4294967295L;
                long jC10 = z81.c(j33, j24, jC9 >>> 32, j34 & 4294967295L);
                long j39 = j36 + (jC10 >>> 32);
                long j40 = jC10 & 4294967295L;
                long j41 = ((long) iArr[i2 + 6]) & 4294967295L;
                int i25 = i3 + 11;
                long j42 = (((long) iArr2[i25]) & 4294967295L) + (j39 >>> 32);
                long j43 = j39 & 4294967295L;
                int i26 = i3 + 12;
                long j44 = (((long) iArr2[i26]) & 4294967295L) + (j42 >>> 32);
                long j45 = j42 & 4294967295L;
                long j46 = (j41 * j2) + (jC7 & 4294967295L);
                int i27 = (int) j46;
                iArr2[i15] = (i27 << 1) | i24;
                long jC11 = z81.c(j41, j7, j46 >>> 32, j38);
                long jC12 = z81.c(j41, j11, jC11 >>> 32, jC9 & 4294967295L);
                long jC13 = z81.c(j41, j16, jC12 >>> 32, j40);
                long jC14 = z81.c(j41, j24, jC13 >>> 32, j43);
                long jC15 = z81.c(j41, j33, jC14 >>> 32, j45);
                long j47 = j44 + (jC15 >>> 32);
                int i28 = (int) jC11;
                iArr2[i17] = (i27 >>> 31) | (i28 << 1);
                int i29 = i28 >>> 31;
                int i30 = (int) jC12;
                iArr2[i18] = i29 | (i30 << 1);
                int i31 = i30 >>> 31;
                int i32 = (int) jC13;
                iArr2[i21] = i31 | (i32 << 1);
                int i33 = i32 >>> 31;
                int i34 = (int) jC14;
                iArr2[i22] = i33 | (i34 << 1);
                int i35 = i34 >>> 31;
                int i36 = (int) jC15;
                iArr2[i25] = i35 | (i36 << 1);
                int i37 = i36 >>> 31;
                int i38 = (int) j47;
                iArr2[i26] = i37 | (i38 << 1);
                int i39 = i38 >>> 31;
                int i40 = i3 + 13;
                iArr2[i40] = i39 | ((iArr2[i40] + ((int) (j47 >>> 32))) << 1);
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
        long j7 = ((((long) iArr[i2 + 5]) & 4294967295L) - (((long) iArr2[i3 + 5]) & 4294967295L)) + (j6 >> 32);
        iArr3[i4 + 5] = (int) j7;
        long j8 = ((((long) iArr[i2 + 6]) & 4294967295L) - (((long) iArr2[i3 + 6]) & 4294967295L)) + (j7 >> 32);
        iArr3[i4 + 6] = (int) j8;
        return (int) (j8 >> 32);
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
        long j7 = (((((long) iArr3[5]) & 4294967295L) - (((long) iArr[5]) & 4294967295L)) - (((long) iArr2[5]) & 4294967295L)) + (j6 >> 32);
        iArr3[5] = (int) j7;
        long j8 = (((((long) iArr3[6]) & 4294967295L) - (((long) iArr[6]) & 4294967295L)) - (((long) iArr2[6]) & 4294967295L)) + (j7 >> 32);
        iArr3[6] = (int) j8;
        return (int) (j8 >> 32);
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
        int i8 = i3 + 5;
        long j7 = ((((long) iArr2[i8]) & 4294967295L) - (((long) iArr[i2 + 5]) & 4294967295L)) + (j6 >> 32);
        iArr2[i8] = (int) j7;
        int i9 = i3 + 6;
        long j8 = ((((long) iArr2[i9]) & 4294967295L) - (((long) iArr[i2 + 6]) & 4294967295L)) + (j7 >> 32);
        iArr2[i9] = (int) j8;
        return (int) (j8 >> 32);
    }

    public static BigInteger toBigInteger(int[] iArr) {
        byte[] bArr = new byte[28];
        for (int i2 = 0; i2 < 7; i2++) {
            int i3 = iArr[i2];
            if (i3 != 0) {
                Pack.intToBigEndian(i3, bArr, (6 - i2) << 2);
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
        iArr[5] = 0;
        iArr[6] = 0;
    }

    public static boolean gte(int[] iArr, int[] iArr2) {
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

    public static void copy(int[] iArr, int[] iArr2) {
        iArr2[0] = iArr[0];
        iArr2[1] = iArr[1];
        iArr2[2] = iArr[2];
        iArr2[3] = iArr[3];
        iArr2[4] = iArr[4];
        iArr2[5] = iArr[5];
        iArr2[6] = iArr[6];
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
        long j6 = ((((long) iArr2[4]) & 4294967295L) - (((long) iArr[4]) & 4294967295L)) + (j5 >> 32);
        iArr2[4] = (int) j6;
        long j7 = ((((long) iArr2[5]) & 4294967295L) - (((long) iArr[5]) & 4294967295L)) + (j6 >> 32);
        iArr2[5] = (int) j7;
        long j8 = ((((long) iArr2[6]) & 4294967295L) - (4294967295L & ((long) iArr[6]))) + (j7 >> 32);
        iArr2[6] = (int) j8;
        return (int) (j8 >> 32);
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
        long j6 = (((long) iArr[4]) & 4294967295L) + (((long) iArr2[4]) & 4294967295L) + (j5 >>> 32);
        iArr2[4] = (int) j6;
        long j7 = (((long) iArr[5]) & 4294967295L) + (((long) iArr2[5]) & 4294967295L) + (j6 >>> 32);
        iArr2[5] = (int) j7;
        long j8 = (((long) iArr[6]) & 4294967295L) + (4294967295L & ((long) iArr2[6])) + (j7 >>> 32);
        iArr2[6] = (int) j8;
        return (int) (j8 >>> 32);
    }

    public static int addTo(int[] iArr, int[] iArr2, int i2) {
        long j2 = (((long) iArr[0]) & 4294967295L) + (((long) iArr2[0]) & 4294967295L) + (((long) i2) & 4294967295L);
        iArr2[0] = (int) j2;
        long j3 = (((long) iArr[1]) & 4294967295L) + (((long) iArr2[1]) & 4294967295L) + (j2 >>> 32);
        iArr2[1] = (int) j3;
        long j4 = (((long) iArr[2]) & 4294967295L) + (((long) iArr2[2]) & 4294967295L) + (j3 >>> 32);
        iArr2[2] = (int) j4;
        long j5 = (((long) iArr[3]) & 4294967295L) + (((long) iArr2[3]) & 4294967295L) + (j4 >>> 32);
        iArr2[3] = (int) j5;
        long j6 = (((long) iArr[4]) & 4294967295L) + (((long) iArr2[4]) & 4294967295L) + (j5 >>> 32);
        iArr2[4] = (int) j6;
        long j7 = (((long) iArr[5]) & 4294967295L) + (((long) iArr2[5]) & 4294967295L) + (j6 >>> 32);
        iArr2[5] = (int) j7;
        long j8 = (((long) iArr[6]) & 4294967295L) + (4294967295L & ((long) iArr2[6])) + (j7 >>> 32);
        iArr2[6] = (int) j8;
        return (int) (j8 >>> 32);
    }

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
        long j7 = (((long) iArr[5]) & 4294967295L) + (((long) iArr2[5]) & 4294967295L) + (j6 >>> 32);
        iArr3[5] = (int) j7;
        long j8 = (((long) iArr[6]) & 4294967295L) + (((long) iArr2[6]) & 4294967295L) + (j7 >>> 32);
        iArr3[6] = (int) j8;
        return (int) (j8 >>> 32);
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
        long j7 = ((((long) iArr[5]) & 4294967295L) - (((long) iArr2[5]) & 4294967295L)) + (j6 >> 32);
        iArr3[5] = (int) j7;
        long j8 = ((((long) iArr[6]) & 4294967295L) - (((long) iArr2[6]) & 4294967295L)) + (j7 >> 32);
        iArr3[6] = (int) j8;
        return (int) (j8 >> 32);
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
        long j7 = (((long) iArr[5]) & 4294967295L) + (((long) iArr2[5]) & 4294967295L) + (((long) iArr3[5]) & 4294967295L) + (j6 >>> 32);
        iArr3[5] = (int) j7;
        long j8 = (((long) iArr[6]) & 4294967295L) + (((long) iArr2[6]) & 4294967295L) + (((long) iArr3[6]) & 4294967295L) + (j7 >>> 32);
        iArr3[6] = (int) j8;
        return (int) (j8 >>> 32);
    }

    public static int mulAddTo(int[] iArr, int[] iArr2, int[] iArr3) {
        long j2 = ((long) iArr2[0]) & 4294967295L;
        long j3 = ((long) iArr2[1]) & 4294967295L;
        long j4 = ((long) iArr2[2]) & 4294967295L;
        long j5 = ((long) iArr2[3]) & 4294967295L;
        long j6 = ((long) iArr2[4]) & 4294967295L;
        long j7 = ((long) iArr2[5]) & 4294967295L;
        long j8 = ((long) iArr2[6]) & 4294967295L;
        long j9 = 0;
        int i2 = 0;
        while (i2 < 7) {
            long j10 = j8;
            long j11 = ((long) iArr[i2]) & 4294967295L;
            long j12 = (((long) iArr3[i2]) & 4294967295L) + (j11 * j2);
            iArr3[i2] = (int) j12;
            int i3 = i2 + 1;
            long j13 = (j11 * j3) + (((long) iArr3[i3]) & 4294967295L) + (j12 >>> 32);
            iArr3[i3] = (int) j13;
            int i4 = i2 + 2;
            long j14 = (j11 * j4) + (((long) iArr3[i4]) & 4294967295L) + (j13 >>> 32);
            int i5 = i2;
            iArr3[i4] = (int) j14;
            int i6 = i5 + 3;
            long j15 = (j11 * j5) + (((long) iArr3[i6]) & 4294967295L) + (j14 >>> 32);
            iArr3[i6] = (int) j15;
            int i7 = i5 + 4;
            long j16 = (j11 * j6) + (((long) iArr3[i7]) & 4294967295L) + (j15 >>> 32);
            iArr3[i7] = (int) j16;
            int i8 = i5 + 5;
            long j17 = (j11 * j7) + (((long) iArr3[i8]) & 4294967295L) + (j16 >>> 32);
            iArr3[i8] = (int) j17;
            int i9 = i5 + 6;
            long j18 = (j11 * j10) + (((long) iArr3[i9]) & 4294967295L) + (j17 >>> 32);
            iArr3[i9] = (int) j18;
            int i10 = i5 + 7;
            long j19 = (j18 >>> 32) + (((long) iArr3[i10]) & 4294967295L) + j9;
            iArr3[i10] = (int) j19;
            j9 = j19 >>> 32;
            i2 = i3;
            j8 = j10;
        }
        return (int) j9;
    }

    public static void mul(int[] iArr, int[] iArr2, int[] iArr3) {
        long j2 = ((long) iArr2[0]) & 4294967295L;
        long j3 = ((long) iArr2[1]) & 4294967295L;
        long j4 = ((long) iArr2[2]) & 4294967295L;
        long j5 = ((long) iArr2[3]) & 4294967295L;
        long j6 = ((long) iArr2[4]) & 4294967295L;
        long j7 = ((long) iArr2[5]) & 4294967295L;
        long j8 = ((long) iArr2[6]) & 4294967295L;
        long j9 = ((long) iArr[0]) & 4294967295L;
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
            long j17 = ((long) iArr[i2]) & 4294967295L;
            long j18 = (j17 * j2) + (((long) iArr3[i2]) & 4294967295L);
            iArr3[i2] = (int) j18;
            int i4 = i2 + 1;
            long j19 = j6;
            long j20 = (j17 * j3) + (((long) iArr3[i4]) & 4294967295L) + (j18 >>> 32);
            iArr3[i4] = (int) j20;
            int i5 = i2 + 2;
            long j21 = (j17 * j4) + (((long) iArr3[i5]) & 4294967295L) + (j20 >>> 32);
            iArr3[i5] = (int) j21;
            int i6 = i2 + 3;
            long j22 = (j17 * j5) + (((long) iArr3[i6]) & 4294967295L) + (j21 >>> 32);
            iArr3[i6] = (int) j22;
            int i7 = i2 + 4;
            long j23 = (j17 * j19) + (((long) iArr3[i7]) & 4294967295L) + (j22 >>> 32);
            iArr3[i7] = (int) j23;
            int i8 = i2 + 5;
            long j24 = (j17 * j7) + (((long) iArr3[i8]) & 4294967295L) + (j23 >>> 32);
            iArr3[i8] = (int) j24;
            int i9 = i2 + 6;
            long j25 = (j17 * j8) + (((long) iArr3[i9]) & 4294967295L) + (j24 >>> 32);
            iArr3[i9] = (int) j25;
            iArr3[i2 + 7] = (int) (j25 >>> 32);
            i2 = i4;
            j6 = j19;
        }
    }

    public static void square(int[] iArr, int[] iArr2) {
        long j2 = ((long) iArr[0]) & 4294967295L;
        int i2 = 14;
        int i3 = 0;
        int i4 = 6;
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
                long j26 = j23 & 4294967295L;
                long j27 = (j22 * j2) + (jC2 & 4294967295L);
                int i11 = (int) j27;
                iArr2[4] = i10 | (i11 << 1);
                int i12 = i11 >>> 31;
                long jC4 = z81.c(j22, j7, j27 >>> 32, jC3 & 4294967295L);
                long jC5 = z81.c(j22, j10, jC4 >>> 32, j24);
                long jC6 = z81.c(j22, j15, jC5 >>> 32, j26);
                long j28 = j25 + (jC6 >>> 32);
                long j29 = ((long) iArr[5]) & 4294967295L;
                long j30 = (((long) iArr2[9]) & 4294967295L) + (j28 >>> 32);
                long j31 = j28 & 4294967295L;
                long j32 = (((long) iArr2[10]) & 4294967295L) + (j30 >>> 32);
                long j33 = j30 & 4294967295L;
                long j34 = (j29 * j2) + (jC4 & 4294967295L);
                int i13 = (int) j34;
                iArr2[5] = i12 | (i13 << 1);
                int i14 = i13 >>> 31;
                long jC7 = z81.c(j29, j7, j34 >>> 32, jC5 & 4294967295L);
                long jC8 = z81.c(j29, j10, jC7 >>> 32, jC6 & 4294967295L);
                long jC9 = z81.c(j29, j15, jC8 >>> 32, j31);
                long j35 = jC8 & 4294967295L;
                long jC10 = z81.c(j29, j22, jC9 >>> 32, j33);
                long j36 = j32 + (jC10 >>> 32);
                long j37 = jC10 & 4294967295L;
                long j38 = ((long) iArr[6]) & 4294967295L;
                long j39 = (((long) iArr2[11]) & 4294967295L) + (j36 >>> 32);
                long j40 = j36 & 4294967295L;
                long j41 = (((long) iArr2[12]) & 4294967295L) + (j39 >>> 32);
                long j42 = j39 & 4294967295L;
                long j43 = (j38 * j2) + (jC7 & 4294967295L);
                int i15 = (int) j43;
                iArr2[6] = i14 | (i15 << 1);
                int i16 = i15 >>> 31;
                long jC11 = z81.c(j38, j7, j43 >>> 32, j35);
                long jC12 = z81.c(j38, j10, jC11 >>> 32, jC9 & 4294967295L);
                long jC13 = z81.c(j38, j15, jC12 >>> 32, j37);
                long jC14 = z81.c(j38, j22, jC13 >>> 32, j40);
                long jC15 = z81.c(j38, j29, jC14 >>> 32, j42);
                long j44 = j41 + (jC15 >>> 32);
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
                int i26 = (int) j44;
                iArr2[12] = i25 | (i26 << 1);
                iArr2[13] = ((iArr2[13] + ((int) (j44 >>> 32))) << 1) | (i26 >>> 31);
                return;
            }
            i4 = i5;
        }
    }
}
