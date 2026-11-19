package org.bouncycastle.pqc.crypto.falcon;

/* JADX INFO: loaded from: classes5.dex */
class FalconFFT {
    FPREngine fpr = new FPREngine();

    public void FFT(FalconFPR[] falconFPRArr, int i2, int i3) {
        int i4 = i3;
        int i5 = 1;
        int i6 = (1 << i4) >> 1;
        int i7 = 2;
        int i8 = 1;
        int i9 = i6;
        while (i8 < i4) {
            int i10 = i9 >> 1;
            int i11 = i7 >> 1;
            int i12 = 0;
            int i13 = 0;
            while (i12 < i11) {
                int i14 = i13 + i10;
                FalconFPR[] falconFPRArr2 = this.fpr.fpr_gm_tab;
                int i15 = (i7 + i12) << i5;
                FalconFPR falconFPR = falconFPRArr2[i15];
                FalconFPR falconFPR2 = falconFPRArr2[i15 + i5];
                int i16 = i13;
                while (i16 < i14) {
                    int i17 = i2 + i16;
                    FalconFPR falconFPR3 = falconFPRArr[i17];
                    int i18 = i17 + i6;
                    FalconFPR falconFPR4 = falconFPRArr[i18];
                    int i19 = i17 + i10;
                    int i20 = i6;
                    int i21 = i19 + i20;
                    int i22 = i7;
                    ComplexNumberWrapper complexNumberWrapperFPC_MUL = FPC_MUL(falconFPRArr[i19], falconFPRArr[i21], falconFPR, falconFPR2);
                    FalconFPR falconFPR5 = complexNumberWrapperFPC_MUL.re;
                    FalconFPR falconFPR6 = complexNumberWrapperFPC_MUL.im;
                    int i23 = i8;
                    ComplexNumberWrapper complexNumberWrapperFPC_ADD = FPC_ADD(falconFPR3, falconFPR4, falconFPR5, falconFPR6);
                    falconFPRArr[i17] = complexNumberWrapperFPC_ADD.re;
                    falconFPRArr[i18] = complexNumberWrapperFPC_ADD.im;
                    ComplexNumberWrapper complexNumberWrapperFPC_SUB = FPC_SUB(falconFPR3, falconFPR4, falconFPR5, falconFPR6);
                    falconFPRArr[i19] = complexNumberWrapperFPC_SUB.re;
                    falconFPRArr[i21] = complexNumberWrapperFPC_SUB.im;
                    i16++;
                    i6 = i20;
                    i7 = i22;
                    i8 = i23;
                    i9 = i9;
                }
                i12++;
                i13 += i9;
                i5 = 1;
            }
            i8++;
            i7 <<= 1;
            i4 = i3;
            i9 = i10;
            i5 = 1;
        }
    }

    public ComplexNumberWrapper FPC_ADD(FalconFPR falconFPR, FalconFPR falconFPR2, FalconFPR falconFPR3, FalconFPR falconFPR4) {
        return new ComplexNumberWrapper(this.fpr.fpr_add(falconFPR, falconFPR3), this.fpr.fpr_add(falconFPR2, falconFPR4));
    }

    public ComplexNumberWrapper FPC_DIV(FalconFPR falconFPR, FalconFPR falconFPR2, FalconFPR falconFPR3, FalconFPR falconFPR4) {
        FPREngine fPREngine = this.fpr;
        FalconFPR falconFPRFpr_inv = this.fpr.fpr_inv(fPREngine.fpr_add(fPREngine.fpr_sqr(falconFPR3), this.fpr.fpr_sqr(falconFPR4)));
        FalconFPR falconFPRFpr_mul = this.fpr.fpr_mul(falconFPR3, falconFPRFpr_inv);
        FPREngine fPREngine2 = this.fpr;
        FalconFPR falconFPRFpr_mul2 = fPREngine2.fpr_mul(fPREngine2.fpr_neg(falconFPR4), falconFPRFpr_inv);
        FPREngine fPREngine3 = this.fpr;
        FalconFPR falconFPRFpr_sub = fPREngine3.fpr_sub(fPREngine3.fpr_mul(falconFPR, falconFPRFpr_mul), this.fpr.fpr_mul(falconFPR2, falconFPRFpr_mul2));
        FPREngine fPREngine4 = this.fpr;
        return new ComplexNumberWrapper(falconFPRFpr_sub, fPREngine4.fpr_add(fPREngine4.fpr_mul(falconFPR, falconFPRFpr_mul2), this.fpr.fpr_mul(falconFPR2, falconFPRFpr_mul)));
    }

