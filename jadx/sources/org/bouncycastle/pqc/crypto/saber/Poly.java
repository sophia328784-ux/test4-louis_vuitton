package org.bouncycastle.pqc.crypto.saber;

import org.bouncycastle.pqc.crypto.crystals.dilithium.DilithiumEngine;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes5.dex */
class Poly {
    private static final int KARATSUBA_N = 64;
    private static int SCHB_N = 16;
    private final int N_RES;
    private final int N_SB;
    private final int N_SB_RES;
    private final int SABER_L;
    private final int SABER_N;
    private final SABEREngine engine;
    private final Utils utils;

    public Poly(SABEREngine sABEREngine) {
        this.engine = sABEREngine;
        this.SABER_L = sABEREngine.getSABER_L();
        int saber_n = sABEREngine.getSABER_N();
        this.SABER_N = saber_n;
        this.N_RES = saber_n << 1;
        int i2 = saber_n >> 2;
        this.N_SB = i2;
        this.N_SB_RES = (i2 * 2) - 1;
        this.utils = sABEREngine.getUtils();
    }

    private short OVERFLOWING_MUL(int i2, int i3) {
        return (short) (i2 * i3);
    }

    private void cbd(short[] sArr, byte[] bArr, int i2) {
        int i3 = 4;
        int[] iArr = new int[4];
        char c2 = 2;
        if (this.engine.getSABER_MU() == 6) {
            for (int i4 = 0; i4 < this.SABER_N / 4; i4++) {
                int iLoad_littleendian = (int) load_littleendian(bArr, (i4 * 3) + i2, 3);
                int i5 = 0;
                for (int i6 = 0; i6 < 3; i6++) {
                    i5 += (iLoad_littleendian >> i6) & 2396745;
                }
                iArr[0] = i5 & 7;
                iArr[1] = (i5 >>> 6) & 7;
                iArr[2] = (i5 >>> 12) & 7;
                iArr[3] = (i5 >>> 18) & 7;
                int i7 = i4 * 4;
                sArr[i7] = (short) (iArr[0] - ((i5 >>> 3) & 7));
                sArr[i7 + 1] = (short) (iArr[1] - ((i5 >>> 9) & 7));
                sArr[i7 + 2] = (short) (iArr[2] - ((i5 >>> 15) & 7));
                sArr[i7 + 3] = (short) (iArr[3] - (i5 >>> 21));
            }
            return;
        }
        if (this.engine.getSABER_MU() == 8) {
            for (int i8 = 0; i8 < this.SABER_N / 4; i8++) {
                int i9 = i8 * 4;
                int iLoad_littleendian2 = (int) load_littleendian(bArr, i2 + i9, 4);
                int i10 = 0;
                for (int i11 = 0; i11 < 4; i11++) {
                    i10 += (iLoad_littleendian2 >>> i11) & 286331153;
                }
                iArr[0] = i10 & 15;
                iArr[1] = (i10 >>> 8) & 15;
                iArr[2] = (i10 >>> 16) & 15;
                iArr[3] = (i10 >>> 24) & 15;
                sArr[i9] = (short) (iArr[0] - ((i10 >>> 4) & 15));
                sArr[i9 + 1] = (short) (iArr[1] - ((i10 >>> 12) & 15));
                sArr[i9 + 2] = (short) (iArr[2] - ((i10 >>> 20) & 15));
                sArr[i9 + 3] = (short) (iArr[3] - (i10 >>> 28));
            }
            return;
        }
        char c3 = '\n';
        if (this.engine.getSABER_MU() == 10) {
            int i12 = 0;
            while (i12 < this.SABER_N / i3) {
                long jLoad_littleendian = load_littleendian(bArr, (i12 * 5) + i2, 5);
                long j2 = 0;
                for (int i13 = 0; i13 < 5; i13++) {
                    j2 += (jLoad_littleendian >>> i13) & 35468117025L;
                }
                int[] iArr2 = iArr;
                iArr2[0] = (int) (j2 & 31);
                char c4 = c2;
                iArr2[1] = (int) ((j2 >>> c3) & 31);
                int i14 = i12;
                iArr2[c4] = (int) ((j2 >>> 20) & 31);
                iArr2[3] = (int) ((j2 >>> 30) & 31);
                int i15 = i14 * 4;
                sArr[i15] = (short) (iArr2[0] - ((int) ((j2 >>> 5) & 31)));
                sArr[i15 + 1] = (short) (iArr2[1] - ((int) ((j2 >>> 15) & 31)));
                sArr[i15 + 2] = (short) (iArr2[c4] - ((int) ((j2 >>> 25) & 31)));
                sArr[i15 + 3] = (short) (iArr2[3] - ((int) (j2 >>> 35)));
                i12 = i14 + 1;
                iArr = iArr2;
                c2 = c4;
                i3 = 4;
                c3 = '\n';
            }
        }
    }

