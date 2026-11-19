package org.bouncycastle.math.ec.rfc7748;

import defpackage.z81;
import org.bouncycastle.math.raw.Mod;

/* JADX INFO: loaded from: classes5.dex */
public abstract class X25519Field {
    private static final int M24 = 16777215;
    private static final int M25 = 33554431;
    private static final int M26 = 67108863;
    private static final int[] P32 = {-19, -1, -1, -1, -1, -1, -1, Integer.MAX_VALUE};
    private static final int[] ROOT_NEG_ONE = {-32595792, -7943725, 4688975, 3500415, 6194736, 33281959, -12573105, -1002827, 163343, 5703241};
    public static final int SIZE = 10;

    public static void add(int[] iArr, int[] iArr2, int[] iArr3) {
        for (int i2 = 0; i2 < 10; i2++) {
            iArr3[i2] = iArr[i2] + iArr2[i2];
        }
    }

    public static void addOne(int[] iArr) {
        iArr[0] = iArr[0] + 1;
    }

    public static void apm(int[] iArr, int[] iArr2, int[] iArr3, int[] iArr4) {
        for (int i2 = 0; i2 < 10; i2++) {
            int i3 = iArr[i2];
            int i4 = iArr2[i2];
            iArr3[i2] = i3 + i4;
            iArr4[i2] = i3 - i4;
        }
    }

    public static int areEqual(int[] iArr, int[] iArr2) {
        int i2 = 0;
        for (int i3 = 0; i3 < 10; i3++) {
            i2 |= iArr[i3] ^ iArr2[i3];
        }
        return (((i2 >>> 1) | (i2 & 1)) - 1) >> 31;
    }

    public static boolean areEqualVar(int[] iArr, int[] iArr2) {
        return areEqual(iArr, iArr2) != 0;
    }

    public static void carry(int[] iArr) {
        int i2 = iArr[0];
        int i3 = iArr[1];
        int i4 = iArr[2];
        int i5 = iArr[3];
        int i6 = iArr[4];
        int i7 = iArr[5];
        int i8 = iArr[6];
        int i9 = iArr[7];
        int i10 = iArr[8];
        int i11 = iArr[9];
        int i12 = i4 + (i3 >> 26);
        int i13 = i3 & M26;
        int i14 = i6 + (i5 >> 26);
        int i15 = i5 & M26;
        int i16 = i9 + (i8 >> 26);
        int i17 = i8 & M26;
        int i18 = i11 + (i10 >> 26);
        int i19 = i10 & M26;
        int i20 = i15 + (i12 >> 25);
        int i21 = i12 & M25;
        int i22 = i7 + (i14 >> 25);
        int i23 = i14 & M25;
        int i24 = i19 + (i16 >> 25);
        int i25 = i16 & M25;
        int i26 = ((i18 >> 25) * 38) + i2;
        int i27 = i18 & M25;
        int i28 = i13 + (i26 >> 26);
        int i29 = i26 & M26;
        int i30 = i17 + (i22 >> 26);
        int i31 = i22 & M26;
        int i32 = i21 + (i28 >> 26);
        int i33 = i28 & M26;
        int i34 = i23 + (i20 >> 26);
        int i35 = i20 & M26;
        int i36 = i25 + (i30 >> 26);
        int i37 = i30 & M26;
        int i38 = i27 + (i24 >> 26);
        int i39 = i24 & M26;
        iArr[0] = i29;
        iArr[1] = i33;
        iArr[2] = i32;
        iArr[3] = i35;
        iArr[4] = i34;
        iArr[5] = i31;
        iArr[6] = i37;
        iArr[7] = i36;
        iArr[8] = i39;
        iArr[9] = i38;
    }

    public static void cmov(int i2, int[] iArr, int i3, int[] iArr2, int i4) {
        for (int i5 = 0; i5 < 10; i5++) {
            int i6 = i4 + i5;
            int i7 = iArr2[i6];
            iArr2[i6] = i7 ^ ((iArr[i3 + i5] ^ i7) & i2);
        }
    }

    public static void cnegate(int i2, int[] iArr) {
        int i3 = 0 - i2;
        for (int i4 = 0; i4 < 10; i4++) {
            iArr[i4] = (iArr[i4] ^ i3) - i3;
        }
    }

