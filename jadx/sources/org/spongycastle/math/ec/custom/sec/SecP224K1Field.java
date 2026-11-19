package org.spongycastle.math.ec.custom.sec;

import org.bouncycastle.asn1.cmc.BodyPartID;
import org.spongycastle.math.raw.Nat;
import org.spongycastle.math.raw.Nat224;

/* JADX INFO: loaded from: classes5.dex */
public class SecP224K1Field {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final int[] f77989a = {-6803, -2, -1, -1, -1, -1, -1};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final int[] f77990b = {46280809, 13606, 1, 0, 0, 0, 0, -13606, -3, -1, -1, -1, -1, -1};

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final int[] f77991c = {-46280809, -13607, -2, -1, -1, -1, -1, 13605, 2};

    public static void a(int[] iArr, int[] iArr2, int[] iArr3) {
        int[] iArr4 = new int[14];
        Nat224.j(iArr, iArr2, iArr4);
        b(iArr4, iArr3);
    }

    public static void b(int[] iArr, int[] iArr2) {
        long j2 = ((long) iArr[7]) & BodyPartID.bodyIdMax;
        long j3 = (6803 * j2) + (((long) iArr[0]) & BodyPartID.bodyIdMax);
        int i2 = (int) j3;
        iArr2[0] = i2;
        long j4 = ((long) iArr[8]) & BodyPartID.bodyIdMax;
        long j5 = (6803 * j4) + j2 + (((long) iArr[1]) & BodyPartID.bodyIdMax) + (j3 >>> 32);
        int i3 = (int) j5;
        iArr2[1] = i3;
        long j6 = ((long) iArr[9]) & BodyPartID.bodyIdMax;
        long j7 = (6803 * j6) + j4 + (((long) iArr[2]) & BodyPartID.bodyIdMax) + (j5 >>> 32);
        int i4 = (int) j7;
        iArr2[2] = i4;
        long j8 = ((long) iArr[10]) & BodyPartID.bodyIdMax;
        long j9 = (6803 * j8) + j6 + (((long) iArr[3]) & BodyPartID.bodyIdMax) + (j7 >>> 32);
        int i5 = (int) j9;
        iArr2[3] = i5;
        long j10 = ((long) iArr[11]) & BodyPartID.bodyIdMax;
        long j11 = (6803 * j10) + j8 + (((long) iArr[4]) & BodyPartID.bodyIdMax) + (j9 >>> 32);
        iArr2[4] = (int) j11;
        long j12 = ((long) iArr[12]) & BodyPartID.bodyIdMax;
        long j13 = (6803 * j12) + j10 + (((long) iArr[5]) & BodyPartID.bodyIdMax) + (j11 >>> 32);
        iArr2[5] = (int) j13;
        long j14 = ((long) iArr[13]) & BodyPartID.bodyIdMax;
        long j15 = (6803 * j14) + j12 + (((long) iArr[6]) & BodyPartID.bodyIdMax) + (j13 >>> 32);
        iArr2[6] = (int) j15;
        long j16 = (j15 >>> 32) + j14;
        long j17 = j16 & BodyPartID.bodyIdMax;
        long j18 = (6803 * j17) + (((long) i2) & BodyPartID.bodyIdMax);
        iArr2[0] = (int) j18;
        long j19 = j16 >>> 32;
        long j20 = (6803 * j19) + j17 + (((long) i3) & BodyPartID.bodyIdMax) + (j18 >>> 32);
        iArr2[1] = (int) j20;
        long j21 = j19 + (((long) i4) & BodyPartID.bodyIdMax) + (j20 >>> 32);
        iArr2[2] = (int) j21;
        long j22 = (j21 >>> 32) + (((long) i5) & BodyPartID.bodyIdMax);
        iArr2[3] = (int) j22;
        if (((j22 >>> 32) == 0 ? 0 : Nat.p(7, 4, iArr2)) != 0 || (iArr2[6] == -1 && Nat224.g(iArr2, f77989a))) {
            Nat.b(7, 6803, iArr2);
        }
    }

    /* JADX WARN: Code duplicated, block: B:9:0x003c  */
    public static void c(int i2, int[] iArr) {
        if (i2 == 0) {
            if (iArr[6] == -1) {
                return;
            } else {
                return;
            }
        }
        long j2 = ((long) i2) & BodyPartID.bodyIdMax;
        long j3 = (6803 * j2) + (((long) iArr[0]) & BodyPartID.bodyIdMax);
        iArr[0] = (int) j3;
        long j4 = j2 + (((long) iArr[1]) & BodyPartID.bodyIdMax) + (j3 >>> 32);
        iArr[1] = (int) j4;
        long j5 = (j4 >>> 32) + (BodyPartID.bodyIdMax & ((long) iArr[2]));
        iArr[2] = (int) j5;
        if (((j5 >>> 32) != 0 ? Nat.p(7, 3, iArr) : 0) == 0) {
            if (iArr[6] == -1 || !Nat224.g(iArr, f77989a)) {
                return;
            }
        }
        Nat.b(7, 6803, iArr);
    }

    public static void d(int[] iArr, int[] iArr2) {
        int[] iArr3 = new int[14];
        Nat224.l(iArr, iArr3);
        b(iArr3, iArr2);
    }

    public static void e(int[] iArr, int i2, int[] iArr2) {
        int[] iArr3 = new int[14];
        Nat224.l(iArr, iArr3);
        b(iArr3, iArr2);
        while (true) {
            i2--;
            if (i2 <= 0) {
                return;
            }
            Nat224.l(iArr2, iArr3);
            b(iArr3, iArr2);
        }
    }

    public static void f(int[] iArr, int[] iArr2, int[] iArr3) {
        if (Nat224.m(iArr, iArr2, iArr3) != 0) {
            Nat.w(7, 6803, iArr3);
        }
    }
}
