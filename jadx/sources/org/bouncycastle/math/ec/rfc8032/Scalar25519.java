package org.bouncycastle.math.ec.rfc8032;

import org.bouncycastle.math.raw.Nat;
import org.bouncycastle.math.raw.Nat256;

/* JADX INFO: loaded from: classes5.dex */
abstract class Scalar25519 {
    private static final int L0 = -50998291;
    private static final int L1 = 19280294;
    private static final int L2 = 127719000;
    private static final int L3 = -6428113;
    private static final int L4 = 5343;
    private static final long M08L = 255;
    private static final long M28L = 268435455;
    private static final long M32L = 4294967295L;
    private static final int SCALAR_BYTES = 32;
    static final int SIZE = 8;
    private static final int TARGET_LENGTH = 254;
    private static final int[] L = {1559614445, 1477600026, -1560830762, 350157278, 0, 0, 0, 268435456};
    private static final int[] LSq = {-1424848535, -487721339, 580428573, 1745064566, -770181698, 1036971123, 461123738, -1582065343, 1268693629, -889041821, -731974758, 43769659, 0, 0, 0, 16777216};

    public static boolean checkVar(byte[] bArr, int[] iArr) {
        decode(bArr, iArr);
        return !Nat256.gte(iArr, L);
    }

    public static void decode(byte[] bArr, int[] iArr) {
        Codec.decode32(bArr, 0, iArr, 0, 8);
    }

    public static void getOrderWnafVar(int i2, byte[] bArr) {
        Wnaf.getSignedVar(L, i2, bArr);
    }

    public static void multiply128Var(int[] iArr, int[] iArr2, int[] iArr3) {
        int[] iArr4 = new int[12];
        Nat256.mul128(iArr, iArr2, iArr4);
        if (iArr2[3] < 0) {
            Nat256.addTo(L, 0, iArr4, 4, 0);
            Nat256.subFrom(iArr, 0, iArr4, 4, 0);
        }
        byte[] bArr = new byte[48];
        Codec.encode32(iArr4, 0, 12, bArr, 0);
        decode(reduce384(bArr), iArr3);
    }

