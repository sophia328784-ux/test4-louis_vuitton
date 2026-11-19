package org.spongycastle.math.ec.custom.sec;

import org.bouncycastle.asn1.cmc.BodyPartID;
import org.spongycastle.math.raw.Nat;
import org.spongycastle.math.raw.Nat256;

/* JADX INFO: loaded from: classes5.dex */
public class SecP256K1Field {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final int[] f78002a = {-977, -2, -1, -1, -1, -1, -1, -1};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final int[] f78003b = {954529, 1954, 1, 0, 0, 0, 0, 0, -1954, -3, -1, -1, -1, -1, -1, -1};

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final int[] f78004c = {-954529, -1955, -2, -1, -1, -1, -1, -1, 1953, 2};

    public static void a(int[] iArr, int[] iArr2, int[] iArr3) {
        int[] iArr4 = new int[16];
        Nat256.p(iArr, iArr2, iArr4);
        b(iArr4, iArr3);
    }

    public static void b(int[] iArr, int[] iArr2) {
        long j2 = ((long) iArr[8]) & BodyPartID.bodyIdMax;
        long j3 = (977 * j2) + (((long) iArr[0]) & BodyPartID.bodyIdMax);
        int i2 = (int) j3;
        iArr2[0] = i2;
        long j4 = ((long) iArr[9]) & BodyPartID.bodyIdMax;
        long j5 = (977 * j4) + j2 + (((long) iArr[1]) & BodyPartID.bodyIdMax) + (j3 >>> 32);
        int i3 = (int) j5;
        iArr2[1] = i3;
        long j6 = ((long) iArr[10]) & BodyPartID.bodyIdMax;
        long j7 = (977 * j6) + j4 + (((long) iArr[2]) & BodyPartID.bodyIdMax) + (j5 >>> 32);
        int i4 = (int) j7;
        iArr2[2] = i4;
        long j8 = ((long) iArr[11]) & BodyPartID.bodyIdMax;
        long j9 = (977 * j8) + j6 + (((long) iArr[3]) & BodyPartID.bodyIdMax) + (j7 >>> 32);
        int i5 = (int) j9;
        iArr2[3] = i5;
        long j10 = ((long) iArr[12]) & BodyPartID.bodyIdMax;
        long j11 = (977 * j10) + j8 + (((long) iArr[4]) & BodyPartID.bodyIdMax) + (j9 >>> 32);
        iArr2[4] = (int) j11;
        long j12 = ((long) iArr[13]) & BodyPartID.bodyIdMax;
        long j13 = (977 * j12) + j10 + (((long) iArr[5]) & BodyPartID.bodyIdMax) + (j11 >>> 32);
        iArr2[5] = (int) j13;
        long j14 = ((long) iArr[14]) & BodyPartID.bodyIdMax;
        long j15 = (977 * j14) + j12 + (((long) iArr[6]) & BodyPartID.bodyIdMax) + (j13 >>> 32);
        iArr2[6] = (int) j15;
        long j16 = ((long) iArr[15]) & BodyPartID.bodyIdMax;
        long j17 = (977 * j16) + j14 + (((long) iArr[7]) & BodyPartID.bodyIdMax) + (j15 >>> 32);
        iArr2[7] = (int) j17;
        long j18 = (j17 >>> 32) + j16;
        long j19 = j18 & BodyPartID.bodyIdMax;
        long j20 = (977 * j19) + (((long) i2) & BodyPartID.bodyIdMax);
        iArr2[0] = (int) j20;
        long j21 = j18 >>> 32;
        long j22 = (977 * j21) + j19 + (((long) i3) & BodyPartID.bodyIdMax) + (j20 >>> 32);
        iArr2[1] = (int) j22;
        long j23 = j21 + (((long) i4) & BodyPartID.bodyIdMax) + (j22 >>> 32);
        iArr2[2] = (int) j23;
        long j24 = (j23 >>> 32) + (((long) i5) & BodyPartID.bodyIdMax);
        iArr2[3] = (int) j24;
        if (((j24 >>> 32) == 0 ? 0 : Nat.p(8, 4, iArr2)) != 0 || (iArr2[7] == -1 && Nat256.k(iArr2, f78002a))) {
            Nat.b(8, 977, iArr2);
        }
    }

    /* JADX WARN: Code duplicated, block: B:9:0x003d  */
    public static void c(int i2, int[] iArr) {
        if (i2 == 0) {
            if (iArr[7] == -1) {
                return;
            } else {
                return;
            }
        }
        long j2 = ((long) i2) & BodyPartID.bodyIdMax;
        long j3 = (977 * j2) + (((long) iArr[0]) & BodyPartID.bodyIdMax);
        iArr[0] = (int) j3;
        long j4 = j2 + (((long) iArr[1]) & BodyPartID.bodyIdMax) + (j3 >>> 32);
        iArr[1] = (int) j4;
        long j5 = (j4 >>> 32) + (BodyPartID.bodyIdMax & ((long) iArr[2]));
        iArr[2] = (int) j5;
        if (((j5 >>> 32) != 0 ? Nat.p(8, 3, iArr) : 0) == 0) {
            if (iArr[7] == -1 || !Nat256.k(iArr, f78002a)) {
                return;
            }
        }
        Nat.b(8, 977, iArr);
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

    public static void f(int[] iArr, int[] iArr2, int[] iArr3) {
        if (Nat256.s(iArr, iArr2, iArr3) != 0) {
            Nat.w(8, 977, iArr3);
        }
    }
}
