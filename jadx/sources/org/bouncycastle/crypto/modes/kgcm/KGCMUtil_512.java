package org.bouncycastle.crypto.modes.kgcm;

import org.bouncycastle.math.raw.Interleave;

/* JADX INFO: loaded from: classes5.dex */
public class KGCMUtil_512 {
    public static final int SIZE = 8;

    public static void add(long[] jArr, long[] jArr2, long[] jArr3) {
        jArr3[0] = jArr[0] ^ jArr2[0];
        jArr3[1] = jArr[1] ^ jArr2[1];
        jArr3[2] = jArr[2] ^ jArr2[2];
        jArr3[3] = jArr[3] ^ jArr2[3];
        jArr3[4] = jArr[4] ^ jArr2[4];
        jArr3[5] = jArr[5] ^ jArr2[5];
        jArr3[6] = jArr[6] ^ jArr2[6];
        jArr3[7] = jArr2[7] ^ jArr[7];
    }

    public static void copy(long[] jArr, long[] jArr2) {
        jArr2[0] = jArr[0];
        jArr2[1] = jArr[1];
        jArr2[2] = jArr[2];
        jArr2[3] = jArr[3];
        jArr2[4] = jArr[4];
        jArr2[5] = jArr[5];
        jArr2[6] = jArr[6];
        jArr2[7] = jArr[7];
    }

    public static boolean equal(long[] jArr, long[] jArr2) {
        return ((jArr2[7] ^ jArr[7]) | (((((((jArr[0] ^ jArr2[0]) | (jArr[1] ^ jArr2[1])) | (jArr[2] ^ jArr2[2])) | (jArr[3] ^ jArr2[3])) | (jArr[4] ^ jArr2[4])) | (jArr[5] ^ jArr2[5])) | (jArr[6] ^ jArr2[6]))) == 0;
    }

    public static void multiply(long[] jArr, long[] jArr2, long[] jArr3) {
        int i2 = 0;
        long j2 = jArr2[0];
        char c2 = 1;
        long j3 = jArr2[1];
        char c3 = 2;
        long j4 = jArr2[2];
        char c4 = 3;
        long j5 = jArr2[3];
        long j6 = jArr2[4];
        long j7 = jArr2[5];
        long j8 = jArr2[6];
        long j9 = jArr2[7];
        long j10 = 0;
        long j11 = 0;
        long j12 = 0;
        long j13 = 0;
        long j14 = 0;
        long j15 = 0;
        long j16 = 0;
        long j17 = 0;
        long j18 = 0;
        while (true) {
            char c5 = c2;
            if (i2 >= 8) {
                char c6 = c3;
                jArr3[0] = j10 ^ (((j11 ^ (j11 << c6)) ^ (j11 << 5)) ^ (j11 << 8));
                jArr3[c5] = j12 ^ (((j11 >>> 62) ^ (j11 >>> 59)) ^ (j11 >>> 56));
                jArr3[c6] = j13;
                jArr3[c4] = j14;
                jArr3[4] = j15;
                jArr3[5] = j16;
                jArr3[6] = j17;
                jArr3[7] = j18;
                return;
            }
            long j19 = jArr[i2];
            long j20 = jArr[i2 + 1];
            long j21 = j4;
            long j22 = j3;
            long j23 = j8;
            j8 = j7;
            j7 = j6;
            j6 = j5;
            long j24 = j21;
            char c7 = c3;
            int i3 = 0;
            while (i3 < 64) {
                char c8 = c4;
                long j25 = j24;
                long j26 = -(j19 & 1);
                j19 >>>= c5;
                j10 ^= j2 & j26;
                long j27 = j22;
                long j28 = -(j20 & 1);
                j20 >>>= c5;
                j12 = (j12 ^ (j22 & j26)) ^ (j2 & j28);
                j13 = (j13 ^ (j25 & j26)) ^ (j27 & j28);
                j14 = (j14 ^ (j6 & j26)) ^ (j25 & j28);
                j15 = (j15 ^ (j7 & j26)) ^ (j6 & j28);
                j16 = (j16 ^ (j8 & j26)) ^ (j7 & j28);
                j17 = (j17 ^ (j23 & j26)) ^ (j8 & j28);
                j18 = (j18 ^ (j9 & j26)) ^ (j23 & j28);
                j11 ^= j9 & j28;
                long j29 = j9 >> 63;
                j9 = (j9 << c5) | (j23 >>> 63);
                j23 = (j23 << c5) | (j8 >>> 63);
                j8 = (j8 << c5) | (j7 >>> 63);
                j7 = (j7 << c5) | (j6 >>> 63);
                j6 = (j6 << c5) | (j25 >>> 63);
                long j30 = (j27 << c5) | (j2 >>> 63);
                j2 = (j2 << c5) ^ (j29 & 293);
                i3++;
                c4 = c8;
                j24 = (j25 << c5) | (j27 >>> 63);
                j22 = j30;
            }
            long j31 = ((j2 ^ (j9 >>> 62)) ^ (j9 >>> 59)) ^ (j9 >>> 56);
            long j32 = ((j9 ^ (j9 << c7)) ^ (j9 << 5)) ^ (j9 << 8);
            i2 += 2;
            j9 = j23;
            c4 = c4;
            c2 = c5;
            j5 = j24;
            j3 = j31;
            j2 = j32;
            c3 = c7;
            j4 = j22;
        }
    }

