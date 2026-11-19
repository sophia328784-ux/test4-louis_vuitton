package org.bouncycastle.pqc.crypto.cmce;

import java.lang.reflect.Array;
import java.security.SecureRandom;
import org.bouncycastle.asn1.cmc.BodyPartID;
import org.bouncycastle.crypto.digests.SHAKEDigest;
import org.bouncycastle.util.Arrays;

/* JADX INFO: loaded from: classes5.dex */
class CMCEEngine {
    private int COND_BYTES;
    private int GFBITS;
    private int GFMASK;
    private int IRR_BYTES;
    private int PK_NCOLS;
    private int PK_NROWS;
    private int PK_ROW_BYTES;
    private int SYND_BYTES;
    private int SYS_N;
    private int SYS_T;
    private BENES benes;
    private boolean countErrorIndices;
    private final int defaultKeySize;
    private GF gf;
    private int[] poly;
    private boolean usePadding;
    private boolean usePivots;

    public CMCEEngine(int i2, int i3, int i4, int[] iArr, boolean z, int i5) {
        BENES benes13;
        this.usePivots = z;
        this.SYS_N = i3;
        this.SYS_T = i4;
        this.GFBITS = i2;
        this.poly = iArr;
        this.defaultKeySize = i5;
        this.IRR_BYTES = i4 * 2;
        this.COND_BYTES = ((i2 * 2) - 1) * (1 << (i2 - 4));
        int i6 = i4 * i2;
        this.PK_NROWS = i6;
        int i7 = i3 - i6;
        this.PK_NCOLS = i7;
        this.PK_ROW_BYTES = (i7 + 7) / 8;
        this.SYND_BYTES = (i6 + 7) / 8;
        this.GFMASK = (1 << i2) - 1;
        if (i2 == 12) {
            this.gf = new GF12();
            benes13 = new BENES12(this.SYS_N, this.SYS_T, this.GFBITS);
        } else {
            this.gf = new GF13();
            benes13 = new BENES13(this.SYS_N, this.SYS_T, this.GFBITS);
        }
        this.benes = benes13;
        this.usePadding = this.SYS_T % 8 != 0;
        this.countErrorIndices = (1 << this.GFBITS) > this.SYS_N;
    }

    private void bm(short[] sArr, short[] sArr2) {
        GF gf;
        int i2;
        int i3 = this.SYS_T;
        short[] sArr3 = new short[i3 + 1];
        short[] sArr4 = new short[i3 + 1];
        short s = 1;
        short[] sArr5 = new short[i3 + 1];
        int i4 = 0;
        for (int i5 = 0; i5 < this.SYS_T + 1; i5++) {
            sArr5[i5] = 0;
            sArr4[i5] = 0;
        }
        sArr4[0] = 1;
        sArr5[1] = 1;
        short s2 = 1;
        short s3 = 0;
        short s4 = 0;
        while (s3 < this.SYS_T * 2) {
            int i6 = 0;
            int iGf_mul_ext = 0;
            while (true) {
                int iMin = min(s3, this.SYS_T);
                gf = this.gf;
                if (i6 > iMin) {
                    break;
                }
                iGf_mul_ext ^= gf.gf_mul_ext(sArr4[i6], sArr2[s3 - i6]);
                i6++;
            }
            short sGf_reduce = gf.gf_reduce(iGf_mul_ext);
            short s5 = (short) (((short) (((short) (((short) (sGf_reduce - 1)) >> 15)) & s)) - s);
            short s6 = (short) (((short) (((short) (((short) (((short) (s3 - (s4 * 2))) >> 15)) & s)) - s)) & s5);
            for (int i7 = 0; i7 <= this.SYS_T; i7++) {
                sArr3[i7] = sArr4[i7];
            }
            short sGf_frac = this.gf.gf_frac(s2, sGf_reduce);
            int i8 = 0;
            while (true) {
                i2 = this.SYS_T;
                if (i8 > i2) {
                    break;
                }
                sArr4[i8] = (short) ((this.gf.gf_mul(sGf_frac, sArr5[i8]) & s5) ^ sArr4[i8]);
                i8++;
            }
            int i9 = ~s6;
            int i10 = s3 + 1;
            s4 = (short) (((i10 - s4) & s6) | (s4 & i9));
            for (int i11 = i2 - 1; i11 >= 0; i11--) {
                sArr5[i11 + 1] = (short) ((sArr5[i11] & i9) | (sArr3[i11] & s6));
            }
            sArr5[0] = 0;
            s2 = (short) ((i9 & s2) | (sGf_reduce & s6));
            s3 = (short) i10;
            s = 1;
        }
        while (true) {
            int i12 = this.SYS_T;
            if (i4 > i12) {
                return;
            }
            sArr[i4] = sArr4[i12 - i4];
            i4++;
        }
    }