    public ComplexNumberWrapper FPC_INV(FalconFPR falconFPR, FalconFPR falconFPR2) {
        FPREngine fPREngine = this.fpr;
        FalconFPR falconFPRFpr_inv = this.fpr.fpr_inv(fPREngine.fpr_add(fPREngine.fpr_sqr(falconFPR), this.fpr.fpr_sqr(falconFPR2)));
        FalconFPR falconFPRFpr_mul = this.fpr.fpr_mul(falconFPR, falconFPRFpr_inv);
        FPREngine fPREngine2 = this.fpr;
        return new ComplexNumberWrapper(falconFPRFpr_mul, fPREngine2.fpr_mul(fPREngine2.fpr_neg(falconFPR2), falconFPRFpr_inv));
    }

    public ComplexNumberWrapper FPC_MUL(FalconFPR falconFPR, FalconFPR falconFPR2, FalconFPR falconFPR3, FalconFPR falconFPR4) {
        FPREngine fPREngine = this.fpr;
        FalconFPR falconFPRFpr_sub = fPREngine.fpr_sub(fPREngine.fpr_mul(falconFPR, falconFPR3), this.fpr.fpr_mul(falconFPR2, falconFPR4));
        FPREngine fPREngine2 = this.fpr;
        return new ComplexNumberWrapper(falconFPRFpr_sub, fPREngine2.fpr_add(fPREngine2.fpr_mul(falconFPR, falconFPR4), this.fpr.fpr_mul(falconFPR2, falconFPR3)));
    }

    public ComplexNumberWrapper FPC_SQR(FalconFPR falconFPR, FalconFPR falconFPR2) {
        FPREngine fPREngine = this.fpr;
        FalconFPR falconFPRFpr_sub = fPREngine.fpr_sub(fPREngine.fpr_sqr(falconFPR), this.fpr.fpr_sqr(falconFPR2));
        FPREngine fPREngine2 = this.fpr;
        return new ComplexNumberWrapper(falconFPRFpr_sub, fPREngine2.fpr_double(fPREngine2.fpr_mul(falconFPR, falconFPR2)));
    }

    public ComplexNumberWrapper FPC_SUB(FalconFPR falconFPR, FalconFPR falconFPR2, FalconFPR falconFPR3, FalconFPR falconFPR4) {
        return new ComplexNumberWrapper(this.fpr.fpr_sub(falconFPR, falconFPR3), this.fpr.fpr_sub(falconFPR2, falconFPR4));
    }

