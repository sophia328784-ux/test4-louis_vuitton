package org.spongycastle.math.ec.custom.sec;

import org.bouncycastle.asn1.cmc.BodyPartID;
import org.spongycastle.math.raw.Interleave;

/* JADX INFO: loaded from: classes5.dex */
public class SecT239Field {
    public static void a(long[] jArr, long[] jArr2, long[] jArr3) {
        jArr3[0] = jArr[0] ^ jArr2[0];
        jArr3[1] = jArr[1] ^ jArr2[1];
        jArr3[2] = jArr[2] ^ jArr2[2];
        jArr3[3] = jArr[3] ^ jArr2[3];
        jArr3[4] = jArr[4] ^ jArr2[4];
        jArr3[5] = jArr[5] ^ jArr2[5];
        jArr3[6] = jArr[6] ^ jArr2[6];
        jArr3[7] = jArr2[7] ^ jArr[7];
    }

    public static void b(long[] jArr, long[] jArr2) {
        long j2 = jArr[0];
        long j3 = jArr[1];
        long j4 = jArr[2];
        long j5 = jArr[3];
        jArr2[0] = j2 & 1152921504606846975L;
        jArr2[1] = ((j2 >>> 60) ^ (j3 << 4)) & 1152921504606846975L;
        jArr2[2] = ((j3 >>> 56) ^ (j4 << 8)) & 1152921504606846975L;
        jArr2[3] = (j4 >>> 52) ^ (j5 << 12);
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
        jArr3[0] = j13 ^ (j14 << 60);
        jArr3[1] = (j14 >>> 4) ^ (j9 << 56);
        jArr3[2] = (j9 >>> 8) ^ (j10 << 52);
        jArr3[3] = (j10 >>> 12) ^ (j11 << 48);
        jArr3[4] = (j11 >>> 16) ^ (j12 << 44);
        jArr3[5] = (j12 >>> 20) ^ (j15 << 40);
        jArr3[6] = (j15 >>> 24) ^ (j16 << 36);
        jArr3[7] = j16 >>> 28;
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
        int i4 = 54;
        do {
            int i5 = (int) (j2 >>> i4);
            long j10 = jArr2[i5 & 7] ^ (jArr2[(i5 >>> 3) & 7] << 3);
            j8 ^= j10 << i4;
            j9 ^= j10 >>> (-i4);
            i4 -= 6;
        } while (i4 > 0);
        jArr[i2] = jArr[i2] ^ (1152921504606846975L & j8);
        int i6 = i2 + 1;
        jArr[i6] = ((((((j2 & 585610922974906400L) & ((j3 << 4) >> 63)) >>> 5) ^ j9) << 4) ^ (j8 >>> 60)) ^ jArr[i6];
    }

    public static void e(long[] jArr, long[] jArr2) {
        Interleave.c(jArr[0], jArr2, 0);
        Interleave.c(jArr[1], jArr2, 2);
        Interleave.c(jArr[2], jArr2, 4);
        long j2 = jArr[3];
        jArr2[6] = Interleave.b((int) j2);
        jArr2[7] = ((long) Interleave.a((int) (j2 >>> 32))) & BodyPartID.bodyIdMax;
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
        long j9 = jArr[7];
        long j10 = j8 ^ (j9 >>> 17);
        long j11 = (j7 ^ (j9 << 47)) ^ (j10 >>> 17);
        long j12 = ((j6 ^ (j9 >>> 47)) ^ (j10 << 47)) ^ (j11 >>> 17);
        long j13 = j2 ^ (j12 << 17);
        long j14 = (j3 ^ (j11 << 17)) ^ (j12 >>> 47);
        long j15 = ((j4 ^ (j10 << 17)) ^ (j11 >>> 47)) ^ (j12 << 47);
        long j16 = (((j5 ^ (j9 << 17)) ^ (j10 >>> 47)) ^ (j11 << 47)) ^ (j12 >>> 17);
        long j17 = j16 >>> 47;
        jArr2[0] = j13 ^ j17;
        jArr2[1] = j14;
        jArr2[2] = (j17 << 30) ^ j15;
        jArr2[3] = 140737488355327L & j16;
    }

    public static void h(long[] jArr, long[] jArr2) {
        long[] jArr3 = new long[8];
        e(jArr, jArr3);
        g(jArr3, jArr2);
    }

    public static void i(long[] jArr, int i2, long[] jArr2) {
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