    public static void cbrecursion(byte[] bArr, long j2, long j3, short[] sArr, int i2, long j4, long j5, int[] iArr) {
        long j6;
        int i3;
        int i4;
        int i5;
        char c2;
        long j7;
        long j8;
        long j9;
        long j10 = j5;
        long j11 = 1;
        long j12 = 7;
        char c3 = 3;
        if (j4 == 1) {
            int i6 = (int) (j2 >> 3);
            bArr[i6] = (byte) ((get_q_short(iArr, i2) << ((int) (j2 & 7))) ^ bArr[i6]);
            return;
        }
        if (sArr != null) {
            long j13 = 0;
            while (j13 < j10) {
                int i7 = (int) j13;
                long j14 = j11;
                iArr[i7] = sArr[(int) (j13 ^ j14)] | ((sArr[i7] ^ 1) << 16);
                j13 += j14;
                j11 = j14;
            }
            j6 = j11;
        } else {
            j6 = 1;
            long j15 = 0;
            while (j15 < j10) {
                long j16 = i2;
                iArr[(int) j15] = ((get_q_short(iArr, (int) (j16 + j15)) ^ 1) << 16) | get_q_short(iArr, (int) (j16 + (j15 ^ 1)));
                j15++;
                j12 = j12;
            }
        }
        long j17 = j12;
        int i8 = (int) j10;
        sort32(iArr, 0, i8);
        long j18 = 0;
        while (true) {
            i3 = 65535;
            if (j18 >= j10) {
                break;
            }
            int i9 = (int) j18;
            int i10 = 65535 & iArr[i9];
            if (j18 >= i10) {
                i9 = i10;
            }
            iArr[(int) (j10 + j18)] = i9 | (i10 << 16);
            j18 += j6;
        }
        for (long j19 = 0; j19 < j10; j19 += j6) {
            int i11 = (int) j19;
            iArr[i11] = (int) (((long) (iArr[i11] << 16)) | j19);
        }
        sort32(iArr, 0, i8);
        long j20 = 0;
        while (j20 < j10) {
            int i12 = (int) j20;
            iArr[i12] = (iArr[i12] << 16) + (iArr[(int) (j10 + j20)] >> 16);
            j20 += j6;
            c3 = c3;
        }
        char c4 = c3;
        sort32(iArr, 0, i8);
        if (j4 <= 10) {
            for (long j21 = 0; j21 < j10; j21 += j6) {
                int i13 = (int) (j10 + j21);
                iArr[i13] = ((iArr[(int) j21] & 65535) << 10) | (iArr[i13] & 1023);
            }
            long j22 = j6;
            while (j22 < j4 - j6) {
                long j23 = 0;
                while (j23 < j10) {
                    iArr[(int) j23] = (int) (((long) ((iArr[(int) (j10 + j23)] & (-1024)) << 6)) | j23);
                    j23 += j6;
                    j22 = j22;
                }
                long j24 = j22;
                sort32(iArr, 0, i8);
                for (long j25 = 0; j25 < j10; j25 += j6) {
                    int i14 = (int) j25;
                    iArr[i14] = (iArr[i14] << 20) | iArr[(int) (j10 + j25)];
                }
                sort32(iArr, 0, i8);
                for (long j26 = 0; j26 < j10; j26 += j6) {
                    int i15 = iArr[(int) j26];
                    int i16 = 1048575 & i15;
                    int i17 = (int) (j10 + j26);
                    int i18 = (i15 & 1047552) | (iArr[i17] & 1023);
                    if (i16 >= i18) {
                        i16 = i18;
                    }
                    iArr[i17] = i16;
                }
                j22 = j24 + j6;
            }
            for (long j27 = 0; j27 < j10; j27 += j6) {
                int i19 = (int) (j10 + j27);
                iArr[i19] = iArr[i19] & 1023;
            }
            i4 = 65535;
            i5 = -65536;
            c2 = c4;
            j7 = j6;
        } else {
            int i20 = -65536;
            for (long j28 = 0; j28 < j10; j28 += j6) {
                int i21 = (int) (j10 + j28);
                iArr[i21] = (iArr[(int) j28] << 16) | (iArr[i21] & 65535);
            }
            long j29 = j6;
            while (j29 < j4 - j6) {
                long j30 = 0;
                while (j30 < j10) {
                    int i22 = i20;
                    iArr[(int) j30] = (int) (((long) (iArr[(int) (j10 + j30)] & i22)) | j30);
                    j30 += j6;
                    i3 = i3;
                    i20 = i22;
                }
                int i23 = i3;
                int i24 = i20;
                sort32(iArr, 0, i8);
                long j31 = 0;
                while (j31 < j10) {
                    int i25 = (int) j31;
                    long j32 = j6;
                    iArr[i25] = (iArr[i25] << 16) | (iArr[(int) (j10 + j31)] & i23);
                    j31 += j32;
                    c4 = c4;
                    j6 = j32;
                }
                char c5 = c4;
                long j33 = j6;
                if (j29 < j4 - 2) {
                    for (long j34 = 0; j34 < j10; j34 += j33) {
                        int i26 = (int) (j10 + j34);
                        iArr[i26] = (iArr[(int) j34] & i24) | (iArr[i26] >> 16);
                    }
                    sort32(iArr, i8, (int) (j10 * 2));
                    for (long j35 = 0; j35 < j10; j35 += j33) {
                        int i27 = (int) (j10 + j35);
                        iArr[i27] = (iArr[i27] << 16) | (iArr[(int) j35] & i23);
                    }
                }
                sort32(iArr, 0, i8);
                for (long j36 = 0; j36 < j10; j36 += j33) {
                    int i28 = (int) (j10 + j36);
                    int i29 = iArr[i28];
                    int i30 = (i29 & i24) | (iArr[(int) j36] & i23);
                    if (i30 < i29) {
                        iArr[i28] = i30;
                    }
                }
                j29 += j33;
                i3 = i23;
                c4 = c5;
                i20 = i24;
                j6 = j33;
            }
            i4 = i3;
            i5 = i20;
            c2 = c4;
            j7 = j6;
            for (long j37 = 0; j37 < j10; j37 += j7) {
                int i31 = (int) (j10 + j37);
                iArr[i31] = iArr[i31] & i4;
            }
        }
        long j38 = 0;
        if (sArr != null) {
            while (j38 < j10) {
                int i32 = (int) j38;
                iArr[i32] = (int) (((long) (sArr[i32] << 16)) + j38);
                j38 += j7;
            }
        } else {
            while (j38 < j10) {
                iArr[(int) j38] = (int) (((long) (get_q_short(iArr, (int) (((long) i2) + j38)) << 16)) + j38);
                j38 += j7;
            }
        }
        sort32(iArr, 0, i8);
        long j39 = j2;
        int i33 = i4;
        long j40 = 0;
        while (true) {
            j8 = j10 / 2;
            if (j40 >= j8) {
                break;
            }
            long j41 = j40 * 2;
            long j42 = j10 + j41;
            int i34 = (int) j42;
            int i35 = i33;
            int i36 = iArr[i34] & 1;
            char c6 = c2;
            int i37 = (int) (((long) i36) + j41);
            long j43 = j39;
            int i38 = (int) (j43 >> c6);
            bArr[i38] = (byte) ((i36 << ((int) (j43 & j17))) ^ bArr[i38]);
            j39 = j43 + j3;
            iArr[i34] = (iArr[(int) j41] << 16) | i37;
            iArr[(int) (j42 + j7)] = (iArr[(int) (j41 + j7)] << 16) | (i37 ^ 1);
            j40 += j7;
            i33 = i35;
            j10 = j5;
            c2 = c6;
        }
        int i39 = i33;
        char c7 = c2;
        long j44 = j5 * 2;
        sort32(iArr, i8, (int) j44);
        long j45 = j4 * 2;
        long j46 = ((j45 - 3) * j3 * j8) + j39;
        long j47 = 0;
        while (true) {
            j9 = j44;
            if (j47 >= j8) {
                break;
            }
            long j48 = j47 * 2;
            long j49 = j45;
            long j50 = j5 + j48;
            int i40 = iArr[(int) j50];
            int i41 = i40 & 1;
            int i42 = (int) (((long) i41) + j48);
            int i43 = i42 ^ 1;
            int i44 = (int) (j46 >> c7);
            bArr[i44] = (byte) (bArr[i44] ^ (i41 << ((int) (j46 & j17))));
            j46 += j3;
            iArr[(int) j48] = (i40 & i39) | (i42 << 16);
            iArr[(int) (j48 + j7)] = (i43 << 16) | (iArr[(int) (j50 + j7)] & i39);
            j47 += j7;
            j44 = j9;
            j45 = j49;
        }
        sort32(iArr, 0, i8);
        long j51 = j46 - (((j45 - 2) * j3) * j8);
        short[] sArr2 = new short[i8 * 4];
        for (long j52 = 0; j52 < j9; j52 += j7) {
            long j53 = j52 * 2;
            int i45 = iArr[(int) j52];
            sArr2[(int) j53] = (short) i45;
            sArr2[(int) (j53 + j7)] = (short) ((i45 & i5) >> 16);
        }
        for (long j54 = 0; j54 < j8; j54 += j7) {
            long j55 = j54 * 2;
            sArr2[(int) j54] = (short) ((iArr[(int) j55] & i39) >>> 1);
            sArr2[(int) (j54 + j8)] = (short) ((iArr[(int) (j55 + j7)] & i39) >>> 1);
        }
        for (long j56 = 0; j56 < j8; j56 += j7) {
            long j57 = j56 * 2;
            iArr[(int) ((j5 / 4) + j5 + j56)] = sArr2[(int) j57] | (sArr2[(int) (j57 + j7)] << 16);
        }
        long j58 = j3 * 2;
        long j59 = (j5 / 4) + j5;
        long j60 = j4 - j7;
        cbrecursion(bArr, j51, j58, null, ((int) j59) * 2, j60, j8, iArr);
        cbrecursion(bArr, j51 + j3, j58, null, (int) ((j59 * 2) + j8), j60, j8, iArr);
    }

