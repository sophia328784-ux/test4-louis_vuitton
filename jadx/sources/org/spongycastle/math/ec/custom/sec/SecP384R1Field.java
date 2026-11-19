package org.spongycastle.math.ec.custom.sec;

import org.bouncycastle.asn1.cmc.BodyPartID;
import org.spongycastle.math.raw.Nat;
import org.spongycastle.math.raw.Nat384;

/* JADX INFO: loaded from: classes5.dex */
public class SecP384R1Field {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final int[] f78013a = {-1, 0, 0, -1, -2, -1, -1, -1, -1, -1, -1, -1};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final int[] f78014b = {1, -2, 0, 2, 0, -2, 0, 2, 1, 0, 0, 0, -2, 1, 0, -2, -3, -1, -1, -1, -1, -1, -1, -1};

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final int[] f78015c = {-1, 1, -1, -3, -1, 1, -1, -3, -2, -1, -1, -1, 1, -2, -1, 1, 2};

    public static void a(int[] iArr) {
        long j2 = (((long) iArr[0]) & BodyPartID.bodyIdMax) + 1;
        iArr[0] = (int) j2;
        long j3 = ((((long) iArr[1]) & BodyPartID.bodyIdMax) - 1) + (j2 >> 32);
        iArr[1] = (int) j3;
        long j4 = j3 >> 32;
        if (j4 != 0) {
            long j5 = j4 + (((long) iArr[2]) & BodyPartID.bodyIdMax);
            iArr[2] = (int) j5;
            j4 = j5 >> 32;
        }
        long j6 = (((long) iArr[3]) & BodyPartID.bodyIdMax) + 1 + j4;
        iArr[3] = (int) j6;
        long j7 = (BodyPartID.bodyIdMax & ((long) iArr[4])) + 1 + (j6 >> 32);
        iArr[4] = (int) j7;
        if ((j7 >> 32) != 0) {
            Nat.o(12, iArr, 5);
        }
    }

    public static void b(int[] iArr, int[] iArr2, int[] iArr3) {
        int[] iArr4 = new int[24];
        Nat384.a(iArr, iArr2, iArr4);
        c(iArr4, iArr3);
    }

    public static void c(int[] iArr, int[] iArr2) {
        long j2 = ((long) iArr[16]) & BodyPartID.bodyIdMax;
        long j3 = ((long) iArr[17]) & BodyPartID.bodyIdMax;
        long j4 = ((long) iArr[18]) & BodyPartID.bodyIdMax;
        long j5 = ((long) iArr[19]) & BodyPartID.bodyIdMax;
        long j6 = ((long) iArr[20]) & BodyPartID.bodyIdMax;
        long j7 = ((long) iArr[21]) & BodyPartID.bodyIdMax;
        long j8 = ((long) iArr[22]) & BodyPartID.bodyIdMax;
        long j9 = ((long) iArr[23]) & BodyPartID.bodyIdMax;
        long j10 = ((((long) iArr[12]) & BodyPartID.bodyIdMax) + j6) - 1;
        long j11 = (((long) iArr[13]) & BodyPartID.bodyIdMax) + j8;
        long j12 = (((long) iArr[14]) & BodyPartID.bodyIdMax) + j8 + j9;
        long j13 = (((long) iArr[15]) & BodyPartID.bodyIdMax) + j9;
        long j14 = j3 + j7;
        long j15 = j7 - j9;
        long j16 = j8 - j9;
        long j17 = j10 + j15;
        long j18 = (((long) iArr[0]) & BodyPartID.bodyIdMax) + j17;
        iArr2[0] = (int) j18;
        long j19 = (((((long) iArr[1]) & BodyPartID.bodyIdMax) + j9) - j10) + j11 + (j18 >> 32);
        iArr2[1] = (int) j19;
        long j20 = (((((long) iArr[2]) & BodyPartID.bodyIdMax) - j7) - j11) + j12 + (j19 >> 32);
        iArr2[2] = (int) j20;
        long j21 = ((((long) iArr[3]) & BodyPartID.bodyIdMax) - j12) + j13 + j17 + (j20 >> 32);
        iArr2[3] = (int) j21;
        long j22 = (((((((long) iArr[4]) & BodyPartID.bodyIdMax) + j2) + j7) + j11) - j13) + j17 + (j21 >> 32);
        iArr2[4] = (int) j22;
        long j23 = ((((long) iArr[5]) & BodyPartID.bodyIdMax) - j2) + j11 + j12 + j14 + (j22 >> 32);
        iArr2[5] = (int) j23;
        long j24 = (((((long) iArr[6]) & BodyPartID.bodyIdMax) + j4) - j3) + j12 + j13 + (j23 >> 32);
        iArr2[6] = (int) j24;
        long j25 = ((((((long) iArr[7]) & BodyPartID.bodyIdMax) + j2) + j5) - j4) + j13 + (j24 >> 32);
        iArr2[7] = (int) j25;
        long j26 = (((((((long) iArr[8]) & BodyPartID.bodyIdMax) + j2) + j3) + j6) - j5) + (j25 >> 32);
        iArr2[8] = (int) j26;
        long j27 = (((((long) iArr[9]) & BodyPartID.bodyIdMax) + j4) - j6) + j14 + (j26 >> 32);
        iArr2[9] = (int) j27;
        long j28 = ((((((long) iArr[10]) & BodyPartID.bodyIdMax) + j4) + j5) - j15) + j16 + (j27 >> 32);
        iArr2[10] = (int) j28;
        long j29 = ((((((long) iArr[11]) & BodyPartID.bodyIdMax) + j5) + j6) - j16) + (j28 >> 32);
        iArr2[11] = (int) j29;
        d((int) ((j29 >> 32) + 1), iArr2);
    }

