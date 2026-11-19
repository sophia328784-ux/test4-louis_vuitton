package org.bouncycastle.math.ec.rfc8032;

import org.bouncycastle.util.Integers;

/* JADX INFO: loaded from: classes5.dex */
abstract class ScalarUtil {
    private static final long M = 4294967295L;

    public static void addShifted_NP(int i2, int i3, int[] iArr, int[] iArr2, int[] iArr3, int[] iArr4) {
        int i4 = i2;
        int[] iArr5 = iArr3;
        char c2 = ' ';
        int i5 = 0;
        long j2 = 4294967295L;
        long j3 = 0;
        if (i3 == 0) {
            long j4 = 0;
            while (i5 <= i4) {
                long j5 = ((long) iArr5[i5]) & 4294967295L;
                long j6 = j3 + (((long) iArr[i5]) & 4294967295L) + j5;
                long j7 = j4 + j5 + (((long) iArr2[i5]) & 4294967295L);
                int i6 = (int) j7;
                j4 = j7 >>> 32;
                iArr5[i5] = i6;
                long j8 = j6 + (((long) i6) & 4294967295L);
                iArr[i5] = (int) j8;
                j3 = j8 >>> 32;
                i5++;
            }
            return;
        }
        if (i3 < 32) {
            int i7 = 0;
            long j9 = 0;
            long j10 = 0;
            int i8 = 0;
            int i9 = 0;
            while (i5 <= i4) {
                int i10 = iArr5[i5];
                char c3 = c2;
                int i11 = -i3;
                long j11 = j2;
                long j12 = j9 + (((long) iArr[i5]) & j11) + (((long) ((i7 >>> i11) | (i10 << i3))) & j11);
                int i12 = iArr2[i5];
                long j13 = j10 + (((long) i10) & j11) + (((long) ((i12 << i3) | (i8 >>> i11))) & j11);
                int i13 = (int) j13;
                j10 = j13 >>> c3;
                iArr5[i5] = i13;
                long j14 = j12 + (((long) ((i9 >>> i11) | (i13 << i3))) & j11);
                iArr[i5] = (int) j14;
                j9 = j14 >>> c3;
                i5++;
                i8 = i12;
                i9 = i13;
                i7 = i10;
                c2 = c3;
                j2 = j11;
            }
            return;
        }
        System.arraycopy(iArr5, 0, iArr4, 0, i4);
        int i14 = i3 >>> 5;
        int i15 = i3 & 31;
        if (i15 == 0) {
            long j15 = 0;
            for (int i16 = i14; i16 <= i4; i16++) {
                int i17 = i16 - i14;
                long j16 = j3 + (((long) iArr[i16]) & 4294967295L) + (((long) iArr4[i17]) & 4294967295L);
                long j17 = j15 + (((long) iArr5[i16]) & 4294967295L) + (((long) iArr2[i17]) & 4294967295L);
                iArr5[i16] = (int) j17;
                j15 = j17 >>> 32;
                long j18 = j16 + (((long) iArr5[i17]) & 4294967295L);
                iArr[i16] = (int) j18;
                j3 = j18 >>> 32;
            }
            return;
        }
        int i18 = i14;
        int i19 = 0;
        int i20 = 0;
        long j19 = 0;
        while (i18 <= i4) {
            int i21 = i18 - i14;
            int i22 = iArr4[i21];
            int i23 = -i15;
            int i24 = i15;
            long j20 = j3 + (((long) iArr[i18]) & 4294967295L) + (((long) ((i5 >>> i23) | (i22 << i15))) & 4294967295L);
            int i25 = iArr2[i21];
            long j21 = j19 + (((long) iArr5[i18]) & 4294967295L) + (((long) ((i25 << i24) | (i19 >>> i23))) & 4294967295L);
            iArr3[i18] = (int) j21;
            j19 = j21 >>> 32;
            int i26 = iArr3[i21];
            long j22 = j20 + (((long) ((i26 << i24) | (i20 >>> i23))) & 4294967295L);
            iArr[i18] = (int) j22;
            j3 = j22 >>> 32;
            i18++;
            i15 = i24;
            iArr5 = iArr3;
            i20 = i26;
            i19 = i25;
            i5 = i22;
            i4 = i2;
        }
    }