    private static void controlbitsfrompermutation(byte[] bArr, short[] sArr, long j2, long j3) {
        long j4 = j3;
        int[] iArr = new int[(int) (j4 * 2)];
        int i2 = (int) j4;
        short[] sArr2 = new short[i2];
        while (true) {
            short s = 0;
            for (int i3 = 0; i3 < (((((j2 * 2) - 1) * j4) / 2) + 7) / 8; i3++) {
                bArr[i3] = 0;
            }
            cbrecursion(bArr, 0L, 1L, sArr, 0, j2, j4, iArr);
            for (int i4 = 0; i4 < j3; i4++) {
                sArr2[i4] = (short) i4;
            }
            int i5 = 0;
            for (int i6 = 0; i6 < j2; i6++) {
                layer(sArr2, bArr, i5, i6, i2);
                i5 = (int) (((long) i5) + (j3 >> 4));
            }
            for (int i7 = (int) (j2 - 2); i7 >= 0; i7--) {
                layer(sArr2, bArr, i5, i7, i2);
                i5 = (int) (((long) i5) + (j3 >> 4));
            }
            int i8 = 0;
            while (i8 < j3) {
                short s2 = (short) (s | (sArr[i8] ^ sArr2[i8]));
                i8++;
                s = s2;
            }
            if (s == 0) {
                return;
            } else {
                j4 = j3;
            }
        }
    }

    private static int ctz(long j2) {
        long j3 = ~j2;
        long j4 = 72340172838076673L;
        long j5 = 0;
        for (int i2 = 0; i2 < 8; i2++) {
            j4 &= j3 >>> i2;
            j5 += j4;
        }
        long j6 = 578721382704613384L & j5;
        long j7 = j6 | (j6 >>> 1);
        long j8 = j7 | (j7 >>> 2);
        long j9 = j5 >>> 8;
        long j10 = j5 + (j9 & j8);
        for (int i3 = 2; i3 < 8; i3++) {
            j8 &= j8 >>> 8;
            j9 >>>= 8;
            j10 += j9 & j8;
        }
        return ((int) j10) & 255;
    }

    private int decrypt(byte[] bArr, byte[] bArr2, byte[] bArr3) {
        int i2;
        int i3;
        int i4 = this.SYS_T;
        short[] sArr = new short[i4 + 1];
        int i5 = this.SYS_N;
        short[] sArr2 = new short[i5];
        short[] sArr3 = new short[i4 * 2];
        short[] sArr4 = new short[i4 * 2];
        short[] sArr5 = new short[i4 + 1];
        short[] sArr6 = new short[i5];
        byte[] bArr4 = new byte[i5 / 8];
        int i6 = 0;
        while (true) {
            i2 = this.SYND_BYTES;
            if (i6 >= i2) {
                break;
            }
            bArr4[i6] = bArr3[i6];
            i6++;
        }
        while (i2 < this.SYS_N / 8) {
            bArr4[i2] = 0;
            i2++;
        }
        int i7 = 0;
        while (true) {
            i3 = this.SYS_T;
            if (i7 >= i3) {
                break;
            }
            sArr[i7] = Utils.load_gf(bArr2, (i7 * 2) + 40, this.GFMASK);
            i7++;
        }
        sArr[i3] = 1;
        this.benes.support_gen(sArr2, bArr2);
        synd(sArr3, sArr, sArr2, bArr4);
        bm(sArr5, sArr3);
        root(sArr6, sArr5, sArr2);
        for (int i8 = 0; i8 < this.SYS_N / 8; i8++) {
            bArr[i8] = 0;
        }
        int i9 = 0;
        for (int i10 = 0; i10 < this.SYS_N; i10++) {
            short sGf_iszero = (short) (this.gf.gf_iszero(sArr6[i10]) & 1);
            int i11 = i10 / 8;
            bArr[i11] = (byte) (bArr[i11] | (sGf_iszero << (i10 % 8)));
            i9 += sGf_iszero;
        }
        synd(sArr4, sArr, sArr2, bArr);
        int i12 = this.SYS_T ^ i9;
        for (int i13 = 0; i13 < this.SYS_T * 2; i13++) {
            i12 |= sArr3[i13] ^ sArr4[i13];
        }
        return (((i12 - 1) >> 15) & 1) ^ 1;
    }

    private void encrypt(byte[] bArr, byte[] bArr2, byte[] bArr3, SecureRandom secureRandom) {
        generate_error_vector(bArr3, secureRandom);
        syndrome(bArr, bArr2, bArr3);
    }

    private short eval(short[] sArr, short s) {
        int i2 = this.SYS_T;
        short sGf_mul = sArr[i2];
        for (int i3 = i2 - 1; i3 >= 0; i3--) {
            sGf_mul = (short) (this.gf.gf_mul(sGf_mul, s) ^ sArr[i3]);
        }
        return sGf_mul;
    }

    private void generate_error_vector(byte[] bArr, SecureRandom secureRandom) {
        int i2;
        int i3 = this.SYS_T;
        short[] sArr = new short[i3 * 2];
        short[] sArr2 = new short[i3];
        byte[] bArr2 = new byte[i3];
        while (true) {
            boolean z = this.countErrorIndices;
            int i4 = this.SYS_T;
            if (z) {
                byte[] bArr3 = new byte[i4 * 4];
                secureRandom.nextBytes(bArr3);
                for (int i5 = 0; i5 < this.SYS_T * 2; i5++) {
                    sArr[i5] = Utils.load_gf(bArr3, i5 * 2, this.GFMASK);
                }
                int i6 = 0;
                int i7 = 0;
                while (true) {
                    i2 = this.SYS_T;
                    if (i6 >= i2 * 2 || i7 >= i2) {
                        break;
                    }
                    short s = sArr[i6];
                    if (s < this.SYS_N) {
                        sArr2[i7] = s;
                        i7++;
                    }
                    i6++;
                }
                if (i7 < i2) {
                    continue;
                }
            } else {
                byte[] bArr4 = new byte[i4 * 2];
                secureRandom.nextBytes(bArr4);
                for (int i8 = 0; i8 < this.SYS_T; i8++) {
                    sArr2[i8] = Utils.load_gf(bArr4, i8 * 2, this.GFMASK);
                }
            }
            boolean z2 = false;
            for (int i9 = 1; i9 < this.SYS_T && !z2; i9++) {
                for (int i10 = 0; i10 < i9; i10++) {
                    if (sArr2[i9] == sArr2[i10]) {
                        z2 = true;
                        break;
                    }
                }
            }
            if (!z2) {
                break;
            }
        }
        for (int i11 = 0; i11 < this.SYS_T; i11++) {
            bArr2[i11] = (byte) (1 << (sArr2[i11] & 7));
        }
        for (short s2 = 0; s2 < this.SYS_N / 8; s2 = (short) (s2 + 1)) {
            bArr[s2] = 0;
            for (int i12 = 0; i12 < this.SYS_T; i12++) {
                bArr[s2] = (byte) ((((short) (same_mask32(s2, (short) (sArr2[i12] >> 3)) & 255)) & bArr2[i12]) | bArr[s2]);
            }
        }
    }

