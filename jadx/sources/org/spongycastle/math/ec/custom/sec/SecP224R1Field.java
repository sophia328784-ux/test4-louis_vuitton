package org.spongycastle.math.ec.custom.sec;

import org.bouncycastle.asn1.cmc.BodyPartID;
import org.spongycastle.math.raw.Nat;
import org.spongycastle.math.raw.Nat224;

/* JADX INFO: loaded from: classes5.dex */
public class SecP224R1Field {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final int[] f77996a = {1, 0, 0, -1, -1, -1, -1};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final int[] f77997b = {1, 0, 0, -2, -1, -1, 0, 2, 0, 0, -2, -1, -1, -1};

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final int[] f77998c = {-1, -1, -1, 1, 0, 0, -1, -3, -1, -1, 1};

    public static void a(int[] iArr, int[] iArr2, int[] iArr3) {
        if (Nat224.a(iArr, iArr2, iArr3) != 0 || (iArr3[6] == -1 && Nat224.g(iArr3, f77996a))) {
            b(iArr3);
        }
    }

    public static void b(int[] iArr) {
        long j2 = (((long) iArr[0]) & BodyPartID.bodyIdMax) - 1;
        iArr[0] = (int) j2;
        long j3 = j2 >> 32;
        if (j3 != 0) {
            long j4 = j3 + (((long) iArr[1]) & BodyPartID.bodyIdMax);
            iArr[1] = (int) j4;
            long j5 = (j4 >> 32) + (((long) iArr[2]) & BodyPartID.bodyIdMax);
            iArr[2] = (int) j5;
            j3 = j5 >> 32;
        }
        long j6 = (BodyPartID.bodyIdMax & ((long) iArr[3])) + 1 + j3;
        iArr[3] = (int) j6;
        if ((j6 >> 32) != 0) {
            Nat.o(7, iArr, 4);
        }
    }

    public static void c(int[] iArr, int[] iArr2, int[] iArr3) {
        int[] iArr4 = new int[14];
        Nat224.j(iArr, iArr2, iArr4);
        d(iArr4, iArr3);
    }

    public static void d(int[] iArr, int[] iArr2) {
        long j2 = ((long) iArr[10]) & BodyPartID.bodyIdMax;
        long j3 = ((long) iArr[11]) & BodyPartID.bodyIdMax;
        long j4 = ((long) iArr[12]) & BodyPartID.bodyIdMax;
        long j5 = ((long) iArr[13]) & BodyPartID.bodyIdMax;
        long j6 = ((((long) iArr[7]) & BodyPartID.bodyIdMax) + j3) - 1;
        long j7 = (((long) iArr[8]) & BodyPartID.bodyIdMax) + j4;
        long j8 = (((long) iArr[9]) & BodyPartID.bodyIdMax) + j5;
        long j9 = (((long) iArr[0]) & BodyPartID.bodyIdMax) - j6;
        long j10 = j9 & BodyPartID.bodyIdMax;
        long j11 = ((((long) iArr[1]) & BodyPartID.bodyIdMax) - j7) + (j9 >> 32);
        int i2 = (int) j11;
        iArr2[1] = i2;
        long j12 = ((((long) iArr[2]) & BodyPartID.bodyIdMax) - j8) + (j11 >> 32);
        int i3 = (int) j12;
        iArr2[2] = i3;
        long j13 = (((((long) iArr[3]) & BodyPartID.bodyIdMax) + j6) - j2) + (j12 >> 32);
        long j14 = j13 & BodyPartID.bodyIdMax;
        long j15 = (((((long) iArr[4]) & BodyPartID.bodyIdMax) + j7) - j3) + (j13 >> 32);
        iArr2[4] = (int) j15;
        long j16 = (((((long) iArr[5]) & BodyPartID.bodyIdMax) + j8) - j4) + (j15 >> 32);
        iArr2[5] = (int) j16;
        long j17 = (((((long) iArr[6]) & BodyPartID.bodyIdMax) + j2) - j5) + (j16 >> 32);
        iArr2[6] = (int) j17;
        long j18 = (j17 >> 32) + 1;
        long j19 = j14 + j18;
        long j20 = j10 - j18;
        iArr2[0] = (int) j20;
        long j21 = j20 >> 32;
        if (j21 != 0) {
            long j22 = j21 + (((long) i2) & BodyPartID.bodyIdMax);
            iArr2[1] = (int) j22;
            long j23 = (j22 >> 32) + (((long) i3) & BodyPartID.bodyIdMax);
            iArr2[2] = (int) j23;
            j19 += j23 >> 32;
        }
        iArr2[3] = (int) j19;
        if (((j19 >> 32) == 0 || Nat.o(7, iArr2, 4) == 0) && !(iArr2[6] == -1 && Nat224.g(iArr2, f77996a))) {
            return;
        }
        b(iArr2);
    }

    public static void e(int i2, int[] iArr) {
        long j2;
        if (i2 != 0) {
            long j3 = ((long) i2) & BodyPartID.bodyIdMax;
            long j4 = (((long) iArr[0]) & BodyPartID.bodyIdMax) - j3;
            iArr[0] = (int) j4;
            long j5 = j4 >> 32;
            if (j5 != 0) {
                long j6 = j5 + (((long) iArr[1]) & BodyPartID.bodyIdMax);
                iArr[1] = (int) j6;
                long j7 = (j6 >> 32) + (((long) iArr[2]) & BodyPartID.bodyIdMax);
                iArr[2] = (int) j7;
                j5 = j7 >> 32;
            }
            long j8 = (BodyPartID.bodyIdMax & ((long) iArr[3])) + j3 + j5;
            iArr[3] = (int) j8;
            j2 = j8 >> 32;
        } else {
            j2 = 0;
        }
        if ((j2 == 0 || Nat.o(7, iArr, 4) == 0) && !(iArr[6] == -1 && Nat224.g(iArr, f77996a))) {
            return;
        }
        b(iArr);
    }

    public static void f(int[] iArr, int[] iArr2) {
        int[] iArr3 = new int[14];
        Nat224.l(iArr, iArr3);
        d(iArr3, iArr2);
    }

    public static void g(int[] iArr, int[] iArr2, int[] iArr3) {
        if (Nat224.m(iArr, iArr2, iArr3) != 0) {
            long j2 = (((long) iArr3[0]) & BodyPartID.bodyIdMax) + 1;
            iArr3[0] = (int) j2;
            long j3 = j2 >> 32;
            if (j3 != 0) {
                long j4 = j3 + (((long) iArr3[1]) & BodyPartID.bodyIdMax);
                iArr3[1] = (int) j4;
                long j5 = (j4 >> 32) + (((long) iArr3[2]) & BodyPartID.bodyIdMax);
                iArr3[2] = (int) j5;
                j3 = j5 >> 32;
            }
            long j6 = ((BodyPartID.bodyIdMax & ((long) iArr3[3])) - 1) + j3;
            iArr3[3] = (int) j6;
            if ((j6 >> 32) != 0) {
                Nat.h(7, iArr3, 4);
            }
        }
    }

    public static void h(int[] iArr, int[] iArr2) {
        if (Nat.s(7, iArr, 0, iArr2) != 0 || (iArr2[6] == -1 && Nat224.g(iArr2, f77996a))) {
            b(iArr2);
        }
    }
}
