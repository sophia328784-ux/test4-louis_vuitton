package org.spongycastle.math.ec.custom.sec;

import org.spongycastle.math.raw.Interleave;

/* JADX INFO: loaded from: classes5.dex */
public class SecT283Field {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final long[] f78035a = {878416384462358536L, 3513665537849438403L, -9076969306111048948L, 585610922974906400L, 34087042};

    public static void a(long[] jArr, long[] jArr2, long[] jArr3) {
        jArr3[0] = jArr[0] ^ jArr2[0];
        jArr3[1] = jArr[1] ^ jArr2[1];
        jArr3[2] = jArr[2] ^ jArr2[2];
        jArr3[3] = jArr[3] ^ jArr2[3];
        jArr3[4] = jArr[4] ^ jArr2[4];
        jArr3[5] = jArr[5] ^ jArr2[5];
        jArr3[6] = jArr[6] ^ jArr2[6];
        jArr3[7] = jArr[7] ^ jArr2[7];
        jArr3[8] = jArr2[8] ^ jArr[8];
    }

    public static void b(long[] jArr, long[] jArr2) {
        long j2 = jArr[0];
        long j3 = jArr[1];
        long j4 = jArr[2];
        long j5 = jArr[3];
        long j6 = jArr[4];
        jArr2[0] = j2 & 144115188075855871L;
        jArr2[1] = ((j2 >>> 57) ^ (j3 << 7)) & 144115188075855871L;
        jArr2[2] = ((j3 >>> 50) ^ (j4 << 14)) & 144115188075855871L;
        jArr2[3] = ((j4 >>> 43) ^ (j5 << 21)) & 144115188075855871L;
        jArr2[4] = (j5 >>> 36) ^ (j6 << 28);
    }

    public static void c(long[] jArr, long[] jArr2, long[] jArr3) {
        long[] jArr4 = new long[5];
        long[] jArr5 = new long[5];
        b(jArr, jArr4);
        b(jArr2, jArr5);
        long[] jArr6 = new long[26];
        d(jArr6, 0, jArr4[0], jArr5[0]);
        d(jArr6, 2, jArr4[1], jArr5[1]);
        d(jArr6, 4, jArr4[2], jArr5[2]);
        d(jArr6, 6, jArr4[3], jArr5[3]);
        d(jArr6, 8, jArr4[4], jArr5[4]);
        long j2 = jArr4[0];
        long j3 = j2 ^ jArr4[1];
        long j4 = jArr5[0];
        long j5 = j4 ^ jArr5[1];
        long j6 = jArr4[2];
        long j7 = j2 ^ j6;
        long j8 = jArr5[2];
        long j9 = j4 ^ j8;
        long j10 = jArr4[4];
        long j11 = j6 ^ j10;
        long j12 = jArr5[4];
        long j13 = j8 ^ j12;
        long j14 = jArr4[3];
        long j15 = j14 ^ j10;
        long j16 = jArr5[3];
        long j17 = j16 ^ j12;
        d(jArr6, 18, j7 ^ j14, j9 ^ j16);
        d(jArr6, 20, j11 ^ jArr4[1], j13 ^ jArr5[1]);
        long j18 = j3 ^ j15;
        long j19 = j5 ^ j17;
        long j20 = j18 ^ jArr4[2];
        long j21 = jArr5[2] ^ j19;
        d(jArr6, 22, j18, j19);
        d(jArr6, 24, j20, j21);
        d(jArr6, 10, j3, j5);
        d(jArr6, 12, j7, j9);
        d(jArr6, 14, j11, j13);
        d(jArr6, 16, j15, j17);
        long j22 = jArr6[0];
        jArr3[0] = j22;
        long j23 = jArr6[9];
        jArr3[9] = j23;
        long j24 = jArr6[0];
        long j25 = jArr6[1] ^ j24;
        long j26 = j25 ^ jArr6[2];
        long j27 = j26 ^ jArr6[10];
        jArr3[1] = j27;
        long j28 = jArr6[3] ^ jArr6[4];
        long j29 = j26 ^ (j28 ^ (jArr6[11] ^ jArr6[12]));
        jArr3[2] = j29;
        long j30 = j25 ^ j28;
        long j31 = jArr6[5] ^ jArr6[6];
        long j32 = jArr6[8];
        long j33 = (j30 ^ j31) ^ j32;
        long j34 = jArr6[13] ^ jArr6[14];
        long j35 = jArr6[18];
        long j36 = jArr6[22];
        long j37 = jArr6[24];
        long j38 = (j33 ^ j34) ^ ((j35 ^ j36) ^ j37);
        jArr3[3] = j38;
        long j39 = jArr6[7] ^ j32;
        long j40 = jArr6[9];
        long j41 = j39 ^ j40;
        long j42 = j41 ^ jArr6[17];
        jArr3[8] = j42;
        long j43 = (j41 ^ j31) ^ (jArr6[15] ^ jArr6[16]);
        jArr3[7] = j43;
        long j44 = jArr6[19] ^ jArr6[20];
        long j45 = jArr6[25];
        long j46 = jArr6[23];
        long j47 = j44 ^ (j45 ^ j37);
        long j48 = (j47 ^ (j35 ^ j46)) ^ (j43 ^ j27);
        jArr3[4] = j48;
        long j49 = jArr6[21];
        long j50 = (j47 ^ (j29 ^ j42)) ^ (j49 ^ j36);
        jArr3[5] = j50;
        long j51 = (((((j24 ^ j33) ^ j40) ^ j34) ^ j49) ^ j46) ^ j45;
        jArr3[6] = j51;
        jArr3[0] = j22 ^ (j27 << 57);
        jArr3[1] = (j27 >>> 7) ^ (j29 << 50);
        jArr3[2] = (j29 >>> 14) ^ (j38 << 43);
        jArr3[3] = (j38 >>> 21) ^ (j48 << 36);
        jArr3[4] = (j48 >>> 28) ^ (j50 << 29);
        jArr3[5] = (j50 >>> 35) ^ (j51 << 22);
        jArr3[6] = (j51 >>> 42) ^ (j43 << 15);
        jArr3[7] = (j43 >>> 49) ^ (j42 << 8);
        jArr3[8] = (j42 >>> 56) ^ (j23 << 1);
        jArr3[9] = j23 >>> 63;
    }

