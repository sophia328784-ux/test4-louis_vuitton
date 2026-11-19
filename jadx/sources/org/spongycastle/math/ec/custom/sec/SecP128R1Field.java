package org.spongycastle.math.ec.custom.sec;

import org.bouncycastle.asn1.cmc.BodyPartID;
import org.spongycastle.math.raw.Nat128;

/* JADX INFO: loaded from: classes5.dex */
public class SecP128R1Field {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final int[] f77957a = {-1, -1, -1, -3};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final int[] f77958b = {1, 0, 0, 4, -2, -1, 3, -4};

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final int[] f77959c = {-1, -1, -1, -5, 1, 0, -4, 3};

    public static void a(int[] iArr, int[] iArr2, int[] iArr3) {
        long j2 = (((long) iArr[0]) & BodyPartID.bodyIdMax) + (((long) iArr2[0]) & BodyPartID.bodyIdMax);
        iArr3[0] = (int) j2;
        long j3 = (((long) iArr[1]) & BodyPartID.bodyIdMax) + (((long) iArr2[1]) & BodyPartID.bodyIdMax) + (j2 >>> 32);
        iArr3[1] = (int) j3;
        long j4 = (((long) iArr[2]) & BodyPartID.bodyIdMax) + (((long) iArr2[2]) & BodyPartID.bodyIdMax) + (j3 >>> 32);
        iArr3[2] = (int) j4;
        long j5 = (((long) iArr[3]) & BodyPartID.bodyIdMax) + (((long) iArr2[3]) & BodyPartID.bodyIdMax) + (j4 >>> 32);
        int i2 = (int) j5;
        iArr3[3] = i2;
        if (((int) (j5 >>> 32)) != 0 || ((i2 >>> 1) >= 2147483646 && Nat128.b(iArr3, f77957a))) {
            b(iArr3);
        }
    }

    public static void b(int[] iArr) {
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
        iArr[3] = (int) ((BodyPartID.bodyIdMax & ((long) iArr[3])) + 2 + j3);
    }

    public static void c(int[] iArr, int[] iArr2, int[] iArr3) {
        int[] iArr4 = new int[8];
        Nat128.e(iArr, iArr2, iArr4);
        d(iArr4, iArr3);
    }

    public static void d(int[] iArr, int[] iArr2) {
        long j2 = ((long) iArr[0]) & BodyPartID.bodyIdMax;
        long j3 = ((long) iArr[1]) & BodyPartID.bodyIdMax;
        long j4 = ((long) iArr[2]) & BodyPartID.bodyIdMax;
        long j5 = ((long) iArr[3]) & BodyPartID.bodyIdMax;
        long j6 = ((long) iArr[4]) & BodyPartID.bodyIdMax;
        long j7 = ((long) iArr[5]) & BodyPartID.bodyIdMax;
        long j8 = ((long) iArr[6]) & BodyPartID.bodyIdMax;
        long j9 = ((long) iArr[7]) & BodyPartID.bodyIdMax;
        long j10 = j5 + j9;
        long j11 = j8 + (j9 << 1);
        long j12 = j7 + (j11 << 1);
        long j13 = j3 + j12;
        long j14 = j6 + (j12 << 1);
        long j15 = j2 + j14;
        iArr2[0] = (int) j15;
        long j16 = j13 + (j15 >>> 32);
        iArr2[1] = (int) j16;
        long j17 = j4 + j11 + (j16 >>> 32);
        iArr2[2] = (int) j17;
        long j18 = j10 + (j14 << 1) + (j17 >>> 32);
        iArr2[3] = (int) j18;
        e((int) (j18 >>> 32), iArr2);
    }

    public static void e(int i2, int[] iArr) {
        while (i2 != 0) {
            long j2 = ((long) i2) & BodyPartID.bodyIdMax;
            long j3 = (((long) iArr[0]) & BodyPartID.bodyIdMax) + j2;
            iArr[0] = (int) j3;
            long j4 = j3 >> 32;
            if (j4 != 0) {
                long j5 = j4 + (((long) iArr[1]) & BodyPartID.bodyIdMax);
                iArr[1] = (int) j5;
                long j6 = (j5 >> 32) + (((long) iArr[2]) & BodyPartID.bodyIdMax);
                iArr[2] = (int) j6;
                j4 = j6 >> 32;
            }
            long j7 = (BodyPartID.bodyIdMax & ((long) iArr[3])) + (j2 << 1) + j4;
            iArr[3] = (int) j7;
            i2 = (int) (j7 >> 32);
        }
    }

    public static void f(int[] iArr, int[] iArr2) {
        int[] iArr3 = new int[8];
        Nat128.f(iArr, iArr3);
        d(iArr3, iArr2);
    }

    public static void g(int[] iArr, int i2, int[] iArr2) {
        int[] iArr3 = new int[8];
        Nat128.f(iArr, iArr3);
        d(iArr3, iArr2);
        while (true) {
            i2--;
            if (i2 <= 0) {
                return;
            }
            Nat128.f(iArr2, iArr3);
            d(iArr3, iArr2);
        }
    }

    public static void h(int[] iArr, int[] iArr2, int[] iArr3) {
        if (Nat128.g(iArr, iArr2, iArr3) != 0) {
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
            iArr3[3] = (int) (((BodyPartID.bodyIdMax & ((long) iArr3[3])) - 2) + j3);
        }
    }
}