    private int generate_irr_poly(short[] sArr) {
        int i2;
        int i3 = this.SYS_T;
        int i4 = 2;
        short[][] sArr2 = (short[][]) Array.newInstance((Class<?>) Short.TYPE, i3 + 1, i3);
        sArr2[0][0] = 1;
        System.arraycopy(sArr, 0, sArr2[1], 0, this.SYS_T);
        int[] iArr = new int[(this.SYS_T * 2) - 1];
        while (true) {
            i2 = this.SYS_T;
            if (i4 >= i2) {
                break;
            }
            this.gf.gf_sqr_poly(i2, this.poly, sArr2[i4], sArr2[i4 >>> 1], iArr);
            int[] iArr2 = iArr;
            this.gf.gf_mul_poly(this.SYS_T, this.poly, sArr2[i4 + 1], sArr2[i4], sArr, iArr2);
            iArr = iArr2;
            i4 += 2;
        }
        if (i4 == i2) {
            this.gf.gf_sqr_poly(i2, this.poly, sArr2[i4], sArr2[i4 >>> 1], iArr);
        }
        int i5 = 0;
        while (true) {
            int i6 = this.SYS_T;
            if (i5 >= i6) {
                System.arraycopy(sArr2[i6], 0, sArr, 0, i6);
                return 0;
            }
            int i7 = i5 + 1;
            for (int i8 = i7; i8 < this.SYS_T; i8++) {
                short sGf_iszero = this.gf.gf_iszero(sArr2[i5][i5]);
                for (int i9 = i5; i9 < this.SYS_T + 1; i9++) {
                    short[] sArr3 = sArr2[i9];
                    sArr3[i5] = (short) (sArr3[i5] ^ ((short) (sArr3[i8] & sGf_iszero)));
                }
            }
            short s = sArr2[i5][i5];
            if (s == 0) {
                return -1;
            }
            short sGf_inv = this.gf.gf_inv(s);
            for (int i10 = i5; i10 < this.SYS_T + 1; i10++) {
                short[] sArr4 = sArr2[i10];
                sArr4[i5] = this.gf.gf_mul(sArr4[i5], sGf_inv);
            }
            for (int i11 = 0; i11 < this.SYS_T; i11++) {
                if (i11 != i5) {
                    short s2 = sArr2[i5][i11];
                    for (int i12 = i5; i12 <= this.SYS_T; i12++) {
                        short[] sArr5 = sArr2[i12];
                        sArr5[i11] = (short) (sArr5[i11] ^ this.gf.gf_mul(sArr5[i5], s2));
                    }
                }
            }
            i5 = i7;
        }
    }

    public static short get_q_short(int[] iArr, int i2) {
        int i3 = i2 / 2;
        return (short) (i2 % 2 == 0 ? iArr[i3] : (iArr[i3] & (-65536)) >> 16);
    }

    private static void layer(short[] sArr, byte[] bArr, int i2, int i3, int i4) {
        int i5 = 1 << i3;
        int i6 = 0;
        for (int i7 = 0; i7 < i4; i7 += i5 * 2) {
            for (int i8 = 0; i8 < i5; i8++) {
                int i9 = i7 + i8;
                short s = sArr[i9];
                int i10 = i9 + i5;
                int i11 = (sArr[i10] ^ s) & (-((bArr[(i6 >> 3) + i2] >> (i6 & 7)) & 1));
                sArr[i9] = (short) (s ^ i11);
                sArr[i10] = (short) (sArr[i10] ^ i11);
                i6++;
            }
        }
    }

    private static int min(short s, int i2) {
        return s < i2 ? s : i2;
    }

