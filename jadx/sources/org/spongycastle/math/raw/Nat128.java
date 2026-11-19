package org.spongycastle.math.raw;

import defpackage.z81;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes5.dex */
public abstract class Nat128 {
    public static int a(int[] iArr, int[] iArr2, int[] iArr3) {
        long j2 = (((long) iArr[0]) & BodyPartID.bodyIdMax) + (((long) iArr2[0]) & BodyPartID.bodyIdMax) + (((long) iArr3[0]) & BodyPartID.bodyIdMax);
        iArr3[0] = (int) j2;
        long j3 = (((long) iArr[1]) & BodyPartID.bodyIdMax) + (((long) iArr2[1]) & BodyPartID.bodyIdMax) + (((long) iArr3[1]) & BodyPartID.bodyIdMax) + (j2 >>> 32);
        iArr3[1] = (int) j3;
        long j4 = (((long) iArr[2]) & BodyPartID.bodyIdMax) + (((long) iArr2[2]) & BodyPartID.bodyIdMax) + (((long) iArr3[2]) & BodyPartID.bodyIdMax) + (j3 >>> 32);
        iArr3[2] = (int) j4;
        long j5 = (((long) iArr[3]) & BodyPartID.bodyIdMax) + (((long) iArr2[3]) & BodyPartID.bodyIdMax) + (((long) iArr3[3]) & BodyPartID.bodyIdMax) + (j4 >>> 32);
        iArr3[3] = (int) j5;
        return (int) (j5 >>> 32);
    }

    public static boolean b(int[] iArr, int[] iArr2) {
        for (int i2 = 3; i2 >= 0; i2--) {
            int i3 = iArr[i2] ^ Integer.MIN_VALUE;
            int i4 = Integer.MIN_VALUE ^ iArr2[i2];
            if (i3 < i4) {
                return false;
            }
            if (i3 > i4) {
                return true;
            }
        }
        return true;
    }

    public static boolean c(int[] iArr) {
        if (iArr[0] != 1) {
            return false;
        }
        for (int i2 = 1; i2 < 4; i2++) {
            if (iArr[i2] != 0) {
                return false;
            }
        }
        return true;
    }

    public static boolean d(int[] iArr) {
        for (int i2 = 0; i2 < 4; i2++) {
            if (iArr[i2] != 0) {
                return false;
            }
        }
        return true;
    }

    public static void e(int[] iArr, int[] iArr2, int[] iArr3) {
        long j2 = iArr2[0];
        long j3 = BodyPartID.bodyIdMax;
        long j4 = j2 & BodyPartID.bodyIdMax;
        int i2 = 1;
        long j5 = ((long) iArr2[1]) & BodyPartID.bodyIdMax;
        long j6 = ((long) iArr2[2]) & BodyPartID.bodyIdMax;
        long j7 = ((long) iArr2[3]) & BodyPartID.bodyIdMax;
        long j8 = ((long) iArr[0]) & BodyPartID.bodyIdMax;
        long j9 = j8 * j4;
        iArr3[0] = (int) j9;
        long j10 = (j8 * j5) + (j9 >>> 32);
        iArr3[1] = (int) j10;
        long j11 = (j8 * j6) + (j10 >>> 32);
        iArr3[2] = (int) j11;
        long j12 = (j8 * j7) + (j11 >>> 32);
        iArr3[3] = (int) j12;
        iArr3[4] = (int) (j12 >>> 32);
        for (int i3 = 4; i2 < i3; i3 = 4) {
            long j13 = ((long) iArr[i2]) & j3;
            long j14 = (j13 * j4) + (((long) iArr3[i2]) & j3);
            iArr3[i2] = (int) j14;
            int i4 = i2 + 1;
            long j15 = j3;
            long j16 = (j13 * j5) + (((long) iArr3[i4]) & j15) + (j14 >>> 32);
            iArr3[i4] = (int) j16;
            int i5 = i2 + 2;
            long j17 = (j13 * j6) + (((long) iArr3[i5]) & j15) + (j16 >>> 32);
            iArr3[i5] = (int) j17;
            long j18 = j17 >>> 32;
            int i6 = i2 + 3;
            long j19 = (j13 * j7) + (((long) iArr3[i6]) & j15) + j18;
            iArr3[i6] = (int) j19;
            iArr3[i2 + 4] = (int) (j19 >>> 32);
            i2 = i4;
            j3 = j15;
        }
    }

