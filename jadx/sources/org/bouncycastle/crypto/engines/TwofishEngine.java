package org.bouncycastle.crypto.engines;

import com.batch.android.x0.h;
import defpackage.a;
import defpackage.b21;
import defpackage.md;
import defpackage.mt;
import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.CryptoServicesRegistrar;
import org.bouncycastle.crypto.constraints.DefaultServiceProperties;
import org.bouncycastle.crypto.params.KeyParameter;
import org.bouncycastle.crypto.signers.PSSSigner;
import org.bouncycastle.util.Integers;
import org.bouncycastle.util.Pack;

/* JADX INFO: loaded from: classes5.dex */
public final class TwofishEngine implements BlockCipher {
    private static final int BLOCK_SIZE = 16;
    private static final int GF256_FDBK = 361;
    private static final int GF256_FDBK_2 = 180;
    private static final int GF256_FDBK_4 = 90;
    private static final int INPUT_WHITEN = 0;
    private static final int MAX_KEY_BITS = 256;
    private static final int MAX_ROUNDS = 16;
    private static final int OUTPUT_WHITEN = 4;
    private static final byte[][] P = {new byte[]{-87, 103, -77, -24, 4, -3, -93, 118, -102, -110, -128, 120, -28, h.a.H, h.a.v, 56, 13, h.a.f24181k, 53, -104, 24, -9, -20, 108, 67, 117, 55, 38, -6, 19, -108, 72, -14, h.a.u, -117, 48, -124, 84, h.a.J, 35, 25, 91, 61, 89, -13, -82, -94, -126, 99, 1, -125, 46, h.a.D, 81, -101, 124, -90, -21, -91, -66, 22, 12, -29, 97, h.a.f24176e, -116, 58, -11, 115, 44, 37, 11, -69, 78, -119, 107, 83, 106, -76, -15, -31, -26, -67, 69, -30, -12, -74, 102, h.a.q, -107, 3, 86, h.a.y, 28, 30, h.a.B, -5, h.a.f24178h, -114, -75, -23, h.a.t, -65, -70, -22, 119, 57, -81, 51, h.a.n, 98, 113, -127, 121, 9, -83, 36, h.a.r, -7, h.a.C, -27, h.a.f24180j, -71, 77, 68, 8, -122, -25, -95, 29, -86, -19, 6, 112, -78, h.a.w, 65, 123, h.a.d, 17, 49, h.a.g, 39, h.a.f24175c, 32, -10, 96, -1, -106, 92, -79, -85, -98, -100, 82, 27, 95, -109, 10, -17, -111, -123, 73, -18, 45, 79, -113, 59, 71, -121, 109, 70, h.a.A, 62, 105, 100, 42, h.a.s, h.a.p, 47, -4, -105, 5, 122, -84, 127, h.a.z, 26, 75, 14, -89, 90, 40, 20, 63, 41, -120, 60, 76, 2, -72, h.a.E, -80, 23, 85, 31, -118, 125, 87, h.a.l, -115, 116, -73, h.a.f24179i, -97, 114, 126, 21, 34, 18, 88, 7, -103, 52, 110, 80, h.a.I, 104, 101, PSSSigner.TRAILER_IMPLICIT, h.a.F, -8, h.a.m, -88, 43, 64, h.a.G, -2, 50, -92, h.a.o, 16, 33, -16, h.a.x, 93, 15, 0, 111, -99, 54, 66, 74, 94, h.a.f24177f, h.a.K}, new byte[]{117, -13, h.a.f24181k, -12, h.a.F, 123, -5, h.a.m, 74, h.a.x, -26, 107, 69, 125, -24, 75, h.a.A, 50, h.a.C, -3, 55, 113, -15, -31, 48, 15, -8, 27, -121, -6, 6, 63, 94, -70, -82, 91, -118, 0, PSSSigner.TRAILER_IMPLICIT, -99, 109, h.a.f24177f, -79, 14, -128, 93, h.a.w, h.a.z, h.a.d, -124, 7, 20, -75, h.a.f24175c, 44, -93, -78, 115, 76, 84, -110, 116, 54, 81, 56, -80, -67, 90, -4, 96, 98, -106, 108, 66, -9, 16, 124, 40, 39, -116, 19, -107, -100, h.a.l, 36, 70, 59, 112, h.a.o, -29, -123, h.a.p, 17, h.a.u, -109, -72, -90, -125, 32, -1, -97, 119, h.a.f24178h, h.a.q, 3, 111, 8, -65, 64, -25, 43, -30, 121, 12, -86, -126, 65, 58, -22, -71, -28, -102, -92, -105, 126, h.a.E, 122, 23, 102, -108, -95, 29, 61, -16, h.a.I, -77, 11, 114, -89, 28, -17, h.a.v, 83, 62, -113, 51, 38, 95, -20, 118, 42, 73, -127, -120, -18, 33, h.a.f24179i, 26, -21, h.a.D, h.a.f24180j, 57, -103, h.a.r, -83, 49, -117, 1, 24, 35, h.a.H, 31, 78, 45, -7, 72, 79, -14, 101, -114, 120, 92, 88, 25, -115, -27, -104, 87, 103, 127, 5, 100, -81, 99, -74, -2, -11, -73, 60, -91, h.a.s, -23, 104, 68, h.a.K, 77, 67, 105, 41, 46, -84, 21, 89, -88, 10, -98, 110, 71, h.a.J, 52, 53, 106, h.a.t, h.a.G, 34, h.a.n, h.a.f24176e, -101, -119, h.a.y, -19, -85, 18, -94, 13, 82, -69, 2, 47, -87, h.a.B, 97, 30, -76, 80, 4, -10, h.a.g, 22, 37, -122, 86, 85, 9, -66, -111}};
    private static final int P_00 = 1;
    private static final int P_01 = 0;
    private static final int P_02 = 0;
    private static final int P_03 = 1;
    private static final int P_04 = 1;
    private static final int P_10 = 0;
    private static final int P_11 = 0;
    private static final int P_12 = 1;
    private static final int P_13 = 1;
    private static final int P_14 = 0;
    private static final int P_20 = 1;
    private static final int P_21 = 1;
    private static final int P_22 = 0;
    private static final int P_23 = 0;
    private static final int P_24 = 0;
    private static final int P_30 = 0;
    private static final int P_31 = 1;
    private static final int P_32 = 1;
    private static final int P_33 = 0;
    private static final int P_34 = 1;
    private static final int ROUNDS = 16;
    private static final int ROUND_SUBKEYS = 8;
    private static final int RS_GF_FDBK = 333;
    private static final int SK_BUMP = 16843009;
    private static final int SK_ROTL = 9;
    private static final int SK_STEP = 33686018;
    private static final int TOTAL_SUBKEYS = 40;
    private int[] gSBox;
    private int[] gSubKeys;
    private boolean encrypting = false;
    private int[] gMDS0 = new int[256];
    private int[] gMDS1 = new int[256];
    private int[] gMDS2 = new int[256];
    private int[] gMDS3 = new int[256];
    private int k64Cnt = 0;
    private byte[] workingKey = null;

