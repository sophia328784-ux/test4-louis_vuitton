package org.spongycastle.math.ec.custom.sec;

import org.spongycastle.math.raw.Interleave;

/* JADX INFO: loaded from: classes5.dex */
public class SecT571Field {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final long[] f78040a = {3161836309350906777L, -7642453882179322845L, -3821226941089661423L, 7312758566309945096L, -556661012383879292L, 8945041530681231562L, -4750851271514160027L, 6847946401097695794L, 541669439031730457L};

    public static void a(long[] jArr, long[] jArr2, long[] jArr3) {
        for (int i2 = 0; i2 < 9; i2++) {
            jArr3[i2] = jArr[i2] ^ jArr2[i2];
        }
    }

    public static void b(long[] jArr, int i2, long[] jArr2, int i3, long[] jArr3, int i4) {
        for (int i5 = 0; i5 < 9; i5++) {
            int i6 = i4 + i5;
            jArr3[i6] = jArr3[i6] ^ (jArr[i2 + i5] ^ jArr2[i3 + i5]);
        }
    }

    public static void c(long[] jArr, long[] jArr2, long[] jArr3) {
        int i2 = 56;
        while (true) {
            long j2 = 0;
            int i3 = 0;
            if (i2 < 0) {
                break;
            }
            for (int i4 = 1; i4 < 9; i4 += 2) {
                int i5 = (int) (jArr[i4] >>> i2);
                b(jArr2, (i5 & 15) * 9, jArr2, (((i5 >>> 4) & 15) + 16) * 9, jArr3, i4 - 1);
            }
            while (i3 < 16) {
                long j3 = jArr3[i3];
                jArr3[i3] = (j2 >>> (-8)) | (j3 << 8);
                i3++;
                j2 = j3;
            }
            i2 -= 8;
        }
        for (int i6 = 56; i6 >= 0; i6 -= 8) {
            int i7 = 0;
            while (i7 < 9) {
                int i8 = (int) (jArr[i7] >>> i6);
                int i9 = i7;
                b(jArr2, (i8 & 15) * 9, jArr2, (((i8 >>> 4) & 15) + 16) * 9, jArr3, i9);
                i7 = i9 + 2;
            }
            if (i6 > 0) {
                long j4 = 0;
                int i10 = 0;
                while (i10 < 18) {
                    long j5 = jArr3[i10];
                    jArr3[i10] = (j4 >>> (-8)) | (j5 << 8);
                    i10++;
                    j4 = j5;
                }
            }
        }
    }

    public static void d(long[] jArr, long[] jArr2) {
        for (int i2 = 0; i2 < 9; i2++) {
            Interleave.c(jArr[i2], jArr2, i2 << 1);
        }
    }

    public static void e(long[] jArr, long[] jArr2, long[] jArr3) {
        long[] jArr4 = new long[18];
        c(jArr, h(jArr2), jArr4);
        i(jArr4, jArr3);
    }

    public static void f(long[] jArr, long[] jArr2, long[] jArr3) {
        long[] jArr4 = new long[18];
        c(jArr, h(jArr2), jArr4);
        for (int i2 = 0; i2 < 18; i2++) {
            jArr3[i2] = jArr3[i2] ^ jArr4[i2];
        }
    }

    public static void g(long[] jArr, long[] jArr2, long[] jArr3) {
        long[] jArr4 = new long[18];
        c(jArr, jArr2, jArr4);
        i(jArr4, jArr3);
    }

    public static long[] h(long[] jArr) {
        long j2;
        long[] jArr2 = new long[288];
        int i2 = 0;
        System.arraycopy(jArr, 0, jArr2, 9, 9);
        int i3 = 7;
        int i4 = 0;
        while (true) {
            j2 = 0;
            if (i3 <= 0) {
                break;
            }
            int i5 = i4 + 18;
            int i6 = i5 >>> 1;
            int i7 = 0;
            while (i7 < 9) {
                long j3 = jArr2[i6 + i7];
                jArr2[i5 + i7] = (j2 >>> 63) | (j3 << 1);
                i7++;
                j2 = j3;
            }
            j(jArr2, i5);
            int i8 = i4 + 27;
            for (int i9 = 0; i9 < 9; i9++) {
                jArr2[i8 + i9] = jArr2[9 + i9] ^ jArr2[i5 + i9];
            }
            i3--;
            i4 = i5;
        }
        while (i2 < 144) {
            long j4 = jArr2[i2];
            jArr2[144 + i2] = (j2 >>> (-4)) | (j4 << 4);
            i2++;
            j2 = j4;
        }
        return jArr2;
    }

    public static void i(long[] jArr, long[] jArr2) {
        long j2 = jArr[9];
        long j3 = jArr[17];
        long j4 = (((j2 ^ (j3 >>> 59)) ^ (j3 >>> 57)) ^ (j3 >>> 54)) ^ (j3 >>> 49);
        long j5 = (j3 << 15) ^ (((jArr[8] ^ (j3 << 5)) ^ (j3 << 7)) ^ (j3 << 10));
        for (int i2 = 16; i2 >= 10; i2--) {
            long j6 = jArr[i2];
            jArr2[i2 - 8] = (((j5 ^ (j6 >>> 59)) ^ (j6 >>> 57)) ^ (j6 >>> 54)) ^ (j6 >>> 49);
            j5 = (((jArr[i2 - 9] ^ (j6 << 5)) ^ (j6 << 7)) ^ (j6 << 10)) ^ (j6 << 15);
        }
        jArr2[1] = (((j5 ^ (j4 >>> 59)) ^ (j4 >>> 57)) ^ (j4 >>> 54)) ^ (j4 >>> 49);
        long j7 = (j4 << 15) ^ (((jArr[0] ^ (j4 << 5)) ^ (j4 << 7)) ^ (j4 << 10));
        long j8 = jArr2[8];
        long j9 = j8 >>> 59;
        jArr2[0] = (((j7 ^ j9) ^ (j9 << 2)) ^ (j9 << 5)) ^ (j9 << 10);
        jArr2[8] = 576460752303423487L & j8;
    }

    public static void j(long[] jArr, int i2) {
        int i3 = i2 + 8;
        long j2 = jArr[i3];
        long j3 = j2 >>> 59;
        jArr[i2] = ((j3 << 10) ^ (((j3 << 2) ^ j3) ^ (j3 << 5))) ^ jArr[i2];
        jArr[i3] = j2 & 576460752303423487L;
    }

    public static void k(long[] jArr, long[] jArr2) {
        long[] jArr3 = new long[18];
        d(jArr, jArr3);
        i(jArr3, jArr2);
    }

    public static void l(long[] jArr, int i2, long[] jArr2) {
        long[] jArr3 = new long[18];
        d(jArr, jArr3);
        i(jArr3, jArr2);
        while (true) {
            i2--;
            if (i2 <= 0) {
                return;
            }
            d(jArr2, jArr3);
            i(jArr3, jArr2);
        }
    }
}