    public static void addShifted_UV(int i2, int i3, int[] iArr, int[] iArr2, int[] iArr3, int[] iArr4) {
        int i4 = i3 >>> 5;
        int i5 = i3 & 31;
        char c2 = ' ';
        long j2 = 4294967295L;
        long j3 = 0;
        if (i5 == 0) {
            long j4 = 0;
            for (int i6 = i4; i6 <= i2; i6++) {
                long j5 = j3 + (((long) iArr[i6]) & 4294967295L);
                long j6 = j4 + (((long) iArr2[i6]) & 4294967295L);
                int i7 = i6 - i4;
                long j7 = j5 + (((long) iArr3[i7]) & 4294967295L);
                long j8 = j6 + (((long) iArr4[i7]) & 4294967295L);
                iArr[i6] = (int) j7;
                j3 = j7 >>> 32;
                iArr2[i6] = (int) j8;
                j4 = j8 >>> 32;
            }
            return;
        }
        int i8 = i4;
        int i9 = 0;
        int i10 = 0;
        long j9 = 0;
        while (i8 <= i2) {
            int i11 = i8 - i4;
            int i12 = iArr3[i11];
            int i13 = iArr4[i11];
            char c3 = c2;
            int i14 = -i5;
            long j10 = j2;
            long j11 = j3 + (((long) iArr[i8]) & j10);
            long j12 = j11 + (((long) ((i9 >>> i14) | (i12 << i5))) & j10);
            long j13 = j9 + (((long) iArr2[i8]) & j10) + (((long) ((i10 >>> i14) | (i13 << i5))) & j10);
            iArr[i8] = (int) j12;
            j3 = j12 >>> c3;
            iArr2[i8] = (int) j13;
            j9 = j13 >>> c3;
            i8++;
            c2 = c3;
            i10 = i13;
            i9 = i12;
            j2 = j10;
        }
    }

    public static int getBitLength(int i2, int[] iArr) {
        int i3 = iArr[i2] >> 31;
        while (i2 > 0 && iArr[i2] == i3) {
            i2--;
        }
        return ((i2 * 32) + 32) - Integers.numberOfLeadingZeros(iArr[i2] ^ i3);
    }

    public static int getBitLengthPositive(int i2, int[] iArr) {
        while (i2 > 0 && iArr[i2] == 0) {
            i2--;
        }
        return ((i2 * 32) + 32) - Integers.numberOfLeadingZeros(iArr[i2]);
    }

    public static boolean lessThan(int i2, int[] iArr, int[] iArr2) {
        do {
            int i3 = iArr[i2] - Integer.MIN_VALUE;
            int i4 = iArr2[i2] - Integer.MIN_VALUE;
            if (i3 < i4) {
                return true;
            }
            if (i3 > i4) {
                return false;
            }
            i2--;
        } while (i2 >= 0);
        return false;
    }

