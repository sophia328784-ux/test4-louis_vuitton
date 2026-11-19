package org.spongycastle.math.ec.custom.sec;

import org.bouncycastle.asn1.cmc.BodyPartID;
import org.spongycastle.math.raw.Nat256;

/* JADX INFO: loaded from: classes5.dex */
public class SecP256R1Field {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final int[] f78008a = {-1, -1, -1, 0, 0, 0, 1, -1};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final int[] f78009b = {1, 0, 0, -2, -1, -1, -2, 1, -2, 1, -2, 1, 1, -2, 2, -2};

    public static void a(int[] iArr) {
        long j2 = (((long) iArr[0]) & BodyPartID.bodyIdMax) + 1;
        iArr[0] = (int) j2;
        long j3 = j2 >> 32;
        if (j3 != 0) {
            long j4 = j3 + (((long) iArr[1]) & BodyPartID.bodyIdMax);
            iArr[1] = (int) j4;
            long j5 = (j4 >> 32) + (((long) iArr[2]) & BodyPartID.bodyIdMax);
            iArr[2] = (int) j5;
            j3 = j5 >> 32;
        }
        long j6 = ((((long) iArr[3]) & BodyPartID.bodyIdMax) - 1) + j3;
        iArr[3] = (int) j6;
        long j7 = j6 >> 32;
        if (j7 != 0) {
            long j8 = j7 + (((long) iArr[4]) & BodyPartID.bodyIdMax);
            iArr[4] = (int) j8;
            long j9 = (j8 >> 32) + (((long) iArr[5]) & BodyPartID.bodyIdMax);
            iArr[5] = (int) j9;
            j7 = j9 >> 32;
        }
        long j10 = ((((long) iArr[6]) & BodyPartID.bodyIdMax) - 1) + j7;
        iArr[6] = (int) j10;
        iArr[7] = (int) ((BodyPartID.bodyIdMax & ((long) iArr[7])) + 1 + (j10 >> 32));
    }

    public static void b(int[] iArr, int[] iArr2, int[] iArr3) {
        int[] iArr4 = new int[16];
        Nat256.p(iArr, iArr2, iArr4);
        c(iArr4, iArr3);
    }

    public static void c(int[] iArr, int[] iArr2) {
        long j2 = ((long) iArr[8]) & BodyPartID.bodyIdMax;
        long j3 = ((long) iArr[9]) & BodyPartID.bodyIdMax;
        long j4 = ((long) iArr[10]) & BodyPartID.bodyIdMax;
        long j5 = ((long) iArr[11]) & BodyPartID.bodyIdMax;
        long j6 = ((long) iArr[12]) & BodyPartID.bodyIdMax;
        long j7 = ((long) iArr[13]) & BodyPartID.bodyIdMax;
        long j8 = ((long) iArr[14]) & BodyPartID.bodyIdMax;
        long j9 = ((long) iArr[15]) & BodyPartID.bodyIdMax;
        long j10 = j2 - 6;
        long j11 = j10 + j3;
        long j12 = j3 + j4;
        long j13 = (j4 + j5) - j9;
        long j14 = j5 + j6;
        long j15 = j6 + j7;
        long j16 = j7 + j8;
        long j17 = j8 + j9;
        long j18 = j16 - j11;
        long j19 = ((((long) iArr[0]) & BodyPartID.bodyIdMax) - j14) - j18;
        iArr2[0] = (int) j19;
        long j20 = ((((((long) iArr[1]) & BodyPartID.bodyIdMax) + j12) - j15) - j17) + (j19 >> 32);
        iArr2[1] = (int) j20;
        long j21 = (((((long) iArr[2]) & BodyPartID.bodyIdMax) + j13) - j16) + (j20 >> 32);
        iArr2[2] = (int) j21;
        long j22 = ((((((long) iArr[3]) & BodyPartID.bodyIdMax) + (j14 << 1)) + j18) - j17) + (j21 >> 32);
        iArr2[3] = (int) j22;
        long j23 = ((((((long) iArr[4]) & BodyPartID.bodyIdMax) + (j15 << 1)) + j8) - j12) + (j22 >> 32);
        iArr2[4] = (int) j23;
        long j24 = (((((long) iArr[5]) & BodyPartID.bodyIdMax) + (j16 << 1)) - j13) + (j23 >> 32);
        iArr2[5] = (int) j24;
        long j25 = (((long) iArr[6]) & BodyPartID.bodyIdMax) + (j17 << 1) + j18 + (j24 >> 32);
        iArr2[6] = (int) j25;
        long j26 = (((((((long) iArr[7]) & BodyPartID.bodyIdMax) + (j9 << 1)) + j10) - j13) - j15) + (j25 >> 32);
        iArr2[7] = (int) j26;
        d((int) ((j26 >> 32) + 6), iArr2);
    }