    private int mov_columns(byte[][] bArr, short[] sArr, long[] jArr) {
        long jLoad8;
        int i2 = 64;
        long[] jArr2 = new long[64];
        int i3 = 32;
        long[] jArr3 = new long[32];
        byte[] bArr2 = new byte[9];
        int i4 = this.PK_NROWS - 32;
        int i5 = i4 / 8;
        int i6 = i4 % 8;
        char c2 = 0;
        if (this.usePadding) {
            for (int i7 = 0; i7 < 32; i7++) {
                for (int i8 = 0; i8 < 9; i8++) {
                    bArr2[i8] = bArr[i4 + i7][i5 + i8];
                }
                int i9 = 0;
                while (i9 < 8) {
                    int i10 = i9 + 1;
                    bArr2[i9] = (byte) (((bArr2[i9] & 255) >> i6) | (bArr2[i10] << (8 - i6)));
                    i9 = i10;
                }
                jArr2[i7] = Utils.load8(bArr2, 0);
            }
        } else {
            for (int i11 = 0; i11 < 32; i11++) {
                jArr2[i11] = Utils.load8(bArr[i4 + i11], i5);
            }
        }
        long j2 = 0;
        jArr[0] = 0;
        int i12 = 0;
        while (true) {
            long j3 = 1;
            if (i12 >= 32) {
                int i13 = 0;
                while (i13 < i3) {
                    int i14 = i13 + 1;
                    int i15 = i14;
                    while (i15 < i2) {
                        int i16 = i4 + i13;
                        int i17 = i4 + i15;
                        long[] jArr4 = jArr3;
                        long jSame_mask64 = ((long) (sArr[i16] ^ sArr[i17])) & same_mask64((short) i15, (short) jArr4[i13]);
                        sArr[i16] = (short) (((long) sArr[i16]) ^ jSame_mask64);
                        sArr[i17] = (short) (jSame_mask64 ^ ((long) sArr[i17]));
                        i15++;
                        i14 = i14;
                        jArr3 = jArr4;
                        i2 = 64;
                        i3 = 32;
                    }
                    i13 = i14;
                }
                long[] jArr5 = jArr3;
                for (int i18 = 0; i18 < this.PK_NROWS; i18++) {
                    if (this.usePadding) {
                        for (int i19 = 0; i19 < 9; i19++) {
                            bArr2[i19] = bArr[i18][i5 + i19];
                        }
                        int i20 = 0;
                        while (i20 < 8) {
                            int i21 = i20 + 1;
                            bArr2[i20] = (byte) (((bArr2[i20] & 255) >> i6) | (bArr2[i21] << (8 - i6)));
                            i20 = i21;
                        }
                        jLoad8 = Utils.load8(bArr2, 0);
                    } else {
                        jLoad8 = Utils.load8(bArr[i18], i5);
                    }
                    for (int i22 = 0; i22 < 32; i22++) {
                        long j4 = jArr5[i22];
                        long j5 = ((jLoad8 >> i22) ^ (jLoad8 >> ((int) j4))) & 1;
                        jLoad8 = (jLoad8 ^ (j5 << ((int) j4))) ^ (j5 << i22);
                    }
                    if (this.usePadding) {
                        Utils.store8(bArr2, 0, jLoad8);
                        byte[] bArr3 = bArr[i18];
                        int i23 = i5 + 8;
                        int i24 = 8 - i6;
                        bArr3[i23] = (byte) ((((bArr3[i23] & 255) >>> i6) << i6) | ((bArr2[7] & 255) >>> i24));
                        bArr3[i5] = (byte) (((bArr2[0] & 255) << i6) | (((bArr3[i5] & 255) << i24) >>> i24));
                        for (int i25 = 7; i25 >= 1; i25--) {
                            bArr[i18][i5 + i25] = (byte) (((bArr2[i25] & 255) << i6) | ((bArr2[i25 - 1] & 255) >>> i24));
                        }
                    } else {
                        Utils.store8(bArr[i18], i5, jLoad8);
                    }
                }
                return 0;
            }
            long j6 = jArr2[i12];
            int i26 = i12 + 1;
            long j7 = j2;
            for (int i27 = i26; i27 < 32; i27++) {
                j6 |= jArr2[i27];
            }
            if (j6 == j7) {
                return -1;
            }
            int iCtz = ctz(j6);
            char c3 = c2;
            long j8 = iCtz;
            jArr3[i12] = j8;
            jArr[c3] = jArr[c3] | (1 << ((int) j8));
            for (int i28 = i26; i28 < 32; i28++) {
                long j9 = jArr2[i12];
                jArr2[i12] = j9 ^ (jArr2[i28] & (((j9 >> iCtz) & 1) - 1));
            }
            int i29 = i26;
            while (i29 < 32) {
                long j10 = jArr2[i29];
                long j11 = j3;
                jArr2[i29] = j10 ^ (jArr2[i12] & (-((j10 >> iCtz) & j11)));
                i29++;
                j3 = j11;
                c3 = 0;
            }
            c2 = c3;
            i12 = i26;
            j2 = j7;
        }
    }

    private int pk_gen(byte[] bArr, byte[] bArr2, int[] iArr, short[] sArr, long[] jArr) {
        int i2;
        int i3;
        int i4 = this.SYS_T;
        short[] sArr2 = new short[i4 + 1];
        byte b2 = 1;
        sArr2[i4] = 1;
        for (int i5 = 0; i5 < this.SYS_T; i5++) {
            sArr2[i5] = Utils.load_gf(bArr2, (i5 * 2) + 40, this.GFMASK);
        }
        int i6 = 1 << this.GFBITS;
        long[] jArr2 = new long[i6];
        for (int i7 = 0; i7 < (1 << this.GFBITS); i7++) {
            long j2 = iArr[i7];
            jArr2[i7] = j2;
            long j3 = j2 << 31;
            jArr2[i7] = j3;
            long j4 = j3 | ((long) i7);
            jArr2[i7] = j4;
            jArr2[i7] = j4 & Long.MAX_VALUE;
        }
        sort64(jArr2, 0, i6);
        for (int i8 = 1; i8 < (1 << this.GFBITS); i8++) {
            if ((jArr2[i8 - 1] >> 31) == (jArr2[i8] >> 31)) {
                return -1;
            }
        }
        short[] sArr3 = new short[this.SYS_N];
        for (int i9 = 0; i9 < (1 << this.GFBITS); i9++) {
            sArr[i9] = (short) (jArr2[i9] & ((long) this.GFMASK));
        }
        int i10 = 0;
        while (true) {
            i2 = this.SYS_N;
            if (i10 >= i2) {
                break;
            }
            sArr3[i10] = Utils.bitrev(sArr[i10], this.GFBITS);
            i10++;
        }
        short[] sArr4 = new short[i2];
        root(sArr4, sArr2, sArr3);
        int i11 = 0;
        while (true) {
            i3 = this.SYS_N;
            if (i11 >= i3) {
                break;
            }
            sArr4[i11] = this.gf.gf_inv(sArr4[i11]);
            i11++;
        }
        byte[][] bArr3 = (byte[][]) Array.newInstance((Class<?>) Byte.TYPE, this.PK_NROWS, i3 / 8);
        for (int i12 = 0; i12 < this.PK_NROWS; i12++) {
            for (int i13 = 0; i13 < this.SYS_N / 8; i13++) {
                bArr3[i12][i13] = 0;
            }
        }
        int i14 = 0;
        while (i14 < this.SYS_T) {
            for (int i15 = 0; i15 < this.SYS_N; i15 += 8) {
                int i16 = 0;
                while (true) {
                    int i17 = this.GFBITS;
                    if (i16 < i17) {
                        bArr3[(i17 * i14) + i16][i15 / 8] = (byte) (((byte) (((byte) (((byte) (((byte) (((byte) (((byte) (((byte) (((byte) (((byte) (((byte) (((byte) (((byte) (((byte) (((byte) ((sArr4[i15 + 7] >>> i16) & 1)) << 1)) | ((sArr4[i15 + 6] >>> i16) & 1))) << 1)) | ((sArr4[i15 + 5] >>> i16) & 1))) << 1)) | ((sArr4[i15 + 4] >>> i16) & 1))) << 1)) | ((sArr4[i15 + 3] >>> i16) & 1))) << 1)) | ((sArr4[i15 + 2] >>> i16) & 1))) << 1)) | ((sArr4[i15 + 1] >>> i16) & 1))) << 1)) | ((sArr4[i15] >>> i16) & 1));
                        i16++;
                    }
                }
            }
            for (int i18 = 0; i18 < this.SYS_N; i18++) {
                sArr4[i18] = this.gf.gf_mul(sArr4[i18], sArr3[i18]);
            }
            i14++;
        }
        int i19 = 0;
        while (true) {
            int i20 = this.PK_NROWS;
            if (i19 >= i20) {
                if (bArr != null) {
                    if (!this.usePadding) {
                        int i21 = ((this.SYS_N - i20) + 7) / 8;
                        int i22 = 0;
                        while (true) {
                            int i23 = this.PK_NROWS;
                            if (i22 >= i23) {
                                break;
                            }
                            System.arraycopy(bArr3[i22], i23 / 8, bArr, i21 * i22, i21);
                            i22++;
                        }
                    } else {
                        int i24 = i20 % 8;
                        if (i24 != 0) {
                            int i25 = 0;
                            int i26 = 0;
                            while (true) {
                                int i27 = this.PK_NROWS;
                                if (i25 >= i27) {
                                    break;
                                }
                                int i28 = (i27 - 1) / 8;
                                while (i28 < (this.SYS_N / 8) - 1) {
                                    byte[] bArr4 = bArr3[i25];
                                    int i29 = (bArr4[i28] & 255) >>> i24;
                                    i28++;
                                    bArr[i26] = (byte) ((bArr4[i28] << (8 - i24)) | i29);
                                    i26++;
                                }
                                bArr[i26] = (byte) ((bArr3[i25][i28] & 255) >>> i24);
                                i25++;
                                i26++;
                            }
                        } else {
                            System.arraycopy(bArr3[i14], (i20 - 1) / 8, bArr, 0, this.SYS_N / 8);
                        }
                    }
                }
                return 0;
            }
            i14 = i19 >>> 3;
            int i30 = i19 & 7;
            if (this.usePivots && i19 == i20 - 32) {
                if (mov_columns(bArr3, sArr, jArr) != 0) {
                    return -1;
                }
            }
            int i31 = i19 + 1;
            for (int i32 = i31; i32 < this.PK_NROWS; i32++) {
                byte b3 = (byte) (-((byte) (((byte) (((byte) (bArr3[i19][i14] ^ bArr3[i32][i14])) >> i30)) & b2)));
                int i33 = 0;
                while (i33 < this.SYS_N / 8) {
                    byte[] bArr5 = bArr3[i19];
                    bArr5[i33] = (byte) (bArr5[i33] ^ (bArr3[i32][i33] & b3));
                    i33++;
                    b2 = b2;
                }
            }
            byte b4 = b2;
            if (((bArr3[i19][i14] >> i30) & 1) == 0) {
                return -1;
            }
            for (int i34 = 0; i34 < this.PK_NROWS; i34++) {
                if (i34 != i19) {
                    byte b5 = (byte) (-((byte) (((byte) (bArr3[i34][i14] >> i30)) & 1)));
                    for (int i35 = 0; i35 < this.SYS_N / 8; i35++) {
                        byte[] bArr6 = bArr3[i34];
                        bArr6[i35] = (byte) (bArr6[i35] ^ (bArr3[i19][i35] & b5));
                    }
                }
            }
            i19 = i31;
            b2 = b4;
        }
    }

