package org.spongycastle.math.ec.custom.sec;

import org.bouncycastle.asn1.cmc.BodyPartID;
import org.spongycastle.math.raw.Nat;
import org.spongycastle.math.raw.Nat192;

/* JADX INFO: loaded from: classes5.dex */
public class SecP192R1Field {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final int[] f77983a = {-1, -1, -2, -1, -1, -1};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final int[] f77984b = {1, 0, 2, 0, 1, 0, -2, -1, -3, -1, -1, -1};

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final int[] f77985c = {-1, -1, -3, -1, -2, -1, 1, 0, 2};

    public static void a(int[] iArr) {
        long j2 = (((long) iArr[0]) & BodyPartID.bodyIdMax) + 1;
        iArr[0] = (int) j2;
        long j3 = j2 >> 32;
        if (j3 != 0) {
            long j4 = j3 + (((long) iArr[1]) & BodyPartID.bodyIdMax);
            iArr[1] = (int) j4;
            j3 = j4 >> 32;
        }
        long j5 = (BodyPartID.bodyIdMax & ((long) iArr[2])) + 1 + j3;
        iArr[2] = (int) j5;
        if ((j5 >> 32) != 0) {
            Nat.o(6, iArr, 3);
        }
    }

    public static void b(int[] iArr, int[] iArr2, int[] iArr3) {
        int[] iArr4 = new int[12];
        Nat192.n(iArr, iArr2, iArr4);
        c(iArr4, iArr3);
    }

    public static void c(int[] iArr, int[] iArr2) {
        long j2 = ((long) iArr[6]) & BodyPartID.bodyIdMax;
        long j3 = ((long) iArr[7]) & BodyPartID.bodyIdMax;
        long j4 = ((long) iArr[8]) & BodyPartID.bodyIdMax;
        long j5 = ((long) iArr[9]) & BodyPartID.bodyIdMax;
        long j6 = (((long) iArr[10]) & BodyPartID.bodyIdMax) + j2;
        long j7 = (((long) iArr[11]) & BodyPartID.bodyIdMax) + j3;
        long j8 = (((long) iArr[0]) & BodyPartID.bodyIdMax) + j6;
        int i2 = (int) j8;
        long j9 = (((long) iArr[1]) & BodyPartID.bodyIdMax) + j7 + (j8 >> 32);
        int i3 = (int) j9;
        iArr2[1] = i3;
        long j10 = j6 + j4;
        long j11 = j7 + j5;
        long j12 = (((long) iArr[2]) & BodyPartID.bodyIdMax) + j10 + (j9 >> 32);
        long j13 = j12 & BodyPartID.bodyIdMax;
        long j14 = (((long) iArr[3]) & BodyPartID.bodyIdMax) + j11 + (j12 >> 32);
        iArr2[3] = (int) j14;
        long j15 = (((long) iArr[4]) & BodyPartID.bodyIdMax) + (j10 - j2) + (j14 >> 32);
        iArr2[4] = (int) j15;
        long j16 = (((long) iArr[5]) & BodyPartID.bodyIdMax) + (j11 - j3) + (j15 >> 32);
        iArr2[5] = (int) j16;
        long j17 = j16 >> 32;
        long j18 = j13 + j17;
        long j19 = j17 + (((long) i2) & BodyPartID.bodyIdMax);
        iArr2[0] = (int) j19;
        long j20 = j19 >> 32;
        if (j20 != 0) {
            long j21 = j20 + (((long) i3) & BodyPartID.bodyIdMax);
            iArr2[1] = (int) j21;
            j18 += j21 >> 32;
        }
        iArr2[2] = (int) j18;
        if (((j18 >> 32) == 0 || Nat.o(6, iArr2, 3) == 0) && !(iArr2[5] == -1 && Nat192.j(iArr2, f77983a))) {
            return;
        }
        a(iArr2);
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
                j5 = j6 >> 32;
            }
            long j7 = (BodyPartID.bodyIdMax & ((long) iArr[2])) + j3 + j5;
            iArr[2] = (int) j7;
            j2 = j7 >> 32;
        } else {
            j2 = 0;
        }
        if ((j2 == 0 || Nat.o(6, iArr, 3) == 0) && !(iArr[5] == -1 && Nat192.j(iArr, f77983a))) {
            return;
        }
        a(iArr);
    }

    public static void e(int[] iArr, int[] iArr2) {
        int[] iArr3 = new int[12];
        Nat192.p(iArr, iArr3);
        c(iArr3, iArr2);
    }

    public static void f(int[] iArr, int i2, int[] iArr2) {
        int[] iArr3 = new int[12];
        Nat192.p(iArr, iArr3);
        c(iArr3, iArr2);
        while (true) {
            i2--;
            if (i2 <= 0) {
                return;
            }
            Nat192.p(iArr2, iArr3);
            c(iArr3, iArr2);
        }
    }

    public static void g(int[] iArr, int[] iArr2, int[] iArr3) {
        if (Nat192.q(iArr, iArr2, iArr3) != 0) {
            long j2 = (((long) iArr3[0]) & BodyPartID.bodyIdMax) - 1;
            iArr3[0] = (int) j2;
            long j3 = j2 >> 32;
            if (j3 != 0) {
                long j4 = j3 + (((long) iArr3[1]) & BodyPartID.bodyIdMax);
                iArr3[1] = (int) j4;
                j3 = j4 >> 32;
            }
            long j5 = ((BodyPartID.bodyIdMax & ((long) iArr3[2])) - 1) + j3;
            iArr3[2] = (int) j5;
            if ((j5 >> 32) != 0) {
                Nat.h(6, iArr3, 3);
            }
        }
    }
}