    public static byte[] reduce384(byte[] bArr) {
        long jDecode32 = ((long) Codec.decode32(bArr, 0)) & 4294967295L;
        long jDecode24 = ((long) (Codec.decode24(bArr, 4) << 4)) & 4294967295L;
        long jDecode33 = ((long) Codec.decode32(bArr, 7)) & 4294967295L;
        long jDecode25 = ((long) (Codec.decode24(bArr, 11) << 4)) & 4294967295L;
        long jDecode34 = ((long) Codec.decode32(bArr, 14)) & 4294967295L;
        long jDecode26 = ((long) (Codec.decode24(bArr, 18) << 4)) & 4294967295L;
        long jDecode35 = ((long) Codec.decode32(bArr, 21)) & 4294967295L;
        long jDecode27 = ((long) (Codec.decode24(bArr, 25) << 4)) & 4294967295L;
        long jDecode36 = ((long) Codec.decode32(bArr, 28)) & 4294967295L;
        long jDecode28 = Codec.decode24(bArr, 32) << 4;
        long j2 = jDecode28 & 4294967295L;
        long jDecode37 = Codec.decode32(bArr, 35);
        long j3 = jDecode37 & 4294967295L;
        long jDecode29 = Codec.decode24(bArr, 39) << 4;
        long j4 = jDecode29 & 4294967295L;
        long jDecode38 = Codec.decode32(bArr, 42);
        long jDecode16 = (((long) (Codec.decode16(bArr, 46) << 4)) & 4294967295L) + ((jDecode38 & 4294967295L) >> 28);
        long j5 = jDecode36 - (jDecode16 * 5343);
        long j6 = (jDecode38 & M28L) + (j4 >> 28);
        long j7 = (jDecode34 - (jDecode16 * (-50998291))) - (j6 * 19280294);
        long j8 = (jDecode26 - (jDecode16 * 19280294)) - (j6 * 127719000);
        long j9 = (jDecode35 - (jDecode16 * 127719000)) - (j6 * (-6428113));
        long j10 = (jDecode27 - (jDecode16 * (-6428113))) - (j6 * 5343);
        long j11 = (jDecode29 & M28L) + (j3 >> 28);
        long j12 = jDecode33 - (j11 * (-50998291));
        long j13 = (jDecode25 - (j6 * (-50998291))) - (j11 * 19280294);
        long j14 = j7 - (j11 * 127719000);
        long j15 = j8 - (j11 * (-6428113));
        long j16 = j9 - (j11 * 5343);
        long j17 = (jDecode37 & M28L) + (j2 >> 28);
        long j18 = jDecode28 & M28L;
        long j19 = jDecode24 - (j17 * (-50998291));
        long j20 = j12 - (j17 * 19280294);
        long j21 = j13 - (j17 * 127719000);
        long j22 = j14 - (j17 * (-6428113));
        long j23 = j15 - (j17 * 5343);
        long j24 = j5 + (j10 >> 28);
        long j25 = j10 & M28L;
        long j26 = j18 + (j24 >> 28);
        long j27 = j24 & M28L;
        long j28 = j27 >>> 27;
        long j29 = j26 + j28;
        long j30 = jDecode32 - (j29 * (-50998291));
        long j31 = j20 - (j29 * 127719000);
        long j32 = j21 - (j29 * (-6428113));
        long j33 = j22 - (j29 * 5343);
        long j34 = (j19 - (j29 * 19280294)) + (j30 >> 28);
        long j35 = j30 & M28L;
        long j36 = j31 + (j34 >> 28);
        long j37 = j34 & M28L;
        long j38 = j32 + (j36 >> 28);
        long j39 = j36 & M28L;
        long j40 = j33 + (j38 >> 28);
        long j41 = j38 & M28L;
        long j42 = j23 + (j40 >> 28);
        long j43 = j40 & M28L;
        long j44 = j16 + (j42 >> 28);
        long j45 = j42 & M28L;
        long j46 = j25 + (j44 >> 28);
        long j47 = j44 & M28L;
        long j48 = j27 + (j46 >> 28);
        long j49 = j46 & M28L;
        long j50 = j48 >> 28;
        long j51 = j48 & M28L;
        long j52 = j50 - j28;
        long j53 = j35 + (j52 & (-50998291));
        long j54 = j37 + (j52 & 19280294) + (j53 >> 28);
        long j55 = j53 & M28L;
        long j56 = j39 + (j52 & 127719000) + (j54 >> 28);
        long j57 = j54 & M28L;
        long j58 = j41 + (j52 & (-6428113)) + (j56 >> 28);
        long j59 = j56 & M28L;
        long j60 = j43 + (j52 & 5343) + (j58 >> 28);
        long j61 = j58 & M28L;
        long j62 = j45 + (j60 >> 28);
        long j63 = j60 & M28L;
        long j64 = j47 + (j62 >> 28);
        long j65 = j62 & M28L;
        long j66 = j49 + (j64 >> 28);
        long j67 = j64 & M28L;
        long j68 = j51 + (j66 >> 28);
        long j69 = M28L & j66;
        byte[] bArr2 = new byte[64];
        Codec.encode56(j55 | (j57 << 28), bArr2, 0);
        Codec.encode56(j59 | (j61 << 28), bArr2, 7);
        Codec.encode56((j65 << 28) | j63, bArr2, 14);
        Codec.encode56((j69 << 28) | j67, bArr2, 21);
        Codec.encode32((int) j68, bArr2, 28);
        return bArr2;
    }

