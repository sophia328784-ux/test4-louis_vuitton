package org.spongycastle.math.ec.custom.sec;

import org.spongycastle.math.raw.Interleave;

/* JADX INFO: loaded from: classes5.dex */
public class SecT193Field {
    public static void a(long[] jArr, long[] jArr2, long[] jArr3) {
        jArr3[0] = jArr[0] ^ jArr2[0];
        jArr3[1] = jArr[1] ^ jArr2[1];
        jArr3[2] = jArr[2] ^ jArr2[2];
        jArr3[3] = jArr[3] ^ jArr2[3];
        jArr3[4] = jArr[4] ^ jArr2[4];
        jArr3[5] = jArr[5] ^ jArr2[5];
        jArr3[6] = jArr2[6] ^ jArr[6];
    }

    public static void b(long[] jArr, long[] jArr2) {
        long j2 = jArr[0];
        long j3 = jArr[1];
        long j4 = jArr[2];
        long j5 = jArr[3];
        jArr2[0] = j2 & 562949953421311L;
        jArr2[1] = ((j2 >>> 49) ^ (j3 << 15)) & 562949953421311L;
        jArr2[2] = ((j3 >>> 34) ^ (j4 << 30)) & 562949953421311L;
        jArr2[3] = (j4 >>> 19) ^ (j5 << 45);
    }

    public static void c(long[] jArr, long[] jArr2, long[] jArr3) {
        long[] jArr4 = new long[4];
        long[] jArr5 = new long[4];
        b(jArr, jArr4);
        b(jArr2, jArr5);
        d(jArr3, 0, jArr4[0], jArr5[0]);
        d(jArr3, 1, jArr4[1], jArr5[1]);
        d(jArr3, 2, jArr4[2], jArr5[2]);
        d(jArr3, 3, jArr4[3], jArr5[3]);
        for (int i2 = 5; i2 > 0; i2--) {
            jArr3[i2] = jArr3[i2] ^ jArr3[i2 - 1];
        }
        d(jArr3, 1, jArr4[0] ^ jArr4[1], jArr5[0] ^ jArr5[1]);
        d(jArr3, 3, jArr4[2] ^ jArr4[3], jArr5[2] ^ jArr5[3]);
        for (int i3 = 7; i3 > 1; i3--) {
            jArr3[i3] = jArr3[i3] ^ jArr3[i3 - 2];
        }
        long j2 = jArr4[0] ^ jArr4[2];
        long j3 = jArr4[1] ^ jArr4[3];
        long j4 = jArr5[0] ^ jArr5[2];
        long j5 = jArr5[1] ^ jArr5[3];
        d(jArr3, 3, j2 ^ j3, j4 ^ j5);
        long[] jArr6 = new long[3];
        d(jArr6, 0, j2, j4);
        d(jArr6, 1, j3, j5);
        long j6 = jArr6[0];
        long j7 = jArr6[1];
        long j8 = jArr6[2];
        long j9 = jArr3[2] ^ j6;
        jArr3[2] = j9;
        long j10 = (j6 ^ j7) ^ jArr3[3];
        jArr3[3] = j10;
        long j11 = (j7 ^ j8) ^ jArr3[4];
        jArr3[4] = j11;
        long j12 = j8 ^ jArr3[5];
        jArr3[5] = j12;
        long j13 = jArr3[0];
        long j14 = jArr3[1];
        long j15 = jArr3[6];
        long j16 = jArr3[7];
        jArr3[0] = j13 ^ (j14 << 49);
        jArr3[1] = (j14 >>> 15) ^ (j9 << 34);
        jArr3[2] = (j9 >>> 30) ^ (j10 << 19);
        jArr3[3] = ((j10 >>> 45) ^ (j11 << 4)) ^ (j12 << 53);
        jArr3[4] = ((j11 >>> 60) ^ (j15 << 38)) ^ (j12 >>> 11);
        jArr3[5] = (j15 >>> 26) ^ (j16 << 23);
        jArr3[6] = j16 >>> 41;
        jArr3[7] = 0;
    }

    public static void d(long[] jArr, int i2, long j2, long j3) {
        long j4 = j3 << 1;
        long j5 = j4 ^ j3;
        long j6 = j3 << 2;
        long j7 = j5 << 1;
        long[] jArr2 = {0, j3, j4, j5, j6, j6 ^ j3, j7, j7 ^ j3};
        int i3 = (int) j2;
        long j8 = (jArr2[(i3 >>> 3) & 7] << 3) ^ jArr2[i3 & 7];
        long j9 = 0;
        int i4 = 36;
        do {
            int i5 = (int) (j2 >>> i4);
            long j10 = (((jArr2[i5 & 7] ^ (jArr2[(i5 >>> 3) & 7] << 3)) ^ (jArr2[(i5 >>> 6) & 7] << 6)) ^ (jArr2[(i5 >>> 9) & 7] << 9)) ^ (jArr2[(i5 >>> 12) & 7] << 12);
            j8 ^= j10 << i4;
            j9 ^= j10 >>> (-i4);
            i4 -= 15;
        } while (i4 > 0);
        jArr[i2] = jArr[i2] ^ (562949953421311L & j8);
        int i6 = i2 + 1;
        jArr[i6] = jArr[i6] ^ ((j8 >>> 49) ^ (j9 << 15));
    }

    public static void e(long[] jArr, long[] jArr2) {
        Interleave.c(jArr[0], jArr2, 0);
        Interleave.c(jArr[1], jArr2, 2);
        Interleave.c(jArr[2], jArr2, 4);
        jArr2[6] = jArr[3] & 1;
    }

    public static void f(long[] jArr, long[] jArr2, long[] jArr3) {
        long[] jArr4 = new long[8];
        c(jArr, jArr2, jArr4);
        g(jArr4, jArr3);
    }

    public static void g(long[] jArr, long[] jArr2) {
        long j2 = jArr[0];
        long j3 = jArr[1];
        long j4 = jArr[2];
        long j5 = jArr[3];
        long j6 = jArr[4];
        long j7 = jArr[5];
        long j8 = jArr[6];
        long j9 = j6 ^ (j8 >>> 50);
        long j10 = (j5 ^ ((j8 >>> 1) ^ (j8 << 14))) ^ (j7 >>> 50);
        long j11 = j2 ^ (j9 << 63);
        long j12 = (j3 ^ (j7 << 63)) ^ ((j9 >>> 1) ^ (j9 << 14));
        long j13 = ((j4 ^ (j8 << 63)) ^ ((j7 >>> 1) ^ (j7 << 14))) ^ (j9 >>> 50);
        long j14 = j10 >>> 1;
        jArr2[0] = (j11 ^ j14) ^ (j14 << 15);
        jArr2[1] = (j10 >>> 50) ^ j12;
        jArr2[2] = j13;
        jArr2[3] = 1 & j10;
    }

    public static void h(long[] jArr, int i2, long[] jArr2) {
        long[] jArr3 = new long[8];
        e(jArr, jArr3);
        g(jArr3, jArr2);
        while (true) {
            i2--;
            if (i2 <= 0) {
                return;
            }
            e(jArr2, jArr3);
            g(jArr3, jArr2);
        }
    }
}
