package org.bouncycastle.math.raw;

/* JADX INFO: loaded from: classes5.dex */
public abstract class Mont256 {
    private static final long M = 4294967295L;

    public static int inverse32(int i2) {
        int i3 = (2 - (i2 * i2)) * i2;
        int i4 = (2 - (i2 * i3)) * i3;
        int i5 = (2 - (i2 * i4)) * i4;
        return (2 - (i2 * i5)) * i5;
    }

    public static void multAdd(int[] iArr, int[] iArr2, int[] iArr3, int[] iArr4, int i2) {
        char c2 = 0;
        long j2 = 4294967295L;
        long j3 = ((long) iArr2[0]) & 4294967295L;
        int i3 = 0;
        int i4 = 0;
        while (i3 < 8) {
            long j4 = ((long) iArr3[c2]) & j2;
            long j5 = ((long) iArr[i3]) & j2;
            long j6 = j5 * j3;
            long j7 = (j6 & j2) + j4;
            char c3 = c2;
            long j8 = j2;
            long j9 = ((long) (((int) j7) * i2)) & j8;
            long j10 = (((long) iArr4[c3]) & j8) * j9;
            char c4 = ' ';
            long j11 = ((j7 + (j10 & j8)) >>> 32) + (j6 >>> 32) + (j10 >>> 32);
            int i5 = 1;
            while (i5 < 8) {
                long j12 = (((long) iArr2[i5]) & j8) * j5;
                char c5 = c4;
                long j13 = (((long) iArr4[i5]) & j8) * j9;
                long j14 = (j12 & j8) + (j13 & j8) + (((long) iArr3[i5]) & j8) + j11;
                iArr3[i5 - 1] = (int) j14;
                j11 = (j14 >>> c5) + (j12 >>> c5) + (j13 >>> c5);
                i5++;
                c4 = c5;
                j3 = j3;
                j9 = j9;
            }
            char c6 = c4;
            long j15 = j11 + (((long) i4) & j8);
            iArr3[7] = (int) j15;
            i4 = (int) (j15 >>> c6);
            i3++;
            c2 = c3;
            j2 = j8;
            j3 = j3;
        }
        if (i4 != 0 || Nat256.gte(iArr3, iArr4)) {
            Nat256.sub(iArr3, iArr4, iArr3);
        }
    }

    public static void multAddXF(int[] iArr, int[] iArr2, int[] iArr3, int[] iArr4) {
        char c2 = 0;
        long j2 = 4294967295L;
        long j3 = ((long) iArr2[0]) & 4294967295L;
        int i2 = 0;
        int i3 = 0;
        while (true) {
            if (i2 >= 8) {
                break;
            }
            long j4 = ((long) iArr[i2]) & j2;
            long j5 = (j4 * j3) + (((long) iArr3[c2]) & j2);
            long j6 = j5 & j2;
            long j7 = (j5 >>> 32) + j6;
            int i4 = 1;
            for (int i5 = 8; i4 < i5; i5 = 8) {
                long j8 = j2;
                long j9 = (((long) iArr2[i4]) & j8) * j4;
                int i6 = i4;
                long j10 = (((long) iArr4[i4]) & j8) * j6;
                long j11 = (j9 & j8) + (j10 & j8) + (((long) iArr3[i6]) & j8) + j7;
                iArr3[i6 - 1] = (int) j11;
                j7 = (j11 >>> 32) + (j9 >>> 32) + (j10 >>> 32);
                i4 = i6 + 1;
                j2 = j8;
                j3 = j3;
            }
            long j12 = j7 + (((long) i3) & j2);
            iArr3[7] = (int) j12;
            i3 = (int) (j12 >>> 32);
            i2++;
            j3 = j3;
            c2 = 0;
        }
        if (i3 != 0 || Nat256.gte(iArr3, iArr4)) {
            Nat256.sub(iArr3, iArr4, iArr3);
        }
    }

    public static void reduce(int[] iArr, int[] iArr2, int i2) {
        char c2 = 0;
        int i3 = 0;
        while (i3 < 8) {
            int i4 = iArr[c2];
            long j2 = ((long) (i4 * i2)) & 4294967295L;
            long j3 = (((((long) iArr2[c2]) & 4294967295L) * j2) + (((long) i4) & 4294967295L)) >>> 32;
            int i5 = 1;
            while (i5 < 8) {
                long j4 = ((((long) iArr2[i5]) & 4294967295L) * j2) + (((long) iArr[i5]) & 4294967295L) + j3;
                iArr[i5 - 1] = (int) j4;
                j3 = j4 >>> 32;
                i5++;
                i3 = i3;
            }
            iArr[7] = (int) j3;
            i3++;
            c2 = 0;
        }
        if (Nat256.gte(iArr, iArr2)) {
            Nat256.sub(iArr, iArr2, iArr);
        }
    }

    public static void reduceXF(int[] iArr, int[] iArr2) {
        for (int i2 = 0; i2 < 8; i2++) {
            long j2 = ((long) iArr[0]) & 4294967295L;
            long j3 = j2;
            for (int i3 = 1; i3 < 8; i3++) {
                long j4 = ((((long) iArr2[i3]) & 4294967295L) * j2) + (((long) iArr[i3]) & 4294967295L) + j3;
                iArr[i3 - 1] = (int) j4;
                j3 = j4 >>> 32;
            }
            iArr[7] = (int) j3;
        }
        if (Nat256.gte(iArr, iArr2)) {
            Nat256.sub(iArr, iArr2, iArr);
        }
    }
}
