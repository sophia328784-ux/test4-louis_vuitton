package org.bouncycastle.pqc.crypto.ntruprime;

import defpackage.a;
import defpackage.cj;
import defpackage.md;
import java.security.SecureRandom;
import org.bouncycastle.asn1.cmc.BodyPartID;
import org.bouncycastle.crypto.digests.SHA512Digest;
import org.bouncycastle.crypto.engines.AESEngine;
import org.bouncycastle.crypto.hpke.HPKE;
import org.bouncycastle.crypto.modes.CTRModeCipher;
import org.bouncycastle.crypto.modes.SICBlockCipher;
import org.bouncycastle.crypto.params.KeyParameter;
import org.bouncycastle.crypto.params.ParametersWithIV;

/* JADX INFO: loaded from: classes5.dex */
class Utils {
    public static int bToUnsignedInt(byte b2) {
        return b2 & 255;
    }

    public static void checkForSmallPolynomial(byte[] bArr, byte[] bArr2, int i2, int i3) {
        int i4 = 0;
        for (int i5 = 0; i5 != bArr2.length; i5++) {
            i4 += bArr2[i5] & 1;
        }
        int iCheckNotEqualToZero = checkNotEqualToZero(i4 - i3);
        for (int i6 = 0; i6 < i3; i6++) {
            bArr[i6] = (byte) (((bArr2[i6] ^ 1) & (~iCheckNotEqualToZero)) ^ 1);
        }
        while (i3 < i2) {
            bArr[i3] = (byte) (bArr2[i3] & (~iCheckNotEqualToZero));
            i3++;
        }
    }

    private static int checkLessThanZero(int i2) {
        return -(i2 >>> 31);
    }

    private static int checkNotEqualToZero(int i2) {
        return -((int) ((-iToUnsignedLong(i2)) >>> 63));
    }

    public static void cryptoSort(int[] iArr, int i2) {
        if (i2 < 2) {
            return;
        }
        int i3 = 1;
        while (i3 < i2 - i3) {
            i3 += i3;
        }
        for (int i4 = i3; i4 > 0; i4 >>>= 1) {
            for (int i5 = 0; i5 < i2 - i4; i5++) {
                if ((i5 & i4) == 0) {
                    minmax(iArr, i5, i5 + i4);
                }
            }
            for (int i6 = i3; i6 > i4; i6 >>>= 1) {
                for (int i7 = 0; i7 < i2 - i6; i7++) {
                    if ((i7 & i4) == 0) {
                        minmax(iArr, i7 + i4, i7 + i6);
                    }
                }
            }
        }
    }

    private static void decode(short[] sArr, byte[] bArr, short[] sArr2, int i2, int i3, int i4) {
        int i5;
        if (i2 == 1) {
            short s = sArr2[0];
            if (s == 1) {
                sArr[i3] = 0;
            } else if (s <= 256) {
                sArr[i3] = (short) getUnsignedMod(bToUnsignedInt(bArr[i4]), sArr2[0]);
            } else {
                sArr[i3] = (short) getUnsignedMod(bToUnsignedInt(bArr[i4]) + (bArr[i4 + 1] << 8), sArr2[0]);
            }
        }
        if (i2 > 1) {
            int i6 = (i2 + 1) / 2;
            short[] sArr3 = new short[i6];
            short[] sArr4 = new short[i6];
            int i7 = i2 / 2;
            short[] sArr5 = new short[i7];
            int[] iArr = new int[i7];
            int i8 = i4;
            int i9 = 0;
            while (true) {
                i5 = i2 - 1;
                if (i9 >= i5) {
                    break;
                }
                int i10 = sArr2[i9] * sArr2[i9 + 1];
                if (i10 > 4194048) {
                    int i11 = i9 / 2;
                    iArr[i11] = 65536;
                    sArr5[i11] = (short) ((bToUnsignedInt(bArr[i8 + 1]) * 256) + bToUnsignedInt(bArr[i8]));
                    i8 += 2;
                    sArr4[i11] = (short) ((((i10 + 255) >>> 8) + 255) >>> 8);
                } else if (i10 >= 16384) {
                    int i12 = i9 / 2;
                    iArr[i12] = 256;
                    sArr5[i12] = (short) bToUnsignedInt(bArr[i8]);
                    i8++;
                    sArr4[i12] = (short) ((i10 + 255) >>> 8);
                } else {
                    int i13 = i9 / 2;
                    iArr[i13] = 1;
                    sArr5[i13] = 0;
                    sArr4[i13] = (short) i10;
                }
                i9 += 2;
            }
            if (i9 < i2) {
                sArr4[i9 / 2] = sArr2[i9];
            }
            decode(sArr3, bArr, sArr4, i6, i3, i8);
            int i14 = i3;
            int i15 = 0;
            while (i15 < i5) {
                int i16 = i15 / 2;
                int[] unsignedDivMod = getUnsignedDivMod((iArr[i16] * sToUnsignedInt(sArr3[i16])) + sToUnsignedInt(sArr5[i16]), sArr2[i15]);
                int i17 = i14 + 1;
                sArr[i14] = (short) unsignedDivMod[1];
                i14 += 2;
                sArr[i17] = (short) getUnsignedMod(unsignedDivMod[0], sArr2[i15 + 1]);
                i15 += 2;
            }
            if (i15 < i2) {
                sArr[i14] = sArr3[i15 / 2];
            }
        }
    }