    public static void copy(int[] iArr, int i2, int[] iArr2, int i3) {
        for (int i4 = 0; i4 < 10; i4++) {
            iArr2[i3 + i4] = iArr[i2 + i4];
        }
    }

    public static int[] create() {
        return new int[10];
    }

    public static int[] createTable(int i2) {
        return new int[i2 * 10];
    }

    public static void cswap(int i2, int[] iArr, int[] iArr2) {
        int i3 = 0 - i2;
        for (int i4 = 0; i4 < 10; i4++) {
            int i5 = iArr[i4];
            int i6 = iArr2[i4];
            int i7 = (i5 ^ i6) & i3;
            iArr[i4] = i5 ^ i7;
            iArr2[i4] = i6 ^ i7;
        }
    }

    public static void decode(byte[] bArr, int i2, int[] iArr) {
        decode128(bArr, i2, iArr, 0);
        decode128(bArr, i2 + 16, iArr, 5);
        iArr[9] = iArr[9] & M24;
    }

    private static void decode128(byte[] bArr, int i2, int[] iArr, int i3) {
        int iDecode32 = decode32(bArr, i2);
        int iDecode33 = decode32(bArr, i2 + 4);
        int iDecode34 = decode32(bArr, i2 + 8);
        int iDecode35 = decode32(bArr, i2 + 12);
        iArr[i3] = iDecode32 & M26;
        iArr[i3 + 1] = ((iDecode32 >>> 26) | (iDecode33 << 6)) & M26;
        iArr[i3 + 2] = ((iDecode33 >>> 20) | (iDecode34 << 12)) & M25;
        iArr[i3 + 3] = M26 & ((iDecode35 << 19) | (iDecode34 >>> 13));
        iArr[i3 + 4] = iDecode35 >>> 7;
    }

    private static int decode32(byte[] bArr, int i2) {
        return (bArr[i2 + 3] << 24) | (bArr[i2] & 255) | ((bArr[i2 + 1] & 255) << 8) | ((bArr[i2 + 2] & 255) << 16);
    }

    public static void encode(int[] iArr, int i2, byte[] bArr, int i3) {
        encode128(iArr, i2, bArr, i3);
        encode128(iArr, i2 + 5, bArr, i3 + 16);
    }

    private static void encode128(int[] iArr, int i2, byte[] bArr, int i3) {
        int i4 = iArr[i2];
        int i5 = iArr[i2 + 1];
        int i6 = iArr[i2 + 2];
        int i7 = iArr[i2 + 3];
        int i8 = iArr[i2 + 4];
        encode32((i5 << 26) | i4, bArr, i3);
        encode32((i5 >>> 6) | (i6 << 20), bArr, i3 + 4);
        encode32((i6 >>> 12) | (i7 << 13), bArr, i3 + 8);
        encode32((i8 << 7) | (i7 >>> 19), bArr, i3 + 12);
    }

    private static void encode32(int i2, byte[] bArr, int i3) {
        bArr[i3] = (byte) i2;
        bArr[i3 + 1] = (byte) (i2 >>> 8);
        bArr[i3 + 2] = (byte) (i2 >>> 16);
        bArr[i3 + 3] = (byte) (i2 >>> 24);
    }

    public static void inv(int[] iArr, int[] iArr2) {
        int[] iArrCreate = create();
        int[] iArr3 = new int[8];
        copy(iArr, 0, iArrCreate, 0);
        normalize(iArrCreate);
        encode(iArrCreate, iArr3, 0);
        Mod.modOddInverse(P32, iArr3, iArr3);
        decode(iArr3, 0, iArr2);
    }

    public static void invVar(int[] iArr, int[] iArr2) {
        int[] iArrCreate = create();
        int[] iArr3 = new int[8];
        copy(iArr, 0, iArrCreate, 0);
        normalize(iArrCreate);
        encode(iArrCreate, iArr3, 0);
        Mod.modOddInverseVar(P32, iArr3, iArr3);
        decode(iArr3, 0, iArr2);
    }