    public static void d(int i2, int[] iArr) {
        long j2;
        if (i2 != 0) {
            long j3 = ((long) i2) & BodyPartID.bodyIdMax;
            long j4 = (((long) iArr[0]) & BodyPartID.bodyIdMax) + j3;
            iArr[0] = (int) j4;
            long j5 = j4 >> 32;
            if (j5 != 0) {
                long j6 = j5 + (((long) iArr[1]) & BodyPartID.bodyIdMax);
                iArr[1] = (int) j6;
                long j7 = (j6 >> 32) + (((long) iArr[2]) & BodyPartID.bodyIdMax);
                iArr[2] = (int) j7;
                j5 = j7 >> 32;
            }
            long j8 = ((((long) iArr[3]) & BodyPartID.bodyIdMax) - j3) + j5;
            iArr[3] = (int) j8;
            long j9 = j8 >> 32;
            if (j9 != 0) {
                long j10 = j9 + (((long) iArr[4]) & BodyPartID.bodyIdMax);
                iArr[4] = (int) j10;
                long j11 = (j10 >> 32) + (((long) iArr[5]) & BodyPartID.bodyIdMax);
                iArr[5] = (int) j11;
                j9 = j11 >> 32;
            }
            long j12 = ((((long) iArr[6]) & BodyPartID.bodyIdMax) - j3) + j9;
            iArr[6] = (int) j12;
            long j13 = (BodyPartID.bodyIdMax & ((long) iArr[7])) + j3 + (j12 >> 32);
            iArr[7] = (int) j13;
            j2 = j13 >> 32;
        } else {
            j2 = 0;
        }
        if (j2 != 0 || (iArr[7] == -1 && Nat256.k(iArr, f78008a))) {
            a(iArr);
        }
    }

    public static void e(int[] iArr, int[] iArr2) {
        int[] iArr3 = new int[16];
        Nat256.r(iArr, iArr3);
        c(iArr3, iArr2);
    }

    public static void f(int[] iArr, int i2, int[] iArr2) {
        int[] iArr3 = new int[16];
        Nat256.r(iArr, iArr3);
        c(iArr3, iArr2);
        while (true) {
            i2--;
            if (i2 <= 0) {
                return;
            }
            Nat256.r(iArr2, iArr3);
            c(iArr3, iArr2);
        }
    }

    public static void g(int[] iArr, int[] iArr2, int[] iArr3) {
        if (Nat256.s(iArr, iArr2, iArr3) != 0) {
            long j2 = (((long) iArr3[0]) & BodyPartID.bodyIdMax) - 1;
            iArr3[0] = (int) j2;
            long j3 = j2 >> 32;
            if (j3 != 0) {
                long j4 = j3 + (((long) iArr3[1]) & BodyPartID.bodyIdMax);
                iArr3[1] = (int) j4;
                long j5 = (j4 >> 32) + (((long) iArr3[2]) & BodyPartID.bodyIdMax);
                iArr3[2] = (int) j5;
                j3 = j5 >> 32;
            }
            long j6 = (((long) iArr3[3]) & BodyPartID.bodyIdMax) + 1 + j3;
            iArr3[3] = (int) j6;
            long j7 = j6 >> 32;
            if (j7 != 0) {
                long j8 = j7 + (((long) iArr3[4]) & BodyPartID.bodyIdMax);
                iArr3[4] = (int) j8;
                long j9 = (j8 >> 32) + (((long) iArr3[5]) & BodyPartID.bodyIdMax);
                iArr3[5] = (int) j9;
                j7 = j9 >> 32;
            }
            long j10 = (((long) iArr3[6]) & BodyPartID.bodyIdMax) + 1 + j7;
            iArr3[6] = (int) j10;
            iArr3[7] = (int) (((((long) iArr3[7]) & BodyPartID.bodyIdMax) - 1) + (j10 >> 32));
        }
    }
}
