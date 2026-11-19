package org.spongycastle.math.ec.custom.sec;

import org.bouncycastle.asn1.cmc.BodyPartID;
import org.spongycastle.math.raw.Nat;
import org.spongycastle.math.raw.Nat160;

/* JADX INFO: loaded from: classes5.dex */
public class SecP160R1Field {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final int[] f77965a = {Integer.MAX_VALUE, -1, -1, -1, -1};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final int[] f77966b = {1, 1073741825, 0, 0, 0, -2, -2, -1, -1, -1};

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final int[] f77967c = {-1, -1073741826, -1, -1, -1, 1, 1};

    public static void a(int[] iArr, int[] iArr2, int[] iArr3) {
        int[] iArr4 = new int[10];
        Nat160.i(iArr, iArr2, iArr4);
        b(iArr4, iArr3);
    }

    public static void b(int[] iArr, int[] iArr2) {
        long j2 = ((long) iArr[5]) & BodyPartID.bodyIdMax;
        long j3 = ((long) iArr[6]) & BodyPartID.bodyIdMax;
        long j4 = ((long) iArr[7]) & BodyPartID.bodyIdMax;
        long j5 = ((long) iArr[8]) & BodyPartID.bodyIdMax;
        long j6 = ((long) iArr[9]) & BodyPartID.bodyIdMax;
        long j7 = (((long) iArr[0]) & BodyPartID.bodyIdMax) + j2 + (j2 << 31);
        iArr2[0] = (int) j7;
        long j8 = (((long) iArr[1]) & BodyPartID.bodyIdMax) + j3 + (j3 << 31) + (j7 >>> 32);
        iArr2[1] = (int) j8;
        long j9 = (((long) iArr[2]) & BodyPartID.bodyIdMax) + j4 + (j4 << 31) + (j8 >>> 32);
        iArr2[2] = (int) j9;
        long j10 = (((long) iArr[3]) & BodyPartID.bodyIdMax) + j5 + (j5 << 31) + (j9 >>> 32);
        iArr2[3] = (int) j10;
        long j11 = (BodyPartID.bodyIdMax & ((long) iArr[4])) + j6 + (j6 << 31) + (j10 >>> 32);
        iArr2[4] = (int) j11;
        c((int) (j11 >>> 32), iArr2);
    }

    /* JADX WARN: Code duplicated, block: B:9:0x0034  */
    public static void c(int i2, int[] iArr) {
        if (i2 == 0) {
            if (iArr[4] == -1) {
                return;
            } else {
                return;
            }
        }
        long j2 = ((((long) i2) & BodyPartID.bodyIdMax) * 2147483649L) + (((long) iArr[0]) & BodyPartID.bodyIdMax);
        iArr[0] = (int) j2;
        long j3 = (j2 >>> 32) + (BodyPartID.bodyIdMax & ((long) iArr[1]));
        iArr[1] = (int) j3;
        if (((j3 >>> 32) != 0 ? Nat.p(5, 2, iArr) : 0) == 0) {
            if (iArr[4] == -1 || !Nat160.f(iArr, f77965a)) {
                return;
            }
        }
        Nat.g(5, -2147483647, iArr);
    }

    public static void d(int[] iArr, int[] iArr2) {
        int[] iArr3 = new int[10];
        Nat160.k(iArr, iArr3);
        b(iArr3, iArr2);
    }

    public static void e(int[] iArr, int i2, int[] iArr2) {
        int[] iArr3 = new int[10];
        Nat160.k(iArr, iArr3);
        b(iArr3, iArr2);
        while (true) {
            i2--;
            if (i2 <= 0) {
                return;
            }
            Nat160.k(iArr2, iArr3);
            b(iArr3, iArr2);
        }
    }

    public static void f(int[] iArr, int[] iArr2, int[] iArr3) {
        if (Nat160.l(iArr, iArr2, iArr3) != 0) {
            long j2 = (((long) iArr3[0]) & BodyPartID.bodyIdMax) - 2147483649L;
            iArr3[0] = (int) j2;
            if ((j2 >> 32) == 0) {
                return;
            }
            Nat.h(5, iArr3, 1);
        }
    }
}