    public static int isOne(int[] iArr) {
        int i2 = iArr[0] ^ 1;
        for (int i3 = 1; i3 < 10; i3++) {
            i2 |= iArr[i3];
        }
        return (((i2 >>> 1) | (i2 & 1)) - 1) >> 31;
    }

    public static boolean isOneVar(int[] iArr) {
        return isOne(iArr) != 0;
    }

    public static int isZero(int[] iArr) {
        int i2 = 0;
        for (int i3 = 0; i3 < 10; i3++) {
            i2 |= iArr[i3];
        }
        return (((i2 >>> 1) | (i2 & 1)) - 1) >> 31;
    }

    public static boolean isZeroVar(int[] iArr) {
        return isZero(iArr) != 0;
    }

    public static void mul(int[] iArr, int[] iArr2, int[] iArr3) {
        int i2 = iArr[0];
        int i3 = iArr2[0];
        int i4 = iArr[1];
        int i5 = iArr2[1];
        int i6 = iArr[2];
        int i7 = iArr2[2];
        int i8 = iArr[3];
        int i9 = iArr2[3];
        int i10 = iArr[4];
        int i11 = iArr2[4];
        int i12 = iArr[5];
        int i13 = iArr2[5];
        int i14 = iArr[6];
        int i15 = iArr2[6];
        int i16 = iArr[7];
        int i17 = iArr2[7];
        int i18 = iArr[8];
        int i19 = iArr2[8];
        int i20 = iArr[9];
        int i21 = iArr2[9];
        long j2 = i2;
        long j3 = i3;
        long j4 = j2 * j3;
        long j5 = i5;
        long j6 = j2 * j5;
        long j7 = i4;
        long j8 = (j7 * j3) + j6;
        long j9 = i7;
        long j10 = (j7 * j5) + (j2 * j9);
        long j11 = i6;
        long j12 = (j11 * j3) + j10;
        long j13 = ((j11 * j5) + (j7 * j9)) << 1;
        long j14 = i9;
        long j15 = j2 * j14;
        long j16 = i8;
        long jC = z81.c(j16, j3, j15, j13);
        long j17 = (j11 * j9) << 1;
        long j18 = i11;
        long j19 = i10;
        long jC2 = z81.c(j19, j3, (j16 * j5) + (j7 * j14) + (j2 * j18), j17);
        long j20 = ((j19 * j5) + ((j16 * j9) + ((j11 * j14) + (j7 * j18)))) << 1;
        long j21 = (j16 * j14) + (((j19 * j9) + (j11 * j18)) << 1);
        long j22 = (j19 * j14) + (j16 * j18);
        long j23 = (j19 * j18) << 1;
        long j24 = i12;
        long j25 = i13;
        long j26 = j24 * j25;
        long j27 = i15;
        long j28 = j24 * j27;
        long j29 = i14;
        long j30 = (j29 * j25) + j28;
        long j31 = i17;
        long j32 = (j29 * j27) + (j24 * j31);
        long j33 = i16;
        long j34 = i19;
        long j35 = j24 * j34;
        long j36 = i18;
        long jC3 = z81.c(j36, j25, j35, ((j33 * j27) + (j29 * j31)) << 1);
        long j37 = i21;
        long j38 = (j36 * j27) + (j29 * j34) + (j24 * j37);
        long j39 = i20;
        long jC4 = z81.c(j39, j25, j38, (j33 * j31) << 1);
        long j40 = j4 - (((j27 * j39) + ((j36 * j31) + ((j33 * j34) + (j29 * j37)))) * 76);
        long j41 = j8 - (((j36 * j34) + (((j31 * j39) + (j33 * j37)) << 1)) * 38);
        long j42 = j12 - (((j39 * j34) + (j36 * j37)) * 38);
        long j43 = jC - ((j37 * j39) * 76);
        long j44 = j20 - j26;
        long j45 = j21 - j30;
        long j46 = j22 - ((j33 * j25) + j32);
        long j47 = j23 - jC3;
        long j48 = i2 + i12;
        long j49 = i3 + i13;
        long j50 = j48 * j49;
        long j51 = i5 + i15;
        long j52 = j48 * j51;
        long j53 = i4 + i14;
        long j54 = (j53 * j49) + j52;
        long j55 = i7 + i17;
        long j56 = i6 + i16;
        long j57 = (j56 * j49) + (j53 * j51) + (j48 * j55);
        long j58 = ((j56 * j51) + (j53 * j55)) << 1;
        long j59 = i9 + i19;
        long j60 = i8 + i18;
        long jC5 = z81.c(j60, j49, j48 * j59, j58);
        long j61 = i11 + i21;
        long j62 = i10 + i20;
        long jC6 = z81.c(j62, j49, (j60 * j51) + (j53 * j59) + (j48 * j61), (j56 * j55) << 1);
        long j63 = ((j51 * j62) + ((j60 * j55) + ((j56 * j59) + (j53 * j61)))) << 1;
        long j64 = (j60 * j59) + (((j55 * j62) + (j56 * j61)) << 1);
        long j65 = (j62 * j59) + (j60 * j61);
        long j66 = (j61 * j62) << 1;
        long j67 = (jC5 - j43) + j47;
        int i22 = ((int) j67) & M26;
        long j68 = ((jC6 - jC2) - jC4) + (j67 >> 26);
        int i23 = ((int) j68) & M25;
        long j69 = ((((j68 >> 25) + j63) - j44) * 38) + j40;
        iArr3[0] = ((int) j69) & M26;
        long j70 = ((j64 - j45) * 38) + j41 + (j69 >> 26);
        iArr3[1] = ((int) j70) & M26;
        long j71 = ((j65 - j46) * 38) + j42 + (j70 >> 26);
        iArr3[2] = ((int) j71) & M25;
        long j72 = ((j66 - j47) * 38) + j43 + (j71 >> 25);
        iArr3[3] = ((int) j72) & M26;
        long jC7 = z81.c(jC4, 38L, jC2, j72 >> 26);
        iArr3[4] = ((int) jC7) & M25;
        long j73 = (j50 - j40) + j44 + (jC7 >> 25);
        iArr3[5] = ((int) j73) & M26;
        long j74 = (j54 - j41) + j45 + (j73 >> 26);
        iArr3[6] = ((int) j74) & M26;
        long j75 = (j57 - j42) + j46 + (j74 >> 26);
        iArr3[7] = ((int) j75) & M25;
        long j76 = (j75 >> 25) + ((long) i22);
        iArr3[8] = ((int) j76) & M26;
        iArr3[9] = i23 + ((int) (j76 >> 26));
    }