    public TwofishEngine() {
        CryptoServicesRegistrar.checkConstraints(new DefaultServiceProperties(getAlgorithmName(), 256));
        for (int i2 = 0; i2 < 256; i2++) {
            byte[][] bArr = P;
            int i3 = bArr[0][i2] & 255;
            int iMx_X = Mx_X(i3) & 255;
            int iMx_Y = Mx_Y(i3) & 255;
            int i4 = bArr[1][i2] & 255;
            int[] iArr = {i3, i4};
            int[] iArr2 = {iMx_X, Mx_X(i4) & 255};
            int[] iArr3 = {iMx_Y, Mx_Y(i4) & 255};
            int[] iArr4 = this.gMDS0;
            int i5 = iArr[1] | (iArr2[1] << 8);
            int i6 = iArr3[1];
            iArr4[i2] = i5 | (i6 << 16) | (i6 << 24);
            int[] iArr5 = this.gMDS1;
            int i7 = iArr3[0];
            iArr5[i2] = i7 | (i7 << 8) | (iArr2[0] << 16) | (iArr[0] << 24);
            int[] iArr6 = this.gMDS2;
            int i8 = iArr2[1];
            int i9 = iArr3[1];
            iArr6[i2] = (iArr[1] << 16) | i8 | (i9 << 8) | (i9 << 24);
            int[] iArr7 = this.gMDS3;
            int i10 = iArr2[0];
            iArr7[i2] = (iArr3[0] << 16) | (iArr[0] << 8) | i10 | (i10 << 24);
        }
    }