    private void karatsuba_simple(int[] iArr, int[] iArr2, int[] iArr3) {
        int i2 = 31;
        int[] iArr4 = new int[31];
        int[] iArr5 = new int[31];
        int[] iArr6 = new int[31];
        int[] iArr7 = new int[63];
        int i3 = 0;
        while (true) {
            if (i3 >= 16) {
                break;
            }
            int i4 = iArr[i3];
            int i5 = iArr[i3 + 16];
            int i6 = iArr[i3 + 32];
            int i7 = iArr[i3 + 48];
            int i8 = 0;
            for (int i9 = 16; i8 < i9; i9 = 16) {
                int i10 = iArr2[i8];
                int i11 = iArr2[i8 + 16];
                int i12 = i3 + i8;
                iArr3[i12] = iArr3[i12] + OVERFLOWING_MUL(i4, i10);
                int i13 = i12 + 32;
                iArr3[i13] = iArr3[i13] + OVERFLOWING_MUL(i5, i11);
                int[] iArr8 = iArr4;
                iArr8[i12] = (int) ((((long) (i4 + i5)) * ((long) (i10 + i11))) + ((long) iArr4[i12]));
                int i14 = iArr2[i8 + 32];
                int i15 = iArr2[i8 + 48];
                int i16 = i12 + 64;
                iArr3[i16] = iArr3[i16] + OVERFLOWING_MUL(i14, i6);
                int i17 = i12 + 96;
                iArr3[i17] = iArr3[i17] + OVERFLOWING_MUL(i15, i7);
                iArr6[i12] = iArr6[i12] + OVERFLOWING_MUL(i6 + i7, i14 + i15);
                int i18 = i10 + i14;
                int i19 = i4 + i6;
                iArr7[i12] = iArr7[i12] + OVERFLOWING_MUL(i18, i19);
                int i20 = i11 + i15;
                int i21 = i5 + i7;
                iArr7[i13] = iArr7[i13] + OVERFLOWING_MUL(i20, i21);
                iArr5[i12] = iArr5[i12] + OVERFLOWING_MUL(i18 + i20, i19 + i21);
                i8++;
                iArr4 = iArr8;
            }
            i3++;
            i2 = 31;
        }
        int[] iArr9 = iArr4;
        int i22 = 0;
        while (i22 < i2) {
            int i23 = i22 + 32;
            iArr5[i22] = (iArr5[i22] - iArr7[i22]) - iArr7[i23];
            iArr9[i22] = (iArr9[i22] - iArr3[i22]) - iArr3[i23];
            iArr6[i22] = (iArr6[i22] - iArr3[i22 + 64]) - iArr3[i22 + 96];
            i22++;
            i2 = 31;
        }
        for (int i24 = 0; i24 < i2; i24++) {
            int i25 = i24 + 16;
            iArr7[i25] = iArr7[i25] + iArr5[i24];
            iArr3[i25] = iArr3[i25] + iArr9[i24];
            int i26 = i24 + 80;
            iArr3[i26] = iArr3[i26] + iArr6[i24];
        }
        for (int i27 = 0; i27 < 63; i27++) {
            iArr7[i27] = (iArr7[i27] - iArr3[i27]) - iArr3[i27 + 64];
        }
        for (int i28 = 0; i28 < 63; i28++) {
            int i29 = i28 + 32;
            iArr3[i29] = iArr3[i29] + iArr7[i28];
        }
    }

    private long load_littleendian(byte[] bArr, int i2, int i3) {
        long j2 = bArr[i2] & 255;
        for (int i4 = 1; i4 < i3; i4++) {
            j2 |= ((long) (bArr[i2 + i4] & 255)) << (i4 * 8);
        }
        return j2;
    }

