package org.spongycastle.math.ec.custom.sec;

import defpackage.z81;
import org.bouncycastle.asn1.cmc.BodyPartID;
import org.spongycastle.math.raw.Nat;
import org.spongycastle.math.raw.Nat256;

/* JADX INFO: loaded from: classes5.dex */
public class SecP521R1Field {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final int[] f78019a = {-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 511};

    public static void a(int[] iArr, int[] iArr2, int[] iArr3) {
        int iA = Nat.a(16, iArr, iArr2, iArr3) + iArr[16] + iArr2[16];
        if (iA > 511 || (iA == 511 && Nat.i(16, iArr3, f78019a))) {
            iA = (Nat.n(iArr3) + iA) & 511;
        }
        iArr3[16] = iA;
    }

    public static void b(int[] iArr, int[] iArr2) {
        long j2;
        Nat256.r(iArr, iArr2);
        long j3 = iArr[8];
        long j4 = BodyPartID.bodyIdMax;
        long j5 = j3 & BodyPartID.bodyIdMax;
        int i2 = 7;
        int i3 = 16;
        int i4 = 0;
        while (true) {
            int i5 = i2 - 1;
            long j6 = ((long) iArr[i2 + 8]) & j4;
            long j7 = j6 * j6;
            j2 = j4;
            iArr2[i3 + 15] = ((int) (j7 >>> 33)) | (i4 << 31);
            int i6 = i3 - 2;
            iArr2[i3 + 14] = (int) (j7 >>> 1);
            i4 = (int) j7;
            if (i5 <= 0) {
                break;
            }
            i3 = i6;
            i2 = i5;
            j4 = j2;
        }
        long j8 = j5 * j5;
        long j9 = (((long) (i4 << 31)) & j2) | (j8 >>> 33);
        iArr2[16] = (int) j8;
        int i7 = ((int) (j8 >>> 32)) & 1;
        long j10 = ((long) iArr[9]) & j2;
        long j11 = ((long) iArr2[18]) & j2;
        long j12 = (j10 * j5) + j9;
        int i8 = (int) j12;
        iArr2[17] = (i8 << 1) | i7;
        int i9 = i8 >>> 31;
        long j13 = j11 + (j12 >>> 32);
        long j14 = ((long) iArr[10]) & j2;
        long j15 = ((long) iArr2[19]) & j2;
        long j16 = ((long) iArr2[20]) & j2;
        long j17 = (j14 * j5) + j13;
        int i10 = (int) j17;
        iArr2[18] = (i10 << 1) | i9;
        long jC = z81.c(j14, j10, j17 >>> 32, j15);
        long j18 = j16 + (jC >>> 32);
        long j19 = ((long) iArr[11]) & j2;
        long j20 = (((long) iArr2[21]) & j2) + (j18 >>> 32);
        long j21 = (((long) iArr2[22]) & j2) + (j20 >>> 32);
        long j22 = j20 & j2;
        long j23 = (j19 * j5) + (jC & j2);
        int i11 = (int) j23;
        iArr2[19] = (i10 >>> 31) | (i11 << 1);
        long jC2 = z81.c(j19, j10, j23 >>> 32, j18 & j2);
        long jC3 = z81.c(j19, j14, jC2 >>> 32, j22);
        long j24 = j21 + (jC3 >>> 32);
        long j25 = jC3 & j2;
        long j26 = ((long) iArr[12]) & j2;
        long j27 = (((long) iArr2[23]) & j2) + (j24 >>> 32);
        long j28 = (((long) iArr2[24]) & j2) + (j27 >>> 32);
        long j29 = j27 & j2;
        long j30 = (j26 * j5) + (jC2 & j2);
        int i12 = (int) j30;
        iArr2[20] = (i11 >>> 31) | (i12 << 1);
        long jC4 = z81.c(j26, j10, j30 >>> 32, j25);
        long jC5 = z81.c(j26, j14, jC4 >>> 32, j24 & j2);
        long jC6 = z81.c(j26, j19, jC5 >>> 32, j29);
        long j31 = jC5 & j2;
        long j32 = j28 + (jC6 >>> 32);
        long j33 = ((long) iArr[13]) & j2;
        long j34 = (((long) iArr2[25]) & j2) + (j32 >>> 32);
        long j35 = j32 & j2;
        long j36 = (((long) iArr2[26]) & j2) + (j34 >>> 32);
        long j37 = j34 & j2;
        long j38 = (j33 * j5) + (jC4 & j2);
        int i13 = (int) j38;
        iArr2[21] = (i12 >>> 31) | (i13 << 1);
        int i14 = i13 >>> 31;
        long jC7 = z81.c(j33, j10, j38 >>> 32, j31);
        long jC8 = z81.c(j33, j14, jC7 >>> 32, jC6 & j2);
        long jC9 = z81.c(j33, j19, jC8 >>> 32, j35);
        long j39 = jC8 & j2;
        long jC10 = z81.c(j33, j26, jC9 >>> 32, j37);
        long j40 = j36 + (jC10 >>> 32);
        long j41 = jC10 & j2;
        long j42 = ((long) iArr[14]) & j2;
        long j43 = (((long) iArr2[27]) & j2) + (j40 >>> 32);
        long j44 = j40 & j2;
        long j45 = (((long) iArr2[28]) & j2) + (j43 >>> 32);
        long j46 = (j42 * j5) + (jC7 & j2);
        int i15 = (int) j46;
        iArr2[22] = (i15 << 1) | i14;
        long jC11 = z81.c(j42, j10, j46 >>> 32, j39);
        long jC12 = z81.c(j42, j14, jC11 >>> 32, jC9 & j2);
        long jC13 = z81.c(j42, j19, jC12 >>> 32, j41);
        long j47 = jC12 & j2;
        long jC14 = z81.c(j42, j26, jC13 >>> 32, j44);
        long jC15 = z81.c(j42, j33, jC14 >>> 32, j43 & j2);
        long j48 = jC14 & j2;
        long j49 = j45 + (jC15 >>> 32);
        long j50 = jC15 & j2;
        long j51 = ((long) iArr[15]) & j2;
        long j52 = (((long) iArr2[29]) & j2) + (j49 >>> 32);
        long j53 = (((long) iArr2[30]) & j2) + (j52 >>> 32);
        long j54 = (j51 * j5) + (jC11 & j2);
        int i16 = (int) j54;
        iArr2[23] = (i15 >>> 31) | (i16 << 1);
        int i17 = i16 >>> 31;
        long jC16 = z81.c(j51, j10, j54 >>> 32, j47);
        long jC17 = z81.c(j51, j14, jC16 >>> 32, jC13 & j2);
        long jC18 = z81.c(j51, j19, jC17 >>> 32, j48);
        long jC19 = z81.c(j51, j26, jC18 >>> 32, j50);
        long jC20 = z81.c(j51, j33, jC19 >>> 32, j49 & j2);
        long jC21 = z81.c(j51, j42, jC20 >>> 32, j52 & j2);
        long j55 = j53 + (jC21 >>> 32);
        int i18 = (int) jC16;
        iArr2[24] = (i18 << 1) | i17;
        int i19 = (int) jC17;
        iArr2[25] = (i18 >>> 31) | (i19 << 1);
        int i20 = (int) jC18;
        iArr2[26] = (i20 << 1) | (i19 >>> 31);
        int i21 = (int) jC19;
        iArr2[27] = (i20 >>> 31) | (i21 << 1);
        int i22 = i21 >>> 31;
        int i23 = (int) jC20;
        iArr2[28] = i22 | (i23 << 1);
        int i24 = i23 >>> 31;
        int i25 = (int) jC21;
        iArr2[29] = i24 | (i25 << 1);
        int i26 = i25 >>> 31;
        int i27 = (int) j55;
        iArr2[30] = i26 | (i27 << 1);
        iArr2[31] = (i27 >>> 31) | ((iArr2[31] + ((int) (j55 >>> 32))) << 1);
        int iD = Nat256.d(iArr2, iArr2);
        int i28 = 0;
        int iC = Nat256.c(iArr2, 24, iArr2, 16, Nat256.c(iArr2, 0, iArr2, 8, 0) + iD) + iD;
        int[] iArr3 = new int[8];
        Nat256.e(iArr, iArr, iArr3);
        int[] iArr4 = new int[16];
        Nat256.r(iArr3, iArr4);
        Nat.f(32, Nat.x(16, 8, iArr4, iArr2) + iC, 24, iArr2);
        int i29 = iArr[16];
        long j56 = ((long) (i29 << 1)) & j2;
        long j57 = 0;
        do {
            int i30 = 16 + i28;
            long j58 = ((((long) iArr[i28]) & j2) * j56) + (((long) iArr2[i30]) & j2) + j57;
            iArr2[i30] = (int) j58;
            j57 = j58 >>> 32;
            i28++;
        } while (i28 < 16);
        iArr2[32] = (i29 * i29) + ((int) j57);
    }