    private void root(short[] sArr, short[] sArr2, short[] sArr3) {
        for (int i2 = 0; i2 < this.SYS_N; i2++) {
            sArr[i2] = eval(sArr2, sArr3[i2]);
        }
    }

    private static byte same_mask32(short s, short s2) {
        return (byte) ((-(((s ^ s2) - 1) >>> 31)) & 255);
    }

    private static long same_mask64(short s, short s2) {
        return -((((long) (s ^ s2)) - 1) >>> 63);
    }

    private static void sort32(int[] iArr, int i2, int i3) {
        int i4 = i3 - i2;
        if (i4 < 2) {
            return;
        }
        int i5 = 1;
        while (i5 < i4 - i5) {
            i5 += i5;
        }
        for (int i6 = i5; i6 > 0; i6 >>>= 1) {
            int i7 = 0;
            for (int i8 = 0; i8 < i4 - i6; i8++) {
                if ((i8 & i6) == 0) {
                    int i9 = i2 + i8;
                    int i10 = i9 + i6;
                    int i11 = iArr[i10];
                    int i12 = iArr[i9];
                    int i13 = i11 ^ i12;
                    int i14 = i11 - i12;
                    int i15 = ((((i11 ^ i14) & i13) ^ i14) >> 31) & i13;
                    iArr[i9] = i12 ^ i15;
                    iArr[i10] = iArr[i10] ^ i15;
                }
            }
            for (int i16 = i5; i16 > i6; i16 >>>= 1) {
                while (i7 < i4 - i16) {
                    if ((i7 & i6) == 0) {
                        int i17 = i2 + i7;
                        int i18 = i17 + i6;
                        int i19 = iArr[i18];
                        for (int i20 = i16; i20 > i6; i20 >>>= 1) {
                            int i21 = i17 + i20;
                            int i22 = iArr[i21];
                            int i23 = i22 ^ i19;
                            int i24 = i22 - i19;
                            int i25 = i23 & ((i24 ^ ((i24 ^ i22) & i23)) >> 31);
                            i19 ^= i25;
                            iArr[i21] = i22 ^ i25;
                        }
                        iArr[i18] = i19;
                    }
                    i7++;
                }
            }
        }
    }

    private static void sort64(long[] jArr, int i2, int i3) {
        int i4 = i3 - i2;
        if (i4 < 2) {
            return;
        }
        int i5 = 1;
        while (i5 < i4 - i5) {
            i5 += i5;
        }
        for (int i6 = i5; i6 > 0; i6 >>>= 1) {
            int i7 = 0;
            for (int i8 = 0; i8 < i4 - i6; i8++) {
                if ((i8 & i6) == 0) {
                    int i9 = i2 + i8;
                    int i10 = i9 + i6;
                    long j2 = jArr[i10];
                    long j3 = jArr[i9];
                    long j4 = (j2 ^ j3) & (-((j2 - j3) >>> 63));
                    jArr[i9] = j3 ^ j4;
                    jArr[i10] = jArr[i10] ^ j4;
                }
            }
            for (int i11 = i5; i11 > i6; i11 >>>= 1) {
                while (i7 < i4 - i11) {
                    if ((i7 & i6) == 0) {
                        int i12 = i2 + i7;
                        int i13 = i12 + i6;
                        long j5 = jArr[i13];
                        for (int i14 = i11; i14 > i6; i14 >>>= 1) {
                            int i15 = i12 + i14;
                            long j6 = jArr[i15];
                            long j7 = (-((j6 - j5) >>> 63)) & (j5 ^ j6);
                            j5 ^= j7;
                            jArr[i15] = j6 ^ j7;
                        }
                        jArr[i13] = j5;
                    }
                    i7++;
                }
            }
        }
    }

    private void synd(short[] sArr, short[] sArr2, short[] sArr3, byte[] bArr) {
        short s = (short) (bArr[0] & 1);
        short s2 = sArr3[0];
        short sEval = eval(sArr2, s2);
        GF gf = this.gf;
        short sGf_inv = (short) ((-s) & gf.gf_inv(gf.gf_sq(sEval)));
        sArr[0] = sGf_inv;
        for (int i2 = 1; i2 < this.SYS_T * 2; i2++) {
            sGf_inv = this.gf.gf_mul(sGf_inv, s2);
            sArr[i2] = sGf_inv;
        }
        for (int i3 = 1; i3 < this.SYS_N; i3++) {
            short s3 = (short) ((bArr[i3 / 8] >> (i3 % 8)) & 1);
            short s4 = sArr3[i3];
            short sEval2 = eval(sArr2, s4);
            GF gf2 = this.gf;
            short sGf_mul = this.gf.gf_mul(gf2.gf_inv(gf2.gf_sq(sEval2)), s3);
            sArr[0] = (short) (sArr[0] ^ sGf_mul);
            for (int i4 = 1; i4 < this.SYS_T * 2; i4++) {
                sGf_mul = this.gf.gf_mul(sGf_mul, s4);
                sArr[i4] = (short) (sArr[i4] ^ sGf_mul);
            }
        }
    }