    private void poly_mul_acc(short[] sArr, short[] sArr2, short[] sArr3) {
        short[] sArr4 = new short[this.SABER_N * 2];
        toom_cook_4way(sArr, sArr2, sArr4);
        int i2 = this.SABER_N;
        while (true) {
            int i3 = this.SABER_N;
            if (i2 >= i3 * 2) {
                return;
            }
            int i4 = i2 - i3;
            sArr3[i4] = (short) ((sArr4[i2 - i3] - sArr4[i2]) + sArr3[i4]);
            i2++;
        }
    }

    private void toom_cook_4way(short[] sArr, short[] sArr2, short[] sArr3) {
        int i2 = this.N_SB;
        int[] iArr = new int[i2];
        int[] iArr2 = new int[i2];
        int[] iArr3 = new int[i2];
        int[] iArr4 = new int[i2];
        int[] iArr5 = new int[i2];
        int[] iArr6 = new int[i2];
        int[] iArr7 = new int[i2];
        int[] iArr8 = new int[i2];
        int[] iArr9 = new int[i2];
        int[] iArr10 = new int[i2];
        int[] iArr11 = new int[i2];
        int[] iArr12 = new int[i2];
        int[] iArr13 = new int[i2];
        int[] iArr14 = new int[i2];
        int i3 = this.N_SB_RES;
        int[] iArr15 = new int[i3];
        int[] iArr16 = new int[i3];
        int[] iArr17 = new int[i3];
        int[] iArr18 = new int[i3];
        int[] iArr19 = new int[i3];
        int[] iArr20 = new int[i3];
        int[] iArr21 = new int[i3];
        int i4 = 0;
        while (true) {
            int i5 = this.N_SB;
            if (i4 >= i5) {
                break;
            }
            short s = sArr[i4];
            short s2 = sArr[i4 + i5];
            short s3 = sArr[(i5 * 2) + i4];
            short s4 = sArr[(i5 * 3) + i4];
            short s5 = (short) (s + s3);
            short s6 = (short) (s2 + s4);
            iArr3[i4] = (short) (s5 + s6);
            iArr4[i4] = (short) (s5 - s6);
            short s7 = (short) (((s << 2) + s3) << 1);
            short s8 = (short) ((s2 << 2) + s4);
            iArr5[i4] = (short) (s7 + s8);
            iArr6[i4] = (short) (s7 - s8);
            iArr2[i4] = (short) ((s4 << 3) + (s3 << 2) + (s2 << 1) + s);
            iArr7[i4] = s;
            iArr[i4] = s4;
            i4++;
        }
        int i6 = 0;
        while (true) {
            int i7 = this.N_SB;
            if (i6 >= i7) {
                break;
            }
            short s9 = sArr2[i6];
            short s10 = sArr2[i6 + i7];
            short s11 = sArr2[(i7 * 2) + i6];
            short s12 = sArr2[(i7 * 3) + i6];
            int i8 = s9 + s11;
            int i9 = s10 + s12;
            iArr10[i6] = i8 + i9;
            iArr11[i6] = i8 - i9;
            int i10 = ((s9 << 2) + s11) << 1;
            int i11 = (s10 << 2) + s12;
            iArr12[i6] = i10 + i11;
            iArr13[i6] = i10 - i11;
            iArr9[i6] = (s12 << 3) + (s11 << 2) + (s10 << 1) + s9;
            iArr14[i6] = s9;
            iArr8[i6] = s12;
            i6++;
        }
        karatsuba_simple(iArr, iArr8, iArr15);
        karatsuba_simple(iArr2, iArr9, iArr16);
        karatsuba_simple(iArr3, iArr10, iArr17);
        karatsuba_simple(iArr4, iArr11, iArr18);
        karatsuba_simple(iArr5, iArr12, iArr19);
        karatsuba_simple(iArr6, iArr13, iArr20);
        karatsuba_simple(iArr7, iArr14, iArr21);
        for (int i12 = 0; i12 < this.N_SB_RES; i12++) {
            int i13 = iArr15[i12];
            int i14 = iArr16[i12];
            int i15 = iArr17[i12];
            int i16 = iArr18[i12];
            int i17 = iArr19[i12];
            int i18 = iArr20[i12];
            int i19 = iArr21[i12];
            int i20 = i18 - i17;
            int i21 = ((i16 & 65535) - (i15 & 65535)) >>> 1;
            int i22 = i15 + i21;
            int i23 = ((i14 + i17) - (i22 << 6)) - i22;
            int i24 = (i22 - i19) - i13;
            int i25 = (i24 * 45) + i23;
            int i26 = (((((((i17 - i13) - (i19 << 6)) << 1) + i20) & 65535) - (i24 << 3)) * 43691) >> 3;
            int i27 = (((i25 & 65535) + ((i21 & 65535) << 4)) * 36409) >> 1;
            int i28 = -(i21 + i27);
            int i29 = ((((i27 & 65535) * 30) - ((i20 + i25) & 65535)) * 61167) >> 2;
            int i30 = i24 - i26;
            int i31 = i27 - i29;
            sArr3[i12] = (short) (sArr3[i12] + (i19 & 65535));
            int i32 = i12 + 64;
            sArr3[i32] = (short) (sArr3[i32] + (i29 & 65535));
            int i33 = i12 + 128;
            sArr3[i33] = (short) (sArr3[i33] + (i26 & 65535));
            int i34 = i12 + 192;
            sArr3[i34] = (short) (sArr3[i34] + (i28 & 65535));
            int i35 = i12 + 256;
            sArr3[i35] = (short) (sArr3[i35] + (i30 & 65535));
            int i36 = i12 + DilithiumEngine.DilithiumPolyT1PackedBytes;
            sArr3[i36] = (short) (sArr3[i36] + (i31 & 65535));
            int i37 = i12 + KyberEngine.KyberPolyBytes;
            sArr3[i37] = (short) (sArr3[i37] + (i13 & 65535));
        }
    }

