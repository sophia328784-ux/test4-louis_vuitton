package org.spongycastle.math.ec.custom.sec;

import org.bouncycastle.asn1.cmc.BodyPartID;
import org.spongycastle.math.raw.Nat;
import org.spongycastle.math.raw.Nat160;

/* JADX INFO: loaded from: classes5.dex */
public class SecP160R2Field {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final int[] f77971a = {-21389, -2, -1, -1, -1};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final int[] f77972b = {457489321, 42778, 1, 0, 0, -42778, -3, -1, -1, -1};

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final int[] f77973c = {-457489321, -42779, -2, -1, -1, 42777, 2};

    public static void a(int[] iArr, int[] iArr2, int[] iArr3) {
        int[] iArr4 = new int[10];
        Nat160.i(iArr, iArr2, iArr4);
        c(iArr4, iArr3);
    }

    public static void b(int[] iArr, int[] iArr2, int[] iArr3) {
        if ((Nat160.j(iArr, iArr2, iArr3) != 0 || (iArr3[9] == -1 && Nat.l(10, iArr3, f77972b))) && Nat.e(7, f77973c, iArr3) != 0) {
            Nat.o(10, iArr3, 7);
        }
    }

    public static void c(int[] iArr, int[] iArr2) {
        long j2 = ((long) iArr[5]) & BodyPartID.bodyIdMax;
        long j3 = (21389 * j2) + (((long) iArr[0]) & BodyPartID.bodyIdMax);
        int i2 = (int) j3;
        iArr2[0] = i2;
        long j4 = ((long) iArr[6]) & BodyPartID.bodyIdMax;
        long j5 = (21389 * j4) + j2 + (((long) iArr[1]) & BodyPartID.bodyIdMax) + (j3 >>> 32);
        int i3 = (int) j5;
        iArr2[1] = i3;
        long j6 = ((long) iArr[7]) & BodyPartID.bodyIdMax;
        long j7 = (21389 * j6) + j4 + (((long) iArr[2]) & BodyPartID.bodyIdMax) + (j5 >>> 32);
        int i4 = (int) j7;
        iArr2[2] = i4;
        long j8 = ((long) iArr[8]) & BodyPartID.bodyIdMax;
        long j9 = (21389 * j8) + j6 + (((long) iArr[3]) & BodyPartID.bodyIdMax) + (j7 >>> 32);
        int i5 = (int) j9;
        iArr2[3] = i5;
        long j10 = ((long) iArr[9]) & BodyPartID.bodyIdMax;
        long j11 = (21389 * j10) + j8 + (((long) iArr[4]) & BodyPartID.bodyIdMax) + (j9 >>> 32);
        iArr2[4] = (int) j11;
        long j12 = (j11 >>> 32) + j10;
        long j13 = j12 & BodyPartID.bodyIdMax;
        long j14 = (21389 * j13) + (((long) i2) & BodyPartID.bodyIdMax);
        iArr2[0] = (int) j14;
        long j15 = j12 >>> 32;
        long j16 = (21389 * j15) + j13 + (((long) i3) & BodyPartID.bodyIdMax) + (j14 >>> 32);
        iArr2[1] = (int) j16;
        long j17 = j15 + (((long) i4) & BodyPartID.bodyIdMax) + (j16 >>> 32);
        iArr2[2] = (int) j17;
        long j18 = (j17 >>> 32) + (((long) i5) & BodyPartID.bodyIdMax);
        iArr2[3] = (int) j18;
        if (((j18 >>> 32) == 0 ? 0 : Nat.p(5, 4, iArr2)) != 0 || (iArr2[4] == -1 && Nat160.f(iArr2, f77971a))) {
            Nat.b(5, 21389, iArr2);
        }
    }

    /* JADX WARN: Code duplicated, block: B:9:0x003c  */
    public static void d(int i2, int[] iArr) {
        if (i2 == 0) {
            if (iArr[4] == -1) {
                return;
            } else {
                return;
            }
        }
        long j2 = ((long) i2) & BodyPartID.bodyIdMax;
        long j3 = (21389 * j2) + (((long) iArr[0]) & BodyPartID.bodyIdMax);
        iArr[0] = (int) j3;
        long j4 = j2 + (((long) iArr[1]) & BodyPartID.bodyIdMax) + (j3 >>> 32);
        iArr[1] = (int) j4;
        long j5 = (j4 >>> 32) + (BodyPartID.bodyIdMax & ((long) iArr[2]));
        iArr[2] = (int) j5;
        if (((j5 >>> 32) != 0 ? Nat.p(5, 3, iArr) : 0) == 0) {
            if (iArr[4] == -1 || !Nat160.f(iArr, f77971a)) {
                return;
            }
        }
        Nat.b(5, 21389, iArr);
    }

    public static void e(int[] iArr, int[] iArr2) {
        int[] iArr3 = new int[10];
        Nat160.k(iArr, iArr3);
        c(iArr3, iArr2);
    }

    public static void f(int[] iArr, int i2, int[] iArr2) {
        int[] iArr3 = new int[10];
        Nat160.k(iArr, iArr3);
        c(iArr3, iArr2);
        while (true) {
            i2--;
            if (i2 <= 0) {
                return;
            }
            Nat160.k(iArr2, iArr3);
            c(iArr3, iArr2);
        }
    }

    public static void g(int[] iArr, int[] iArr2, int[] iArr3) {
        if (Nat160.l(iArr, iArr2, iArr3) != 0) {
            Nat.w(5, 21389, iArr3);
        }
    }

    public static void h(int[] iArr, int[] iArr2) {
        if (Nat.s(5, iArr, 0, iArr2) != 0 || (iArr2[4] == -1 && Nat160.f(iArr2, f77971a))) {
            Nat.b(5, 21389, iArr2);
        }
    }
}