    public static void multiplyX(long[] jArr, long[] jArr2) {
        long j2 = jArr[0];
        long j3 = jArr[1];
        long j4 = jArr[2];
        long j5 = jArr[3];
        long j6 = jArr[4];
        long j7 = jArr[5];
        long j8 = jArr[6];
        long j9 = jArr[7];
        jArr2[0] = (j2 << 1) ^ ((j9 >> 63) & 293);
        jArr2[1] = (j3 << 1) | (j2 >>> 63);
        jArr2[2] = (j4 << 1) | (j3 >>> 63);
        jArr2[3] = (j5 << 1) | (j4 >>> 63);
        jArr2[4] = (j6 << 1) | (j5 >>> 63);
        jArr2[5] = (j7 << 1) | (j6 >>> 63);
        jArr2[6] = (j8 << 1) | (j7 >>> 63);
        jArr2[7] = (j9 << 1) | (j8 >>> 63);
    }

    public static void multiplyX8(long[] jArr, long[] jArr2) {
        long j2 = jArr[0];
        long j3 = jArr[1];
        long j4 = jArr[2];
        long j5 = jArr[3];
        long j6 = jArr[4];
        long j7 = jArr[5];
        long j8 = jArr[6];
        long j9 = jArr[7];
        long j10 = j9 >>> 56;
        jArr2[0] = ((((j2 << 8) ^ j10) ^ (j10 << 2)) ^ (j10 << 5)) ^ (j10 << 8);
        jArr2[1] = (j3 << 8) | (j2 >>> 56);
        jArr2[2] = (j4 << 8) | (j3 >>> 56);
        jArr2[3] = (j5 << 8) | (j4 >>> 56);
        jArr2[4] = (j6 << 8) | (j5 >>> 56);
        jArr2[5] = (j7 << 8) | (j6 >>> 56);
        jArr2[6] = (j8 << 8) | (j7 >>> 56);
        jArr2[7] = (j9 << 8) | (j8 >>> 56);
    }

    public static void one(long[] jArr) {
        jArr[0] = 1;
        jArr[1] = 0;
        jArr[2] = 0;
        jArr[3] = 0;
        jArr[4] = 0;
        jArr[5] = 0;
        jArr[6] = 0;
        jArr[7] = 0;
    }

    public static void square(long[] jArr, long[] jArr2) {
        int i2 = 16;
        long[] jArr3 = new long[16];
        for (int i3 = 0; i3 < 8; i3++) {
            Interleave.expand64To128(jArr[i3], jArr3, i3 << 1);
        }
        while (true) {
            int i4 = i2 - 1;
            if (i4 < 8) {
                copy(jArr3, jArr2);
                return;
            }
            long j2 = jArr3[i4];
            int i5 = i2 - 9;
            jArr3[i5] = jArr3[i5] ^ ((((j2 << 2) ^ j2) ^ (j2 << 5)) ^ (j2 << 8));
            int i6 = i2 - 8;
            jArr3[i6] = ((j2 >>> 56) ^ ((j2 >>> 62) ^ (j2 >>> 59))) ^ jArr3[i6];
            i2 = i4;
        }
    }

    public static void x(long[] jArr) {
        jArr[0] = 2;
        jArr[1] = 0;
        jArr[2] = 0;
        jArr[3] = 0;
        jArr[4] = 0;
        jArr[5] = 0;
        jArr[6] = 0;
        jArr[7] = 0;
    }

    public static void zero(long[] jArr) {
        jArr[0] = 0;
        jArr[1] = 0;
        jArr[2] = 0;
        jArr[3] = 0;
        jArr[4] = 0;
        jArr[5] = 0;
        jArr[6] = 0;
        jArr[7] = 0;
    }
}
