package org.bouncycastle.math.raw;

import defpackage.ct0;
import defpackage.z81;
import java.math.BigInteger;
import org.bouncycastle.util.Pack;

/* JADX INFO: loaded from: classes5.dex */
public abstract class Nat256 {
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
        long j9 = (((long) iArr[i2 + 7]) & 4294967295L) + (((long) iArr2[i3 + 7]) & 4294967295L) + (j8 >>> 32);
        iArr3[i4 + 7] = (int) j9;
        return (int) (j9 >>> 32);
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
        int i11 = i4 + 7;
        long j9 = (((long) iArr[i2 + 7]) & 4294967295L) + (((long) iArr2[i3 + 7]) & 4294967295L) + (((long) iArr3[i11]) & 4294967295L) + (j8 >>> 32);
        iArr3[i11] = (int) j9;
        return (int) (j9 >>> 32);
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
        long j8 = (((long) iArr[i2 + 6]) & 4294967295L) + (((long) iArr2[i10]) & 4294967295L) + (j7 >>> 32);
        iArr2[i10] = (int) j8;
        int i11 = i3 + 7;
        long j9 = (((long) iArr[i2 + 7]) & 4294967295L) + (4294967295L & ((long) iArr2[i11])) + (j8 >>> 32);
        iArr2[i11] = (int) j9;
        return (int) (j9 >>> 32);
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
        long j8 = (((long) iArr[i20]) & 4294967295L) + (((long) iArr2[i21]) & 4294967295L) + (j7 >>> 32);
        int i22 = (int) j8;
        iArr[i20] = i22;
        iArr2[i21] = i22;
        int i23 = i2 + 7;
        int i24 = i3 + 7;
        long j9 = (((long) iArr[i23]) & 4294967295L) + (4294967295L & ((long) iArr2[i24])) + (j8 >>> 32);
        int i25 = (int) j9;
        iArr[i23] = i25;
        iArr2[i24] = i25;
        return (int) (j9 >>> 32);
    }

    public static void copy(int[] iArr, int i2, int[] iArr2, int i3) {
        iArr2[i3] = iArr[i2];
        iArr2[i3 + 1] = iArr[i2 + 1];
        iArr2[i3 + 2] = iArr[i2 + 2];
        iArr2[i3 + 3] = iArr[i2 + 3];
        iArr2[i3 + 4] = iArr[i2 + 4];
        iArr2[i3 + 5] = iArr[i2 + 5];
        iArr2[i3 + 6] = iArr[i2 + 6];
        iArr2[i3 + 7] = iArr[i2 + 7];
    }

    public static void copy64(long[] jArr, int i2, long[] jArr2, int i3) {
        jArr2[i3] = jArr[i2];
        jArr2[i3 + 1] = jArr[i2 + 1];
        jArr2[i3 + 2] = jArr[i2 + 2];
        jArr2[i3 + 3] = jArr[i2 + 3];
    }

    public static int[] create() {
        return new int[8];
    }

    public static long[] create64() {
        return new long[4];
    }

    public static int[] createExt() {
        return new int[16];
    }

    public static long[] createExt64() {
        return new long[8];
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
        for (int i2 = 7; i2 >= 0; i2--) {
            if (iArr[i2] != iArr2[i2]) {
                return false;
            }
        }
        return true;
    }

    public static boolean eq64(long[] jArr, long[] jArr2) {
        for (int i2 = 3; i2 >= 0; i2--) {
            if (jArr[i2] != jArr2[i2]) {
                return false;
            }
        }
        return true;
    }

    public static int[] fromBigInteger(BigInteger bigInteger) {
        if (bigInteger.signum() < 0 || bigInteger.bitLength() > 256) {
            ct0.c();
            return null;
        }
        int[] iArrCreate = create();
        for (int i2 = 0; i2 < 8; i2++) {
            iArrCreate[i2] = bigInteger.intValue();
            bigInteger = bigInteger.shiftRight(32);
        }
        return iArrCreate;
    }

    public static long[] fromBigInteger64(BigInteger bigInteger) {
        if (bigInteger.signum() < 0 || bigInteger.bitLength() > 256) {
            ct0.c();
            return null;
        }
        long[] jArrCreate64 = create64();
        for (int i2 = 0; i2 < 4; i2++) {
            jArrCreate64[i2] = bigInteger.longValue();
            bigInteger = bigInteger.shiftRight(64);
        }
        return jArrCreate64;
    }

    public static int getBit(int[] iArr, int i2) {
        int i3;
        if (i2 == 0) {
            i3 = iArr[0];
        } else {
            if ((i2 & 255) != i2) {
                return 0;
            }
            i3 = iArr[i2 >>> 5] >>> (i2 & 31);
        }
        return i3 & 1;
    }

    public static boolean gte(int[] iArr, int i2, int[] iArr2, int i3) {
        for (int i4 = 7; i4 >= 0; i4--) {
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
        for (int i2 = 1; i2 < 8; i2++) {
            if (iArr[i2] != 0) {
                return false;
            }
        }
        return true;
    }

    public static boolean isOne64(long[] jArr) {
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

    public static boolean isZero(int[] iArr) {
        for (int i2 = 0; i2 < 8; i2++) {
            if (iArr[i2] != 0) {
                return false;
            }
        }
        return true;
    }

    public static boolean isZero64(long[] jArr) {
        for (int i2 = 0; i2 < 4; i2++) {
            if (jArr[i2] != 0) {
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
        long j9 = ((long) iArr2[i3 + 7]) & 4294967295L;
        long j10 = ((long) iArr[i2]) & 4294967295L;
        long j11 = j10 * j2;
        iArr3[i4] = (int) j11;
        long j12 = (j10 * j3) + (j11 >>> 32);
        iArr3[i4 + 1] = (int) j12;
        long j13 = (j10 * j4) + (j12 >>> 32);
        iArr3[i4 + 2] = (int) j13;
        long j14 = (j10 * j5) + (j13 >>> 32);
        iArr3[i4 + 3] = (int) j14;
        long j15 = (j10 * j6) + (j14 >>> 32);
        iArr3[i4 + 4] = (int) j15;
        long j16 = (j10 * j7) + (j15 >>> 32);
        iArr3[i4 + 5] = (int) j16;
        long j17 = (j10 * j8) + (j16 >>> 32);
        iArr3[i4 + 6] = (int) j17;
        long j18 = (j10 * j9) + (j17 >>> 32);
        iArr3[i4 + 7] = (int) j18;
        iArr3[i4 + 8] = (int) (j18 >>> 32);
        int i5 = 1;
        int i6 = i4;
        while (i5 < 8) {
            int i7 = i6 + 1;
            int i8 = i6;
            long j19 = ((long) iArr[i2 + i5]) & 4294967295L;
            long j20 = (j19 * j2) + (((long) iArr3[i7]) & 4294967295L);
            iArr3[i7] = (int) j20;
            int i9 = i8 + 2;
            long j21 = (j19 * j3) + (((long) iArr3[i9]) & 4294967295L) + (j20 >>> 32);
            iArr3[i9] = (int) j21;
            int i10 = i8 + 3;
            long j22 = (j19 * j4) + (((long) iArr3[i10]) & 4294967295L) + (j21 >>> 32);
            iArr3[i10] = (int) j22;
            int i11 = i8 + 4;
            long j23 = (j19 * j5) + (((long) iArr3[i11]) & 4294967295L) + (j22 >>> 32);
            iArr3[i11] = (int) j23;
            int i12 = i8 + 5;
            long j24 = (j19 * j6) + (((long) iArr3[i12]) & 4294967295L) + (j23 >>> 32);
            iArr3[i12] = (int) j24;
            int i13 = i8 + 6;
            long j25 = (j19 * j7) + (((long) iArr3[i13]) & 4294967295L) + (j24 >>> 32);
            iArr3[i13] = (int) j25;
            int i14 = i8 + 7;
            long j26 = (j19 * j8) + (((long) iArr3[i14]) & 4294967295L) + (j25 >>> 32);
            iArr3[i14] = (int) j26;
            int i15 = i8 + 8;
            long j27 = (j19 * j9) + (((long) iArr3[i15]) & 4294967295L) + (j26 >>> 32);
            iArr3[i15] = (int) j27;
            iArr3[i8 + 9] = (int) (j27 >>> 32);
            i5++;
            i6 = i7;
        }
    }

    public static void mul128(int[] iArr, int[] iArr2, int[] iArr3) {
        long j2 = ((long) iArr[0]) & 4294967295L;
        long j3 = ((long) iArr[1]) & 4294967295L;
        long j4 = ((long) iArr[2]) & 4294967295L;
        long j5 = ((long) iArr[3]) & 4294967295L;
        long j6 = ((long) iArr[4]) & 4294967295L;
        long j7 = ((long) iArr[5]) & 4294967295L;
        long j8 = ((long) iArr[6]) & 4294967295L;
        long j9 = ((long) iArr[7]) & 4294967295L;
        long j10 = ((long) iArr2[0]) & 4294967295L;
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
        iArr3[8] = (int) (j18 >>> 32);
        int i2 = 1;
        for (int i3 = 4; i2 < i3; i3 = 4) {
            long j19 = ((long) iArr2[i2]) & 4294967295L;
            long j20 = j6;
            long j21 = (j19 * j2) + (((long) iArr3[i2]) & 4294967295L);
            iArr3[i2] = (int) j21;
            int i4 = i2 + 1;
            long j22 = (j19 * j3) + (((long) iArr3[i4]) & 4294967295L) + (j21 >>> 32);
            iArr3[i4] = (int) j22;
            int i5 = i2 + 2;
            long j23 = (j19 * j4) + (((long) iArr3[i5]) & 4294967295L) + (j22 >>> 32);
            iArr3[i5] = (int) j23;
            int i6 = i2 + 3;
            long j24 = (j19 * j5) + (((long) iArr3[i6]) & 4294967295L) + (j23 >>> 32);
            iArr3[i6] = (int) j24;
            int i7 = i2 + 4;
            long j25 = (j19 * j20) + (((long) iArr3[i7]) & 4294967295L) + (j24 >>> 32);
            iArr3[i7] = (int) j25;
            int i8 = i2 + 5;
            long j26 = (j19 * j7) + (((long) iArr3[i8]) & 4294967295L) + (j25 >>> 32);
            iArr3[i8] = (int) j26;
            int i9 = i2 + 6;
            long j27 = (j19 * j8) + (((long) iArr3[i9]) & 4294967295L) + (j26 >>> 32);
            iArr3[i9] = (int) j27;
            long j28 = j27 >>> 32;
            int i10 = i2 + 7;
            long j29 = (j19 * j9) + (((long) iArr3[i10]) & 4294967295L) + j28;
            iArr3[i10] = (int) j29;
            iArr3[i2 + 8] = (int) (j29 >>> 32);
            i2 = i4;
            j6 = j20;
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
        long j16 = (j2 * j15) + j13 + (((long) iArr2[i4 + 6]) & 4294967295L) + (j14 >>> 32);
        iArr3[i5 + 6] = (int) j16;
        long j17 = ((long) iArr[i3 + 7]) & 4294967295L;
        long j18 = (j2 * j17) + j15 + (4294967295L & ((long) iArr2[i4 + 7])) + (j16 >>> 32);
        iArr3[i5 + 7] = (int) j18;
        return (j18 >>> 32) + j17;
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
        return Nat.incAt(8, iArr, i3, 4);
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
        return Nat.incAt(8, iArr, i4, 3);
    }

    public static int mulAddTo(int[] iArr, int i2, int[] iArr2, int i3, int[] iArr3, int i4) {
        long j2 = ((long) iArr2[i3]) & 4294967295L;
        long j3 = ((long) iArr2[i3 + 1]) & 4294967295L;
        long j4 = ((long) iArr2[i3 + 2]) & 4294967295L;
        long j5 = ((long) iArr2[i3 + 3]) & 4294967295L;
        long j6 = ((long) iArr2[i3 + 4]) & 4294967295L;
        long j7 = ((long) iArr2[i3 + 5]) & 4294967295L;
        long j8 = ((long) iArr2[i3 + 6]) & 4294967295L;
        long j9 = ((long) iArr2[i3 + 7]) & 4294967295L;
        int i5 = i4;
        int i6 = 0;
        long j10 = 0;
        while (i6 < 8) {
            long j11 = j3;
            long j12 = ((long) iArr[i2 + i6]) & 4294967295L;
            long j13 = (j12 * j2) + (((long) iArr3[i5]) & 4294967295L);
            iArr3[i5] = (int) j13;
            int i7 = i5 + 1;
            long j14 = (j12 * j11) + (((long) iArr3[i7]) & 4294967295L) + (j13 >>> 32);
            iArr3[i7] = (int) j14;
            int i8 = i5 + 2;
            int i9 = i6;
            long j15 = (j12 * j4) + (((long) iArr3[i8]) & 4294967295L) + (j14 >>> 32);
            iArr3[i8] = (int) j15;
            int i10 = i5 + 3;
            long j16 = (j12 * j5) + (((long) iArr3[i10]) & 4294967295L) + (j15 >>> 32);
            iArr3[i10] = (int) j16;
            int i11 = i5 + 4;
            long j17 = (j12 * j6) + (((long) iArr3[i11]) & 4294967295L) + (j16 >>> 32);
            iArr3[i11] = (int) j17;
            int i12 = i5 + 5;
            long j18 = (j12 * j7) + (((long) iArr3[i12]) & 4294967295L) + (j17 >>> 32);
            iArr3[i12] = (int) j18;
            int i13 = i5 + 6;
            long j19 = (j12 * j8) + (((long) iArr3[i13]) & 4294967295L) + (j18 >>> 32);
            iArr3[i13] = (int) j19;
            int i14 = i5 + 7;
            long j20 = (j12 * j9) + (((long) iArr3[i14]) & 4294967295L) + (j19 >>> 32);
            iArr3[i14] = (int) j20;
            int i15 = i5 + 8;
            long j21 = (j20 >>> 32) + (((long) iArr3[i15]) & 4294967295L) + j10;
            iArr3[i15] = (int) j21;
            j10 = j21 >>> 32;
            i6 = i9 + 1;
            j3 = j11;
            i5 = i7;
        }
        return (int) j10;
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
        long j9 = ((((long) iArr[6]) & 4294967295L) * j2) + (j8 >>> 32);
        iArr[6] = (int) j9;
        long j10 = (j2 * (4294967295L & ((long) iArr[7]))) + (j9 >>> 32);
        iArr[7] = (int) j10;
        return (int) (j10 >>> 32);
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
        long j9 = ((((long) iArr2[6]) & 4294967295L) * j2) + (((long) iArr[6]) & 4294967295L) + (j8 >>> 32);
        iArr2[6] = (int) j9;
        long j10 = (j2 * (((long) iArr2[7]) & 4294967295L)) + (4294967295L & ((long) iArr[7])) + (j9 >>> 32);
        iArr2[7] = (int) j10;
        return (int) (j10 >>> 32);
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
        } while (i4 < 8);
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
        long j9 = ((((long) iArr[i3 + 6]) & 4294967295L) * j2) + (((long) iArr2[i10]) & 4294967295L) + (j8 >>> 32);
        iArr2[i10] = (int) j9;
        int i11 = i4 + 7;
        long j10 = (j2 * (((long) iArr[i3 + 7]) & 4294967295L)) + (((long) iArr2[i11]) & 4294967295L) + (j9 >>> 32);
        iArr2[i11] = (int) j10;
        return (int) (j10 >>> 32);
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
        return Nat.incAt(8, iArr, i3, 3);
    }

    public static void square(int[] iArr, int i2, int[] iArr2, int i3) {
        long j2 = ((long) iArr[i2]) & 4294967295L;
        int i4 = 0;
        int i5 = 16;
        int i6 = 7;
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
                long j32 = ((long) iArr[i2 + 5]) & 4294967295L;
                int i21 = i3 + 9;
                long j33 = (((long) iArr2[i21]) & 4294967295L) + (j31 >>> 32);
                long j34 = j31 & 4294967295L;
                int i22 = i3 + 10;
                long j35 = (((long) iArr2[i22]) & 4294967295L) + (j33 >>> 32);
                long j36 = j33 & 4294967295L;
                long j37 = (j32 * j2) + (jC4 & 4294967295L);
                int i23 = (int) j37;
                iArr2[i14] = i20 | (i23 << 1);
                int i24 = i23 >>> 31;
                long jC7 = z81.c(j32, j7, j37 >>> 32, j30);
                long jC8 = z81.c(j32, j11, jC7 >>> 32, jC6 & 4294967295L);
                long jC9 = z81.c(j32, j16, jC8 >>> 32, j34);
                long j38 = jC8 & 4294967295L;
                long jC10 = z81.c(j32, j24, jC9 >>> 32, j36);
                long j39 = j35 + (jC10 >>> 32);
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
                int i28 = i27 >>> 31;
                long jC11 = z81.c(j41, j7, j46 >>> 32, j38);
                long jC12 = z81.c(j41, j11, jC11 >>> 32, jC9 & 4294967295L);
                long jC13 = z81.c(j41, j16, jC12 >>> 32, j40);
                long j47 = jC12 & 4294967295L;
                long jC14 = z81.c(j41, j24, jC13 >>> 32, j43);
                long j48 = jC13 & 4294967295L;
                long jC15 = z81.c(j41, j32, jC14 >>> 32, j45);
                long j49 = jC14 & 4294967295L;
                long j50 = j44 + (jC15 >>> 32);
                long j51 = jC15 & 4294967295L;
                long j52 = ((long) iArr[i2 + 7]) & 4294967295L;
                int i29 = i3 + 13;
                long j53 = (((long) iArr2[i29]) & 4294967295L) + (j50 >>> 32);
                long j54 = j50 & 4294967295L;
                int i30 = i3 + 14;
                long j55 = (((long) iArr2[i30]) & 4294967295L) + (j53 >>> 32);
                long j56 = j53 & 4294967295L;
                long j57 = (j52 * j2) + (jC11 & 4294967295L);
                int i31 = (int) j57;
                iArr2[i17] = (i31 << 1) | i28;
                int i32 = i31 >>> 31;
                long jC16 = z81.c(j52, j7, j57 >>> 32, j47);
                long jC17 = z81.c(j52, j11, jC16 >>> 32, j48);
                long jC18 = z81.c(j52, j16, jC17 >>> 32, j49);
                long jC19 = z81.c(j52, j24, jC18 >>> 32, j51);
                long jC20 = z81.c(j52, j32, jC19 >>> 32, j54);
                long jC21 = z81.c(j52, j41, jC20 >>> 32, j56);
                long j58 = j55 + (jC21 >>> 32);
                int i33 = (int) jC16;
                iArr2[i18] = (i33 << 1) | i32;
                int i34 = (int) jC17;
                iArr2[i21] = (i33 >>> 31) | (i34 << 1);
                int i35 = i34 >>> 31;
                int i36 = (int) jC18;
                iArr2[i22] = i35 | (i36 << 1);
                int i37 = i36 >>> 31;
                int i38 = (int) jC19;
                iArr2[i25] = i37 | (i38 << 1);
                int i39 = i38 >>> 31;
                int i40 = (int) jC20;
                iArr2[i26] = i39 | (i40 << 1);
                int i41 = i40 >>> 31;
                int i42 = (int) jC21;
                iArr2[i29] = i41 | (i42 << 1);
                int i43 = i42 >>> 31;
                int i44 = (int) j58;
                iArr2[i30] = i43 | (i44 << 1);
                int i45 = i44 >>> 31;
                int i46 = i3 + 15;
                iArr2[i46] = i45 | ((iArr2[i46] + ((int) (j58 >>> 32))) << 1);
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
        long j9 = ((((long) iArr[i2 + 7]) & 4294967295L) - (((long) iArr2[i3 + 7]) & 4294967295L)) + (j8 >> 32);
        iArr3[i4 + 7] = (int) j9;
        return (int) (j9 >> 32);
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
        long j9 = (((((long) iArr3[7]) & 4294967295L) - (((long) iArr[7]) & 4294967295L)) - (((long) iArr2[7]) & 4294967295L)) + (j8 >> 32);
        iArr3[7] = (int) j9;
        return (int) (j9 >> 32);
    }

    public static int subFrom(int[] iArr, int i2, int[] iArr2, int i3, int i4) {
        long j2 = ((((long) iArr2[i3]) & 4294967295L) - (((long) iArr[i2]) & 4294967295L)) + (((long) i4) & 4294967295L);
        iArr2[i3] = (int) j2;
        long j3 = j2 >> 32;
        int i5 = i3 + 1;
        long j4 = ((((long) iArr2[i5]) & 4294967295L) - (((long) iArr[i2 + 1]) & 4294967295L)) + j3;
        iArr2[i5] = (int) j4;
        int i6 = i3 + 2;
        long j5 = ((((long) iArr2[i6]) & 4294967295L) - (((long) iArr[i2 + 2]) & 4294967295L)) + (j4 >> 32);
        iArr2[i6] = (int) j5;
        int i7 = i3 + 3;
        long j6 = ((((long) iArr2[i7]) & 4294967295L) - (((long) iArr[i2 + 3]) & 4294967295L)) + (j5 >> 32);
        iArr2[i7] = (int) j6;
        int i8 = i3 + 4;
        long j7 = ((((long) iArr2[i8]) & 4294967295L) - (((long) iArr[i2 + 4]) & 4294967295L)) + (j6 >> 32);
        iArr2[i8] = (int) j7;
        int i9 = i3 + 5;
        long j8 = ((((long) iArr2[i9]) & 4294967295L) - (((long) iArr[i2 + 5]) & 4294967295L)) + (j7 >> 32);
        iArr2[i9] = (int) j8;
        int i10 = i3 + 6;
        long j9 = ((((long) iArr2[i10]) & 4294967295L) - (((long) iArr[i2 + 6]) & 4294967295L)) + (j8 >> 32);
        iArr2[i10] = (int) j9;
        int i11 = i3 + 7;
        long j10 = ((((long) iArr2[i11]) & 4294967295L) - (((long) iArr[i2 + 7]) & 4294967295L)) + (j9 >> 32);
        iArr2[i11] = (int) j10;
        return (int) (j10 >> 32);
    }

    public static BigInteger toBigInteger(int[] iArr) {
        byte[] bArr = new byte[32];
        for (int i2 = 0; i2 < 8; i2++) {
            int i3 = iArr[i2];
            if (i3 != 0) {
                Pack.intToBigEndian(i3, bArr, (7 - i2) << 2);
            }
        }
        return new BigInteger(1, bArr);
    }

    public static BigInteger toBigInteger64(long[] jArr) {
        byte[] bArr = new byte[32];
        for (int i2 = 0; i2 < 4; i2++) {
            long j2 = jArr[i2];
            if (j2 != 0) {
                Pack.longToBigEndian(j2, bArr, (3 - i2) << 3);
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
        iArr[7] = 0;
    }

    public static boolean gte(int[] iArr, int[] iArr2) {
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

    public static void copy64(long[] jArr, long[] jArr2) {
        jArr2[0] = jArr[0];
        jArr2[1] = jArr[1];
        jArr2[2] = jArr[2];
        jArr2[3] = jArr[3];
    }

    public static void copy(int[] iArr, int[] iArr2) {
        iArr2[0] = iArr[0];
        iArr2[1] = iArr[1];
        iArr2[2] = iArr[2];
        iArr2[3] = iArr[3];
        iArr2[4] = iArr[4];
        iArr2[5] = iArr[5];
        iArr2[6] = iArr[6];
        iArr2[7] = iArr[7];
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
        long j8 = (((long) iArr[6]) & 4294967295L) + (((long) iArr2[6]) & 4294967295L) + (j7 >>> 32);
        iArr2[6] = (int) j8;
        long j9 = (((long) iArr[7]) & 4294967295L) + (4294967295L & ((long) iArr2[7])) + (j8 >>> 32);
        iArr2[7] = (int) j9;
        return (int) (j9 >>> 32);
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
        long j8 = (((long) iArr[6]) & 4294967295L) + (((long) iArr2[6]) & 4294967295L) + (j7 >>> 32);
        iArr2[6] = (int) j8;
        long j9 = (((long) iArr[7]) & 4294967295L) + (4294967295L & ((long) iArr2[7])) + (j8 >>> 32);
        iArr2[7] = (int) j9;
        return (int) (j9 >>> 32);
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
        int i10 = i3 + 7;
        long j9 = ((((long) iArr2[i10]) & 4294967295L) - (((long) iArr[i2 + 7]) & 4294967295L)) + (j8 >> 32);
        iArr2[i10] = (int) j9;
        return (int) (j9 >> 32);
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
        long j8 = ((((long) iArr2[6]) & 4294967295L) - (((long) iArr[6]) & 4294967295L)) + (j7 >> 32);
        iArr2[6] = (int) j8;
        long j9 = ((((long) iArr2[7]) & 4294967295L) - (4294967295L & ((long) iArr[7]))) + (j8 >> 32);
        iArr2[7] = (int) j9;
        return (int) (j9 >> 32);
    }

    public static int subFrom(int[] iArr, int[] iArr2, int i2) {
        long j2 = ((((long) iArr2[0]) & 4294967295L) - (((long) iArr[0]) & 4294967295L)) + (((long) i2) & 4294967295L);
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
        long j8 = ((((long) iArr2[6]) & 4294967295L) - (((long) iArr[6]) & 4294967295L)) + (j7 >> 32);
        iArr2[6] = (int) j8;
        long j9 = ((((long) iArr2[7]) & 4294967295L) - (4294967295L & ((long) iArr[7]))) + (j8 >> 32);
        iArr2[7] = (int) j9;
        return (int) (j9 >> 32);
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
        long j9 = (((long) iArr[7]) & 4294967295L) + (((long) iArr2[7]) & 4294967295L) + (j8 >>> 32);
        iArr3[7] = (int) j9;
        return (int) (j9 >>> 32);
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
        long j9 = ((((long) iArr[7]) & 4294967295L) - (((long) iArr2[7]) & 4294967295L)) + (j8 >> 32);
        iArr3[7] = (int) j9;
        return (int) (j9 >> 32);
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
        long j9 = (((long) iArr[7]) & 4294967295L) + (((long) iArr2[7]) & 4294967295L) + (((long) iArr3[7]) & 4294967295L) + (j8 >>> 32);
        iArr3[7] = (int) j9;
        return (int) (j9 >>> 32);
    }

    public static int mulAddTo(int[] iArr, int[] iArr2, int[] iArr3) {
        long j2 = ((long) iArr2[0]) & 4294967295L;
        long j3 = ((long) iArr2[1]) & 4294967295L;
        long j4 = ((long) iArr2[2]) & 4294967295L;
        long j5 = ((long) iArr2[3]) & 4294967295L;
        long j6 = ((long) iArr2[4]) & 4294967295L;
        long j7 = ((long) iArr2[5]) & 4294967295L;
        long j8 = ((long) iArr2[6]) & 4294967295L;
        long j9 = ((long) iArr2[7]) & 4294967295L;
        long j10 = 0;
        int i2 = 0;
        while (i2 < 8) {
            long j11 = ((long) iArr[i2]) & 4294967295L;
            long j12 = (j11 * j2) + (((long) iArr3[i2]) & 4294967295L);
            int i3 = i2;
            iArr3[i3] = (int) j12;
            int i4 = i3 + 1;
            long j13 = (j11 * j3) + (((long) iArr3[i4]) & 4294967295L) + (j12 >>> 32);
            iArr3[i4] = (int) j13;
            int i5 = i3 + 2;
            long j14 = (j11 * j4) + (((long) iArr3[i5]) & 4294967295L) + (j13 >>> 32);
            iArr3[i5] = (int) j14;
            int i6 = i3 + 3;
            long j15 = (j11 * j5) + (((long) iArr3[i6]) & 4294967295L) + (j14 >>> 32);
            iArr3[i6] = (int) j15;
            int i7 = i3 + 4;
            long j16 = (j11 * j6) + (((long) iArr3[i7]) & 4294967295L) + (j15 >>> 32);
            iArr3[i7] = (int) j16;
            int i8 = i3 + 5;
            long j17 = (j11 * j7) + (((long) iArr3[i8]) & 4294967295L) + (j16 >>> 32);
            iArr3[i8] = (int) j17;
            int i9 = i3 + 6;
            long j18 = (j11 * j8) + (((long) iArr3[i9]) & 4294967295L) + (j17 >>> 32);
            iArr3[i9] = (int) j18;
            int i10 = i3 + 7;
            long j19 = (j11 * j9) + (((long) iArr3[i10]) & 4294967295L) + (j18 >>> 32);
            iArr3[i10] = (int) j19;
            int i11 = i3 + 8;
            long j20 = (j19 >>> 32) + (((long) iArr3[i11]) & 4294967295L) + j10;
            iArr3[i11] = (int) j20;
            j10 = j20 >>> 32;
            i2 = i4;
        }
        return (int) j10;
    }

    public static void mul(int[] iArr, int[] iArr2, int[] iArr3) {
        long j2 = ((long) iArr2[0]) & 4294967295L;
        long j3 = ((long) iArr2[1]) & 4294967295L;
        long j4 = ((long) iArr2[2]) & 4294967295L;
        long j5 = ((long) iArr2[3]) & 4294967295L;
        long j6 = ((long) iArr2[4]) & 4294967295L;
        long j7 = ((long) iArr2[5]) & 4294967295L;
        long j8 = ((long) iArr2[6]) & 4294967295L;
        long j9 = ((long) iArr2[7]) & 4294967295L;
        long j10 = ((long) iArr[0]) & 4294967295L;
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
            long j19 = ((long) iArr[i3]) & 4294967295L;
            long j20 = j6;
            long j21 = (j19 * j2) + (((long) iArr3[i3]) & 4294967295L);
            iArr3[i3] = (int) j21;
            int i5 = i3 + 1;
            long j22 = (j19 * j3) + (((long) iArr3[i5]) & 4294967295L) + (j21 >>> 32);
            iArr3[i5] = (int) j22;
            int i6 = i3 + 2;
            long j23 = (j19 * j4) + (((long) iArr3[i6]) & 4294967295L) + (j22 >>> 32);
            iArr3[i6] = (int) j23;
            int i7 = i3 + 3;
            long j24 = (j19 * j5) + (((long) iArr3[i7]) & 4294967295L) + (j23 >>> 32);
            iArr3[i7] = (int) j24;
            int i8 = i3 + 4;
            long j25 = (j19 * j20) + (((long) iArr3[i8]) & 4294967295L) + (j24 >>> 32);
            iArr3[i8] = (int) j25;
            int i9 = i3 + 5;
            long j26 = (j19 * j7) + (((long) iArr3[i9]) & 4294967295L) + (j25 >>> 32);
            iArr3[i9] = (int) j26;
            int i10 = i3 + 6;
            long j27 = (j19 * j8) + (((long) iArr3[i10]) & 4294967295L) + (j26 >>> 32);
            iArr3[i10] = (int) j27;
            long j28 = j27 >>> 32;
            int i11 = i3 + 7;
            long j29 = (j19 * j9) + (((long) iArr3[i11]) & 4294967295L) + j28;
            iArr3[i11] = (int) j29;
            iArr3[i3 + 8] = (int) (j29 >>> 32);
            i3 = i5;
            j6 = j20;
        }
    }

    public static void square(int[] iArr, int[] iArr2) {
        long j2 = ((long) iArr[0]) & 4294967295L;
        int i2 = 16;
        int i3 = 0;
        int i4 = 7;
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
                long j22 = jC3 & 4294967295L;
                long j23 = ((long) iArr[4]) & 4294967295L;
                long j24 = (((long) iArr2[7]) & 4294967295L) + (j21 >>> 32);
                long j25 = (((long) iArr2[8]) & 4294967295L) + (j24 >>> 32);
                long j26 = j24 & 4294967295L;
                long j27 = (j23 * j2) + (jC2 & 4294967295L);
                int i11 = (int) j27;
                iArr2[4] = i10 | (i11 << 1);
                long jC4 = z81.c(j23, j7, j27 >>> 32, j22);
                long jC5 = z81.c(j23, j10, jC4 >>> 32, j21 & 4294967295L);
                long jC6 = z81.c(j23, j15, jC5 >>> 32, j26);
                long j28 = jC5 & 4294967295L;
                long j29 = j25 + (jC6 >>> 32);
                long j30 = jC6 & 4294967295L;
                long j31 = ((long) iArr[5]) & 4294967295L;
                long j32 = (((long) iArr2[9]) & 4294967295L) + (j29 >>> 32);
                long j33 = (((long) iArr2[10]) & 4294967295L) + (j32 >>> 32);
                long j34 = (j31 * j2) + (jC4 & 4294967295L);
                int i12 = (int) j34;
                iArr2[5] = (i11 >>> 31) | (i12 << 1);
                int i13 = i12 >>> 31;
                long jC7 = z81.c(j31, j7, j34 >>> 32, j28);
                long jC8 = z81.c(j31, j10, jC7 >>> 32, j30);
                long jC9 = z81.c(j31, j15, jC8 >>> 32, j29 & 4294967295L);
                long j35 = jC8 & 4294967295L;
                long jC10 = z81.c(j31, j23, jC9 >>> 32, j32 & 4294967295L);
                long j36 = jC9 & 4294967295L;
                long j37 = j33 + (jC10 >>> 32);
                long j38 = ((long) iArr[6]) & 4294967295L;
                long j39 = (((long) iArr2[11]) & 4294967295L) + (j37 >>> 32);
                long j40 = (((long) iArr2[12]) & 4294967295L) + (j39 >>> 32);
                long j41 = (j38 * j2) + (jC7 & 4294967295L);
                int i14 = (int) j41;
                iArr2[6] = i13 | (i14 << 1);
                int i15 = i14 >>> 31;
                long jC11 = z81.c(j38, j7, j41 >>> 32, j35);
                long jC12 = z81.c(j38, j10, jC11 >>> 32, j36);
                long jC13 = z81.c(j38, j15, jC12 >>> 32, jC10 & 4294967295L);
                long j42 = jC12 & 4294967295L;
                long jC14 = z81.c(j38, j23, jC13 >>> 32, j37 & 4294967295L);
                long j43 = jC13 & 4294967295L;
                long jC15 = z81.c(j38, j31, jC14 >>> 32, j39 & 4294967295L);
                long j44 = j40 + (jC15 >>> 32);
                long j45 = ((long) iArr[7]) & 4294967295L;
                long j46 = (((long) iArr2[13]) & 4294967295L) + (j44 >>> 32);
                long j47 = (((long) iArr2[14]) & 4294967295L) + (j46 >>> 32);
                long j48 = j46 & 4294967295L;
                long j49 = (j45 * j2) + (jC11 & 4294967295L);
                int i16 = (int) j49;
                iArr2[7] = (i16 << 1) | i15;
                int i17 = i16 >>> 31;
                long jC16 = z81.c(j45, j7, j49 >>> 32, j42);
                long jC17 = z81.c(j45, j10, jC16 >>> 32, j43);
                long jC18 = z81.c(j45, j15, jC17 >>> 32, jC14 & 4294967295L);
                long jC19 = z81.c(j45, j23, jC18 >>> 32, jC15 & 4294967295L);
                long jC20 = z81.c(j45, j31, jC19 >>> 32, j44 & 4294967295L);
                long jC21 = z81.c(j45, j38, jC20 >>> 32, j48);
                long j50 = j47 + (jC21 >>> 32);
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
                int i29 = (int) j50;
                iArr2[14] = i28 | (i29 << 1);
                iArr2[15] = ((iArr2[15] + ((int) (j50 >>> 32))) << 1) | (i29 >>> 31);
                return;
            }
            i4 = i5;
        }
    }
}