    private void syndrome(byte[] bArr, byte[] bArr2, byte[] bArr3) {
        short[] sArr = new short[this.SYS_N / 8];
        int i2 = this.PK_NROWS % 8;
        for (int i3 = 0; i3 < this.SYND_BYTES; i3++) {
            bArr[i3] = 0;
        }
        int i4 = 0;
        for (int i5 = 0; i5 < this.PK_NROWS; i5++) {
            for (int i6 = 0; i6 < this.SYS_N / 8; i6++) {
                sArr[i6] = 0;
            }
            int i7 = 0;
            while (true) {
                int i8 = this.PK_ROW_BYTES;
                if (i7 >= i8) {
                    break;
                }
                sArr[((this.SYS_N / 8) - i8) + i7] = bArr2[i4 + i7];
                i7++;
            }
            if (this.usePadding) {
                for (int i9 = (this.SYS_N / 8) - 1; i9 >= (this.SYS_N / 8) - this.PK_ROW_BYTES; i9--) {
                    sArr[i9] = (short) ((((sArr[i9] & 255) << i2) | ((sArr[i9 - 1] & 255) >>> (8 - i2))) & 255);
                }
            }
            int i10 = i5 / 8;
            int i11 = i5 % 8;
            sArr[i10] = (short) (sArr[i10] | (1 << i11));
            byte b2 = 0;
            for (int i12 = 0; i12 < this.SYS_N / 8; i12++) {
                b2 = (byte) (b2 ^ (sArr[i12] & bArr3[i12]));
            }
            byte b3 = (byte) ((b2 >>> 4) ^ b2);
            byte b4 = (byte) (b3 ^ (b3 >>> 2));
            bArr[i10] = (byte) ((((byte) (1 & ((byte) (b4 ^ (b4 >>> 1))))) << i11) | bArr[i10]);
            i4 += this.PK_ROW_BYTES;
        }
    }

    public int check_c_padding(byte[] bArr) {
        return ((byte) ((((byte) (((byte) ((bArr[this.SYND_BYTES - 1] & 255) >>> (this.PK_NROWS % 8))) - 1)) & 255) >>> 7)) - 1;
    }

    public int check_pk_padding(byte[] bArr) {
        byte b2 = 0;
        for (int i2 = 0; i2 < this.PK_NROWS; i2++) {
            int i3 = this.PK_ROW_BYTES;
            b2 = (byte) (b2 | bArr[((i2 * i3) + i3) - 1]);
        }
        return ((byte) ((((byte) (((byte) ((b2 & 255) >>> (this.PK_NCOLS % 8))) - 1)) & 255) >>> 7)) - 1;
    }

    public byte[] decompress_private_key(byte[] bArr) {
        int i2;
        short[] sArr;
        byte[] bArr2 = new byte[getPrivateKeySize()];
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        int i3 = ((1 << this.GFBITS) * 4) + (this.SYS_N / 8) + this.IRR_BYTES;
        int i4 = i3 + 32;
        byte[] bArr3 = new byte[i4];
        SHAKEDigest sHAKEDigest = new SHAKEDigest(256);
        sHAKEDigest.update((byte) 64);
        sHAKEDigest.update(bArr, 0, 32);
        sHAKEDigest.doFinal(bArr3, 0, i4);
        if (bArr.length <= 40) {
            short[] sArr2 = new short[this.SYS_T];
            int i5 = this.IRR_BYTES;
            byte[] bArr4 = new byte[i5];
            int i6 = i3 - i5;
            for (int i7 = 0; i7 < this.SYS_T; i7++) {
                sArr2[i7] = Utils.load_gf(bArr3, (i7 * 2) + i6, this.GFMASK);
            }
            generate_irr_poly(sArr2);
            for (int i8 = 0; i8 < this.SYS_T; i8++) {
                Utils.store_gf(bArr4, i8 * 2, sArr2[i8]);
            }
            System.arraycopy(bArr4, 0, bArr2, 40, this.IRR_BYTES);
        }
        int length = bArr.length;
        int i9 = this.IRR_BYTES;
        if (length <= i9 + 40) {
            int i10 = this.GFBITS;
            int[] iArr = new int[1 << i10];
            short[] sArr3 = new short[1 << i10];
            int i11 = (i3 - i9) - ((1 << i10) * 4);
            int i12 = 0;
            while (true) {
                i2 = this.GFBITS;
                if (i12 >= (1 << i2)) {
                    break;
                }
                iArr[i12] = Utils.load4(bArr3, (i12 * 4) + i11);
                i12++;
            }
            if (this.usePivots) {
                sArr = sArr3;
                pk_gen(null, bArr2, iArr, sArr, new long[]{0});
            } else {
                sArr = sArr3;
                int i13 = 1 << i2;
                long[] jArr = new long[i13];
                for (int i14 = 0; i14 < (1 << this.GFBITS); i14++) {
                    long j2 = iArr[i14];
                    jArr[i14] = j2;
                    long j3 = j2 << 31;
                    jArr[i14] = j3;
                    long j4 = j3 | ((long) i14);
                    jArr[i14] = j4;
                    jArr[i14] = j4 & Long.MAX_VALUE;
                }
                sort64(jArr, 0, i13);
                for (int i15 = 0; i15 < (1 << this.GFBITS); i15++) {
                    sArr[i15] = (short) (jArr[i15] & ((long) this.GFMASK));
                }
            }
            int i16 = this.COND_BYTES;
            byte[] bArr5 = new byte[i16];
            int i17 = this.GFBITS;
            controlbitsfrompermutation(bArr5, sArr, i17, 1 << i17);
            System.arraycopy(bArr5, 0, bArr2, this.IRR_BYTES + 40, i16);
        }
        int privateKeySize = getPrivateKeySize();
        int i18 = this.SYS_N;
        System.arraycopy(bArr3, 0, bArr2, privateKeySize - (i18 / 8), i18 / 8);
        return bArr2;
    }

    public byte[] generate_public_key_from_private_key(byte[] bArr) {
        byte[] bArr2 = new byte[getPublicKeySize()];
        int i2 = this.GFBITS;
        short[] sArr = new short[1 << i2];
        long[] jArr = {0};
        int[] iArr = new int[1 << i2];
        int i3 = ((1 << i2) * 4) + (this.SYS_N / 8);
        byte[] bArr3 = new byte[i3];
        int i4 = ((i3 - 32) - this.IRR_BYTES) - ((1 << i2) * 4);
        SHAKEDigest sHAKEDigest = new SHAKEDigest(256);
        sHAKEDigest.update((byte) 64);
        sHAKEDigest.update(bArr, 0, 32);
        sHAKEDigest.doFinal(bArr3, 0, i3);
        for (int i5 = 0; i5 < (1 << this.GFBITS); i5++) {
            iArr[i5] = Utils.load4(bArr3, (i5 * 4) + i4);
        }
        pk_gen(bArr2, bArr, iArr, sArr, jArr);
        return bArr2;
    }