    public void iFFT(FalconFPR[] falconFPRArr, int i2, int i3) {
        int i4;
        int i5 = 1;
        int i6 = 1 << i3;
        int i7 = i6 >> 1;
        int i8 = i3;
        int i9 = 1;
        int i10 = i6;
        while (true) {
            i4 = 0;
            if (i8 <= i5) {
                break;
            }
            i10 >>= i5;
            int i11 = i9 << 1;
            int i12 = 0;
            while (i4 < i7) {
                int i13 = i4 + i9;
                FPREngine fPREngine = this.fpr;
                FalconFPR[] falconFPRArr2 = fPREngine.fpr_gm_tab;
                int i14 = (i10 + i12) << i5;
                FalconFPR falconFPR = falconFPRArr2[i14];
                FalconFPR falconFPRFpr_neg = fPREngine.fpr_neg(falconFPRArr2[i14 + i5]);
                int i15 = i4;
                while (i15 < i13) {
                    int i16 = i2 + i15;
                    FalconFPR falconFPR2 = falconFPRArr[i16];
                    int i17 = i16 + i7;
                    FalconFPR falconFPR3 = falconFPRArr[i17];
                    int i18 = i16 + i9;
                    int i19 = i7;
                    FalconFPR falconFPR4 = falconFPRArr[i18];
                    int i20 = i18 + i19;
                    int i21 = i8;
                    FalconFPR falconFPR5 = falconFPRArr[i20];
                    int i22 = i10;
                    ComplexNumberWrapper complexNumberWrapperFPC_ADD = FPC_ADD(falconFPR2, falconFPR3, falconFPR4, falconFPR5);
                    falconFPRArr[i16] = complexNumberWrapperFPC_ADD.re;
                    falconFPRArr[i17] = complexNumberWrapperFPC_ADD.im;
                    ComplexNumberWrapper complexNumberWrapperFPC_SUB = FPC_SUB(falconFPR2, falconFPR3, falconFPR4, falconFPR5);
                    ComplexNumberWrapper complexNumberWrapperFPC_MUL = FPC_MUL(complexNumberWrapperFPC_SUB.re, complexNumberWrapperFPC_SUB.im, falconFPR, falconFPRFpr_neg);
                    falconFPRArr[i18] = complexNumberWrapperFPC_MUL.re;
                    falconFPRArr[i20] = complexNumberWrapperFPC_MUL.im;
                    i15++;
                    i7 = i19;
                    i8 = i21;
                    i10 = i22;
                    i9 = i9;
                }
                i12++;
                i4 += i11;
                i5 = 1;
            }
            i8--;
            i9 = i11;
            i5 = 1;
        }
        if (i3 > 0) {
            FalconFPR falconFPR6 = this.fpr.fpr_p2_tab[i3];
            while (i4 < i6) {
                int i23 = i2 + i4;
                falconFPRArr[i23] = this.fpr.fpr_mul(falconFPRArr[i23], falconFPR6);
                i4++;
            }
        }
    }

    public void poly_LDL_fft(FalconFPR[] falconFPRArr, int i2, FalconFPR[] falconFPRArr2, int i3, FalconFPR[] falconFPRArr3, int i4, int i5) {
        int i6 = (1 << i5) >> 1;
        for (int i7 = 0; i7 < i6; i7++) {
            int i8 = i2 + i7;
            FalconFPR falconFPR = falconFPRArr[i8];
            FalconFPR falconFPR2 = falconFPRArr[i8 + i6];
            int i9 = i3 + i7;
            FalconFPR falconFPR3 = falconFPRArr2[i9];
            int i10 = i9 + i6;
            FalconFPR falconFPR4 = falconFPRArr2[i10];
            int i11 = i4 + i7;
            FalconFPR falconFPR5 = falconFPRArr3[i11];
            int i12 = i11 + i6;
            FalconFPR falconFPR6 = falconFPRArr3[i12];
            ComplexNumberWrapper complexNumberWrapperFPC_DIV = FPC_DIV(falconFPR3, falconFPR4, falconFPR, falconFPR2);
            FalconFPR falconFPR7 = complexNumberWrapperFPC_DIV.re;
            FalconFPR falconFPR8 = complexNumberWrapperFPC_DIV.im;
            ComplexNumberWrapper complexNumberWrapperFPC_MUL = FPC_MUL(falconFPR7, falconFPR8, falconFPR3, this.fpr.fpr_neg(falconFPR4));
            ComplexNumberWrapper complexNumberWrapperFPC_SUB = FPC_SUB(falconFPR5, falconFPR6, complexNumberWrapperFPC_MUL.re, complexNumberWrapperFPC_MUL.im);
            falconFPRArr3[i11] = complexNumberWrapperFPC_SUB.re;
            falconFPRArr3[i12] = complexNumberWrapperFPC_SUB.im;
            falconFPRArr2[i9] = falconFPR7;
            falconFPRArr2[i10] = this.fpr.fpr_neg(falconFPR8);
        }
    }