    public static void d(long[] jArr, int i2, long j2, long j3) {
        long j4 = j3 << 1;
        long j5 = j4 ^ j3;
        long j6 = j3 << 2;
        long j7 = j5 << 1;
        long[] jArr2 = {0, j3, j4, j5, j6, j6 ^ j3, j7, j7 ^ j3};
        long j8 = jArr2[((int) j2) & 7];
        long j9 = 0;
        int i3 = 48;
        do {
            int i4 = (int) (j2 >>> i3);
            long j10 = (jArr2[i4 & 7] ^ (jArr2[(i4 >>> 3) & 7] << 3)) ^ (jArr2[(i4 >>> 6) & 7] << 6);
            j8 ^= j10 << i3;
            j9 ^= j10 >>> (-i3);
            i3 -= 9;
        } while (i3 > 0);
        jArr[i2] = 144115188075855871L & j8;
        jArr[i2 + 1] = (((((j2 & 72198606942111744L) & ((j3 << 7) >> 63)) >>> 8) ^ j9) << 7) ^ (j8 >>> 57);
    }

    public static void e(long[] jArr, long[] jArr2) {
        for (int i2 = 0; i2 < 4; i2++) {
            Interleave.c(jArr[i2], jArr2, i2 << 1);
        }
        jArr2[8] = Interleave.b((int) jArr[4]);
    }

    public static void f(long[] jArr, long[] jArr2, long[] jArr3) {
        long[] jArr4 = new long[10];
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
        long j9 = jArr[7];
        long j10 = jArr[8];
        long j11 = j6 ^ ((((j10 >>> 27) ^ (j10 >>> 22)) ^ (j10 >>> 20)) ^ (j10 >>> 15));
        long j12 = j2 ^ ((((j7 << 37) ^ (j7 << 42)) ^ (j7 << 44)) ^ (j7 << 49));
        long j13 = (j3 ^ ((((j8 << 37) ^ (j8 << 42)) ^ (j8 << 44)) ^ (j8 << 49))) ^ ((((j7 >>> 27) ^ (j7 >>> 22)) ^ (j7 >>> 20)) ^ (j7 >>> 15));
        long j14 = j11 >>> 27;
        jArr2[0] = (((j12 ^ j14) ^ (j14 << 5)) ^ (j14 << 7)) ^ (j14 << 12);
        jArr2[1] = j13;
        jArr2[2] = (j4 ^ ((((j9 << 37) ^ (j9 << 42)) ^ (j9 << 44)) ^ (j9 << 49))) ^ ((((j8 >>> 27) ^ (j8 >>> 22)) ^ (j8 >>> 20)) ^ (j8 >>> 15));
        jArr2[3] = (j5 ^ ((((j10 << 37) ^ (j10 << 42)) ^ (j10 << 44)) ^ (j10 << 49))) ^ ((((j9 >>> 27) ^ (j9 >>> 22)) ^ (j9 >>> 20)) ^ (j9 >>> 15));
        jArr2[4] = 134217727 & j11;
    }

    public static void h(long[] jArr, long[] jArr2) {
        long[] jArr3 = new long[9];
        e(jArr, jArr3);
        g(jArr3, jArr2);
    }

    public static void i(long[] jArr, int i2, long[] jArr2) {
        long[] jArr3 = new long[9];
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