    public static void negate(int[] iArr, int[] iArr2) {
        for (int i2 = 0; i2 < 10; i2++) {
            iArr2[i2] = -iArr[i2];
        }
    }

    public static void normalize(int[] iArr) {
        int i2 = (iArr[9] >>> 23) & 1;
        reduce(iArr, i2);
        reduce(iArr, -i2);
    }

    public static void one(int[] iArr) {
        iArr[0] = 1;
        for (int i2 = 1; i2 < 10; i2++) {
            iArr[i2] = 0;
        }
    }

    private static void powPm5d8(int[] iArr, int[] iArr2, int[] iArr3) {
        sqr(iArr, iArr2);
        mul(iArr, iArr2, iArr2);
        int[] iArrCreate = create();
        sqr(iArr2, iArrCreate);
        mul(iArr, iArrCreate, iArrCreate);
        sqr(iArrCreate, 2, iArrCreate);
        mul(iArr2, iArrCreate, iArrCreate);
        int[] iArrCreate2 = create();
        sqr(iArrCreate, 5, iArrCreate2);
        mul(iArrCreate, iArrCreate2, iArrCreate2);
        int[] iArrCreate3 = create();
        sqr(iArrCreate2, 5, iArrCreate3);
        mul(iArrCreate, iArrCreate3, iArrCreate3);
        sqr(iArrCreate3, 10, iArrCreate);
        mul(iArrCreate2, iArrCreate, iArrCreate);
        sqr(iArrCreate, 25, iArrCreate2);
        mul(iArrCreate, iArrCreate2, iArrCreate2);
        sqr(iArrCreate2, 25, iArrCreate3);
        mul(iArrCreate, iArrCreate3, iArrCreate3);
        sqr(iArrCreate3, 50, iArrCreate);
        mul(iArrCreate2, iArrCreate, iArrCreate);
        sqr(iArrCreate, 125, iArrCreate2);
        mul(iArrCreate, iArrCreate2, iArrCreate2);
        sqr(iArrCreate2, 2, iArrCreate);
        mul(iArrCreate, iArr, iArr3);
    }

