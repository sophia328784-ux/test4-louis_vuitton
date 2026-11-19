package org.bouncycastle.crypto.modes.kgcm;

import org.bouncycastle.math.raw.Interleave;

/* JADX INFO: loaded from: classes5.dex */
public class KGCMUtil_256 {
    public static final int SIZE = 4;

    public static void add(long[] jArr, long[] jArr2, long[] jArr3) {
        jArr3[0] = jArr[0] ^ jArr2[0];
        jArr3[1] = jArr[1] ^ jArr2[1];
        jArr3[2] = jArr[2] ^ jArr2[2];
        jArr3[3] = jArr2[3] ^ jArr[3];
    }

    public static void copy(long[] jArr, long[] jArr2) {
        jArr2[0] = jArr[0];
        jArr2[1] = jArr[1];
        jArr2[2] = jArr[2];
        jArr2[3] = jArr[3];
    }

    public static boolean equal(long[] jArr, long[] jArr2) {
        return ((jArr2[3] ^ jArr[3]) | (((jArr[0] ^ jArr2[0]) | (jArr[1] ^ jArr2[1])) | (jArr[2] ^ jArr2[2]))) == 0;
    }

    public static void multiply(long[] jArr, long[] jArr2, long[] jArr3) {
        char c2;
        char c3;
        long j2;
        int i2 = 0;
        long j3 = jArr[0];
        char c4 = 1;
        long j4 = jArr[1];
        char c5 = 2;
        long j5 = jArr[2];
        char c6 = 3;
        long j6 = jArr[3];
        long j7 = jArr2[0];
        long j8 = jArr2[1];
        long j9 = jArr2[2];
        long j10 = jArr2[3];
        long j11 = 0;
        long j12 = 0;
        long j13 = 0;
        long j14 = 0;
        long j15 = 0;
        while (true) {
            c2 = c4;
            c3 = c5;
            j2 = j5;
            if (i2 >= 64) {
                break;
            }
            long j16 = -(j3 & 1);
            j3 >>>= c2;
            j11 ^= j7 & j16;
            char c7 = c6;
            long j17 = -(j4 & 1);
            j4 >>>= c2;
            j12 = (j12 ^ (j8 & j16)) ^ (j7 & j17);
            j13 = (j13 ^ (j9 & j16)) ^ (j8 & j17);
            j14 = (j14 ^ (j10 & j16)) ^ (j9 & j17);
            j15 ^= j10 & j17;
            long j18 = j10 >> 63;
            j10 = (j10 << c2) | (j9 >>> 63);
            j9 = (j9 << c2) | (j8 >>> 63);
            j8 = (j7 >>> 63) | (j8 << c2);
            j7 = (j7 << c2) ^ (j18 & 1061);
            i2++;
            c6 = c7;
            c4 = c2;
            c5 = c3;
            j5 = j2;
            j6 = j6;
        }
        char c8 = c6;
        long j19 = j6;
        char c9 = '>';
        long j20 = (((j10 >>> 62) ^ j7) ^ (j10 >>> 59)) ^ (j10 >>> 54);
        long j21 = ((j10 ^ (j10 << c3)) ^ (j10 << 5)) ^ (j10 << 10);
        int i3 = 0;
        while (i3 < 64) {
            long j22 = -(j2 & 1);
            j2 >>>= c2;
            j11 ^= j21 & j22;
            char c10 = c9;
            long j23 = j20;
            long j24 = -(j19 & 1);
            j19 >>>= c2;
            long j25 = (j12 ^ (j20 & j22)) ^ (j21 & j24);
            j13 = (j13 ^ (j8 & j22)) ^ (j23 & j24);
            j14 = (j14 ^ (j9 & j22)) ^ (j8 & j24);
            j15 ^= j9 & j24;
            long j26 = j9 >> 63;
            j9 = (j9 << c2) | (j8 >>> 63);
            j8 = (j23 >>> 63) | (j8 << c2);
            long j27 = (j23 << c2) | (j21 >>> 63);
            j21 = (j21 << c2) ^ (j26 & 1061);
            i3++;
            c9 = c10;
            j20 = j27;
            j12 = j25;
        }
        jArr3[0] = j11 ^ (((j15 ^ (j15 << c3)) ^ (j15 << 5)) ^ (j15 << 10));
        jArr3[c2] = j12 ^ (((j15 >>> c9) ^ (j15 >>> 59)) ^ (j15 >>> 54));
        jArr3[c3] = j13;
        jArr3[c8] = j14;
    }

    public static void multiplyX(long[] jArr, long[] jArr2) {
        long j2 = jArr[0];
        long j3 = jArr[1];
        long j4 = jArr[2];
        long j5 = jArr[3];
        jArr2[0] = ((j5 >> 63) & 1061) ^ (j2 << 1);
        jArr2[1] = (j2 >>> 63) | (j3 << 1);
        jArr2[2] = (j4 << 1) | (j3 >>> 63);
        jArr2[3] = (j5 << 1) | (j4 >>> 63);
    }

    public static void multiplyX8(long[] jArr, long[] jArr2) {
        long j2 = jArr[0];
        long j3 = jArr[1];
        long j4 = jArr[2];
        long j5 = jArr[3];
        long j6 = j5 >>> 56;
        jArr2[0] = ((((j2 << 8) ^ j6) ^ (j6 << 2)) ^ (j6 << 5)) ^ (j6 << 10);
        jArr2[1] = (j2 >>> 56) | (j3 << 8);
        jArr2[2] = (j4 << 8) | (j3 >>> 56);
        jArr2[3] = (j5 << 8) | (j4 >>> 56);
    }

    public static void one(long[] jArr) {
        jArr[0] = 1;
        jArr[1] = 0;
        jArr[2] = 0;
        jArr[3] = 0;
    }

    public static void square(long[] jArr, long[] jArr2) {
        int i2 = 8;
        long[] jArr3 = new long[8];
        for (int i3 = 0; i3 < 4; i3++) {
            Interleave.expand64To128(jArr[i3], jArr3, i3 << 1);
        }
        while (true) {
            int i4 = i2 - 1;
            if (i4 < 4) {
                copy(jArr3, jArr2);
                return;
            }
            long j2 = jArr3[i4];
            int i5 = i2 - 5;
            jArr3[i5] = jArr3[i5] ^ ((((j2 << 2) ^ j2) ^ (j2 << 5)) ^ (j2 << 10));
            int i6 = i2 - 4;
            jArr3[i6] = ((j2 >>> 54) ^ ((j2 >>> 62) ^ (j2 >>> 59))) ^ jArr3[i6];
            i2 = i4;
        }
    }

    public static void x(long[] jArr) {
        jArr[0] = 2;
        jArr[1] = 0;
        jArr[2] = 0;
        jArr[3] = 0;
    }

    public static void zero(long[] jArr) {
        jArr[0] = 0;
        jArr[1] = 0;
        jArr[2] = 0;
        jArr[3] = 0;
    }
}