    public void GenMatrix(short[][][] sArr, byte[] bArr) {
        int saber_polyvecbytes = this.SABER_L * this.engine.getSABER_POLYVECBYTES();
        byte[] bArr2 = new byte[saber_polyvecbytes];
        SABEREngine sABEREngine = this.engine;
        sABEREngine.symmetric.prf(bArr2, bArr, sABEREngine.getSABER_SEEDBYTES(), saber_polyvecbytes);
        for (int i2 = 0; i2 < this.SABER_L; i2++) {
            this.utils.BS2POLVECq(bArr2, this.engine.getSABER_POLYVECBYTES() * i2, sArr[i2]);
        }
    }

    public void GenSecret(short[][] sArr, byte[] bArr) {
        int saber_polycoinbytes = this.SABER_L * this.engine.getSABER_POLYCOINBYTES();
        byte[] bArr2 = new byte[saber_polycoinbytes];
        SABEREngine sABEREngine = this.engine;
        sABEREngine.symmetric.prf(bArr2, bArr, sABEREngine.getSABER_NOISE_SEEDBYTES(), saber_polycoinbytes);
        for (int i2 = 0; i2 < this.SABER_L; i2++) {
            SABEREngine sABEREngine2 = this.engine;
            if (sABEREngine2.usingEffectiveMasking) {
                for (int i3 = 0; i3 < this.SABER_N / 4; i3++) {
                    int i4 = i3 * 4;
                    sArr[i2][i4] = (short) (((bArr2[(this.engine.getSABER_POLYCOINBYTES() * i2) + i3] & 3) ^ 2) - 2);
                    sArr[i2][i4 + 1] = (short) ((((bArr2[(this.engine.getSABER_POLYCOINBYTES() * i2) + i3] >>> 2) & 3) ^ 2) - 2);
                    sArr[i2][i4 + 2] = (short) ((((bArr2[(this.engine.getSABER_POLYCOINBYTES() * i2) + i3] >>> 4) & 3) ^ 2) - 2);
                    sArr[i2][i4 + 3] = (short) ((((bArr2[(this.engine.getSABER_POLYCOINBYTES() * i2) + i3] >>> 6) & 3) ^ 2) - 2);
                }
            } else {
                cbd(sArr[i2], bArr2, sABEREngine2.getSABER_POLYCOINBYTES() * i2);
            }
        }
    }

    public void InnerProd(short[][] sArr, short[][] sArr2, short[] sArr3) {
        for (int i2 = 0; i2 < this.SABER_L; i2++) {
            poly_mul_acc(sArr[i2], sArr2[i2], sArr3);
        }
    }

    public void MatrixVectorMul(short[][][] sArr, short[][] sArr2, short[][] sArr3, int i2) {
        for (int i3 = 0; i3 < this.SABER_L; i3++) {
            for (int i4 = 0; i4 < this.SABER_L; i4++) {
                if (i2 == 1) {
                    poly_mul_acc(sArr[i4][i3], sArr2[i4], sArr3[i3]);
                } else {
                    poly_mul_acc(sArr[i3][i4], sArr2[i4], sArr3[i3]);
                }
            }
        }
    }
}