    private static void reduce(int[] iArr, int i2) {
        int i3 = iArr[9];
        int i4 = M24 & i3;
        long j2 = ((long) (((i3 >> 24) + i2) * 19)) + ((long) iArr[0]);
        iArr[0] = ((int) j2) & M26;
        long j3 = (j2 >> 26) + ((long) iArr[1]);
        iArr[1] = ((int) j3) & M26;
        long j4 = (j3 >> 26) + ((long) iArr[2]);
        iArr[2] = ((int) j4) & M25;
        long j5 = (j4 >> 25) + ((long) iArr[3]);
        iArr[3] = ((int) j5) & M26;
        long j6 = (j5 >> 26) + ((long) iArr[4]);
        iArr[4] = ((int) j6) & M25;
        long j7 = (j6 >> 25) + ((long) iArr[5]);
        iArr[5] = ((int) j7) & M26;
        long j8 = (j7 >> 26) + ((long) iArr[6]);
        iArr[6] = ((int) j8) & M26;
        long j9 = (j8 >> 26) + ((long) iArr[7]);
        iArr[7] = M25 & ((int) j9);
        long j10 = (j9 >> 25) + ((long) iArr[8]);
        iArr[8] = M26 & ((int) j10);
        iArr[9] = i4 + ((int) (j10 >> 26));
    }

    public static void sqr(int[] iArr, int[] iArr2) {
        int i2 = iArr[0];
        int i3 = iArr[1];
        int i4 = iArr[2];
        int i5 = iArr[3];
        int i6 = iArr[4];
        int i7 = iArr[5];
        int i8 = iArr[6];
        int i9 = iArr[7];
        int i10 = iArr[8];
        int i11 = iArr[9];
        long j2 = i2;
        long j3 = j2 * j2;
        long j4 = i3 * 2;
        long j5 = j2 * j4;
        long j6 = i4 * 2;
        long j7 = j2 * j6;
        long j8 = i3;
        long j9 = (j8 * j8) + j7;
        long j10 = i5 * 2;
        long j11 = (j2 * j10) + (j4 * j6);
        long j12 = i6 * 2;
        long j13 = (j8 * j10) + (j2 * j12) + (((long) i4) * j6);
        long j14 = (j6 * j10) + (j4 * j12);
        long j15 = j6 * j12;
        long j16 = i5;
        long j17 = (j16 * j16) + j15;
        long j18 = j16 * j12;
        long j19 = i7;
        long j20 = j19 * j19;
        long j21 = i8 * 2;
        long j22 = j19 * j21;
        long j23 = i9 * 2;
        long j24 = j19 * j23;
        long j25 = i8;
        long j26 = (j25 * j25) + j24;
        long j27 = j21 * j23;
        long j28 = i10 * 2;
        long j29 = i11 * 2;
        long j30 = (j25 * j28) + (j19 * j29) + (((long) i9) * j23);
        long j31 = (j23 * j28) + (j21 * j29);
        long j32 = j23 * j29;
        long j33 = i10;
        long j34 = j3 - (j31 * 38);
        long j35 = j5 - (((j33 * j33) + j32) * 38);
        long j36 = j9 - ((j33 * j29) * 38);
        long j37 = j11 - ((((long) i11) * j29) * 38);
        long j38 = j14 - j20;
        long j39 = j17 - j22;
        long j40 = j18 - j26;
        long j41 = (((long) i6) * j12) - ((j19 * j28) + j27);
        int i12 = i3 + i8;
        int i13 = i4 + i9;
        int i14 = i5 + i10;
        int i15 = i6 + i11;
        long j42 = i2 + i7;
        long j43 = i12 * 2;
        long j44 = j42 * j43;
        long j45 = i13 * 2;
        long j46 = i12;
        long j47 = (j46 * j46) + (j42 * j45);
        long j48 = i14 * 2;
        long j49 = i15 * 2;
        long j50 = i14;
        long j51 = ((long) i15) * j49;
        long j52 = (((j42 * j48) + (j43 * j45)) - j37) + j41;
        int i16 = ((int) j52) & M26;
        long j53 = ((((j46 * j48) + ((j42 * j49) + (((long) i13) * j45))) - j13) - j30) + (j52 >> 26);
        int i17 = ((int) j53) & M25;
        long j54 = ((((j53 >> 25) + ((j48 * j45) + (j43 * j49))) - j38) * 38) + j34;
        iArr2[0] = ((int) j54) & M26;
        long j55 = ((((j50 * j50) + (j45 * j49)) - j39) * 38) + j35 + (j54 >> 26);
        iArr2[1] = ((int) j55) & M26;
        long j56 = (((j50 * j49) - j40) * 38) + j36 + (j55 >> 26);
        iArr2[2] = ((int) j56) & M25;
        long j57 = ((j51 - j41) * 38) + j37 + (j56 >> 25);
        iArr2[3] = ((int) j57) & M26;
        long jC = z81.c(j30, 38L, j13, j57 >> 26);
        iArr2[4] = ((int) jC) & M25;
        long j58 = ((j42 * j42) - j34) + j38 + (jC >> 25);
        iArr2[5] = ((int) j58) & M26;
        long j59 = (j44 - j35) + j39 + (j58 >> 26);
        iArr2[6] = ((int) j59) & M26;
        long j60 = (j47 - j36) + j40 + (j59 >> 26);
        iArr2[7] = ((int) j60) & M25;
        long j61 = (j60 >> 25) + ((long) i16);
        iArr2[8] = ((int) j61) & M26;
        iArr2[9] = i17 + ((int) (j61 >> 26));
    }