    private static void encode(byte[] bArr, short[] sArr, short[] sArr2, int i2, int i3) {
        int i4 = 0;
        if (i2 == 1) {
            short s = sArr[0];
            short s2 = sArr2[0];
            while (s2 > 1) {
                bArr[i3] = (byte) s;
                s = (short) (s >>> 8);
                s2 = (short) ((s2 + 255) >>> 8);
                i3++;
            }
        }
        if (i2 > 1) {
            int i5 = (i2 + 1) / 2;
            short[] sArr3 = new short[i5];
            short[] sArr4 = new short[i5];
            while (i4 < i2 - 1) {
                short s3 = sArr2[i4];
                int i6 = i4 + 1;
                int i7 = (sArr[i6] * s3) + sArr[i4];
                int i8 = sArr2[i6] * s3;
                while (i8 >= 16384) {
                    bArr[i3] = (byte) i7;
                    i7 >>>= 8;
                    i8 = (i8 + 255) >>> 8;
                    i3++;
                }
                int i9 = i4 / 2;
                sArr3[i9] = (short) i7;
                sArr4[i9] = (short) i8;
                i4 += 2;
            }
            if (i4 < i2) {
                int i10 = i4 / 2;
                sArr3[i10] = sArr[i4];
                sArr4[i10] = sArr2[i4];
            }
            encode(bArr, sArr3, sArr4, i5, i3);
        }
    }

    public static void expand(int[] iArr, byte[] bArr) {
        byte[] bArr2 = new byte[iArr.length * 4];
        byte[] bArr3 = new byte[iArr.length * 4];
        generateAES256CTRStream(bArr2, bArr3, new byte[16], bArr);
        for (int i2 = 0; i2 < iArr.length; i2++) {
            int i3 = i2 * 4;
            iArr[i2] = bToUnsignedInt(bArr3[i3]) + (bToUnsignedInt(bArr3[i3 + 1]) << 8) + (bToUnsignedInt(bArr3[i3 + 2]) << 16) + (bToUnsignedInt(bArr3[i3 + 3]) << 24);
        }
    }

    private static void generateAES256CTRStream(byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4) {
        CTRModeCipher cTRModeCipherNewInstance = SICBlockCipher.newInstance(AESEngine.newInstance());
        cTRModeCipherNewInstance.init(true, new ParametersWithIV(new KeyParameter(bArr4), bArr3));
        cTRModeCipherNewInstance.processBytes(bArr, 0, bArr2.length, bArr2, 0);
    }

    public static void generatePolynomialInRQFromSeed(short[] sArr, byte[] bArr, int i2, int i3) {
        int[] iArr = new int[i2];
        expand(iArr, bArr);
        for (int i4 = 0; i4 < i2; i4++) {
            sArr[i4] = (short) (getUnsignedMod(iArr[i4], i3) - ((i3 - 1) / 2));
        }
    }