    private int F32(int i2, int[] iArr) {
        int i3;
        int i4;
        int iB0 = b0(i2);
        int iB1 = b1(i2);
        int iB2 = b2(i2);
        int iB3 = b3(i2);
        int i5 = iArr[0];
        int i6 = iArr[1];
        int i7 = iArr[2];
        int i8 = iArr[3];
        int i9 = this.k64Cnt & 3;
        if (i9 != 0) {
            if (i9 != 1) {
                if (i9 != 2) {
                    if (i9 != 3) {
                        return 0;
                    }
                }
                int[] iArr2 = this.gMDS0;
                byte[][] bArr = P;
                byte[] bArr2 = bArr[0];
                i3 = (iArr2[(bArr2[(bArr2[iB0] & 255) ^ b0(i6)] & 255) ^ b0(i5)] ^ this.gMDS1[(bArr[0][(bArr[1][iB1] & 255) ^ b1(i6)] & 255) ^ b1(i5)]) ^ this.gMDS2[(bArr[1][(bArr[0][iB2] & 255) ^ b2(i6)] & 255) ^ b2(i5)];
                int[] iArr3 = this.gMDS3;
                byte[] bArr3 = bArr[1];
                i4 = iArr3[b3(i5) ^ (bArr3[(bArr3[iB3] & 255) ^ b3(i6)] & 255)];
            } else {
                int[] iArr4 = this.gMDS0;
                byte[][] bArr4 = P;
                i3 = (iArr4[(bArr4[0][iB0] & 255) ^ b0(i5)] ^ this.gMDS1[(bArr4[0][iB1] & 255) ^ b1(i5)]) ^ this.gMDS2[(bArr4[1][iB2] & 255) ^ b2(i5)];
                i4 = this.gMDS3[b3(i5) ^ (bArr4[1][iB3] & 255)];
            }
            return i4 ^ i3;
        }
        byte[][] bArr5 = P;
        iB0 = (bArr5[1][iB0] & 255) ^ b0(i8);
        iB1 = (bArr5[0][iB1] & 255) ^ b1(i8);
        iB2 = (bArr5[0][iB2] & 255) ^ b2(i8);
        iB3 = (bArr5[1][iB3] & 255) ^ b3(i8);
        byte[][] bArr6 = P;
        iB0 = (bArr6[1][iB0] & 255) ^ b0(i7);
        iB1 = (bArr6[1][iB1] & 255) ^ b1(i7);
        iB2 = (bArr6[0][iB2] & 255) ^ b2(i7);
        iB3 = (bArr6[0][iB3] & 255) ^ b3(i7);
        int[] iArr5 = this.gMDS0;
        byte[][] bArr7 = P;
        byte[] bArr8 = bArr7[0];
        i3 = (iArr5[(bArr8[(bArr8[iB0] & 255) ^ b0(i6)] & 255) ^ b0(i5)] ^ this.gMDS1[(bArr7[0][(bArr7[1][iB1] & 255) ^ b1(i6)] & 255) ^ b1(i5)]) ^ this.gMDS2[(bArr7[1][(bArr7[0][iB2] & 255) ^ b2(i6)] & 255) ^ b2(i5)];
        int[] iArr6 = this.gMDS3;
        byte[] bArr9 = bArr7[1];
        i4 = iArr6[b3(i5) ^ (bArr9[(bArr9[iB3] & 255) ^ b3(i6)] & 255)];
        return i4 ^ i3;
    }

    private int Fe32_0(int i2) {
        int[] iArr = this.gSBox;
        return iArr[(((i2 >>> 24) & 255) * 2) + 513] ^ ((iArr[(i2 & 255) * 2] ^ iArr[(((i2 >>> 8) & 255) * 2) + 1]) ^ iArr[(((i2 >>> 16) & 255) * 2) + 512]);
    }

    private int Fe32_3(int i2) {
        int[] iArr = this.gSBox;
        return iArr[(((i2 >>> 16) & 255) * 2) + 513] ^ ((iArr[((i2 >>> 24) & 255) * 2] ^ iArr[((i2 & 255) * 2) + 1]) ^ iArr[(((i2 >>> 8) & 255) * 2) + 512]);
    }

    private int LFSR1(int i2) {
        return (i2 >> 1) ^ ((i2 & 1) != 0 ? 180 : 0);
    }

    private int LFSR2(int i2) {
        return ((i2 >> 2) ^ ((i2 & 2) != 0 ? 180 : 0)) ^ ((i2 & 1) != 0 ? 90 : 0);
    }

    private int Mx_X(int i2) {
        return LFSR2(i2) ^ i2;
    }