    public static void f(int[] iArr, int[] iArr2) {
        long j2 = ((long) iArr[0]) & BodyPartID.bodyIdMax;
        int i2 = 8;
        int i3 = 0;
        int i4 = 3;
        while (true) {
            int i5 = i4 - 1;
            long j3 = ((long) iArr[i4]) & BodyPartID.bodyIdMax;
            long j4 = j3 * j3;
            iArr2[i2 - 1] = (i3 << 31) | ((int) (j4 >>> 33));
            i2 -= 2;
            iArr2[i2] = (int) (j4 >>> 1);
            i3 = (int) j4;
            if (i5 <= 0) {
                long j5 = j2 * j2;
                long j6 = (j5 >>> 33) | (((long) (i3 << 31)) & BodyPartID.bodyIdMax);
                iArr2[0] = (int) j5;
                int i6 = ((int) (j5 >>> 32)) & 1;
                long j7 = ((long) iArr[1]) & BodyPartID.bodyIdMax;
                long j8 = ((long) iArr2[2]) & BodyPartID.bodyIdMax;
                long j9 = (j7 * j2) + j6;
                int i7 = (int) j9;
                iArr2[1] = i6 | (i7 << 1);
                int i8 = i7 >>> 31;
                long j10 = ((long) iArr[2]) & BodyPartID.bodyIdMax;
                long j11 = ((long) iArr2[3]) & BodyPartID.bodyIdMax;
                long j12 = ((long) iArr2[4]) & BodyPartID.bodyIdMax;
                long j13 = (j10 * j2) + j8 + (j9 >>> 32);
                int i9 = (int) j13;
                iArr2[2] = i8 | (i9 << 1);
                long jC = z81.c(j10, j7, j13 >>> 32, j11);
                long j14 = j12 + (jC >>> 32);
                long j15 = jC & BodyPartID.bodyIdMax;
                long j16 = ((long) iArr[3]) & BodyPartID.bodyIdMax;
                long j17 = (((long) iArr2[5]) & BodyPartID.bodyIdMax) + (j14 >>> 32);
                long j18 = j14 & BodyPartID.bodyIdMax;
                long j19 = (((long) iArr2[6]) & BodyPartID.bodyIdMax) + (j17 >>> 32);
                long j20 = j17 & BodyPartID.bodyIdMax;
                long j21 = (j2 * j16) + j15;
                int i10 = (int) j21;
                iArr2[3] = (i9 >>> 31) | (i10 << 1);
                long jC2 = z81.c(j16, j7, j21 >>> 32, j18);
                long jC3 = z81.c(j16, j10, jC2 >>> 32, j20);
                long j22 = j19 + (jC3 >>> 32);
                long j23 = jC3 & BodyPartID.bodyIdMax;
                int i11 = (int) jC2;
                iArr2[4] = (i10 >>> 31) | (i11 << 1);
                int i12 = i11 >>> 31;
                int i13 = (int) j23;
                iArr2[5] = i12 | (i13 << 1);
                int i14 = i13 >>> 31;
                int i15 = (int) j22;
                iArr2[6] = i14 | (i15 << 1);
                iArr2[7] = (i15 >>> 31) | ((iArr2[7] + ((int) (j22 >>> 32))) << 1);
                return;
            }
            i4 = i5;
        }
    }

    public static int g(int[] iArr, int[] iArr2, int[] iArr3) {
        long j2 = (((long) iArr[0]) & BodyPartID.bodyIdMax) - (((long) iArr2[0]) & BodyPartID.bodyIdMax);
        iArr3[0] = (int) j2;
        long j3 = ((((long) iArr[1]) & BodyPartID.bodyIdMax) - (((long) iArr2[1]) & BodyPartID.bodyIdMax)) + (j2 >> 32);
        iArr3[1] = (int) j3;
        long j4 = ((((long) iArr[2]) & BodyPartID.bodyIdMax) - (((long) iArr2[2]) & BodyPartID.bodyIdMax)) + (j3 >> 32);
        iArr3[2] = (int) j4;
        long j5 = ((((long) iArr[3]) & BodyPartID.bodyIdMax) - (((long) iArr2[3]) & BodyPartID.bodyIdMax)) + (j4 >> 32);
        iArr3[3] = (int) j5;
        return (int) (j5 >> 32);
    }
}
