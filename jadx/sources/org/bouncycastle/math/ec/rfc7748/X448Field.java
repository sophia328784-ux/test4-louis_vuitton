package org.bouncycastle.math.ec.rfc7748;

import org.bouncycastle.math.raw.Mod;

/* JADX INFO: loaded from: classes5.dex */
public abstract class X448Field {
    private static final int M28 = 268435455;
    private static final int[] P32 = {-1, -1, -1, -1, -1, -1, -1, -2, -1, -1, -1, -1, -1, -1};
    public static final int SIZE = 16;
    private static final long U32 = 4294967295L;

    public static void add(int[] iArr, int[] iArr2, int[] iArr3) {
        for (int i2 = 0; i2 < 16; i2++) {
            iArr3[i2] = iArr[i2] + iArr2[i2];
        }
    }

    public static void addOne(int[] iArr) {
        iArr[0] = iArr[0] + 1;
    }

    public static int areEqual(int[] iArr, int[] iArr2) {
        int i2 = 0;
        for (int i3 = 0; i3 < 16; i3++) {
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
        int i12 = iArr[10];
        int i13 = iArr[11];
        int i14 = iArr[12];
        int i15 = iArr[13];
        int i16 = iArr[14];
        int i17 = iArr[15];
        int i18 = i3 + (i2 >>> 28);
        int i19 = i2 & M28;
        int i20 = i7 + (i6 >>> 28);
        int i21 = i6 & M28;
        int i22 = i11 + (i10 >>> 28);
        int i23 = i10 & M28;
        int i24 = i15 + (i14 >>> 28);
        int i25 = i14 & M28;
        int i26 = i4 + (i18 >>> 28);
        int i27 = i18 & M28;
        int i28 = i8 + (i20 >>> 28);
        int i29 = i20 & M28;
        int i30 = i12 + (i22 >>> 28);
        int i31 = i22 & M28;
        int i32 = i16 + (i24 >>> 28);
        int i33 = i24 & M28;
        int i34 = i5 + (i26 >>> 28);
        int i35 = i26 & M28;
        int i36 = i9 + (i28 >>> 28);
        int i37 = i28 & M28;
        int i38 = i13 + (i30 >>> 28);
        int i39 = i30 & M28;
        int i40 = i17 + (i32 >>> 28);
        int i41 = i32 & M28;
        int i42 = i40 >>> 28;
        int i43 = i40 & M28;
        int i44 = i19 + i42;
        int i45 = i21 + (i34 >>> 28);
        int i46 = i34 & M28;
        int i47 = i23 + i42 + (i36 >>> 28);
        int i48 = i36 & M28;
        int i49 = i25 + (i38 >>> 28);
        int i50 = i38 & M28;
        int i51 = i27 + (i44 >>> 28);
        int i52 = i44 & M28;
        int i53 = i29 + (i45 >>> 28);
        int i54 = i45 & M28;
        int i55 = i31 + (i47 >>> 28);
        int i56 = i47 & M28;
        int i57 = i33 + (i49 >>> 28);
        int i58 = i49 & M28;
        iArr[0] = i52;
        iArr[1] = i51;
        iArr[2] = i35;
        iArr[3] = i46;
        iArr[4] = i54;
        iArr[5] = i53;
        iArr[6] = i37;
        iArr[7] = i48;
        iArr[8] = i56;
        iArr[9] = i55;
        iArr[10] = i39;
        iArr[11] = i50;
        iArr[12] = i58;
        iArr[13] = i57;
        iArr[14] = i41;
        iArr[15] = i43;
    }

    public static void cmov(int i2, int[] iArr, int i3, int[] iArr2, int i4) {
        for (int i5 = 0; i5 < 16; i5++) {
            int i6 = i4 + i5;
            int i7 = iArr2[i6];
            iArr2[i6] = i7 ^ ((iArr[i3 + i5] ^ i7) & i2);
        }
    }

    public static void cnegate(int i2, int[] iArr) {
        int[] iArrCreate = create();
        sub(iArrCreate, iArr, iArrCreate);
        cmov(-i2, iArrCreate, 0, iArr, 0);
    }

    public static void copy(int[] iArr, int i2, int[] iArr2, int i3) {
        for (int i4 = 0; i4 < 16; i4++) {
            iArr2[i3 + i4] = iArr[i2 + i4];
        }
    }

    public static int[] create() {
        return new int[16];
    }

    public static int[] createTable(int i2) {
        return new int[i2 * 16];
    }

    public static void cswap(int i2, int[] iArr, int[] iArr2) {
        int i3 = 0 - i2;
        for (int i4 = 0; i4 < 16; i4++) {
            int i5 = iArr[i4];
            int i6 = iArr2[i4];
            int i7 = (i5 ^ i6) & i3;
            iArr[i4] = i5 ^ i7;
            iArr2[i4] = i6 ^ i7;
        }
    }

    public static void decode(byte[] bArr, int i2, int[] iArr, int i3) {
        decode56(bArr, i2, iArr, i3);
        decode56(bArr, i2 + 7, iArr, i3 + 2);
        decode56(bArr, i2 + 14, iArr, i3 + 4);
        decode56(bArr, i2 + 21, iArr, i3 + 6);
        decode56(bArr, i2 + 28, iArr, i3 + 8);
        decode56(bArr, i2 + 35, iArr, i3 + 10);
        decode56(bArr, i2 + 42, iArr, i3 + 12);
        decode56(bArr, i2 + 49, iArr, i3 + 14);
    }

    private static void decode224(int[] iArr, int i2, int[] iArr2, int i3) {
        int i4 = iArr[i2];
        int i5 = iArr[i2 + 1];
        int i6 = iArr[i2 + 2];
        int i7 = iArr[i2 + 3];
        int i8 = iArr[i2 + 4];
        int i9 = iArr[i2 + 5];
        int i10 = iArr[i2 + 6];
        iArr2[i3] = i4 & M28;
        iArr2[i3 + 1] = ((i4 >>> 28) | (i5 << 4)) & M28;
        iArr2[i3 + 2] = ((i5 >>> 24) | (i6 << 8)) & M28;
        iArr2[i3 + 3] = ((i6 >>> 20) | (i7 << 12)) & M28;
        iArr2[i3 + 4] = ((i7 >>> 16) | (i8 << 16)) & M28;
        iArr2[i3 + 5] = ((i8 >>> 12) | (i9 << 20)) & M28;
        iArr2[i3 + 6] = M28 & ((i9 >>> 8) | (i10 << 24));
        iArr2[i3 + 7] = i10 >>> 4;
    }

    private static int decode24(byte[] bArr, int i2) {
        return ((bArr[i2 + 2] & 255) << 16) | (bArr[i2] & 255) | ((bArr[i2 + 1] & 255) << 8);
    }

    private static int decode32(byte[] bArr, int i2) {
        return (bArr[i2 + 3] << 24) | (bArr[i2] & 255) | ((bArr[i2 + 1] & 255) << 8) | ((bArr[i2 + 2] & 255) << 16);
    }

    private static void decode56(byte[] bArr, int i2, int[] iArr, int i3) {
        int iDecode32 = decode32(bArr, i2);
        int iDecode24 = decode24(bArr, i2 + 4);
        iArr[i3] = M28 & iDecode32;
        iArr[i3 + 1] = (iDecode24 << 4) | (iDecode32 >>> 28);
    }

    public static void encode(int[] iArr, int i2, byte[] bArr, int i3) {
        encode56(iArr, i2, bArr, i3);
        encode56(iArr, i2 + 2, bArr, i3 + 7);
        encode56(iArr, i2 + 4, bArr, i3 + 14);
        encode56(iArr, i2 + 6, bArr, i3 + 21);
        encode56(iArr, i2 + 8, bArr, i3 + 28);
        encode56(iArr, i2 + 10, bArr, i3 + 35);
        encode56(iArr, i2 + 12, bArr, i3 + 42);
        encode56(iArr, i2 + 14, bArr, i3 + 49);
    }

    private static void encode224(int[] iArr, int i2, int[] iArr2, int i3) {
        int i4 = iArr[i2];
        int i5 = iArr[i2 + 1];
        int i6 = iArr[i2 + 2];
        int i7 = iArr[i2 + 3];
        int i8 = iArr[i2 + 4];
        int i9 = iArr[i2 + 5];
        int i10 = iArr[i2 + 6];
        int i11 = iArr[i2 + 7];
        iArr2[i3] = (i5 << 28) | i4;
        iArr2[i3 + 1] = (i5 >>> 4) | (i6 << 24);
        iArr2[i3 + 2] = (i6 >>> 8) | (i7 << 20);
        iArr2[i3 + 3] = (i7 >>> 12) | (i8 << 16);
        iArr2[i3 + 4] = (i8 >>> 16) | (i9 << 12);
        iArr2[i3 + 5] = (i9 >>> 20) | (i10 << 8);
        iArr2[i3 + 6] = (i11 << 4) | (i10 >>> 24);
    }

    private static void encode24(int i2, byte[] bArr, int i3) {
        bArr[i3] = (byte) i2;
        bArr[i3 + 1] = (byte) (i2 >>> 8);
        bArr[i3 + 2] = (byte) (i2 >>> 16);
    }

    private static void encode32(int i2, byte[] bArr, int i3) {
        bArr[i3] = (byte) i2;
        bArr[i3 + 1] = (byte) (i2 >>> 8);
        bArr[i3 + 2] = (byte) (i2 >>> 16);
        bArr[i3 + 3] = (byte) (i2 >>> 24);
    }

    private static void encode56(int[] iArr, int i2, byte[] bArr, int i3) {
        int i4 = iArr[i2];
        int i5 = iArr[i2 + 1];
        encode32((i5 << 28) | i4, bArr, i3);
        encode24(i5 >>> 4, bArr, i3 + 4);
    }

    public static void inv(int[] iArr, int[] iArr2) {
        int[] iArrCreate = create();
        int[] iArr3 = new int[14];
        copy(iArr, 0, iArrCreate, 0);
        normalize(iArrCreate);
        encode(iArrCreate, iArr3, 0);
        Mod.modOddInverse(P32, iArr3, iArr3);
        decode(iArr3, 0, iArr2);
    }

    public static void invVar(int[] iArr, int[] iArr2) {
        int[] iArrCreate = create();
        int[] iArr3 = new int[14];
        copy(iArr, 0, iArrCreate, 0);
        normalize(iArrCreate);
        encode(iArrCreate, iArr3, 0);
        Mod.modOddInverseVar(P32, iArr3, iArr3);
        decode(iArr3, 0, iArr2);
    }

    public static int isOne(int[] iArr) {
        int i2 = iArr[0] ^ 1;
        for (int i3 = 1; i3 < 16; i3++) {
            i2 |= iArr[i3];
        }
        return (((i2 >>> 1) | (i2 & 1)) - 1) >> 31;
    }

    public static boolean isOneVar(int[] iArr) {
        return isOne(iArr) != 0;
    }

    public static int isZero(int[] iArr) {
        int i2 = 0;
        for (int i3 = 0; i3 < 16; i3++) {
            i2 |= iArr[i3];
        }
        return (((i2 >>> 1) | (i2 & 1)) - 1) >> 31;
    }

    public static boolean isZeroVar(int[] iArr) {
        return isZero(iArr) != 0;
    }

    public static void mul(int[] iArr, int[] iArr2, int[] iArr3) {
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
        int i12 = iArr[10];
        int i13 = iArr[11];
        int i14 = iArr[12];
        int i15 = iArr[13];
        int i16 = iArr[14];
        int i17 = iArr[15];
        int i18 = iArr2[0];
        int i19 = iArr2[1];
        int i20 = iArr2[2];
        int i21 = iArr2[3];
        int i22 = iArr2[4];
        int i23 = iArr2[5];
        int i24 = iArr2[6];
        int i25 = iArr2[7];
        int i26 = iArr2[8];
        int i27 = iArr2[9];
        int i28 = iArr2[10];
        int i29 = iArr2[11];
        int i30 = iArr2[12];
        int i31 = iArr2[13];
        int i32 = iArr2[14];
        int i33 = iArr2[15];
        int i34 = i2 + i10;
        int i35 = i3 + i11;
        int i36 = i4 + i12;
        int i37 = i5 + i13;
        int i38 = i6 + i14;
        int i39 = i7 + i15;
        int i40 = i8 + i16;
        int i41 = i9 + i17;
        int i42 = i18 + i26;
        int i43 = i19 + i27;
        int i44 = i20 + i28;
        int i45 = i21 + i29;
        int i46 = i22 + i30;
        int i47 = i23 + i31;
        int i48 = i24 + i32;
        int i49 = i25 + i33;
        long j2 = i2;
        long j3 = i18;
        long j4 = j2 * j3;
        long j5 = i9;
        long j6 = i19;
        long j7 = j5 * j6;
        long j8 = i8;
        long j9 = i20;
        long j10 = (j8 * j9) + j7;
        long j11 = i7;
        long j12 = i21;
        long j13 = i6;
        long j14 = i22;
        long j15 = i5;
        long j16 = i23;
        long j17 = (j15 * j16) + (j13 * j14) + (j11 * j12) + j10;
        long j18 = i4;
        long j19 = i24;
        long j20 = i3;
        long j21 = i25;
        long j22 = j20 * j21;
        long j23 = i10;
        long j24 = i26;
        long j25 = j23 * j24;
        long j26 = i17;
        long j27 = i27;
        long j28 = j26 * j27;
        long j29 = i16;
        long j30 = i28;
        long j31 = (j29 * j30) + j28;
        long j32 = i15;
        long j33 = i29;
        long j34 = (j32 * j33) + j31;
        long j35 = i14;
        long j36 = i30;
        long j37 = (j35 * j36) + j34;
        long j38 = i13;
        long j39 = i31;
        long j40 = (j38 * j39) + j37;
        long j41 = i12;
        long j42 = i32;
        long j43 = (j41 * j42) + j40;
        long j44 = i11;
        long j45 = i33;
        long j46 = (j44 * j45) + j43;
        long j47 = i34;
        long j48 = i42;
        long j49 = j47 * j48;
        long j50 = i41;
        long j51 = i43;
        long j52 = j50 * j51;
        long j53 = i40;
        long j54 = i44;
        long j55 = (j53 * j54) + j52;
        long j56 = i39;
        long j57 = i45;
        long j58 = (j56 * j57) + j55;
        long j59 = i38;
        long j60 = i46;
        long j61 = (j59 * j60) + j58;
        long j62 = i37;
        long j63 = i47;
        long j64 = (j62 * j63) + j61;
        long j65 = i36;
        long j66 = i48;
        long j67 = (j65 * j66) + j64;
        long j68 = i35;
        long j69 = i49;
        long j70 = (j68 * j69) + j67;
        long j71 = ((j4 + j25) + j70) - (j22 + ((j18 * j19) + j17));
        int i50 = ((int) j71) & M28;
        long j72 = ((j46 + j49) - j4) + j70;
        int i51 = ((int) j72) & M28;
        long j73 = j72 >>> 28;
        long j74 = (j2 * j6) + (j20 * j3);
        long j75 = (j41 * j45) + (j38 * j42) + (j35 * j39) + (j32 * j36) + (j29 * j33) + (j26 * j30);
        long j76 = (j47 * j51) + (j68 * j48);
        long j77 = (j65 * j69) + (j62 * j66) + (j59 * j63) + (j56 * j60) + (j53 * j57) + (j50 * j54);
        long j78 = (((j74 + ((j23 * j27) + (j44 * j24))) + j77) - ((j18 * j21) + ((j15 * j19) + ((j13 * j16) + ((j11 * j14) + ((j8 * j12) + (j5 * j9))))))) + (j71 >>> 28);
        int i52 = ((int) j78) & M28;
        long j79 = j78 >>> 28;
        long j80 = ((j75 + j76) - j74) + j77 + j73;
        int i53 = ((int) j80) & M28;
        long j81 = j80 >>> 28;
        long j82 = (j2 * j9) + (j20 * j6) + (j18 * j3);
        long j83 = (j38 * j45) + (j35 * j42) + (j32 * j39) + (j29 * j36) + (j26 * j33);
        long j84 = (j47 * j54) + (j68 * j51) + (j65 * j48);
        long j85 = (j62 * j69) + (j59 * j66) + (j56 * j63) + (j53 * j60) + (j50 * j57);
        long j86 = (((j82 + ((j23 * j30) + ((j44 * j27) + (j41 * j24)))) + j85) - ((j15 * j21) + ((j13 * j19) + ((j11 * j16) + ((j8 * j14) + (j5 * j12)))))) + j79;
        int i54 = ((int) j86) & M28;
        long j87 = j86 >>> 28;
        long j88 = ((j83 + j84) - j82) + j85 + j81;
        int i55 = ((int) j88) & M28;
        long j89 = j88 >>> 28;
        long j90 = (j2 * j12) + (j20 * j9) + (j18 * j6) + (j15 * j3);
        long j91 = (j35 * j45) + (j32 * j42) + (j29 * j39) + (j26 * j36);
        long j92 = (j47 * j57) + (j68 * j54) + (j65 * j51) + (j62 * j48);
        long j93 = (j59 * j69) + (j56 * j66) + (j53 * j63) + (j50 * j60);
        long j94 = (((j90 + ((j23 * j33) + ((j44 * j30) + ((j41 * j27) + (j38 * j24))))) + j93) - ((j13 * j21) + ((j11 * j19) + ((j8 * j16) + (j5 * j14))))) + j87;
        int i56 = ((int) j94) & M28;
        long j95 = j94 >>> 28;
        long j96 = ((j91 + j92) - j90) + j93 + j89;
        int i57 = ((int) j96) & M28;
        long j97 = j96 >>> 28;
        long j98 = (j2 * j14) + (j20 * j12) + (j18 * j9) + (j15 * j6) + (j13 * j3);
        long j99 = (j32 * j45) + (j29 * j42) + (j26 * j39);
        long j100 = (j47 * j60) + (j68 * j57) + (j65 * j54) + (j62 * j51) + (j59 * j48);
        long j101 = (j56 * j69) + (j53 * j66) + (j50 * j63);
        long j102 = (((j98 + ((j23 * j36) + ((j44 * j33) + ((j41 * j30) + ((j38 * j27) + (j35 * j24)))))) + j101) - ((j11 * j21) + ((j8 * j19) + (j5 * j16)))) + j95;
        int i58 = ((int) j102) & M28;
        long j103 = j102 >>> 28;
        long j104 = ((j99 + j100) - j98) + j101 + j97;
        int i59 = ((int) j104) & M28;
        long j105 = j104 >>> 28;
        long j106 = (j2 * j16) + (j20 * j14) + (j18 * j12) + (j15 * j9) + (j13 * j6) + (j11 * j3);
        long j107 = (j29 * j45) + (j26 * j42);
        long j108 = (j47 * j63) + (j68 * j60) + (j65 * j57) + (j62 * j54) + (j59 * j51) + (j56 * j48);
        long j109 = (j53 * j69) + (j50 * j66);
        long j110 = (((j106 + ((j23 * j39) + ((j44 * j36) + ((j41 * j33) + ((j38 * j30) + ((j35 * j27) + (j32 * j24))))))) + j109) - ((j8 * j21) + (j5 * j19))) + j103;
        int i60 = ((int) j110) & M28;
        long j111 = j110 >>> 28;
        long j112 = ((j107 + j108) - j106) + j109 + j105;
        int i61 = ((int) j112) & M28;
        long j113 = j112 >>> 28;
        long j114 = (j2 * j19) + (j20 * j16) + (j18 * j14) + (j15 * j12) + (j13 * j9) + (j11 * j6) + (j8 * j3);
        long j115 = j26 * j45;
        long j116 = (j47 * j66) + (j68 * j63) + (j65 * j60) + (j62 * j57) + (j59 * j54) + (j56 * j51) + (j53 * j48);
        long j117 = j50 * j69;
        long j118 = (((j114 + ((j23 * j42) + ((j44 * j39) + ((j41 * j36) + ((j38 * j33) + ((j35 * j30) + ((j32 * j27) + (j29 * j24)))))))) + j117) - (j5 * j21)) + j111;
        int i62 = ((int) j118) & M28;
        long j119 = j118 >>> 28;
        long j120 = ((j115 + j116) - j114) + j117 + j113;
        int i63 = ((int) j120) & M28;
        long j121 = j15 * j14;
        long j122 = (j2 * j21) + (j20 * j19) + (j18 * j16) + j121 + (j13 * j12) + (j11 * j9) + (j8 * j6) + (j3 * j5);
        long j123 = (j23 * j45) + (j44 * j42) + (j41 * j39) + (j38 * j36) + (j35 * j33) + (j32 * j30) + (j29 * j27) + (j26 * j24) + j122 + j119;
        int i64 = ((int) j123) & M28;
        long j124 = (((j47 * j69) + ((j68 * j66) + ((j65 * j63) + ((j62 * j60) + ((j59 * j57) + ((j56 * j54) + ((j53 * j51) + (j50 * j48)))))))) - j122) + (j120 >>> 28);
        int i65 = ((int) j124) & M28;
        long j125 = j124 >>> 28;
        long j126 = (j123 >>> 28) + j125 + ((long) i51);
        int i66 = ((int) j126) & M28;
        long j127 = j125 + ((long) i50);
        iArr3[0] = ((int) j127) & M28;
        iArr3[1] = i52 + ((int) (j127 >>> 28));
        iArr3[2] = i54;
        iArr3[3] = i56;
        iArr3[4] = i58;
        iArr3[5] = i60;
        iArr3[6] = i62;
        iArr3[7] = i64;
        iArr3[8] = i66;
        iArr3[9] = i53 + ((int) (j126 >>> 28));
        iArr3[10] = i55;
        iArr3[11] = i57;
        iArr3[12] = i59;
        iArr3[13] = i61;
        iArr3[14] = i63;
        iArr3[15] = i65;
    }

    public static void negate(int[] iArr, int[] iArr2) {
        sub(create(), iArr, iArr2);
    }

    public static void normalize(int[] iArr) {
        reduce(iArr, 1);
        reduce(iArr, -1);
    }

    public static void one(int[] iArr) {
        iArr[0] = 1;
        for (int i2 = 1; i2 < 16; i2++) {
            iArr[i2] = 0;
        }
    }

    private static void powPm3d4(int[] iArr, int[] iArr2) {
        int[] iArrCreate = create();
        sqr(iArr, iArrCreate);
        mul(iArr, iArrCreate, iArrCreate);
        int[] iArrCreate2 = create();
        sqr(iArrCreate, iArrCreate2);
        mul(iArr, iArrCreate2, iArrCreate2);
        int[] iArrCreate3 = create();
        sqr(iArrCreate2, 3, iArrCreate3);
        mul(iArrCreate2, iArrCreate3, iArrCreate3);
        int[] iArrCreate4 = create();
        sqr(iArrCreate3, 3, iArrCreate4);
        mul(iArrCreate2, iArrCreate4, iArrCreate4);
        int[] iArrCreate5 = create();
        sqr(iArrCreate4, 9, iArrCreate5);
        mul(iArrCreate4, iArrCreate5, iArrCreate5);
        int[] iArrCreate6 = create();
        sqr(iArrCreate5, iArrCreate6);
        mul(iArr, iArrCreate6, iArrCreate6);
        int[] iArrCreate7 = create();
        sqr(iArrCreate6, 18, iArrCreate7);
        mul(iArrCreate5, iArrCreate7, iArrCreate7);
        int[] iArrCreate8 = create();
        sqr(iArrCreate7, 37, iArrCreate8);
        mul(iArrCreate7, iArrCreate8, iArrCreate8);
        int[] iArrCreate9 = create();
        sqr(iArrCreate8, 37, iArrCreate9);
        mul(iArrCreate7, iArrCreate9, iArrCreate9);
        int[] iArrCreate10 = create();
        sqr(iArrCreate9, 111, iArrCreate10);
        mul(iArrCreate9, iArrCreate10, iArrCreate10);
        int[] iArrCreate11 = create();
        sqr(iArrCreate10, iArrCreate11);
        mul(iArr, iArrCreate11, iArrCreate11);
        int[] iArrCreate12 = create();
        sqr(iArrCreate11, 223, iArrCreate12);
        mul(iArrCreate12, iArrCreate10, iArr2);
    }

    private static void reduce(int[] iArr, int i2) {
        int i3;
        int i4 = iArr[15];
        int i5 = i4 & M28;
        long j2 = (i4 >>> 28) + i2;
        int i6 = 0;
        long j3 = j2;
        while (true) {
            if (i6 >= 8) {
                break;
            }
            long j4 = j3 + (4294967295L & ((long) iArr[i6]));
            iArr[i6] = ((int) j4) & M28;
            j3 = j4 >> 28;
            i6++;
        }
        long j5 = j3 + j2;
        for (i3 = 8; i3 < 15; i3++) {
            long j6 = j5 + (((long) iArr[i3]) & 4294967295L);
            iArr[i3] = ((int) j6) & M28;
            j5 = j6 >> 28;
        }
        iArr[15] = i5 + ((int) j5);
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
        int i12 = iArr[10];
        int i13 = iArr[11];
        int i14 = iArr[12];
        int i15 = iArr[13];
        int i16 = iArr[14];
        int i17 = iArr[15];
        int i18 = i2 * 2;
        int i19 = i3 * 2;
        int i20 = i6 * 2;
        int i21 = i7 * 2;
        int i22 = i8 * 2;
        int i23 = i10 * 2;
        int i24 = i12 * 2;
        int i25 = i13 * 2;
        int i26 = i14 * 2;
        int i27 = i2 + i10;
        int i28 = i3 + i11;
        int i29 = i4 + i12;
        int i30 = i5 + i13;
        int i31 = i6 + i14;
        int i32 = i7 + i15;
        int i33 = i8 + i16;
        int i34 = i27 * 2;
        int i35 = i28 * 2;
        int i36 = i29 * 2;
        int i37 = i30 * 2;
        long j2 = i2;
        long j3 = j2 * j2;
        long j4 = i9;
        long j5 = i19;
        long j6 = j4 * j5;
        long j7 = i8;
        long j8 = i4 * 2;
        long j9 = (j7 * j8) + j6;
        long j10 = i7;
        long j11 = i5 * 2;
        long j12 = (j10 * j11) + j9;
        long j13 = i6;
        long j14 = i10;
        long j15 = j14 * j14;
        long j16 = i17;
        long j17 = i11 * 2;
        long j18 = i16;
        long j19 = i24;
        long j20 = (j18 * j19) + (j16 * j17);
        long j21 = i15;
        long j22 = i25;
        long j23 = i14;
        long j24 = j23 * j23;
        long j25 = i27;
        long j26 = j25 * j25;
        long j27 = i9 + i17;
        long j28 = ((long) i35) & 4294967295L;
        long j29 = j27 * j28;
        long j30 = i33;
        long j31 = ((long) i36) & 4294967295L;
        long j32 = (j30 * j31) + j29;
        long j33 = i32;
        long j34 = ((long) i37) & 4294967295L;
        long j35 = (j33 * j34) + j32;
        long j36 = i31;
        long j37 = (j36 * j36) + j35;
        long j38 = ((j3 + j15) + j37) - ((j13 * j13) + j12);
        int i38 = ((int) j38) & M28;
        long j39 = j38 >>> 28;
        long j40 = (((j24 + ((j21 * j22) + j20)) + j26) - j3) + j37;
        int i39 = ((int) j40) & M28;
        long j41 = j40 >>> 28;
        long j42 = i3;
        long j43 = i18;
        long j44 = j42 * j43;
        long j45 = i20;
        long j46 = j10 * j45;
        long j47 = i11;
        long j48 = i23;
        long j49 = j47 * j48;
        long j50 = i26;
        long j51 = j21 * j50;
        long j52 = i28;
        long j53 = ((long) i34) & 4294967295L;
        long j54 = j52 * j53;
        long j55 = (j30 * j34) + (j27 * j31);
        long j56 = ((long) (i31 * 2)) & 4294967295L;
        long j57 = (j33 * j56) + j55;
        long j58 = (((j44 + j49) + j57) - (j46 + ((j7 * j11) + (j4 * j8)))) + j39;
        int i40 = ((int) j58) & M28;
        long j59 = j58 >>> 28;
        long j60 = (((j51 + ((j18 * j22) + (j16 * j19))) + j54) - j44) + j57 + j41;
        int i41 = ((int) j60) & M28;
        long j61 = j60 >>> 28;
        long j62 = i4;
        long j63 = (j42 * j42) + (j62 * j43);
        long j64 = (j7 * j45) + (j4 * j11);
        long j65 = i12;
        long j66 = (j47 * j47) + (j65 * j48);
        long j67 = (j18 * j50) + (j16 * j22);
        long j68 = i29;
        long j69 = (j52 * j52) + (j68 * j53);
        long j70 = (j33 * j33) + (j30 * j56) + (j27 * j34);
        long j71 = (((j63 + j66) + j70) - ((j10 * j10) + j64)) + j59;
        int i42 = ((int) j71) & M28;
        long j72 = j71 >>> 28;
        long j73 = ((((j21 * j21) + j67) + j69) - j63) + j70 + j61;
        int i43 = ((int) j73) & M28;
        long j74 = j73 >>> 28;
        long j75 = i5;
        long j76 = (j62 * j5) + (j75 * j43);
        long j77 = j4 * j45;
        long j78 = i21;
        long j79 = (j7 * j78) + j77;
        long j80 = i13;
        long j81 = (j65 * j17) + (j80 * j48);
        long j82 = j16 * j50;
        long j83 = i15 * 2;
        long j84 = (j18 * j83) + j82;
        long j85 = i30;
        long j86 = (j68 * j28) + (j85 * j53);
        long j87 = j56 * j27;
        long j88 = ((long) (i32 * 2)) & 4294967295L;
        long j89 = (j30 * j88) + j87;
        long j90 = (((j76 + j81) + j89) - j79) + j72;
        int i44 = ((int) j90) & M28;
        long j91 = j90 >>> 28;
        long j92 = ((j84 + j86) - j76) + j89 + j74;
        int i45 = ((int) j92) & M28;
        long j93 = j92 >>> 28;
        long j94 = (j62 * j62) + (j75 * j5) + (j13 * j43);
        long j95 = (j18 * j18) + (j83 * j16);
        long j96 = (j68 * j68) + (j85 * j28) + (j36 * j53);
        long j97 = (j30 * j30) + (j27 * j88);
        long j98 = (((j94 + ((j65 * j65) + ((j80 * j17) + (j23 * j48)))) + j97) - ((j7 * j7) + (j4 * j78))) + j91;
        int i46 = ((int) j98) & M28;
        long j99 = j98 >>> 28;
        long j100 = ((j95 + j96) - j94) + j97 + j93;
        int i47 = ((int) j100) & M28;
        long j101 = j100 >>> 28;
        long j102 = (j75 * j8) + (j13 * j5) + (j10 * j43);
        long j103 = (j80 * j19) + (j23 * j17) + (j21 * j48);
        long j104 = (j85 * j31) + (j36 * j28) + (j33 * j53);
        long j105 = (((long) (i33 * 2)) & 4294967295L) * j27;
        long j106 = (((j102 + j103) + j105) - (((long) i22) * j4)) + j99;
        int i48 = ((int) j106) & M28;
        long j107 = j106 >>> 28;
        long j108 = (((((long) (i16 * 2)) * j16) + j104) - j102) + j105 + j101;
        int i49 = ((int) j108) & M28;
        long j109 = j108 >>> 28;
        long j110 = (j75 * j75) + (j13 * j8) + (j10 * j5) + (j7 * j43);
        long j111 = (j85 * j85) + (j36 * j31) + (j33 * j28) + (j30 * j53);
        long j112 = j27 * j27;
        long j113 = (((j110 + ((j80 * j80) + ((j23 * j19) + ((j21 * j17) + (j18 * j48))))) + j112) - (j4 * j4)) + j107;
        int i50 = ((int) j113) & M28;
        long j114 = j113 >>> 28;
        long j115 = (((j16 * j16) + j111) - j110) + j112 + j109;
        int i51 = ((int) j115) & M28;
        long j116 = (j11 * j13) + (j10 * j8) + (j7 * j5) + (j4 * j43);
        long j117 = j21 * j19;
        long j118 = (j23 * j22) + j117 + (j18 * j17) + (j16 * j48);
        long j119 = j118 + j116 + j114;
        int i52 = ((int) j119) & M28;
        long j120 = (((j36 * j34) + ((j33 * j31) + ((j30 * j28) + (j27 * j53)))) - j116) + (j115 >>> 28);
        int i53 = ((int) j120) & M28;
        long j121 = j120 >>> 28;
        long j122 = (j119 >>> 28) + j121 + ((long) i39);
        int i54 = ((int) j122) & M28;
        long j123 = j121 + ((long) i38);
        iArr2[0] = ((int) j123) & M28;
        iArr2[1] = i40 + ((int) (j123 >>> 28));
        iArr2[2] = i42;
        iArr2[3] = i44;
        iArr2[4] = i46;
        iArr2[5] = i48;
        iArr2[6] = i50;
        iArr2[7] = i52;
        iArr2[8] = i54;
        iArr2[9] = i41 + ((int) (j122 >>> 28));
        iArr2[10] = i43;
        iArr2[11] = i45;
        iArr2[12] = i47;
        iArr2[13] = i49;
        iArr2[14] = i51;
        iArr2[15] = i53;
    }

    public static boolean sqrtRatioVar(int[] iArr, int[] iArr2, int[] iArr3) {
        int[] iArrCreate = create();
        int[] iArrCreate2 = create();
        sqr(iArr, iArrCreate);
        mul(iArrCreate, iArr2, iArrCreate);
        sqr(iArrCreate, iArrCreate2);
        mul(iArrCreate, iArr, iArrCreate);
        mul(iArrCreate2, iArr, iArrCreate2);
        mul(iArrCreate2, iArr2, iArrCreate2);
        int[] iArrCreate3 = create();
        powPm3d4(iArrCreate2, iArrCreate3);
        mul(iArrCreate3, iArrCreate, iArrCreate3);
        int[] iArrCreate4 = create();
        sqr(iArrCreate3, iArrCreate4);
        mul(iArrCreate4, iArr2, iArrCreate4);
        sub(iArr, iArrCreate4, iArrCreate4);
        normalize(iArrCreate4);
        if (!isZeroVar(iArrCreate4)) {
            return false;
        }
        copy(iArrCreate3, 0, iArr3, 0);
        return true;
    }

    public static void sub(int[] iArr, int[] iArr2, int[] iArr3) {
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
        int i12 = iArr[10];
        int i13 = iArr[11];
        int i14 = iArr[12];
        int i15 = iArr[13];
        int i16 = iArr[14];
        int i17 = iArr[15];
        int i18 = iArr2[0];
        int i19 = iArr2[1];
        int i20 = iArr2[2];
        int i21 = iArr2[3];
        int i22 = iArr2[4];
        int i23 = iArr2[5];
        int i24 = iArr2[6];
        int i25 = iArr2[7];
        int i26 = iArr2[8];
        int i27 = iArr2[9];
        int i28 = iArr2[10];
        int i29 = iArr2[11];
        int i30 = iArr2[12];
        int i31 = iArr2[13];
        int i32 = iArr2[14];
        int i33 = (i3 + 536870910) - i19;
        int i34 = (i7 + 536870910) - i23;
        int i35 = (i11 + 536870910) - i27;
        int i36 = (i15 + 536870910) - i31;
        int i37 = (i17 + 536870910) - iArr2[15];
        int i38 = ((i4 + 536870910) - i20) + (i33 >>> 28);
        int i39 = i33 & M28;
        int i40 = ((i8 + 536870910) - i24) + (i34 >>> 28);
        int i41 = i34 & M28;
        int i42 = ((i12 + 536870910) - i28) + (i35 >>> 28);
        int i43 = i35 & M28;
        int i44 = ((i16 + 536870910) - i32) + (i36 >>> 28);
        int i45 = i36 & M28;
        int i46 = ((i5 + 536870910) - i21) + (i38 >>> 28);
        int i47 = i38 & M28;
        int i48 = ((i9 + 536870910) - i25) + (i40 >>> 28);
        int i49 = i40 & M28;
        int i50 = ((i13 + 536870910) - i29) + (i42 >>> 28);
        int i51 = i42 & M28;
        int i52 = i37 + (i44 >>> 28);
        int i53 = i44 & M28;
        int i54 = i52 >>> 28;
        int i55 = i52 & M28;
        int i56 = ((i2 + 536870910) - i18) + i54;
        int i57 = ((i6 + 536870910) - i22) + (i46 >>> 28);
        int i58 = i46 & M28;
        int i59 = ((i10 + 536870908) - i26) + i54 + (i48 >>> 28);
        int i60 = i48 & M28;
        int i61 = ((i14 + 536870910) - i30) + (i50 >>> 28);
        int i62 = i50 & M28;
        int i63 = i39 + (i56 >>> 28);
        int i64 = i56 & M28;
        int i65 = i41 + (i57 >>> 28);
        int i66 = i57 & M28;
        int i67 = i43 + (i59 >>> 28);
        int i68 = i59 & M28;
        int i69 = i45 + (i61 >>> 28);
        int i70 = i61 & M28;
        iArr3[0] = i64;
        iArr3[1] = i63;
        iArr3[2] = i47;
        iArr3[3] = i58;
        iArr3[4] = i66;
        iArr3[5] = i65;
        iArr3[6] = i49;
        iArr3[7] = i60;
        iArr3[8] = i68;
        iArr3[9] = i67;
        iArr3[10] = i51;
        iArr3[11] = i62;
        iArr3[12] = i70;
        iArr3[13] = i69;
        iArr3[14] = i53;
        iArr3[15] = i55;
    }

    public static void subOne(int[] iArr) {
        int[] iArrCreate = create();
        iArrCreate[0] = 1;
        sub(iArr, iArrCreate, iArr);
    }

    public static void zero(int[] iArr) {
        for (int i2 = 0; i2 < 16; i2++) {
            iArr[i2] = 0;
        }
    }

    public static void addOne(int[] iArr, int i2) {
        iArr[i2] = iArr[i2] + 1;
    }

    public static void decode(byte[] bArr, int i2, int[] iArr) {
        decode56(bArr, i2, iArr, 0);
        decode56(bArr, i2 + 7, iArr, 2);
        decode56(bArr, i2 + 14, iArr, 4);
        decode56(bArr, i2 + 21, iArr, 6);
        decode56(bArr, i2 + 28, iArr, 8);
        decode56(bArr, i2 + 35, iArr, 10);
        decode56(bArr, i2 + 42, iArr, 12);
        decode56(bArr, i2 + 49, iArr, 14);
    }

    public static void encode(int[] iArr, byte[] bArr) {
        encode56(iArr, 0, bArr, 0);
        encode56(iArr, 2, bArr, 7);
        encode56(iArr, 4, bArr, 14);
        encode56(iArr, 6, bArr, 21);
        encode56(iArr, 8, bArr, 28);
        encode56(iArr, 10, bArr, 35);
        encode56(iArr, 12, bArr, 42);
        encode56(iArr, 14, bArr, 49);
    }

    public static void decode(byte[] bArr, int[] iArr) {
        decode56(bArr, 0, iArr, 0);
        decode56(bArr, 7, iArr, 2);
        decode56(bArr, 14, iArr, 4);
        decode56(bArr, 21, iArr, 6);
        decode56(bArr, 28, iArr, 8);
        decode56(bArr, 35, iArr, 10);
        decode56(bArr, 42, iArr, 12);
        decode56(bArr, 49, iArr, 14);
    }

    public static void encode(int[] iArr, byte[] bArr, int i2) {
        encode56(iArr, 0, bArr, i2);
        encode56(iArr, 2, bArr, i2 + 7);
        encode56(iArr, 4, bArr, i2 + 14);
        encode56(iArr, 6, bArr, i2 + 21);
        encode56(iArr, 8, bArr, i2 + 28);
        encode56(iArr, 10, bArr, i2 + 35);
        encode56(iArr, 12, bArr, i2 + 42);
        encode56(iArr, 14, bArr, i2 + 49);
    }

    public static void decode(int[] iArr, int i2, int[] iArr2) {
        decode224(iArr, i2, iArr2, 0);
        decode224(iArr, i2 + 7, iArr2, 8);
    }

    public static void encode(int[] iArr, int[] iArr2, int i2) {
        encode224(iArr, 0, iArr2, i2);
        encode224(iArr, 8, iArr2, i2 + 7);
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
        int i13 = iArr[10];
        int i14 = iArr[11];
        int i15 = iArr[12];
        int i16 = iArr[13];
        int i17 = iArr[14];
        int i18 = iArr[15];
        long j2 = i2;
        long j3 = ((long) i4) * j2;
        int i19 = ((int) j3) & M28;
        long j4 = j3 >>> 28;
        long j5 = ((long) i8) * j2;
        int i20 = ((int) j5) & M28;
        long j6 = j5 >>> 28;
        long j7 = ((long) i12) * j2;
        int i21 = ((int) j7) & M28;
        long j8 = j7 >>> 28;
        long j9 = ((long) i16) * j2;
        int i22 = ((int) j9) & M28;
        long j10 = j9 >>> 28;
        long j11 = (((long) i5) * j2) + j4;
        iArr2[2] = ((int) j11) & M28;
        long j12 = j11 >>> 28;
        long j13 = (((long) i9) * j2) + j6;
        iArr2[6] = ((int) j13) & M28;
        long j14 = j13 >>> 28;
        long j15 = (((long) i13) * j2) + j8;
        iArr2[10] = ((int) j15) & M28;
        long j16 = (((long) i17) * j2) + j10;
        iArr2[14] = ((int) j16) & M28;
        long j17 = j16 >>> 28;
        long j18 = (((long) i6) * j2) + j12;
        iArr2[3] = ((int) j18) & M28;
        long j19 = (((long) i10) * j2) + j14;
        iArr2[7] = ((int) j19) & M28;
        long j20 = (((long) i14) * j2) + (j15 >>> 28);
        iArr2[11] = ((int) j20) & M28;
        long j21 = j20 >>> 28;
        long j22 = (((long) i18) * j2) + j17;
        iArr2[15] = ((int) j22) & M28;
        long j23 = j22 >>> 28;
        long j24 = (((long) i7) * j2) + (j18 >>> 28);
        iArr2[4] = ((int) j24) & M28;
        long j25 = j24 >>> 28;
        long j26 = (((long) i11) * j2) + (j19 >>> 28) + j23;
        iArr2[8] = ((int) j26) & M28;
        long j27 = (((long) i15) * j2) + j21;
        iArr2[12] = ((int) j27) & M28;
        long j28 = j27 >>> 28;
        long j29 = (((long) i3) * j2) + j23;
        iArr2[0] = ((int) j29) & M28;
        iArr2[1] = i19 + ((int) (j29 >>> 28));
        iArr2[5] = i20 + ((int) j25);
        iArr2[9] = i21 + ((int) (j26 >>> 28));
        iArr2[13] = i22 + ((int) j28);
    }
}