    public static boolean sqrtRatioVar(int[] iArr, int[] iArr2, int[] iArr3) {
        int[] iArrCreate = create();
        int[] iArrCreate2 = create();
        mul(iArr, iArr2, iArrCreate);
        sqr(iArr2, iArrCreate2);
        mul(iArrCreate, iArrCreate2, iArrCreate);
        sqr(iArrCreate2, iArrCreate2);
        mul(iArrCreate2, iArrCreate, iArrCreate2);
        int[] iArrCreate3 = create();
        int[] iArrCreate4 = create();
        powPm5d8(iArrCreate2, iArrCreate3, iArrCreate4);
        mul(iArrCreate4, iArrCreate, iArrCreate4);
        int[] iArrCreate5 = create();
        sqr(iArrCreate4, iArrCreate5);
        mul(iArrCreate5, iArr2, iArrCreate5);
        sub(iArrCreate5, iArr, iArrCreate3);
        normalize(iArrCreate3);
        if (isZeroVar(iArrCreate3)) {
            copy(iArrCreate4, 0, iArr3, 0);
            return true;
        }
        add(iArrCreate5, iArr, iArrCreate3);
        normalize(iArrCreate3);
        if (!isZeroVar(iArrCreate3)) {
            return false;
        }
        mul(iArrCreate4, ROOT_NEG_ONE, iArr3);
        return true;
    }

    public static void sub(int[] iArr, int[] iArr2, int[] iArr3) {
        for (int i2 = 0; i2 < 10; i2++) {
            iArr3[i2] = iArr[i2] - iArr2[i2];
        }
    }

    public static void subOne(int[] iArr) {
        iArr[0] = iArr[0] - 1;
    }

    public static void zero(int[] iArr) {
        for (int i2 = 0; i2 < 10; i2++) {
            iArr[i2] = 0;
        }
    }

    public static void addOne(int[] iArr, int i2) {
        iArr[i2] = iArr[i2] + 1;
    }

    public static void encode(int[] iArr, byte[] bArr) {
        encode128(iArr, 0, bArr, 0);
        encode128(iArr, 5, bArr, 16);
    }

    public static void encode(int[] iArr, byte[] bArr, int i2) {
        encode128(iArr, 0, bArr, i2);
        encode128(iArr, 5, bArr, i2 + 16);
    }

    public static void encode(int[] iArr, int[] iArr2, int i2) {
        encode128(iArr, 0, iArr2, i2);
        encode128(iArr, 5, iArr2, i2 + 4);
    }