    public static byte[] reduce512(byte[] bArr) {
        long jDecode32 = ((long) Codec.decode32(bArr, 0)) & 4294967295L;
        long jDecode24 = ((long) (Codec.decode24(bArr, 4) << 4)) & 4294967295L;
        long jDecode33 = ((long) Codec.decode32(bArr, 7)) & 4294967295L;
        long jDecode25 = ((long) (Codec.decode24(bArr, 11) << 4)) & 4294967295L;
        long jDecode34 = ((long) Codec.decode32(bArr, 14)) & 4294967295L;
        long jDecode26 = ((long) (Codec.decode24(bArr, 18) << 4)) & 4294967295L;
        long jDecode35 = ((long) Codec.decode32(bArr, 21)) & 4294967295L;
        long jDecode27 = ((long) (Codec.decode24(bArr, 25) << 4)) & 4294967295L;
        long jDecode36 = ((long) Codec.decode32(bArr, 28)) & 4294967295L;
        long jDecode28 = ((long) (Codec.decode24(bArr, 32) << 4)) & 4294967295L;
        long jDecode37 = ((long) Codec.decode32(bArr, 35)) & 4294967295L;
        long jDecode29 = ((long) (Codec.decode24(bArr, 39) << 4)) & 4294967295L;
        long jDecode38 = ((long) Codec.decode32(bArr, 42)) & 4294967295L;
        long jDecode210 = ((long) (Codec.decode24(bArr, 46) << 4)) & 4294967295L;
        long jDecode39 = Codec.decode32(bArr, 49);
        long j2 = jDecode39 & 4294967295L;
        long jDecode211 = ((long) (Codec.decode24(bArr, 53) << 4)) & 4294967295L;
        long jDecode310 = Codec.decode32(bArr, 56);
        long jDecode212 = ((long) (Codec.decode24(bArr, 60) << 4)) & 4294967295L;
        long j3 = ((long) bArr[63]) & M08L;
        long j4 = jDecode212 + ((jDecode310 & 4294967295L) >> 28);
        long j5 = jDecode310 & M28L;
        long j6 = (jDecode38 - (j3 * (-6428113))) - (j4 * 5343);
        long j7 = (jDecode36 - (j4 * (-50998291))) - (j5 * 19280294);
        long j8 = ((jDecode28 - (j3 * (-50998291))) - (j4 * 19280294)) - (j5 * 127719000);
        long j9 = ((jDecode37 - (j3 * 19280294)) - (j4 * 127719000)) - (j5 * (-6428113));
        long j10 = ((jDecode29 - (j3 * 127719000)) - (j4 * (-6428113))) - (j5 * 5343);
        long j11 = jDecode211 + (j2 >> 28);
        long j12 = jDecode39 & M28L;
        long j13 = j9 - (j11 * 5343);
        long j14 = (j8 - (j11 * (-6428113))) - (j12 * 5343);
        long j15 = (jDecode210 - (j3 * 5343)) + (j6 >> 28);
        long j16 = ((jDecode35 - (j11 * (-50998291))) - (j12 * 19280294)) - (j15 * 127719000);
        long j17 = (((jDecode27 - (j5 * (-50998291))) - (j11 * 19280294)) - (j12 * 127719000)) - (j15 * (-6428113));
        long j18 = ((j7 - (j11 * 127719000)) - (j12 * (-6428113))) - (j15 * 5343);
        long j19 = (j6 & M28L) + (j10 >> 28);
        long j20 = (jDecode34 - (j15 * (-50998291))) - (j19 * 19280294);
        long j21 = ((jDecode26 - (j12 * (-50998291))) - (j15 * 19280294)) - (j19 * 127719000);
        long j22 = j17 - (j19 * 5343);
        long j23 = (j10 & M28L) + (j13 >> 28);
        long j24 = jDecode33 - (j23 * (-50998291));
        long j25 = (jDecode25 - (j19 * (-50998291))) - (j23 * 19280294);
        long j26 = j20 - (j23 * 127719000);
        long j27 = j21 - (j23 * (-6428113));
        long j28 = (j16 - (j19 * (-6428113))) - (j23 * 5343);
        long j29 = (j13 & M28L) + (j14 >> 28);
        long j30 = j14 & M28L;
        long j31 = jDecode24 - (j29 * (-50998291));
        long j32 = j24 - (j29 * 19280294);
        long j33 = j25 - (j29 * 127719000);
        long j34 = j26 - (j29 * (-6428113));
        long j35 = j27 - (j29 * 5343);
        long j36 = j18 + (j22 >> 28);
        long j37 = j22 & M28L;
        long j38 = j30 + (j36 >> 28);
        long j39 = j36 & M28L;
        long j40 = j39 >>> 27;
        long j41 = j38 + j40;
        long j42 = jDecode32 - (j41 * (-50998291));
        long j43 = j32 - (j41 * 127719000);
        long j44 = j33 - (j41 * (-6428113));
        long j45 = j34 - (j41 * 5343);
        long j46 = (j31 - (j41 * 19280294)) + (j42 >> 28);
        long j47 = j42 & M28L;
        long j48 = j43 + (j46 >> 28);
        long j49 = j46 & M28L;
        long j50 = j44 + (j48 >> 28);
        long j51 = j48 & M28L;
        long j52 = j45 + (j50 >> 28);
        long j53 = j50 & M28L;
        long j54 = j35 + (j52 >> 28);
        long j55 = j52 & M28L;
        long j56 = j28 + (j54 >> 28);
        long j57 = j54 & M28L;
        long j58 = j37 + (j56 >> 28);
        long j59 = j56 & M28L;
        long j60 = j39 + (j58 >> 28);
        long j61 = j58 & M28L;
        long j62 = j60 >> 28;
        long j63 = j60 & M28L;
        long j64 = j62 - j40;
        long j65 = j47 + (j64 & (-50998291));
        long j66 = j49 + (j64 & 19280294) + (j65 >> 28);
        long j67 = j65 & M28L;
        long j68 = j51 + (j64 & 127719000) + (j66 >> 28);
        long j69 = j66 & M28L;
        long j70 = j53 + (j64 & (-6428113)) + (j68 >> 28);
        long j71 = j68 & M28L;
        long j72 = j55 + (j64 & 5343) + (j70 >> 28);
        long j73 = j70 & M28L;
        long j74 = j57 + (j72 >> 28);
        long j75 = j72 & M28L;
        long j76 = j59 + (j74 >> 28);
        long j77 = j74 & M28L;
        long j78 = j61 + (j76 >> 28);
        long j79 = j76 & M28L;
        long j80 = j63 + (j78 >> 28);
        long j81 = j78 & M28L;
        byte[] bArr2 = new byte[32];
        Codec.encode56(j67 | (j69 << 28), bArr2, 0);
        Codec.encode56(j71 | (j73 << 28), bArr2, 7);
        Codec.encode56((j77 << 28) | j75, bArr2, 14);
        Codec.encode56((j81 << 28) | j79, bArr2, 21);
        Codec.encode32((int) j80, bArr2, 28);
        return bArr2;
    }

