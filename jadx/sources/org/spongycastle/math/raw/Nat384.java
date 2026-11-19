package org.spongycastle.math.raw;

import defpackage.z81;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes5.dex */
public abstract class Nat384 {
    public static void a(int[] iArr, int[] iArr2, int[] iArr3) {
        Nat192.n(iArr, iArr2, iArr3);
        long j2 = ((long) iArr2[6]) & BodyPartID.bodyIdMax;
        long j3 = ((long) iArr2[7]) & BodyPartID.bodyIdMax;
        long j4 = ((long) iArr2[8]) & BodyPartID.bodyIdMax;
        long j5 = ((long) iArr2[9]) & BodyPartID.bodyIdMax;
        long j6 = ((long) iArr2[10]) & BodyPartID.bodyIdMax;
        long j7 = ((long) iArr2[11]) & BodyPartID.bodyIdMax;
        long j8 = ((long) iArr[6]) & BodyPartID.bodyIdMax;
        long j9 = j8 * j2;
        iArr3[12] = (int) j9;
        long j10 = (j8 * j3) + (j9 >>> 32);
        iArr3[13] = (int) j10;
        long j11 = (j8 * j4) + (j10 >>> 32);
        iArr3[14] = (int) j11;
        long j12 = (j8 * j5) + (j11 >>> 32);
        iArr3[15] = (int) j12;
        long j13 = (j8 * j6) + (j12 >>> 32);
        iArr3[16] = (int) j13;
        long j14 = (j8 * j7) + (j13 >>> 32);
        iArr3[17] = (int) j14;
        iArr3[18] = (int) (j14 >>> 32);
        int i2 = 12;
        int i3 = 1;
        while (i3 < 6) {
            int i4 = i2 + 1;
            int i5 = i3;
            long j15 = ((long) iArr[6 + i3]) & BodyPartID.bodyIdMax;
            long j16 = j4;
            long j17 = (j15 * j2) + (((long) iArr3[i4]) & BodyPartID.bodyIdMax);
            iArr3[i4] = (int) j17;
            int i6 = i2 + 2;
            long j18 = (j15 * j3) + (((long) iArr3[i6]) & BodyPartID.bodyIdMax) + (j17 >>> 32);
            iArr3[i6] = (int) j18;
            int i7 = i2 + 3;
            long j19 = (j15 * j16) + (((long) iArr3[i7]) & BodyPartID.bodyIdMax) + (j18 >>> 32);
            iArr3[i7] = (int) j19;
            int i8 = i2 + 4;
            long j20 = (j15 * j5) + (((long) iArr3[i8]) & BodyPartID.bodyIdMax) + (j19 >>> 32);
            iArr3[i8] = (int) j20;
            int i9 = i2 + 5;
            long j21 = (j15 * j6) + (((long) iArr3[i9]) & BodyPartID.bodyIdMax) + (j20 >>> 32);
            iArr3[i9] = (int) j21;
            int i10 = i2 + 6;
            long j22 = (j15 * j7) + (((long) iArr3[i10]) & BodyPartID.bodyIdMax) + (j21 >>> 32);
            iArr3[i10] = (int) j22;
            iArr3[i2 + 7] = (int) (j22 >>> 32);
            i3 = i5 + 1;
            i2 = i4;
            j4 = j16;
        }
        int iD = Nat192.d(iArr3, iArr3);
        int iC = Nat192.c(iArr3, 18, iArr3, 12, Nat192.c(iArr3, 0, iArr3, 6, 0) + iD) + iD;
        int[] iArr4 = new int[6];
        int[] iArr5 = new int[6];
        boolean z = Nat192.e(iArr, iArr, iArr4) != Nat192.e(iArr2, iArr2, iArr5);
        int[] iArr6 = new int[12];
        Nat192.n(iArr4, iArr5, iArr6);
        Nat.f(24, iC + (z ? Nat.d(12, 6, iArr6, iArr3) : Nat.x(12, 6, iArr6, iArr3)), 18, iArr3);
    }