    public static void decode(byte[] bArr, int i2, int[] iArr, int i3) {
        decode128(bArr, i2, iArr, i3);
        decode128(bArr, i2 + 16, iArr, i3 + 5);
        int i4 = i3 + 9;
        iArr[i4] = iArr[i4] & M24;
    }

    public static void decode(byte[] bArr, int[] iArr) {
        decode128(bArr, 0, iArr, 0);
        decode128(bArr, 16, iArr, 5);
        iArr[9] = iArr[9] & M24;
    }

    public static void decode(int[] iArr, int i2, int[] iArr2) {
        decode128(iArr, i2, iArr2, 0);
        decode128(iArr, i2 + 4, iArr2, 5);
        iArr2[9] = iArr2[9] & M24;
    }

    private static void encode128(int[] iArr, int i2, int[] iArr2, int i3) {
        int i4 = iArr[i2];
        int i5 = iArr[i2 + 1];
        int i6 = iArr[i2 + 2];
        int i7 = iArr[i2 + 3];
        int i8 = iArr[i2 + 4];
        iArr2[i3] = (i5 << 26) | i4;
        iArr2[i3 + 1] = (i5 >>> 6) | (i6 << 20);
        iArr2[i3 + 2] = (i6 >>> 12) | (i7 << 13);
        iArr2[i3 + 3] = (i8 << 7) | (i7 >>> 19);
    }

    private static void decode128(int[] iArr, int i2, int[] iArr2, int i3) {
        int i4 = iArr[i2];
        int i5 = iArr[i2 + 1];
        int i6 = iArr[i2 + 2];
        int i7 = iArr[i2 + 3];
        iArr2[i3] = i4 & M26;
        iArr2[i3 + 1] = ((i4 >>> 26) | (i5 << 6)) & M26;
        iArr2[i3 + 2] = ((i5 >>> 20) | (i6 << 12)) & M25;
        iArr2[i3 + 3] = M26 & ((i7 << 19) | (i6 >>> 13));
        iArr2[i3 + 4] = i7 >>> 7;
    }

    public static void sqr(int[] iArr, int i2, int[] iArr2) {
        sqr(iArr, iArr2);
        while (true) {
            i2--;
            if (i2 <= 0) {
                return;
            } else {
                sqr(iArr2, iArr2);
            }
        }
    }

    public static void mul(int[] iArr, int i2, int[] iArr2) {
        int i3 = iArr[0];
        int i4 = iArr[1];
        int i5 = iArr[2];
        int i6 = iArr[3];
        int i7 = iArr[4];
        int i8 = iArr[5];
        int i9 = iArr[6];
        int i10 = iArr[7];
        int i11 = iArr[8];
        int i12 = iArr[9];
        long j2 = i2;
        long j3 = ((long) i5) * j2;
        int i13 = ((int) j3) & M25;
        long j4 = j3 >> 25;
        long j5 = ((long) i7) * j2;
        int i14 = ((int) j5) & M25;
        long j6 = ((long) i10) * j2;
        int i15 = ((int) j6) & M25;
        long j7 = ((long) i12) * j2;
        int i16 = ((int) j7) & M25;
        long j8 = (((long) i3) * j2) + ((j7 >> 25) * 38);
        iArr2[0] = ((int) j8) & M26;
        long j9 = (((long) i8) * j2) + (j5 >> 25);
        iArr2[5] = ((int) j9) & M26;
        long j10 = (((long) i4) * j2) + (j8 >> 26);
        iArr2[1] = ((int) j10) & M26;
        long j11 = (((long) i6) * j2) + j4;
        iArr2[3] = ((int) j11) & M26;
        long j12 = (((long) i9) * j2) + (j9 >> 26);
        iArr2[6] = ((int) j12) & M26;
        long j13 = (((long) i11) * j2) + (j6 >> 25);
        iArr2[8] = ((int) j13) & M26;
        iArr2[2] = i13 + ((int) (j10 >> 26));
        iArr2[4] = i14 + ((int) (j11 >> 26));
        iArr2[7] = i15 + ((int) (j12 >> 26));
        iArr2[9] = i16 + ((int) (j13 >> 26));
    }
}
