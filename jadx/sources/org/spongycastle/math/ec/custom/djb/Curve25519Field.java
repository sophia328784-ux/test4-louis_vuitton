package org.spongycastle.math.ec.custom.djb;

import org.bouncycastle.asn1.cmc.BodyPartID;
import org.spongycastle.math.raw.Nat;
import org.spongycastle.math.raw.Nat256;

/* JADX INFO: loaded from: classes5.dex */
public class Curve25519Field {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final int[] f77946a = {-19, -1, -1, -1, -1, -1, -1, Integer.MAX_VALUE};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final int[] f77947b = {361, 0, 0, 0, 0, 0, 0, 0, -19, -1, -1, -1, -1, -1, -1, 1073741823};

    public static void a(int[] iArr, int[] iArr2, int[] iArr3) {
        int[] iArr4 = new int[16];
        Nat256.p(iArr, iArr2, iArr4);
        b(iArr4, iArr3);
    }

    public static void b(int[] iArr, int[] iArr2) {
        int i2 = iArr[7];
        int i3 = i2;
        int i4 = 0;
        while (i4 < 8) {
            int i5 = iArr[8 + i4];
            iArr2[i4] = (i3 >>> 31) | (i5 << 1);
            i4++;
            i3 = i5;
        }
        long j2 = ((((long) iArr2[0]) & BodyPartID.bodyIdMax) * 19) + (((long) iArr[0]) & BodyPartID.bodyIdMax);
        iArr2[0] = (int) j2;
        long j3 = ((((long) iArr2[1]) & BodyPartID.bodyIdMax) * 19) + (((long) iArr[1]) & BodyPartID.bodyIdMax) + (j2 >>> 32);
        iArr2[1] = (int) j3;
        long j4 = ((((long) iArr2[2]) & BodyPartID.bodyIdMax) * 19) + (((long) iArr[2]) & BodyPartID.bodyIdMax) + (j3 >>> 32);
        iArr2[2] = (int) j4;
        long j5 = ((((long) iArr2[3]) & BodyPartID.bodyIdMax) * 19) + (((long) iArr[3]) & BodyPartID.bodyIdMax) + (j4 >>> 32);
        iArr2[3] = (int) j5;
        long j6 = ((((long) iArr2[4]) & BodyPartID.bodyIdMax) * 19) + (((long) iArr[4]) & BodyPartID.bodyIdMax) + (j5 >>> 32);
        iArr2[4] = (int) j6;
        long j7 = ((((long) iArr2[5]) & BodyPartID.bodyIdMax) * 19) + (((long) iArr[5]) & BodyPartID.bodyIdMax) + (j6 >>> 32);
        iArr2[5] = (int) j7;
        long j8 = ((((long) iArr2[6]) & BodyPartID.bodyIdMax) * 19) + (((long) iArr[6]) & BodyPartID.bodyIdMax) + (j7 >>> 32);
        iArr2[6] = (int) j8;
        long j9 = (19 * (((long) iArr2[7]) & BodyPartID.bodyIdMax)) + (BodyPartID.bodyIdMax & ((long) iArr[7])) + (j8 >>> 32);
        int i6 = (int) j9;
        iArr2[7] = i6;
        iArr2[7] = Nat.g(7, (((i6 >>> 31) - (i2 >>> 31)) + (((int) (j9 >>> 32)) << 1)) * 19, iArr2) + (Integer.MAX_VALUE & i6);
        if (Nat256.k(iArr2, f77946a)) {
            f(iArr2);
        }
    }

    public static void c(int i2, int[] iArr) {
        int i3 = iArr[7];
        iArr[7] = Nat.g(7, ((i2 << 1) | (i3 >>> 31)) * 19, iArr) + (i3 & Integer.MAX_VALUE);
        if (Nat256.k(iArr, f77946a)) {
            f(iArr);
        }
    }

    public static void d(int[] iArr, int[] iArr2) {
        int[] iArr3 = new int[16];
        Nat256.r(iArr, iArr3);
        b(iArr3, iArr2);
    }

    public static void e(int[] iArr, int i2, int[] iArr2) {
        int[] iArr3 = new int[16];
        Nat256.r(iArr, iArr3);
        b(iArr3, iArr2);
        while (true) {
            i2--;
            if (i2 <= 0) {
                return;
            }
            Nat256.r(iArr2, iArr3);
            b(iArr3, iArr2);
        }
    }

    public static void f(int[] iArr) {
        long j2 = (((long) iArr[0]) & BodyPartID.bodyIdMax) + 19;
        iArr[0] = (int) j2;
        long jO = j2 >> 32;
        if (jO != 0) {
            jO = Nat.o(7, iArr, 1);
        }
        iArr[7] = (int) (((((long) iArr[7]) & BodyPartID.bodyIdMax) - 2147483648L) + jO);
    }

    public static void g(int[] iArr, int[] iArr2, int[] iArr3) {
        if (Nat256.s(iArr, iArr2, iArr3) != 0) {
            long j2 = (((long) iArr3[0]) & BodyPartID.bodyIdMax) - 19;
            iArr3[0] = (int) j2;
            long jH = j2 >> 32;
            if (jH != 0) {
                jH = Nat.h(7, iArr3, 1);
            }
            iArr3[7] = (int) ((BodyPartID.bodyIdMax & ((long) iArr3[7])) + 2147483648L + jH);
        }
    }

    public static void h(int[] iArr, int[] iArr2) {
        Nat.s(8, iArr, 0, iArr2);
        if (Nat256.k(iArr2, f77946a)) {
            f(iArr2);
        }
    }
}