    public void poly_LDLmv_fft(FalconFPR[] falconFPRArr, int i2, FalconFPR[] falconFPRArr2, int i3, FalconFPR[] falconFPRArr3, int i4, FalconFPR[] falconFPRArr4, int i5, FalconFPR[] falconFPRArr5, int i6, int i7) {
        int i8 = (1 << i7) >> 1;
        for (int i9 = 0; i9 < i8; i9++) {
            int i10 = i4 + i9;
            FalconFPR falconFPR = falconFPRArr3[i10];
            FalconFPR falconFPR2 = falconFPRArr3[i10 + i8];
            int i11 = i5 + i9;
            FalconFPR falconFPR3 = falconFPRArr4[i11];
            FalconFPR falconFPR4 = falconFPRArr4[i11 + i8];
            int i12 = i6 + i9;
            FalconFPR falconFPR5 = falconFPRArr5[i12];
            FalconFPR falconFPR6 = falconFPRArr5[i12 + i8];
            ComplexNumberWrapper complexNumberWrapperFPC_DIV = FPC_DIV(falconFPR3, falconFPR4, falconFPR, falconFPR2);
            FalconFPR falconFPR7 = complexNumberWrapperFPC_DIV.re;
            FalconFPR falconFPR8 = complexNumberWrapperFPC_DIV.im;
            ComplexNumberWrapper complexNumberWrapperFPC_MUL = FPC_MUL(falconFPR7, falconFPR8, falconFPR3, this.fpr.fpr_neg(falconFPR4));
            ComplexNumberWrapper complexNumberWrapperFPC_SUB = FPC_SUB(falconFPR5, falconFPR6, complexNumberWrapperFPC_MUL.re, complexNumberWrapperFPC_MUL.im);
            int i13 = i2 + i9;
            falconFPRArr[i13] = complexNumberWrapperFPC_SUB.re;
            falconFPRArr[i13 + i8] = complexNumberWrapperFPC_SUB.im;
            int i14 = i3 + i9;
            falconFPRArr2[i14] = falconFPR7;
            falconFPRArr2[i14 + i8] = this.fpr.fpr_neg(falconFPR8);
        }
    }

    public void poly_add(FalconFPR[] falconFPRArr, int i2, FalconFPR[] falconFPRArr2, int i3, int i4) {
        int i5 = 1 << i4;
        for (int i6 = 0; i6 < i5; i6++) {
            int i7 = i2 + i6;
            falconFPRArr[i7] = this.fpr.fpr_add(falconFPRArr[i7], falconFPRArr2[i3 + i6]);
        }
    }

    public void poly_add_muladj_fft(FalconFPR[] falconFPRArr, int i2, FalconFPR[] falconFPRArr2, int i3, FalconFPR[] falconFPRArr3, int i4, FalconFPR[] falconFPRArr4, int i5, FalconFPR[] falconFPRArr5, int i6, int i7) {
        int i8 = (1 << i7) >> 1;
        for (int i9 = 0; i9 < i8; i9++) {
            int i10 = i3 + i9;
            FalconFPR falconFPR = falconFPRArr2[i10];
            FalconFPR falconFPR2 = falconFPRArr2[i10 + i8];
            int i11 = i4 + i9;
            FalconFPR falconFPR3 = falconFPRArr3[i11];
            FalconFPR falconFPR4 = falconFPRArr3[i11 + i8];
            int i12 = i5 + i9;
            FalconFPR falconFPR5 = falconFPRArr4[i12];
            FalconFPR falconFPR6 = falconFPRArr4[i12 + i8];
            int i13 = i6 + i9;
            FalconFPR falconFPR7 = falconFPRArr5[i13];
            FalconFPR falconFPR8 = falconFPRArr5[i13 + i8];
            ComplexNumberWrapper complexNumberWrapperFPC_MUL = FPC_MUL(falconFPR, falconFPR2, falconFPR5, this.fpr.fpr_neg(falconFPR6));
            FalconFPR falconFPR9 = complexNumberWrapperFPC_MUL.re;
            FalconFPR falconFPR10 = complexNumberWrapperFPC_MUL.im;
            ComplexNumberWrapper complexNumberWrapperFPC_MUL2 = FPC_MUL(falconFPR3, falconFPR4, falconFPR7, this.fpr.fpr_neg(falconFPR8));
            FalconFPR falconFPR11 = complexNumberWrapperFPC_MUL2.re;
            FalconFPR falconFPR12 = complexNumberWrapperFPC_MUL2.im;
            int i14 = i2 + i9;
            falconFPRArr[i14] = this.fpr.fpr_add(falconFPR9, falconFPR11);
            falconFPRArr[i14 + i8] = this.fpr.fpr_add(falconFPR10, falconFPR12);
        }
    }