    public static void getDecodedPolynomial(short[] sArr, byte[] bArr, int i2, int i3) {
        short[] sArr2 = new short[i2];
        short[] sArr3 = new short[i2];
        for (int i4 = 0; i4 < i2; i4++) {
            sArr3[i4] = (short) i3;
        }
        decode(sArr2, bArr, sArr3, i2, 0, 0);
        for (int i5 = 0; i5 < i2; i5++) {
            sArr[i5] = (short) (sArr2[i5] - ((i3 - 1) / 2));
        }
    }

    public static void getDecodedSmallPolynomial(byte[] bArr, byte[] bArr2, int i2) {
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        while (i3 < i2 / 4) {
            int i6 = i4 + 1;
            byte b2 = bArr2[i4];
            bArr[i5] = (byte) ((bToUnsignedInt(b2) & 3) - 1);
            byte b3 = (byte) (b2 >>> 2);
            bArr[i5 + 1] = (byte) ((bToUnsignedInt(b3) & 3) - 1);
            byte b4 = (byte) (b3 >>> 2);
            int i7 = i5 + 3;
            bArr[i5 + 2] = (byte) ((bToUnsignedInt(b4) & 3) - 1);
            i5 += 4;
            bArr[i7] = (byte) ((bToUnsignedInt((byte) (b4 >>> 2)) & 3) - 1);
            i3++;
            i4 = i6;
        }
        bArr[i5] = (byte) ((bToUnsignedInt(bArr2[i4]) & 3) - 1);
    }

    public static void getEncodedInputs(byte[] bArr, byte[] bArr2) {
        for (int i2 = 0; i2 < bArr2.length; i2++) {
            int i3 = i2 >>> 3;
            bArr[i3] = (byte) (bArr[i3] | (bArr2[i2] << (i2 & 7)));
        }
    }

    public static void getEncodedPolynomial(byte[] bArr, short[] sArr, int i2, int i3) {
        short[] sArr2 = new short[i2];
        short[] sArr3 = new short[i2];
        for (int i4 = 0; i4 < i2; i4++) {
            sArr2[i4] = (short) a.a(i3, 1, 2, sArr[i4]);
        }
        for (int i5 = 0; i5 < i2; i5++) {
            sArr3[i5] = (short) i3;
        }
        encode(bArr, sArr2, sArr3, i2, 0);
    }

    public static void getEncodedSmallPolynomial(byte[] bArr, byte[] bArr2, int i2) {
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        while (i3 < i2 / 4) {
            int i6 = i5 + 3;
            byte b2 = (byte) (((byte) (((byte) (bArr2[i5] + 1)) + (((byte) (bArr2[i5 + 1] + 1)) << 2))) + (((byte) (bArr2[i5 + 2] + 1)) << 4));
            i5 += 4;
            bArr[i4] = (byte) (b2 + (((byte) (bArr2[i6] + 1)) << 6));
            i3++;
            i4++;
        }
        bArr[i4] = (byte) (bArr2[i5] + 1);
    }

    public static byte[] getHashWithPrefix(byte[] bArr, byte[] bArr2) {
        byte[] bArr3 = new byte[64];
        int length = bArr.length + bArr2.length;
        byte[] bArr4 = new byte[length];
        System.arraycopy(bArr, 0, bArr4, 0, bArr.length);
        System.arraycopy(bArr2, 0, bArr4, bArr.length, bArr2.length);
        SHA512Digest sHA512Digest = new SHA512Digest();
        sHA512Digest.update(bArr4, 0, length);
        sHA512Digest.doFinal(bArr3, 0);
        return bArr3;
    }

    public static int getInverseInRQ(int i2, int i3) {
        int modFreeze = i2;
        for (int i4 = 1; i4 < i3 - 2; i4++) {
            modFreeze = getModFreeze(modFreeze * i2, i3);
        }
        return modFreeze;
    }

    public static int getModFreeze(int i2, int i3) {
        int i4 = (i3 - 1) / 2;
        return getSignedDivMod(i2 + i4, i3)[1] - i4;
    }