    public static boolean reduceBasisVar(int[] iArr, int[] iArr2, int[] iArr3) {
        int[] iArr4 = new int[16];
        System.arraycopy(LSq, 0, iArr4, 0, 16);
        int[] iArr5 = new int[16];
        Nat256.square(iArr, iArr5);
        iArr5[0] = iArr5[0] + 1;
        int[] iArr6 = new int[16];
        int[] iArr7 = L;
        Nat256.mul(iArr7, iArr, iArr6);
        int[] iArr8 = new int[16];
        int[] iArr9 = new int[4];
        System.arraycopy(iArr7, 0, iArr9, 0, 4);
        int[] iArr10 = new int[4];
        System.arraycopy(iArr, 0, iArr10, 0, 4);
        int[] iArr11 = new int[4];
        iArr11[0] = 1;
        int i2 = 1016;
        int[] iArr12 = iArr11;
        int[] iArr13 = new int[4];
        int[] iArr14 = iArr9;
        int[] iArr15 = iArr10;
        int i3 = 15;
        int bitLengthPositive = ScalarUtil.getBitLengthPositive(15, iArr5);
        int[] iArr16 = iArr4;
        int[] iArr17 = iArr5;
        while (bitLengthPositive > 254) {
            i2--;
            if (i2 < 0) {
                return false;
            }
            int bitLength = ScalarUtil.getBitLength(i3, iArr6) - bitLengthPositive;
            int i4 = bitLength & (~(bitLength >> 31));
            if (iArr6[i3] < 0) {
                ScalarUtil.addShifted_NP(i3, i4, iArr16, iArr17, iArr6, iArr8);
                ScalarUtil.addShifted_UV(3, i4, iArr14, iArr13, iArr15, iArr12);
            } else {
                ScalarUtil.subShifted_NP(i3, i4, iArr16, iArr17, iArr6, iArr8);
                ScalarUtil.subShifted_UV(3, i4, iArr14, iArr13, iArr15, iArr12);
            }
            int[] iArr18 = iArr15;
            int[] iArr19 = iArr12;
            if (ScalarUtil.lessThan(i3, iArr16, iArr17)) {
                int i5 = bitLengthPositive >>> 5;
                int bitLengthPositive2 = ScalarUtil.getBitLengthPositive(i5, iArr16);
                int[] iArr20 = iArr17;
                iArr17 = iArr16;
                iArr16 = iArr20;
                i3 = i5;
                bitLengthPositive = bitLengthPositive2;
                iArr15 = iArr14;
                iArr12 = iArr13;
                iArr13 = iArr19;
                iArr14 = iArr18;
            } else {
                iArr12 = iArr19;
                iArr15 = iArr18;
            }
        }
        System.arraycopy(iArr15, 0, iArr2, 0, 4);
        System.arraycopy(iArr12, 0, iArr3, 0, 4);
        return true;
    }

    public static void toSignedDigits(int i2, int[] iArr) {
        Nat.caddTo(8, (~iArr[0]) & 1, L, iArr);
        Nat.shiftDownBit(8, iArr, 1);
    }
}