    public void poly_adj_fft(FalconFPR[] falconFPRArr, int i2, int i3) {
        int i4 = 1 << i3;
        for (int i5 = i4 >> 1; i5 < i4; i5++) {
            int i6 = i2 + i5;
            falconFPRArr[i6] = this.fpr.fpr_neg(falconFPRArr[i6]);
        }
    }

    public void poly_div_autoadj_fft(FalconFPR[] falconFPRArr, int i2, FalconFPR[] falconFPRArr2, int i3, int i4) {
        int i5 = (1 << i4) >> 1;
        for (int i6 = 0; i6 < i5; i6++) {
            FalconFPR falconFPRFpr_inv = this.fpr.fpr_inv(falconFPRArr2[i3 + i6]);
            int i7 = i2 + i6;
            falconFPRArr[i7] = this.fpr.fpr_mul(falconFPRArr[i7], falconFPRFpr_inv);
            int i8 = i7 + i5;
            falconFPRArr[i8] = this.fpr.fpr_mul(falconFPRArr[i8], falconFPRFpr_inv);
        }
    }

    public void poly_div_fft(FalconFPR[] falconFPRArr, int i2, FalconFPR[] falconFPRArr2, int i3, int i4) {
        int i5 = (1 << i4) >> 1;
        for (int i6 = 0; i6 < i5; i6++) {
            int i7 = i2 + i6;
            int i8 = i7 + i5;
            int i9 = i3 + i6;
            ComplexNumberWrapper complexNumberWrapperFPC_DIV = FPC_DIV(falconFPRArr[i7], falconFPRArr[i8], falconFPRArr2[i9], falconFPRArr2[i9 + i5]);
            falconFPRArr[i7] = complexNumberWrapperFPC_DIV.re;
            falconFPRArr[i8] = complexNumberWrapperFPC_DIV.im;
        }
    }

    public void poly_invnorm2_fft(FalconFPR[] falconFPRArr, int i2, FalconFPR[] falconFPRArr2, int i3, FalconFPR[] falconFPRArr3, int i4, int i5) {
        int i6 = (1 << i5) >> 1;
        for (int i7 = 0; i7 < i6; i7++) {
            int i8 = i3 + i7;
            FalconFPR falconFPR = falconFPRArr2[i8];
            FalconFPR falconFPR2 = falconFPRArr2[i8 + i6];
            int i9 = i4 + i7;
            FalconFPR falconFPR3 = falconFPRArr3[i9];
            FalconFPR falconFPR4 = falconFPRArr3[i9 + i6];
            FPREngine fPREngine = this.fpr;
            FalconFPR falconFPRFpr_add = fPREngine.fpr_add(fPREngine.fpr_sqr(falconFPR), this.fpr.fpr_sqr(falconFPR2));
            FPREngine fPREngine2 = this.fpr;
            falconFPRArr[i2 + i7] = fPREngine.fpr_inv(fPREngine.fpr_add(falconFPRFpr_add, fPREngine2.fpr_add(fPREngine2.fpr_sqr(falconFPR3), this.fpr.fpr_sqr(falconFPR4))));
        }
    }