    public static void getOneThirdInverseInRQ(short[] sArr, byte[] bArr, int i2, int i3) {
        int i4 = i2 + 1;
        short[] sArr2 = new short[i4];
        short[] sArr3 = new short[i4];
        short[] sArr4 = new short[i4];
        short[] sArr5 = new short[i4];
        sArr4[0] = (short) getInverseInRQ(3, i3);
        sArr2[0] = 1;
        int i5 = i2 - 1;
        sArr2[i5] = -1;
        sArr2[i2] = -1;
        for (int i6 = 0; i6 < i2; i6++) {
            sArr3[i5 - i6] = bArr[i6];
        }
        sArr3[i2] = 0;
        int i7 = 1;
        for (int i8 = 0; i8 < (i2 * 2) - 1; i8++) {
            System.arraycopy(sArr5, 0, sArr5, 1, i2);
            sArr5[0] = 0;
            int i9 = -i7;
            int iCheckLessThanZero = checkLessThanZero(i9) & checkNotEqualToZero(sArr3[0]);
            i7 = (i7 ^ ((i9 ^ i7) & iCheckLessThanZero)) + 1;
            for (int i10 = 0; i10 < i4; i10++) {
                short s = sArr2[i10];
                int i11 = (sArr3[i10] ^ s) & iCheckLessThanZero;
                sArr2[i10] = (short) (s ^ i11);
                sArr3[i10] = (short) (sArr3[i10] ^ i11);
                short s2 = sArr5[i10];
                int i12 = (sArr4[i10] ^ s2) & iCheckLessThanZero;
                sArr5[i10] = (short) (s2 ^ i12);
                sArr4[i10] = (short) (sArr4[i10] ^ i12);
            }
            short s3 = sArr2[0];
            short s4 = sArr3[0];
            for (int i13 = 0; i13 < i4; i13++) {
                sArr3[i13] = (short) getModFreeze((sArr3[i13] * s3) - (sArr2[i13] * s4), i3);
            }
            for (int i14 = 0; i14 < i4; i14++) {
                sArr4[i14] = (short) getModFreeze((sArr4[i14] * s3) - (sArr5[i14] * s4), i3);
            }
            int i15 = 0;
            while (i15 < i2) {
                int i16 = i15 + 1;
                sArr3[i15] = sArr3[i16];
                i15 = i16;
            }
            sArr3[i2] = 0;
        }
        int inverseInRQ = getInverseInRQ(sArr2[0], i3);
        for (int i17 = 0; i17 < i2; i17++) {
            sArr[i17] = (short) getModFreeze(sArr5[i5 - i17] * inverseInRQ, i3);
        }
    }

    public static void getRandomInputs(SecureRandom secureRandom, byte[] bArr) {
        byte[] bArr2 = new byte[bArr.length / 8];
        secureRandom.nextBytes(bArr2);
        for (int i2 = 0; i2 < bArr.length; i2++) {
            bArr[i2] = (byte) ((bArr2[i2 >>> 3] >>> (i2 & 7)) & 1);
        }
    }

    public static void getRandomShortPolynomial(SecureRandom secureRandom, byte[] bArr, int i2, int i3) {
        int[] iArr = new int[i2];
        for (int i4 = 0; i4 < i2; i4++) {
            iArr[i4] = getRandomUnsignedInteger(secureRandom);
        }
        sortGenerateShortPolynomial(bArr, iArr, i2, i3);
    }

    public static void getRandomSmallPolynomial(SecureRandom secureRandom, byte[] bArr) {
        for (int i2 = 0; i2 < bArr.length; i2++) {
            bArr[i2] = (byte) ((((getRandomUnsignedInteger(secureRandom) & 1073741823) * 3) >>> 30) - 1);
        }
    }

    public static int getRandomUnsignedInteger(SecureRandom secureRandom) {
        byte[] bArr = new byte[4];
        secureRandom.nextBytes(bArr);
        return bToUnsignedInt(bArr[0]) + (bToUnsignedInt(bArr[1]) << 8) + (bToUnsignedInt(bArr[2]) << 16) + (bToUnsignedInt(bArr[3]) << 24);
    }