    public static void b(int[] iArr, int[] iArr2) {
        Nat192.p(iArr, iArr2);
        long j2 = iArr[6];
        long j3 = BodyPartID.bodyIdMax;
        long j4 = j2 & BodyPartID.bodyIdMax;
        int i2 = 5;
        int i3 = 12;
        int i4 = 0;
        while (true) {
            int i5 = i2 - 1;
            long j5 = ((long) iArr[i2 + 6]) & j3;
            long j6 = j5 * j5;
            long j7 = j3;
            iArr2[i3 + 11] = ((int) (j6 >>> 33)) | (i4 << 31);
            int i6 = i3 - 2;
            iArr2[i3 + 10] = (int) (j6 >>> 1);
            i4 = (int) j6;
            if (i5 <= 0) {
                long j8 = j4 * j4;
                iArr2[12] = (int) j8;
                long j9 = ((long) iArr[7]) & j7;
                long j10 = ((long) iArr2[14]) & j7;
                long j11 = (j9 * j4) + ((((long) (i4 << 31)) & j7) | (j8 >>> 33));
                int i7 = (int) j11;
                iArr2[13] = (i7 << 1) | (((int) (j8 >>> 32)) & 1);
                long j12 = ((long) iArr[8]) & j7;
                long j13 = ((long) iArr2[15]) & j7;
                long j14 = ((long) iArr2[16]) & j7;
                long j15 = (j12 * j4) + j10 + (j11 >>> 32);
                int i8 = (int) j15;
                iArr2[14] = (i8 << 1) | (i7 >>> 31);
                long jC = z81.c(j12, j9, j15 >>> 32, j13);
                long j16 = j14 + (jC >>> 32);
                long j17 = ((long) iArr[9]) & j7;
                long j18 = (((long) iArr2[17]) & j7) + (j16 >>> 32);
                long j19 = (((long) iArr2[18]) & j7) + (j18 >>> 32);
                long j20 = (j17 * j4) + (jC & j7);
                int i9 = (int) j20;
                iArr2[15] = (i8 >>> 31) | (i9 << 1);
                long jC2 = z81.c(j17, j9, j20 >>> 32, j16 & j7);
                long jC3 = z81.c(j17, j12, jC2 >>> 32, j18 & j7);
                long j21 = j19 + (jC3 >>> 32);
                long j22 = jC3 & j7;
                long j23 = ((long) iArr[10]) & j7;
                long j24 = (((long) iArr2[19]) & j7) + (j21 >>> 32);
                long j25 = j21 & j7;
                long j26 = (((long) iArr2[20]) & j7) + (j24 >>> 32);
                long j27 = j24 & j7;
                long j28 = (j23 * j4) + (jC2 & j7);
                int i10 = (int) j28;
                iArr2[16] = (i10 << 1) | (i9 >>> 31);
                long jC4 = z81.c(j23, j9, j28 >>> 32, j22);
                long jC5 = z81.c(j23, j12, jC4 >>> 32, j25);
                long jC6 = z81.c(j23, j17, jC5 >>> 32, j27);
                long j29 = jC5 & j7;
                long j30 = j26 + (jC6 >>> 32);
                long j31 = jC6 & j7;
                long j32 = ((long) iArr[11]) & j7;
                long j33 = (((long) iArr2[21]) & j7) + (j30 >>> 32);
                long j34 = j30 & j7;
                long j35 = (((long) iArr2[22]) & j7) + (j33 >>> 32);
                long j36 = j33 & j7;
                long j37 = (j32 * j4) + (jC4 & j7);
                int i11 = (int) j37;
                iArr2[17] = (i10 >>> 31) | (i11 << 1);
                int i12 = i11 >>> 31;
                long jC7 = z81.c(j32, j9, j37 >>> 32, j29);
                long jC8 = z81.c(j32, j12, jC7 >>> 32, j31);
                long jC9 = z81.c(j32, j17, jC8 >>> 32, j34);
                long jC10 = z81.c(j32, j23, jC9 >>> 32, j36);
                long j38 = j35 + (jC10 >>> 32);
                int i13 = (int) jC7;
                iArr2[18] = i12 | (i13 << 1);
                int i14 = i13 >>> 31;
                int i15 = (int) jC8;
                iArr2[19] = i14 | (i15 << 1);
                int i16 = i15 >>> 31;
                int i17 = (int) jC9;
                iArr2[20] = i16 | (i17 << 1);
                int i18 = i17 >>> 31;
                int i19 = (int) jC10;
                iArr2[21] = i18 | (i19 << 1);
                int i20 = i19 >>> 31;
                int i21 = (int) j38;
                iArr2[22] = i20 | (i21 << 1);
                iArr2[23] = ((iArr2[23] + ((int) (j38 >>> 32))) << 1) | (i21 >>> 31);
                int iD = Nat192.d(iArr2, iArr2);
                int iC = Nat192.c(iArr2, 18, iArr2, 12, Nat192.c(iArr2, 0, iArr2, 6, 0) + iD) + iD;
                int[] iArr3 = new int[6];
                Nat192.e(iArr, iArr, iArr3);
                int[] iArr4 = new int[12];
                Nat192.p(iArr3, iArr4);
                Nat.f(24, Nat.x(12, 6, iArr4, iArr2) + iC, 18, iArr2);
                return;
            }
            i3 = i6;
            i2 = i5;
            j3 = j7;
        }
    }
}
