package org.bouncycastle.pqc.crypto.hqc;

/* JADX INFO: loaded from: classes5.dex */
class GF2PolynomialCalculator {
    private final int PARAM_N;
    private final long RED_MASK;
    private final int VEC_N_SIZE_64;

    public GF2PolynomialCalculator(int i2, int i3, long j2) {
        this.VEC_N_SIZE_64 = i2;
        this.PARAM_N = i3;
        this.RED_MASK = j2;
    }

    public static void addLongs(long[] jArr, long[] jArr2, long[] jArr3) {
        for (int i2 = 0; i2 < jArr2.length; i2++) {
            jArr[i2] = jArr2[i2] ^ jArr3[i2];
        }
    }

    private void base_mul(long[] jArr, int i2, long j2, long j3) {
        int i3;
        long[] jArr2;
        int i4 = 16;
        int i5 = 0;
        long j4 = j3 & 1152921504606846975L;
        boolean z = true;
        long j5 = j4 << 1;
        long j6 = j5 ^ j4;
        long j7 = j4 << 2;
        long j8 = j7 ^ j4;
        long j9 = j6 << 1;
        long j10 = j9 ^ j4;
        long j11 = j4 << 3;
        long j12 = j8 << 1;
        long j13 = j6 << 2;
        long j14 = j10 << 1;
        long[] jArr3 = {0, j4, j5, j6, j7, j8, j9, j10, j11, j11 ^ j4, j12, j12 ^ j4, j13, j13 ^ j4, j14, j4 ^ j14};
        long j15 = 15;
        long j16 = j2 & 15;
        int i6 = 0;
        long j17 = 0;
        while (true) {
            i3 = i5;
            if (i6 >= 16) {
                break;
            }
            long j18 = j16 - ((long) i6);
            j17 ^= jArr3[i6] & (-(1 - ((j18 | (-j18)) >>> 63)));
            i6++;
            i5 = i3;
            j15 = j15;
        }
        long j19 = j15;
        byte b2 = 4;
        long j20 = 0;
        while (b2 < 64) {
            long j21 = (j2 >> b2) & j19;
            long j22 = 0;
            int i7 = i3;
            while (true) {
                jArr2 = jArr3;
                if (i7 < i4) {
                    long j23 = j21 - ((long) i7);
                    j22 ^= jArr2[i7] & (-(1 - ((j23 | (-j23)) >>> 63)));
                    i7++;
                    jArr3 = jArr2;
                    z = z;
                    i4 = 16;
                }
            }
            j17 ^= j22 << b2;
            j20 ^= j22 >>> (64 - b2);
            b2 = (byte) (b2 + 4);
            jArr3 = jArr2;
            i4 = 16;
        }
        boolean z2 = z;
        long[] jArr4 = new long[4];
        jArr4[i3] = -((j3 >> 60) & 1);
        jArr4[z2 ? 1 : 0] = -((j3 >> 61) & 1);
        jArr4[2] = -((j3 >> 62) & 1);
        jArr4[3] = -((j3 >> 63) & 1);
        long j24 = jArr4[i3];
        long j25 = jArr4[z2 ? 1 : 0];
        long j26 = jArr4[2];
        long j27 = jArr4[3];
        long j28 = (((j20 ^ (j24 & (j2 >>> 4))) ^ ((j2 >>> 3) & j25)) ^ ((j2 >>> 2) & j26)) ^ ((j2 >>> (z2 ? 1L : 0L)) & j27);
        jArr[i2] = (((((j2 << 60) & j24) ^ j17) ^ ((j2 << 61) & j25)) ^ ((j2 << 62) & j26)) ^ ((j2 << 63) & j27);
        jArr[i2 + 1] = j28;
    }

    private void karatsuba(long[] jArr, int i2, long[] jArr2, int i3, long[] jArr3, int i4, int i5, long[] jArr4, int i6) {
        if (i5 == 1) {
            base_mul(jArr, i2, jArr2[i3], jArr3[i4]);
            return;
        }
        int i7 = i5 / 2;
        int i8 = (i5 + 1) / 2;
        int i9 = i6 + i8;
        int i10 = i9 + i8;
        int i11 = (i8 * 2) + i2;
        int i12 = (i8 * 4) + i6;
        karatsuba(jArr, i2, jArr2, i3, jArr3, i4, i8, jArr4, i12);
        karatsuba(jArr, i11, jArr2, i3 + i8, jArr3, i4 + i8, i7, jArr4, i12);
        karatsuba_add1(jArr4, i6, jArr4, i9, jArr2, i3, jArr3, i4, i8, i7);
        karatsuba(jArr4, i10, jArr4, i6, jArr4, i9, i8, jArr4, i12);
        karatsuba_add2(jArr, i2, jArr4, i10, jArr, i11, i8, i7);
    }

    private void karatsuba_add1(long[] jArr, int i2, long[] jArr2, int i3, long[] jArr3, int i4, long[] jArr4, int i5, int i6, int i7) {
        for (int i8 = 0; i8 < i7; i8++) {
            int i9 = i8 + i6;
            jArr[i8 + i2] = jArr3[i8 + i4] ^ jArr3[i9 + i4];
            jArr2[i8 + i3] = jArr4[i8 + i5] ^ jArr4[i9 + i5];
        }
        if (i7 < i6) {
            jArr[i7 + i2] = jArr3[i7 + i4];
            jArr2[i7 + i3] = jArr4[i7 + i5];
        }
    }

    private void karatsuba_add2(long[] jArr, int i2, long[] jArr2, int i3, long[] jArr3, int i4, int i5, int i6) {
        int i7;
        int i8 = 0;
        while (true) {
            i7 = i5 * 2;
            if (i8 >= i7) {
                break;
            }
            int i9 = i8 + i3;
            jArr2[i9] = jArr2[i9] ^ jArr[i8 + i2];
            i8++;
        }
        for (int i10 = 0; i10 < i6 * 2; i10++) {
            int i11 = i10 + i3;
            jArr2[i11] = jArr2[i11] ^ jArr3[i10 + i4];
        }
        for (int i12 = 0; i12 < i7; i12++) {
            int i13 = i12 + i5 + i2;
            jArr[i13] = jArr[i13] ^ jArr2[i12 + i3];
        }
    }

    private void reduce(long[] jArr, long[] jArr2) {
        int i2 = 0;
        while (true) {
            int i3 = this.VEC_N_SIZE_64;
            if (i2 >= i3) {
                int i4 = i3 - 1;
                jArr[i4] = jArr[i4] & this.RED_MASK;
                return;
            }
            long j2 = jArr2[(i2 + i3) - 1];
            int i5 = this.PARAM_N;
            jArr[i2] = (jArr2[i2] ^ (j2 >>> (i5 & 63))) ^ (jArr2[i3 + i2] << ((int) (64 - (((long) i5) & 63))));
            i2++;
        }
    }

    public void multLongs(long[] jArr, long[] jArr2, long[] jArr3) {
        int i2 = this.VEC_N_SIZE_64;
        long[] jArr4 = new long[(i2 << 1) + 1];
        karatsuba(jArr4, 0, jArr2, 0, jArr3, 0, i2, new long[i2 << 3], 0);
        reduce(jArr, jArr4);
    }
}