    public static void getRoundedDecodedPolynomial(short[] sArr, byte[] bArr, int i2, int i3) {
        short[] sArr2 = new short[i2];
        short[] sArr3 = new short[i2];
        for (int i4 = 0; i4 < i2; i4++) {
            sArr3[i4] = (short) ((i3 + 2) / 3);
        }
        decode(sArr2, bArr, sArr3, i2, 0, 0);
        for (int i5 = 0; i5 < i2; i5++) {
            sArr[i5] = (short) ((sArr2[i5] * 3) - ((i3 - 1) / 2));
        }
    }

    public static void getRoundedEncodedPolynomial(byte[] bArr, short[] sArr, int i2, int i3) {
        short[] sArr2 = new short[i2];
        short[] sArr3 = new short[i2];
        for (int i4 = 0; i4 < i2; i4++) {
            sArr2[i4] = (short) (((((i3 - 1) / 2) + sArr[i4]) * 10923) >>> 15);
            sArr3[i4] = (short) ((i3 + 2) / 3);
        }
        encode(bArr, sArr2, sArr3, i2, 0);
    }

    private static int[] getSignedDivMod(int i2, int i3) {
        int[] unsignedDivMod = getUnsignedDivMod(toIntExact(iToUnsignedLong(i2) - 2147483648L), i3);
        int[] unsignedDivMod2 = getUnsignedDivMod(Integer.MIN_VALUE, i3);
        int intExact = toIntExact(iToUnsignedLong(unsignedDivMod[0]) - iToUnsignedLong(unsignedDivMod2[0]));
        int intExact2 = toIntExact(iToUnsignedLong(unsignedDivMod[1]) - iToUnsignedLong(unsignedDivMod2[1]));
        int i4 = -(intExact2 >>> 31);
        return new int[]{intExact + i4, intExact2 + (i3 & i4)};
    }

    public static void getTopDecodedPolynomial(byte[] bArr, byte[] bArr2) {
        for (int i2 = 0; i2 < bArr2.length; i2++) {
            int i3 = i2 * 2;
            bArr[i3] = (byte) (bArr2[i2] & 15);
            bArr[i3 + 1] = (byte) (bArr2[i2] >>> 4);
        }
    }

    public static void getTopEncodedPolynomial(byte[] bArr, byte[] bArr2) {
        for (int i2 = 0; i2 < bArr.length; i2++) {
            int i3 = i2 * 2;
            bArr[i2] = (byte) (bArr2[i3] + (bArr2[i3 + 1] << 4));
        }
    }

    private static int[] getUnsignedDivMod(int i2, int i3) {
        long jIToUnsignedLong = iToUnsignedLong(i2);
        long j2 = i3;
        long jIToUnsignedLong2 = iToUnsignedLong(Integer.MIN_VALUE) / j2;
        long j3 = (jIToUnsignedLong * jIToUnsignedLong2) >>> 31;
        long j4 = jIToUnsignedLong - (j3 * j2);
        long j5 = (jIToUnsignedLong2 * j4) >>> 31;
        long j6 = (j4 - (j5 * j2)) - j2;
        long j7 = j3 + j5 + 1;
        long j8 = -(j6 >>> 63);
        return new int[]{toIntExact(j7 + j8), toIntExact(j6 + (j2 & j8))};
    }

    private static int getUnsignedMod(int i2, int i3) {
        return getUnsignedDivMod(i2, i3)[1];
    }

    public static long iToUnsignedLong(int i2) {
        return ((long) i2) & BodyPartID.bodyIdMax;
    }