    public void poly_merge_fft(FalconFPR[] falconFPRArr, int i2, FalconFPR[] falconFPRArr2, int i3, FalconFPR[] falconFPRArr3, int i4, int i5) {
        int i6 = 1 << i5;
        int i7 = i6 >> 1;
        int i8 = i6 >> 2;
        falconFPRArr[i2] = falconFPRArr2[i3];
        falconFPRArr[i2 + i7] = falconFPRArr3[i4];
        for (int i9 = 0; i9 < i8; i9++) {
            int i10 = i3 + i9;
            FalconFPR falconFPR = falconFPRArr2[i10];
            FalconFPR falconFPR2 = falconFPRArr2[i10 + i8];
            int i11 = i4 + i9;
            FalconFPR falconFPR3 = falconFPRArr3[i11];
            FalconFPR falconFPR4 = falconFPRArr3[i11 + i8];
            FalconFPR[] falconFPRArr4 = this.fpr.fpr_gm_tab;
            int i12 = (i9 + i7) << 1;
            ComplexNumberWrapper complexNumberWrapperFPC_MUL = FPC_MUL(falconFPR3, falconFPR4, falconFPRArr4[i12], falconFPRArr4[i12 + 1]);
            FalconFPR falconFPR5 = complexNumberWrapperFPC_MUL.re;
            FalconFPR falconFPR6 = complexNumberWrapperFPC_MUL.im;
            ComplexNumberWrapper complexNumberWrapperFPC_ADD = FPC_ADD(falconFPR, falconFPR2, falconFPR5, falconFPR6);
            FalconFPR falconFPR7 = complexNumberWrapperFPC_ADD.re;
            FalconFPR falconFPR8 = complexNumberWrapperFPC_ADD.im;
            int i13 = (i9 << 1) + i2;
            falconFPRArr[i13] = falconFPR7;
            falconFPRArr[i13 + i7] = falconFPR8;
            ComplexNumberWrapper complexNumberWrapperFPC_SUB = FPC_SUB(falconFPR, falconFPR2, falconFPR5, falconFPR6);
            FalconFPR falconFPR9 = complexNumberWrapperFPC_SUB.re;
            FalconFPR falconFPR10 = complexNumberWrapperFPC_SUB.im;
            int i14 = i13 + 1;
            falconFPRArr[i14] = falconFPR9;
            falconFPRArr[i14 + i7] = falconFPR10;
        }
    }

    public void poly_mul_autoadj_fft(FalconFPR[] falconFPRArr, int i2, FalconFPR[] falconFPRArr2, int i3, int i4) {
        int i5 = (1 << i4) >> 1;
        for (int i6 = 0; i6 < i5; i6++) {
            int i7 = i2 + i6;
            int i8 = i3 + i6;
            falconFPRArr[i7] = this.fpr.fpr_mul(falconFPRArr[i7], falconFPRArr2[i8]);
            int i9 = i7 + i5;
            falconFPRArr[i9] = this.fpr.fpr_mul(falconFPRArr[i9], falconFPRArr2[i8]);
        }
    }

    public void poly_mul_fft(FalconFPR[] falconFPRArr, int i2, FalconFPR[] falconFPRArr2, int i3, int i4) {
        int i5 = (1 << i4) >> 1;
        for (int i6 = 0; i6 < i5; i6++) {
            int i7 = i2 + i6;
            int i8 = i7 + i5;
            int i9 = i3 + i6;
            ComplexNumberWrapper complexNumberWrapperFPC_MUL = FPC_MUL(falconFPRArr[i7], falconFPRArr[i8], falconFPRArr2[i9], falconFPRArr2[i9 + i5]);
            falconFPRArr[i7] = complexNumberWrapperFPC_MUL.re;
            falconFPRArr[i8] = complexNumberWrapperFPC_MUL.im;
        }
    }

    public void poly_muladj_fft(FalconFPR[] falconFPRArr, int i2, FalconFPR[] falconFPRArr2, int i3, int i4) {
        int i5 = (1 << i4) >> 1;
        for (int i6 = 0; i6 < i5; i6++) {
            int i7 = i2 + i6;
            int i8 = i7 + i5;
            int i9 = i3 + i6;
            ComplexNumberWrapper complexNumberWrapperFPC_MUL = FPC_MUL(falconFPRArr[i7], falconFPRArr[i8], falconFPRArr2[i9], this.fpr.fpr_neg(falconFPRArr2[i9 + i5]));
            falconFPRArr[i7] = complexNumberWrapperFPC_MUL.re;
            falconFPRArr[i8] = complexNumberWrapperFPC_MUL.im;
        }
    }

    public void poly_mulconst(FalconFPR[] falconFPRArr, int i2, FalconFPR falconFPR, int i3) {
        int i4 = 1 << i3;
        for (int i5 = 0; i5 < i4; i5++) {
            int i6 = i2 + i5;
            falconFPRArr[i6] = this.fpr.fpr_mul(falconFPRArr[i6], falconFPR);
        }
    }