    public static void c(int[] iArr, int[] iArr2, int[] iArr3) {
        int[] iArr4 = new int[33];
        Nat256.p(iArr, iArr2, iArr4);
        long j2 = ((long) iArr2[8]) & BodyPartID.bodyIdMax;
        long j3 = ((long) iArr2[9]) & BodyPartID.bodyIdMax;
        long j4 = ((long) iArr2[10]) & BodyPartID.bodyIdMax;
        long j5 = ((long) iArr2[11]) & BodyPartID.bodyIdMax;
        long j6 = ((long) iArr2[12]) & BodyPartID.bodyIdMax;
        long j7 = ((long) iArr2[13]) & BodyPartID.bodyIdMax;
        long j8 = ((long) iArr2[14]) & BodyPartID.bodyIdMax;
        long j9 = ((long) iArr2[15]) & BodyPartID.bodyIdMax;
        long j10 = ((long) iArr[8]) & BodyPartID.bodyIdMax;
        long j11 = j10 * j2;
        iArr4[16] = (int) j11;
        int i2 = 32;
        long j12 = (j10 * j3) + (j11 >>> 32);
        iArr4[17] = (int) j12;
        long j13 = (j10 * j4) + (j12 >>> 32);
        iArr4[18] = (int) j13;
        long j14 = (j10 * j5) + (j13 >>> 32);
        iArr4[19] = (int) j14;
        long j15 = (j10 * j6) + (j14 >>> 32);
        iArr4[20] = (int) j15;
        long j16 = (j10 * j7) + (j15 >>> 32);
        iArr4[21] = (int) j16;
        long j17 = (j10 * j8) + (j16 >>> 32);
        iArr4[22] = (int) j17;
        long j18 = (j10 * j9) + (j17 >>> 32);
        iArr4[23] = (int) j18;
        iArr4[24] = (int) (j18 >>> 32);
        int i3 = 16;
        int i4 = 1;
        while (i4 < 8) {
            int i5 = i3 + 1;
            int i6 = i4;
            long j19 = j6;
            int i7 = i2;
            long j20 = ((long) iArr[8 + i4]) & BodyPartID.bodyIdMax;
            long j21 = j7;
            long j22 = (j20 * j2) + (((long) iArr4[i5]) & BodyPartID.bodyIdMax);
            iArr4[i5] = (int) j22;
            int i8 = i3 + 2;
            long j23 = (j20 * j3) + (((long) iArr4[i8]) & BodyPartID.bodyIdMax) + (j22 >>> i7);
            iArr4[i8] = (int) j23;
            int i9 = i3 + 3;
            long j24 = (j20 * j4) + (((long) iArr4[i9]) & BodyPartID.bodyIdMax) + (j23 >>> i7);
            iArr4[i9] = (int) j24;
            int i10 = i3 + 4;
            long j25 = (j20 * j5) + (((long) iArr4[i10]) & BodyPartID.bodyIdMax) + (j24 >>> i7);
            iArr4[i10] = (int) j25;
            int i11 = i3 + 5;
            long j26 = (j20 * j19) + (((long) iArr4[i11]) & BodyPartID.bodyIdMax) + (j25 >>> i7);
            iArr4[i11] = (int) j26;
            int i12 = i3 + 6;
            long j27 = (j20 * j21) + (((long) iArr4[i12]) & BodyPartID.bodyIdMax) + (j26 >>> i7);
            iArr4[i12] = (int) j27;
            int i13 = i3 + 7;
            long j28 = (j20 * j8) + (((long) iArr4[i13]) & BodyPartID.bodyIdMax) + (j27 >>> i7);
            iArr4[i13] = (int) j28;
            int i14 = i3 + 8;
            long j29 = (j20 * j9) + (((long) iArr4[i14]) & BodyPartID.bodyIdMax) + (j28 >>> i7);
            iArr4[i14] = (int) j29;
            iArr4[i3 + 9] = (int) (j29 >>> i7);
            i4 = i6 + 1;
            i3 = i5;
            i2 = i7;
            j6 = j19;
            j4 = j4;
            j7 = j21;
        }
        int i15 = i2;
        int iD = Nat256.d(iArr4, iArr4);
        int i16 = 0;
        int iC = Nat256.c(iArr4, 24, iArr4, 16, Nat256.c(iArr4, 0, iArr4, 8, 0) + iD) + iD;
        int[] iArr5 = new int[8];
        int[] iArr6 = new int[8];
        boolean z = Nat256.e(iArr, iArr, iArr5) != Nat256.e(iArr2, iArr2, iArr6);
        int[] iArr7 = new int[16];
        Nat256.p(iArr5, iArr6, iArr7);
        Nat.f(i15, iC + (z ? Nat.d(16, 8, iArr7, iArr4) : Nat.x(16, 8, iArr7, iArr4)), 24, iArr4);
        int i17 = iArr[16];
        int i18 = iArr2[16];
        long j30 = ((long) i17) & BodyPartID.bodyIdMax;
        long j31 = ((long) i18) & BodyPartID.bodyIdMax;
        long j32 = 0;
        while (true) {
            long j33 = j30;
            int i19 = 16 + i16;
            long j34 = ((((long) iArr[i16]) & BodyPartID.bodyIdMax) * j31) + (j33 * (((long) iArr2[i16]) & BodyPartID.bodyIdMax)) + (((long) iArr4[i19]) & BodyPartID.bodyIdMax) + j32;
            iArr4[i19] = (int) j34;
            long j35 = j34 >>> 32;
            i16++;
            if (i16 >= 16) {
                iArr4[32] = (i17 * i18) + ((int) j35);
                d(iArr4, iArr3);
                return;
            } else {
                j32 = j35;
                j30 = j33;
            }
        }
    }