    public static void subShifted_NP(int i2, int i3, int[] iArr, int[] iArr2, int[] iArr3, int[] iArr4) {
        int i4 = i2;
        int[] iArr5 = iArr3;
        char c2 = ' ';
        int i5 = 0;
        long j2 = 4294967295L;
        long j3 = 0;
        if (i3 == 0) {
            long j4 = 0;
            while (i5 <= i4) {
                long j5 = ((long) iArr5[i5]) & 4294967295L;
                long j6 = (j3 + (((long) iArr[i5]) & 4294967295L)) - j5;
                long j7 = (j4 + j5) - (((long) iArr2[i5]) & 4294967295L);
                int i6 = (int) j7;
                j4 = j7 >> 32;
                iArr5[i5] = i6;
                long j8 = j6 - (((long) i6) & 4294967295L);
                iArr[i5] = (int) j8;
                j3 = j8 >> 32;
                i5++;
            }
            return;
        }
        if (i3 < 32) {
            int i7 = 0;
            long j9 = 0;
            long j10 = 0;
            int i8 = 0;
            int i9 = 0;
            while (i5 <= i4) {
                int i10 = iArr5[i5];
                char c3 = c2;
                int i11 = -i3;
                long j11 = j2;
                long j12 = (j9 + (((long) iArr[i5]) & j11)) - (((long) ((i7 >>> i11) | (i10 << i3))) & j11);
                int i12 = iArr2[i5];
                long j13 = (j10 + (((long) i10) & j11)) - (((long) ((i12 << i3) | (i8 >>> i11))) & j11);
                int i13 = (int) j13;
                j10 = j13 >> c3;
                iArr5[i5] = i13;
                long j14 = j12 - (((long) ((i9 >>> i11) | (i13 << i3))) & j11);
                iArr[i5] = (int) j14;
                j9 = j14 >> c3;
                i5++;
                i8 = i12;
                i9 = i13;
                i7 = i10;
                c2 = c3;
                j2 = j11;
            }
            return;
        }
        System.arraycopy(iArr5, 0, iArr4, 0, i4);
        int i14 = i3 >>> 5;
        int i15 = i3 & 31;
        if (i15 == 0) {
            long j15 = 0;
            for (int i16 = i14; i16 <= i4; i16++) {
                int i17 = i16 - i14;
                long j16 = (j3 + (((long) iArr[i16]) & 4294967295L)) - (((long) iArr4[i17]) & 4294967295L);
                long j17 = (j15 + (((long) iArr5[i16]) & 4294967295L)) - (((long) iArr2[i17]) & 4294967295L);
                iArr5[i16] = (int) j17;
                j15 = j17 >> 32;
                long j18 = j16 - (((long) iArr5[i17]) & 4294967295L);
                iArr[i16] = (int) j18;
                j3 = j18 >> 32;
            }
            return;
        }
        int i18 = i14;
        int i19 = 0;
        int i20 = 0;
        long j19 = 0;
        while (i18 <= i4) {
            int i21 = i18 - i14;
            int i22 = iArr4[i21];
            int i23 = -i15;
            int i24 = i15;
            long j20 = (j3 + (((long) iArr[i18]) & 4294967295L)) - (((long) ((i5 >>> i23) | (i22 << i15))) & 4294967295L);
            int i25 = iArr2[i21];
            long j21 = (j19 + (((long) iArr5[i18]) & 4294967295L)) - (((long) ((i25 << i24) | (i19 >>> i23))) & 4294967295L);
            iArr3[i18] = (int) j21;
            j19 = j21 >> 32;
            int i26 = iArr3[i21];
            long j22 = j20 - (((long) ((i26 << i24) | (i20 >>> i23))) & 4294967295L);
            iArr[i18] = (int) j22;
            j3 = j22 >> 32;
            i18++;
            i15 = i24;
            iArr5 = iArr3;
            i20 = i26;
            i19 = i25;
            i5 = i22;
            i4 = i2;
        }
    }

    public static void subShifted_UV(int i2, int i3, int[] iArr, int[] iArr2, int[] iArr3, int[] iArr4) {
        int i4 = i3 >>> 5;
        int i5 = i3 & 31;
        char c2 = ' ';
        long j2 = 4294967295L;
        long j3 = 0;
        if (i5 == 0) {
            long j4 = 0;
            for (int i6 = i4; i6 <= i2; i6++) {
                long j5 = j3 + (((long) iArr[i6]) & 4294967295L);
                long j6 = j4 + (((long) iArr2[i6]) & 4294967295L);
                int i7 = i6 - i4;
                long j7 = j5 - (((long) iArr3[i7]) & 4294967295L);
                long j8 = j6 - (((long) iArr4[i7]) & 4294967295L);
                iArr[i6] = (int) j7;
                j3 = j7 >> 32;
                iArr2[i6] = (int) j8;
                j4 = j8 >> 32;
            }
            return;
        }
        int i8 = i4;
        int i9 = 0;
        int i10 = 0;
        long j9 = 0;
        while (i8 <= i2) {
            int i11 = i8 - i4;
            int i12 = iArr3[i11];
            int i13 = iArr4[i11];
            char c3 = c2;
            int i14 = -i5;
            long j10 = j2;
            long j11 = j3 + (((long) iArr[i8]) & j10);
            long j12 = j11 - (((long) ((i9 >>> i14) | (i12 << i5))) & j10);
            long j13 = (j9 + (((long) iArr2[i8]) & j10)) - (((long) ((i10 >>> i14) | (i13 << i5))) & j10);
            iArr[i8] = (int) j12;
            j3 = j12 >> c3;
            iArr2[i8] = (int) j13;
            j9 = j13 >> c3;
            i8++;
            c2 = c3;
            i10 = i13;
            i9 = i12;
            j2 = j10;
        }
    }
}