    private int Mx_Y(int i2) {
        return LFSR2(i2) ^ (LFSR1(i2) ^ i2);
    }

    private int RS_MDS_Encode(int i2, int i3) {
        for (int i4 = 0; i4 < 4; i4++) {
            i3 = RS_rem(i3);
        }
        int iRS_rem = i2 ^ i3;
        for (int i5 = 0; i5 < 4; i5++) {
            iRS_rem = RS_rem(iRS_rem);
        }
        return iRS_rem;
    }

    private int RS_rem(int i2) {
        int i3 = i2 >>> 24;
        int i4 = i3 & 255;
        int i5 = ((i4 << 1) ^ ((i3 & 128) != 0 ? RS_GF_FDBK : 0)) & 255;
        int i6 = ((i4 >>> 1) ^ ((i3 & 1) != 0 ? 166 : 0)) ^ i5;
        return ((i6 << 8) ^ (((i2 << 8) ^ (i6 << 24)) ^ (i5 << 16))) ^ i4;
    }

    private int b0(int i2) {
        return i2 & 255;
    }

    private int b1(int i2) {
        return (i2 >>> 8) & 255;
    }

    private int b2(int i2) {
        return (i2 >>> 16) & 255;
    }

    private int b3(int i2) {
        return (i2 >>> 24) & 255;
    }

    private void decryptBlock(byte[] bArr, int i2, byte[] bArr2, int i3) {
        int iLittleEndianToInt = Pack.littleEndianToInt(bArr, i2) ^ this.gSubKeys[4];
        int iLittleEndianToInt2 = Pack.littleEndianToInt(bArr, i2 + 4) ^ this.gSubKeys[5];
        int iLittleEndianToInt3 = Pack.littleEndianToInt(bArr, i2 + 8) ^ this.gSubKeys[6];
        int iLittleEndianToInt4 = Pack.littleEndianToInt(bArr, i2 + 12) ^ this.gSubKeys[7];
        int i4 = 39;
        for (int i5 = 0; i5 < 16; i5 += 2) {
            int iFe32_0 = Fe32_0(iLittleEndianToInt);
            int iFe32_3 = Fe32_3(iLittleEndianToInt2);
            int i6 = iLittleEndianToInt4 ^ (((iFe32_3 * 2) + iFe32_0) + this.gSubKeys[i4]);
            iLittleEndianToInt3 = Integers.rotateLeft(iLittleEndianToInt3, 1) ^ ((iFe32_0 + iFe32_3) + this.gSubKeys[i4 - 1]);
            iLittleEndianToInt4 = Integers.rotateRight(i6, 1);
            int iFe32_1 = Fe32_0(iLittleEndianToInt3);
            int iFe32_4 = Fe32_3(iLittleEndianToInt4);
            int i7 = i4 - 3;
            int i8 = iLittleEndianToInt2 ^ (((iFe32_4 * 2) + iFe32_1) + this.gSubKeys[i4 - 2]);
            i4 -= 4;
            iLittleEndianToInt = Integers.rotateLeft(iLittleEndianToInt, 1) ^ ((iFe32_1 + iFe32_4) + this.gSubKeys[i7]);
            iLittleEndianToInt2 = Integers.rotateRight(i8, 1);
        }
        Pack.intToLittleEndian(iLittleEndianToInt3 ^ this.gSubKeys[0], bArr2, i3);
        Pack.intToLittleEndian(iLittleEndianToInt4 ^ this.gSubKeys[1], bArr2, i3 + 4);
        Pack.intToLittleEndian(this.gSubKeys[2] ^ iLittleEndianToInt, bArr2, i3 + 8);
        Pack.intToLittleEndian(this.gSubKeys[3] ^ iLittleEndianToInt2, bArr2, i3 + 12);
    }