    public static void d(int i2, int[] iArr) {
        long j2;
        if (i2 != 0) {
            long j3 = ((long) i2) & BodyPartID.bodyIdMax;
            long j4 = (((long) iArr[0]) & BodyPartID.bodyIdMax) + j3;
            iArr[0] = (int) j4;
            long j5 = ((((long) iArr[1]) & BodyPartID.bodyIdMax) - j3) + (j4 >> 32);
            iArr[1] = (int) j5;
            long j6 = j5 >> 32;
            if (j6 != 0) {
                long j7 = j6 + (((long) iArr[2]) & BodyPartID.bodyIdMax);
                iArr[2] = (int) j7;
                j6 = j7 >> 32;
            }
            long j8 = (((long) iArr[3]) & BodyPartID.bodyIdMax) + j3 + j6;
            iArr[3] = (int) j8;
            long j9 = (BodyPartID.bodyIdMax & ((long) iArr[4])) + j3 + (j8 >> 32);
            iArr[4] = (int) j9;
            j2 = j9 >> 32;
        } else {
            j2 = 0;
        }
        if ((j2 == 0 || Nat.o(12, iArr, 5) == 0) && !(iArr[11] == -1 && Nat.l(12, iArr, f78013a))) {
            return;
        }
        a(iArr);
    }

    public static void e(int[] iArr, int[] iArr2) {
        int[] iArr3 = new int[24];
        Nat384.b(iArr, iArr3);
        c(iArr3, iArr2);
    }

    public static void f(int[] iArr, int i2, int[] iArr2) {
        int[] iArr3 = new int[24];
        Nat384.b(iArr, iArr3);
        c(iArr3, iArr2);
        while (true) {
            i2--;
            if (i2 <= 0) {
                return;
            }
            Nat384.b(iArr2, iArr3);
            c(iArr3, iArr2);
        }
    }

    public static void g(int[] iArr, int[] iArr2, int[] iArr3) {
        if (Nat.v(12, iArr, iArr2, iArr3) != 0) {
            long j2 = (((long) iArr3[0]) & BodyPartID.bodyIdMax) - 1;
            iArr3[0] = (int) j2;
            long j3 = (((long) iArr3[1]) & BodyPartID.bodyIdMax) + 1 + (j2 >> 32);
            iArr3[1] = (int) j3;
            long j4 = j3 >> 32;
            if (j4 != 0) {
                long j5 = j4 + (((long) iArr3[2]) & BodyPartID.bodyIdMax);
                iArr3[2] = (int) j5;
                j4 = j5 >> 32;
            }
            long j6 = ((((long) iArr3[3]) & BodyPartID.bodyIdMax) - 1) + j4;
            iArr3[3] = (int) j6;
            long j7 = ((BodyPartID.bodyIdMax & ((long) iArr3[4])) - 1) + (j6 >> 32);
            iArr3[4] = (int) j7;
            if ((j7 >> 32) != 0) {
                Nat.h(12, iArr3, 5);
            }
        }
    }
}