    public static boolean isInvertiblePolynomialInR3(byte[] bArr, byte[] bArr2, int i2) {
        int i3 = i2 + 1;
        byte[] bArr3 = new byte[i3];
        byte[] bArr4 = new byte[i3];
        byte[] bArr5 = new byte[i3];
        byte[] bArr6 = new byte[i3];
        bArr5[0] = 1;
        bArr3[0] = 1;
        int i4 = i2 - 1;
        bArr3[i4] = -1;
        bArr3[i2] = -1;
        for (int i5 = 0; i5 < i2; i5++) {
            bArr4[i4 - i5] = bArr[i5];
        }
        bArr4[i2] = 0;
        int i6 = 1;
        for (int i7 = 0; i7 < (i2 * 2) - 1; i7++) {
            System.arraycopy(bArr6, 0, bArr6, 1, i2);
            bArr6[0] = 0;
            int i8 = (-bArr4[0]) * bArr3[0];
            int i9 = -i6;
            int iCheckLessThanZero = checkLessThanZero(i9) & checkNotEqualToZero(bArr4[0]);
            i6 = (i6 ^ ((i9 ^ i6) & iCheckLessThanZero)) + 1;
            for (int i10 = 0; i10 < i3; i10++) {
                byte b2 = bArr3[i10];
                int i11 = (bArr4[i10] ^ b2) & iCheckLessThanZero;
                bArr3[i10] = (byte) (b2 ^ i11);
                bArr4[i10] = (byte) (bArr4[i10] ^ i11);
                byte b3 = bArr6[i10];
                int i12 = (bArr5[i10] ^ b3) & iCheckLessThanZero;
                bArr6[i10] = (byte) (b3 ^ i12);
                bArr5[i10] = (byte) (bArr5[i10] ^ i12);
            }
            for (int i13 = 0; i13 < i3; i13++) {
                bArr4[i13] = (byte) getModFreeze((bArr3[i13] * i8) + bArr4[i13], 3);
            }
            for (int i14 = 0; i14 < i3; i14++) {
                bArr5[i14] = (byte) getModFreeze((bArr6[i14] * i8) + bArr5[i14], 3);
            }
            int i15 = 0;
            while (i15 < i2) {
                int i16 = i15 + 1;
                bArr4[i15] = bArr4[i16];
                i15 = i16;
            }
            bArr4[i2] = 0;
        }
        byte b4 = bArr3[0];
        for (int i17 = 0; i17 < i2; i17++) {
            bArr2[i17] = (byte) (bArr6[i4 - i17] * b4);
        }
        return i6 == 0;
    }

    public static void minmax(int[] iArr, int i2, int i3) {
        int i4 = iArr[i2];
        int i5 = iArr[i3];
        int i6 = i4 ^ i5;
        int i7 = i5 - i4;
        int i8 = i6 & (-((i7 ^ (((i7 ^ i5) ^ Integer.MIN_VALUE) & i6)) >>> 31));
        iArr[i2] = i4 ^ i8;
        iArr[i3] = i5 ^ i8;
    }

    public static void multiplicationInR3(byte[] bArr, byte[] bArr2, byte[] bArr3, int i2) {
        int i3 = i2 + i2;
        int i4 = i3 - 1;
        byte[] bArr4 = new byte[i4];
        for (int i5 = 0; i5 < i2; i5++) {
            byte modFreeze = 0;
            for (int i6 = 0; i6 <= i5; i6++) {
                modFreeze = (byte) getModFreeze((bArr2[i6] * bArr3[i5 - i6]) + modFreeze, 3);
            }
            bArr4[i5] = modFreeze;
        }
        for (int i7 = i2; i7 < i4; i7++) {
            byte modFreeze2 = 0;
            for (int i8 = (i7 - i2) + 1; i8 < i2; i8++) {
                modFreeze2 = (byte) getModFreeze((bArr2[i8] * bArr3[i7 - i8]) + modFreeze2, 3);
            }
            bArr4[i7] = modFreeze2;
        }
        for (int i9 = i3 - 2; i9 >= i2; i9--) {
            int i10 = i9 - i2;
            bArr4[i10] = (byte) getModFreeze(bArr4[i10] + bArr4[i9], 3);
            int i11 = i10 + 1;
            bArr4[i11] = (byte) getModFreeze(bArr4[i11] + bArr4[i9], 3);
        }
        for (int i12 = 0; i12 < i2; i12++) {
            bArr[i12] = bArr4[i12];
        }
    }