    public int getCipherTextSize() {
        return this.SYND_BYTES;
    }

    public int getCondBytes() {
        return this.COND_BYTES;
    }

    public int getDefaultSessionKeySize() {
        return this.defaultKeySize;
    }

    public int getIrrBytes() {
        return this.IRR_BYTES;
    }

    public int getPrivateKeySize() {
        return (this.SYS_N / 8) + this.COND_BYTES + this.IRR_BYTES + 40;
    }

    public int getPublicKeySize() {
        boolean z = this.usePadding;
        int i2 = this.PK_NROWS;
        return z ? ((this.SYS_N / 8) - ((i2 - 1) / 8)) * i2 : (i2 * this.PK_NCOLS) / 8;
    }

    public int kem_dec(byte[] bArr, byte[] bArr2, byte[] bArr3) {
        int i2 = this.SYS_N;
        byte[] bArr4 = new byte[i2 / 8];
        int i3 = (i2 / 8) + 1 + this.SYND_BYTES;
        byte[] bArr5 = new byte[i3];
        int iCheck_c_padding = this.usePadding ? check_c_padding(bArr2) : 0;
        short sDecrypt = (short) (((short) (((short) (((byte) decrypt(bArr4, bArr3, bArr2)) - 1)) >> 8)) & 255);
        bArr5[0] = (byte) (sDecrypt & 1);
        int i4 = 0;
        while (i4 < this.SYS_N / 8) {
            int i5 = i4 + 1;
            bArr5[i5] = (byte) ((bArr4[i4] & sDecrypt) | ((~sDecrypt) & bArr3[i4 + 40 + this.IRR_BYTES + this.COND_BYTES]));
            i4 = i5;
        }
        for (int i6 = 0; i6 < this.SYND_BYTES; i6++) {
            bArr5[(this.SYS_N / 8) + 1 + i6] = bArr2[i6];
        }
        SHAKEDigest sHAKEDigest = new SHAKEDigest(256);
        sHAKEDigest.update(bArr5, 0, i3);
        sHAKEDigest.doFinal(bArr, 0, bArr.length);
        if (!this.usePadding) {
            return 0;
        }
        byte b2 = (byte) iCheck_c_padding;
        for (int i7 = 0; i7 < bArr.length; i7++) {
            bArr[i7] = (byte) (bArr[i7] | b2);
        }
        return iCheck_c_padding;
    }

    public int kem_enc(byte[] bArr, byte[] bArr2, byte[] bArr3, SecureRandom secureRandom) {
        int i2 = this.SYS_N / 8;
        byte[] bArr4 = new byte[i2];
        int iCheck_pk_padding = this.usePadding ? check_pk_padding(bArr3) : 0;
        encrypt(bArr, bArr3, bArr4, secureRandom);
        SHAKEDigest sHAKEDigest = new SHAKEDigest(256);
        sHAKEDigest.update((byte) 1);
        sHAKEDigest.update(bArr4, 0, i2);
        sHAKEDigest.update(bArr, 0, bArr.length);
        sHAKEDigest.doFinal(bArr2, 0, bArr2.length);
        if (!this.usePadding) {
            return 0;
        }
        byte b2 = (byte) (((byte) iCheck_pk_padding) ^ 255);
        for (int i3 = 0; i3 < this.SYND_BYTES; i3++) {
            bArr[i3] = (byte) (bArr[i3] & b2);
        }
        for (int i4 = 0; i4 < 32; i4++) {
            bArr2[i4] = (byte) (bArr2[i4] & b2);
        }
        return iCheck_pk_padding;
    }

    public void kem_keypair(byte[] bArr, byte[] bArr2, SecureRandom secureRandom) {
        int i2;
        int i3;
        int i4;
        short[] sArr;
        int i5;
        long j2;
        int i6 = 32;
        byte[] bArr3 = new byte[32];
        int i7 = 1;
        int i8 = 0;
        byte[] bArr4 = {64};
        secureRandom.nextBytes(bArr3);
        int i9 = (this.SYS_T * 2) + ((1 << this.GFBITS) * 4) + (this.SYS_N / 8);
        int i10 = i9 + 32;
        byte[] bArr5 = new byte[i10];
        long[] jArr = {0};
        SHAKEDigest sHAKEDigest = new SHAKEDigest(256);
        byte[] bArr6 = bArr3;
        while (true) {
            sHAKEDigest.update(bArr4, i8, i7);
            sHAKEDigest.update(bArr3, i8, bArr3.length);
            sHAKEDigest.doFinal(bArr5, i8, i10);
            byte[] bArrCopyOfRange = Arrays.copyOfRange(bArr5, i9, i9 + 32);
            System.arraycopy(bArr6, i8, bArr2, i8, i6);
            byte[] bArrCopyOfRange2 = Arrays.copyOfRange(bArrCopyOfRange, i8, i6);
            int i11 = this.SYS_T;
            short[] sArr2 = new short[i11];
            int i12 = i9 - (i11 * 2);
            i2 = i7;
            for (int i13 = i8; i13 < this.SYS_T; i13++) {
                sArr2[i13] = Utils.load_gf(bArr5, (i13 * 2) + i12, this.GFMASK);
            }
            if (generate_irr_poly(sArr2) != -1) {
                for (int i14 = i8; i14 < this.SYS_T; i14++) {
                    Utils.store_gf(bArr2, (i14 * 2) + 40, sArr2[i14]);
                }
                int i15 = this.GFBITS;
                int[] iArr = new int[i2 << i15];
                i3 = i12 - ((i2 << i15) * 4);
                int i16 = 0;
                while (true) {
                    i4 = this.GFBITS;
                    if (i16 >= (i2 << i4)) {
                        break;
                    }
                    iArr[i16] = Utils.load4(bArr5, (i16 * 4) + i3);
                    i16++;
                }
                sArr = new short[i2 << i4];
                if (pk_gen(bArr, bArr2, iArr, sArr, jArr) != -1) {
                    break;
                }
            }
            bArr3 = bArrCopyOfRange;
            bArr6 = bArrCopyOfRange2;
            i7 = i2;
            i6 = 32;
            i8 = 0;
        }
        int i17 = this.COND_BYTES;
        byte[] bArr7 = new byte[i17];
        int i18 = this.GFBITS;
        controlbitsfrompermutation(bArr7, sArr, i18, i2 << i18);
        System.arraycopy(bArr7, 0, bArr2, this.IRR_BYTES + 40, i17);
        int i19 = this.SYS_N;
        System.arraycopy(bArr5, i3 - (i19 / 8), bArr2, bArr2.length - (i19 / 8), i19 / 8);
        if (this.usePivots) {
            i5 = 32;
            j2 = jArr[0];
        } else {
            j2 = BodyPartID.bodyIdMax;
            i5 = 32;
        }
        Utils.store8(bArr2, i5, j2);
    }
}