    private void encryptBlock(byte[] bArr, int i2, byte[] bArr2, int i3) {
        int i4 = 0;
        int iLittleEndianToInt = Pack.littleEndianToInt(bArr, i2) ^ this.gSubKeys[0];
        int iLittleEndianToInt2 = Pack.littleEndianToInt(bArr, i2 + 4) ^ this.gSubKeys[1];
        int i5 = 2;
        int iLittleEndianToInt3 = Pack.littleEndianToInt(bArr, i2 + 8) ^ this.gSubKeys[2];
        int iLittleEndianToInt4 = Pack.littleEndianToInt(bArr, i2 + 12) ^ this.gSubKeys[3];
        int i6 = 8;
        while (i4 < 16) {
            int iFe32_0 = Fe32_0(iLittleEndianToInt);
            int iFe32_3 = Fe32_3(iLittleEndianToInt2);
            iLittleEndianToInt3 = Integers.rotateRight(iLittleEndianToInt3 ^ ((iFe32_0 + iFe32_3) + this.gSubKeys[i6]), 1);
            iLittleEndianToInt4 = Integers.rotateLeft(iLittleEndianToInt4, 1) ^ (((iFe32_3 * i5) + iFe32_0) + this.gSubKeys[i6 + 1]);
            int iFe32_1 = Fe32_0(iLittleEndianToInt3);
            int iFe32_4 = Fe32_3(iLittleEndianToInt4);
            int i7 = i5;
            int i8 = i6 + 3;
            iLittleEndianToInt = Integers.rotateRight(iLittleEndianToInt ^ ((iFe32_1 + iFe32_4) + this.gSubKeys[i6 + 2]), 1);
            i6 += 4;
            iLittleEndianToInt2 = Integers.rotateLeft(iLittleEndianToInt2, 1) ^ (((iFe32_4 * 2) + iFe32_1) + this.gSubKeys[i8]);
            i4 += 2;
            i5 = i7;
        }
        Pack.intToLittleEndian(this.gSubKeys[4] ^ iLittleEndianToInt3, bArr2, i3);
        Pack.intToLittleEndian(iLittleEndianToInt4 ^ this.gSubKeys[5], bArr2, i3 + 4);
        Pack.intToLittleEndian(this.gSubKeys[6] ^ iLittleEndianToInt, bArr2, i3 + 8);
        Pack.intToLittleEndian(this.gSubKeys[7] ^ iLittleEndianToInt2, bArr2, i3 + 12);
    }