    public static void multiplicationInRQ(short[] sArr, short[] sArr2, byte[] bArr, int i2, int i3) {
        int i4 = i2 + i2;
        int i5 = i4 - 1;
        short[] sArr3 = new short[i5];
        for (int i6 = 0; i6 < i2; i6++) {
            short modFreeze = 0;
            for (int i7 = 0; i7 <= i6; i7++) {
                modFreeze = (short) getModFreeze((sArr2[i7] * bArr[i6 - i7]) + modFreeze, i3);
            }
            sArr3[i6] = modFreeze;
        }
        for (int i8 = i2; i8 < i5; i8++) {
            short modFreeze2 = 0;
            for (int i9 = (i8 - i2) + 1; i9 < i2; i9++) {
                modFreeze2 = (short) getModFreeze((sArr2[i9] * bArr[i8 - i9]) + modFreeze2, i3);
            }
            sArr3[i8] = modFreeze2;
        }
        for (int i10 = i4 - 2; i10 >= i2; i10--) {
            int i11 = i10 - i2;
            sArr3[i11] = (short) getModFreeze(sArr3[i11] + sArr3[i10], i3);
            int i12 = i11 + 1;
            sArr3[i12] = (short) getModFreeze(sArr3[i12] + sArr3[i10], i3);
        }
        for (int i13 = 0; i13 < i2; i13++) {
            sArr[i13] = sArr3[i13];
        }
    }

    public static void right(byte[] bArr, short[] sArr, byte[] bArr2, int i2, int i3, int i4, int i5) {
        for (int i6 = 0; i6 < bArr.length; i6++) {
            bArr[i6] = (byte) (-checkLessThanZero(getModFreeze(cj.a(i3, 4, getModFreeze((bArr2[i6] * i5) - i4, i2) - sArr[i6], 1), i2)));
        }
    }

    public static void roundPolynomial(short[] sArr, short[] sArr2) {
        for (int i2 = 0; i2 < sArr.length; i2++) {
            short s = sArr2[i2];
            sArr[i2] = (short) (s - getModFreeze(s, 3));
        }
    }

    public static int sToUnsignedInt(short s) {
        return s & HPKE.aead_EXPORT_ONLY;
    }

    public static void scalarMultiplicationInRQ(short[] sArr, short[] sArr2, int i2, int i3) {
        for (int i4 = 0; i4 < sArr2.length; i4++) {
            sArr[i4] = (short) getModFreeze(sArr2[i4] * i2, i3);
        }
    }

    public static void sortGenerateShortPolynomial(byte[] bArr, int[] iArr, int i2, int i3) {
        for (int i4 = 0; i4 < i3; i4++) {
            iArr[i4] = iArr[i4] & (-2);
        }
        while (i3 < i2) {
            iArr[i3] = (iArr[i3] & (-3)) | 1;
            i3++;
        }
        cryptoSort(iArr, i2);
        for (int i5 = 0; i5 < i2; i5++) {
            bArr[i5] = (byte) ((iArr[i5] & 3) - 1);
        }
    }

    public static int toIntExact(long j2) {
        int i2 = (int) j2;
        if (i2 == j2) {
            return i2;
        }
        md.k("value out of integer range");
        return 0;
    }

    public static void top(byte[] bArr, short[] sArr, byte[] bArr2, int i2, int i3, int i4) {
        for (int i5 = 0; i5 < bArr.length; i5++) {
            bArr[i5] = (byte) ((((getModFreeze((((i2 - 1) / 2) * bArr2[i5]) + sArr[i5], i2) + i3) * i4) + 16384) >>> 15);
        }
    }

    public static void transformRQToR3(byte[] bArr, short[] sArr) {
        for (int i2 = 0; i2 < sArr.length; i2++) {
            bArr[i2] = (byte) getModFreeze(sArr[i2], 3);
        }
    }

    public static void updateDiffMask(byte[] bArr, byte[] bArr2, int i2) {
        for (int i3 = 0; i3 < bArr.length; i3++) {
            int i4 = bArr[i3];
            bArr[i3] = (byte) (i4 ^ ((bArr2[i3] ^ i4) & i2));
        }
    }
}