    public static void d(int[] iArr, int[] iArr2) {
        int i2 = iArr[32];
        int i3 = i2;
        int i4 = 16;
        while (true) {
            int i5 = i4 - 1;
            if (i5 < 0) {
                break;
            }
            int i6 = iArr[i4 + 15];
            iArr2[i5] = (i3 << (-9)) | (i6 >>> 9);
            i3 = i6;
            i4 = i5;
        }
        int iE = Nat.e(16, iArr, iArr2) + ((i3 << (-9)) >>> 23) + (i2 >>> 9);
        if (iE > 511 || (iE == 511 && Nat.i(16, iArr2, f78019a))) {
            iE = (Nat.n(iArr2) + iE) & 511;
        }
        iArr2[16] = iE;
    }

    public static void e(int[] iArr) {
        int i2 = iArr[16];
        int iG = Nat.g(16, i2 >>> 9, iArr) + (i2 & 511);
        if (iG > 511 || (iG == 511 && Nat.i(16, iArr, f78019a))) {
            iG = (Nat.n(iArr) + iG) & 511;
        }
        iArr[16] = iG;
    }

    public static void f(int[] iArr, int[] iArr2) {
        int[] iArr3 = new int[33];
        b(iArr, iArr3);
        d(iArr3, iArr2);
    }

    public static void g(int[] iArr, int[] iArr2, int[] iArr3) {
        int iV = (Nat.v(16, iArr, iArr2, iArr3) + iArr[16]) - iArr2[16];
        if (iV < 0) {
            int i2 = 0;
            int i3 = 0;
            while (true) {
                if (i3 >= 16) {
                    i2 = -1;
                    break;
                }
                int i4 = iArr3[i3] - 1;
                iArr3[i3] = i4;
                if (i4 != -1) {
                    break;
                } else {
                    i3++;
                }
            }
            iV = (iV + i2) & 511;
        }
        iArr3[16] = iV;
    }
}
