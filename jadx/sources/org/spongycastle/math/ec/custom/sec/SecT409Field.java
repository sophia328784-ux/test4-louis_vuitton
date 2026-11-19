package org.spongycastle.math.ec.custom.sec;

import org.spongycastle.math.raw.Interleave;

/* JADX INFO: loaded from: classes5.dex */
public class SecT409Field {
    public static void a(long[] jArr, long[] jArr2) {
        long j2 = jArr[0];
        long j3 = jArr[1];
        long j4 = jArr[2];
        long j5 = jArr[3];
        long j6 = jArr[4];
        long j7 = jArr[5];
        long j8 = jArr[6];
        jArr2[0] = j2 & 576460752303423487L;
        jArr2[1] = ((j2 >>> 59) ^ (j3 << 5)) & 576460752303423487L;
        jArr2[2] = ((j3 >>> 54) ^ (j4 << 10)) & 576460752303423487L;
        jArr2[3] = ((j4 >>> 49) ^ (j5 << 15)) & 576460752303423487L;
        jArr2[4] = ((j5 >>> 44) ^ (j6 << 20)) & 576460752303423487L;
        jArr2[5] = ((j6 >>> 39) ^ (j7 << 25)) & 576460752303423487L;
        jArr2[6] = (j7 >>> 34) ^ (j8 << 30);
    }

    public static void b(long[] jArr, long[] jArr2, long[] jArr3) {
        int i2 = 7;
        long[] jArr4 = new long[7];
        long[] jArr5 = new long[7];
        a(jArr, jArr4);
        a(jArr2, jArr5);
        int i3 = 0;
        while (i3 < i2) {
            long j2 = jArr5[i3];
            long[] jArr6 = new long[8];
            jArr6[1] = j2;
            long j3 = j2 << 1;
            jArr6[2] = j3;
            long j4 = j3 ^ j2;
            jArr6[3] = j4;
            long j5 = j2 << 2;
            jArr6[4] = j5;
            jArr6[5] = j5 ^ j2;
            long j6 = j4 << 1;
            jArr6[6] = j6;
            jArr6[i2] = j6 ^ j2;
            int i4 = 0;
            while (i4 < i2) {
                int i5 = i2;
                long[] jArr7 = jArr4;
                long j7 = jArr7[i4];
                int i6 = (int) j7;
                long j8 = jArr6[i6 & 7] ^ (jArr6[(i6 >>> 3) & 7] << 3);
                int i7 = i3;
                int i8 = 54;
                long j9 = 0;
                do {
                    int i9 = (int) (j7 >>> i8);
                    long j10 = jArr6[i9 & 7] ^ (jArr6[(i9 >>> 3) & 7] << 3);
                    j8 ^= j10 << i8;
                    j9 ^= j10 >>> (-i8);
                    i8 -= 6;
                } while (i8 > 0);
                int i10 = i7 + i4;
                jArr3[i10] = jArr3[i10] ^ (j8 & 576460752303423487L);
                int i11 = i10 + 1;
                jArr3[i11] = jArr3[i11] ^ ((j8 >>> 59) ^ (j9 << 5));
                i4++;
                i3 = i7;
                i2 = i5;
                jArr4 = jArr7;
            }
            i3++;
        }
        int i12 = i2;
        long j11 = jArr3[0];
        long j12 = jArr3[1];
        long j13 = jArr3[2];
        long j14 = jArr3[3];
        long j15 = jArr3[4];
        long j16 = jArr3[5];
        long j17 = jArr3[6];
        long j18 = jArr3[i12];
        long j19 = jArr3[8];
        long j20 = jArr3[9];
        long j21 = jArr3[10];
        long j22 = jArr3[11];
        long j23 = jArr3[12];
        long j24 = jArr3[13];
        jArr3[0] = j11 ^ (j12 << 59);
        jArr3[1] = (j12 >>> 5) ^ (j13 << 54);
        jArr3[2] = (j13 >>> 10) ^ (j14 << 49);
        jArr3[3] = (j14 >>> 15) ^ (j15 << 44);
        jArr3[4] = (j15 >>> 20) ^ (j16 << 39);
        jArr3[5] = (j16 >>> 25) ^ (j17 << 34);
        jArr3[6] = (j17 >>> 30) ^ (j18 << 29);
        jArr3[i12] = (j18 >>> 35) ^ (j19 << 24);
        jArr3[8] = (j19 >>> 40) ^ (j20 << 19);
        jArr3[9] = (j20 >>> 45) ^ (j21 << 14);
        jArr3[10] = (j21 >>> 50) ^ (j22 << 9);
        jArr3[11] = ((j22 >>> 55) ^ (j23 << 4)) ^ (j24 << 63);
        jArr3[12] = (j23 >>> 60) ^ (j24 >>> 1);
        jArr3[13] = 0;
    }

    public static void c(long[] jArr, long[] jArr2) {
        for (int i2 = 0; i2 < 6; i2++) {
            Interleave.c(jArr[i2], jArr2, i2 << 1);
        }
        jArr2[12] = Interleave.b((int) jArr[6]);
    }

    public static void d(long[] jArr, long[] jArr2, long[] jArr3) {
        long[] jArr4 = new long[14];
        b(jArr, jArr2, jArr4);
        e(jArr4, jArr3);
    }

    public static void e(long[] jArr, long[] jArr2) {
        long j2 = jArr[0];
        long j3 = jArr[1];
        long j4 = jArr[2];
        long j5 = jArr[3];
        long j6 = jArr[4];
        long j7 = jArr[5];
        long j8 = jArr[6];
        long j9 = jArr[7];
        long j10 = jArr[12];
        long j11 = j7 ^ (j10 << 39);
        long j12 = j8 ^ ((j10 >>> 25) ^ (j10 << 62));
        long j13 = j9 ^ (j10 >>> 2);
        long j14 = jArr[11];
        long j15 = j6 ^ (j14 << 39);
        long j16 = j11 ^ ((j14 >>> 25) ^ (j14 << 62));
        long j17 = j12 ^ (j14 >>> 2);
        long j18 = jArr[10];
        long j19 = j5 ^ (j18 << 39);
        long j20 = j15 ^ ((j18 >>> 25) ^ (j18 << 62));
        long j21 = j16 ^ (j18 >>> 2);
        long j22 = jArr[9];
        long j23 = j4 ^ (j22 << 39);
        long j24 = j19 ^ ((j22 >>> 25) ^ (j22 << 62));
        long j25 = j20 ^ (j22 >>> 2);
        long j26 = jArr[8];
        long j27 = j2 ^ (j13 << 39);
        long j28 = (j3 ^ (j26 << 39)) ^ ((j13 >>> 25) ^ (j13 << 62));
        long j29 = (j23 ^ ((j26 >>> 25) ^ (j26 << 62))) ^ (j13 >>> 2);
        long j30 = j17 >>> 25;
        jArr2[0] = j27 ^ j30;
        jArr2[1] = (j30 << 23) ^ j28;
        jArr2[2] = j29;
        jArr2[3] = j24 ^ (j26 >>> 2);
        jArr2[4] = j25;
        jArr2[5] = j21;
        jArr2[6] = j17 & 33554431;
    }

    public static void f(long[] jArr, int i2, long[] jArr2) {
        long[] jArr3 = new long[13];
        c(jArr, jArr3);
        e(jArr3, jArr2);
        while (true) {
            i2--;
            if (i2 <= 0) {
                return;
            }
            c(jArr2, jArr3);
            e(jArr3, jArr2);
        }
    }
}