    private void setKey(byte[] bArr) {
        int iB0;
        int iB1;
        int iB2;
        int iB3;
        int iB4;
        int iB5;
        int iB6;
        int iB7;
        int[] iArr = new int[4];
        int[] iArr2 = new int[4];
        int[] iArr3 = new int[4];
        this.gSubKeys = new int[40];
        for (int i2 = 0; i2 < this.k64Cnt; i2++) {
            int i3 = i2 * 8;
            iArr[i2] = Pack.littleEndianToInt(bArr, i3);
            int iLittleEndianToInt = Pack.littleEndianToInt(bArr, i3 + 4);
            iArr2[i2] = iLittleEndianToInt;
            iArr3[(this.k64Cnt - 1) - i2] = RS_MDS_Encode(iArr[i2], iLittleEndianToInt);
        }
        for (int i4 = 0; i4 < 20; i4++) {
            int i5 = SK_STEP * i4;
            int iF32 = F32(i5, iArr);
            int iRotateLeft = Integers.rotateLeft(F32(i5 + 16843009, iArr2), 8);
            int i6 = iF32 + iRotateLeft;
            int[] iArr4 = this.gSubKeys;
            int i7 = i4 * 2;
            iArr4[i7] = i6;
            int i8 = i6 + iRotateLeft;
            iArr4[i7 + 1] = (i8 << 9) | (i8 >>> 23);
        }
        int i9 = iArr3[0];
        int i10 = iArr3[1];
        int i11 = 2;
        int i12 = iArr3[2];
        int i13 = iArr3[3];
        this.gSBox = new int[1024];
        int i14 = 0;
        while (i14 < 256) {
            int i15 = this.k64Cnt & 3;
            if (i15 != 0) {
                if (i15 == 1) {
                    int[] iArr5 = this.gSBox;
                    int i16 = i14 * 2;
                    int[] iArr6 = this.gMDS0;
                    byte[][] bArr2 = P;
                    iArr5[i16] = iArr6[(bArr2[0][i14] & 255) ^ b0(i9)];
                    this.gSBox[i16 + 1] = this.gMDS1[(bArr2[0][i14] & 255) ^ b1(i9)];
                    this.gSBox[i16 + 512] = this.gMDS2[(bArr2[1][i14] & 255) ^ b2(i9)];
                    this.gSBox[i16 + 513] = this.gMDS3[(bArr2[1][i14] & 255) ^ b3(i9)];
                } else if (i15 == i11) {
                    iB7 = i14;
                    iB6 = iB7;
                    iB5 = iB6;
                    iB4 = iB5;
                    int[] iArr7 = this.gSBox;
                    int i17 = i14 * 2;
                    int[] iArr8 = this.gMDS0;
                    byte[][] bArr3 = P;
                    byte[] bArr4 = bArr3[0];
                    iArr7[i17] = iArr8[(bArr4[(bArr4[iB6] & 255) ^ b0(i10)] & 255) ^ b0(i9)];
                    this.gSBox[i17 + 1] = this.gMDS1[(bArr3[0][(bArr3[1][iB5] & 255) ^ b1(i10)] & 255) ^ b1(i9)];
                    this.gSBox[i17 + 512] = this.gMDS2[(bArr3[1][(bArr3[0][iB4] & 255) ^ b2(i10)] & 255) ^ b2(i9)];
                    int[] iArr9 = this.gMDS3;
                    byte[] bArr5 = bArr3[1];
                    this.gSBox[i17 + 513] = iArr9[(bArr5[(bArr5[iB7] & 255) ^ b3(i10)] & 255) ^ b3(i9)];
                } else if (i15 == 3) {
                    iB3 = i14;
                    iB0 = iB3;
                    iB1 = iB0;
                    iB2 = iB1;
                }
                i14++;
                i11 = 2;
            } else {
                byte[][] bArr6 = P;
                iB0 = (bArr6[1][i14] & 255) ^ b0(i13);
                iB1 = (bArr6[0][i14] & 255) ^ b1(i13);
                iB2 = (bArr6[0][i14] & 255) ^ b2(i13);
                iB3 = (bArr6[1][i14] & 255) ^ b3(i13);
            }
            byte[][] bArr7 = P;
            iB6 = (bArr7[1][iB0] & 255) ^ b0(i12);
            iB5 = (bArr7[1][iB1] & 255) ^ b1(i12);
            iB4 = (bArr7[0][iB2] & 255) ^ b2(i12);
            iB7 = (bArr7[0][iB3] & 255) ^ b3(i12);
            int[] iArr10 = this.gSBox;
            int i18 = i14 * 2;
            int[] iArr11 = this.gMDS0;
            byte[][] bArr8 = P;
            byte[] bArr9 = bArr8[0];
            iArr10[i18] = iArr11[(bArr9[(bArr9[iB6] & 255) ^ b0(i10)] & 255) ^ b0(i9)];
            this.gSBox[i18 + 1] = this.gMDS1[(bArr8[0][(bArr8[1][iB5] & 255) ^ b1(i10)] & 255) ^ b1(i9)];
            this.gSBox[i18 + 512] = this.gMDS2[(bArr8[1][(bArr8[0][iB4] & 255) ^ b2(i10)] & 255) ^ b2(i9)];
            int[] iArr12 = this.gMDS3;
            byte[] bArr10 = bArr8[1];
            this.gSBox[i18 + 513] = iArr12[(bArr10[(bArr10[iB7] & 255) ^ b3(i10)] & 255) ^ b3(i9)];
            i14++;
            i11 = 2;
        }
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public String getAlgorithmName() {
        return "Twofish";
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public int getBlockSize() {
        return 16;
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public void init(boolean z, CipherParameters cipherParameters) {
        if (!(cipherParameters instanceof KeyParameter)) {
            md.n(a.l("invalid parameter passed to Twofish init - ", cipherParameters));
            return;
        }
        this.encrypting = z;
        byte[] key = ((KeyParameter) cipherParameters).getKey();
        this.workingKey = key;
        int length = key.length * 8;
        if (length != 128 && length != 192 && length != 256) {
            md.n("Key length not 128/192/256 bits.");
            return;
        }
        CryptoServicesRegistrar.checkConstraints(new DefaultServiceProperties(getAlgorithmName(), length, cipherParameters, Utils.getPurpose(z)));
        byte[] bArr = this.workingKey;
        this.k64Cnt = bArr.length / 8;
        setKey(bArr);
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public int processBlock(byte[] bArr, int i2, byte[] bArr2, int i3) {
        if (this.workingKey == null) {
            md.k("Twofish not initialised");
            return 0;
        }
        if (i2 + 16 > bArr.length) {
            b21.q("input buffer too short");
            return 0;
        }
        if (i3 + 16 > bArr2.length) {
            mt.n("output buffer too short");
            return 0;
        }
        if (this.encrypting) {
            encryptBlock(bArr, i2, bArr2, i3);
            return 16;
        }
        decryptBlock(bArr, i2, bArr2, i3);
        return 16;
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public void reset() {
        byte[] bArr = this.workingKey;
        if (bArr != null) {
            setKey(bArr);
        }
    }
}