    public void poly_mulselfadj_fft(FalconFPR[] falconFPRArr, int i2, int i3) {
        int i4 = (1 << i3) >> 1;
        for (int i5 = 0; i5 < i4; i5++) {
            int i6 = i2 + i5;
            FalconFPR falconFPR = falconFPRArr[i6];
            int i7 = i6 + i4;
            FalconFPR falconFPR2 = falconFPRArr[i7];
            FPREngine fPREngine = this.fpr;
            falconFPRArr[i6] = fPREngine.fpr_add(fPREngine.fpr_sqr(falconFPR), this.fpr.fpr_sqr(falconFPR2));
            falconFPRArr[i7] = this.fpr.fpr_zero;
        }
    }

    public void poly_neg(FalconFPR[] falconFPRArr, int i2, int i3) {
        int i4 = 1 << i3;
        for (int i5 = 0; i5 < i4; i5++) {
            int i6 = i2 + i5;
            falconFPRArr[i6] = this.fpr.fpr_neg(falconFPRArr[i6]);
        }
    }

    public void poly_split_fft(FalconFPR[] falconFPRArr, int i2, FalconFPR[] falconFPRArr2, int i3, FalconFPR[] falconFPRArr3, int i4, int i5) {
        int i6 = 1 << i5;
        int i7 = i6 >> 1;
        int i8 = i6 >> 2;
        falconFPRArr[i2] = falconFPRArr3[i4];
        falconFPRArr2[i3] = falconFPRArr3[i4 + i7];
        for (int i9 = 0; i9 < i8; i9++) {
            int i10 = i4 + (i9 << 1);
            FalconFPR falconFPR = falconFPRArr3[i10];
            FalconFPR falconFPR2 = falconFPRArr3[i10 + i7];
            int i11 = i10 + 1;
            FalconFPR falconFPR3 = falconFPRArr3[i11];
            FalconFPR falconFPR4 = falconFPRArr3[i11 + i7];
            ComplexNumberWrapper complexNumberWrapperFPC_ADD = FPC_ADD(falconFPR, falconFPR2, falconFPR3, falconFPR4);
            FalconFPR falconFPR5 = complexNumberWrapperFPC_ADD.re;
            FalconFPR falconFPR6 = complexNumberWrapperFPC_ADD.im;
            int i12 = i2 + i9;
            falconFPRArr[i12] = this.fpr.fpr_half(falconFPR5);
            falconFPRArr[i12 + i8] = this.fpr.fpr_half(falconFPR6);
            ComplexNumberWrapper complexNumberWrapperFPC_SUB = FPC_SUB(falconFPR, falconFPR2, falconFPR3, falconFPR4);
            FalconFPR falconFPR7 = complexNumberWrapperFPC_SUB.re;
            FalconFPR falconFPR8 = complexNumberWrapperFPC_SUB.im;
            FPREngine fPREngine = this.fpr;
            FalconFPR[] falconFPRArr4 = fPREngine.fpr_gm_tab;
            int i13 = (i9 + i7) << 1;
            ComplexNumberWrapper complexNumberWrapperFPC_MUL = FPC_MUL(falconFPR7, falconFPR8, falconFPRArr4[i13], fPREngine.fpr_neg(falconFPRArr4[i13 + 1]));
            FalconFPR falconFPR9 = complexNumberWrapperFPC_MUL.re;
            FalconFPR falconFPR10 = complexNumberWrapperFPC_MUL.im;
            int i14 = i3 + i9;
            falconFPRArr2[i14] = this.fpr.fpr_half(falconFPR9);
            falconFPRArr2[i14 + i8] = this.fpr.fpr_half(falconFPR10);
        }
    }

    public void poly_sub(FalconFPR[] falconFPRArr, int i2, FalconFPR[] falconFPRArr2, int i3, int i4) {
        int i5 = 1 << i4;
        for (int i6 = 0; i6 < i5; i6++) {
            int i7 = i2 + i6;
            falconFPRArr[i7] = this.fpr.fpr_sub(falconFPRArr[i7], falconFPRArr2[i3 + i6]);
        }
    }
}
