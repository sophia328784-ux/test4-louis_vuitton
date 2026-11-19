package org.bouncycastle.pqc.math.ntru;

import org.bouncycastle.crypto.hpke.HPKE;
import org.bouncycastle.pqc.math.ntru.parameters.NTRUHRSSParameterSet;

/* JADX INFO: loaded from: classes5.dex */
public class HRSSPolynomial extends Polynomial {
    public HRSSPolynomial(NTRUHRSSParameterSet nTRUHRSSParameterSet) {
        super(nTRUHRSSParameterSet);
    }

    @Override // org.bouncycastle.pqc.math.ntru.Polynomial
    public void lift(Polynomial polynomial) {
        short[] sArr;
        int length = this.coeffs.length;
        Polynomial polynomialCreatePolynomial = this.params.createPolynomial();
        short s = (short) (3 - (length % 3));
        short[] sArr2 = polynomialCreatePolynomial.coeffs;
        short[] sArr3 = polynomial.coeffs;
        int i2 = 0;
        int i3 = 2 - s;
        int i4 = sArr3[0] * i3;
        short s2 = sArr3[1];
        short s3 = sArr3[2];
        sArr2[0] = (short) ((s3 * s) + i4);
        sArr2[1] = (short) (s2 * i3);
        sArr2[2] = (short) (s3 * i3);
        int i5 = 3;
        short s4 = 0;
        while (true) {
            sArr = polynomialCreatePolynomial.coeffs;
            if (i5 >= length) {
                break;
            }
            short s5 = sArr[0];
            short[] sArr4 = polynomial.coeffs;
            sArr[0] = (short) ((((s * 2) + s4) * sArr4[i5]) + s5);
            int i6 = s4 + s;
            sArr[1] = (short) ((sArr4[i5] * i6) + sArr[1]);
            sArr[2] = (short) ((sArr4[i5] * s4) + sArr[2]);
            s4 = (short) (i6 % 3);
            i5++;
        }
        short s6 = sArr[1];
        short[] sArr5 = polynomial.coeffs;
        short s7 = sArr5[0];
        int i7 = s + s4;
        sArr[1] = (short) ((s7 * i7) + s6);
        short s8 = (short) ((s7 * s4) + sArr[2]);
        sArr[2] = s8;
        sArr[2] = (short) ((sArr5[1] * i7) + s8);
        for (int i8 = 3; i8 < length; i8++) {
            short[] sArr6 = polynomialCreatePolynomial.coeffs;
            short s9 = sArr6[i8 - 3];
            short[] sArr7 = polynomial.coeffs;
            sArr6[i8] = (short) (((sArr7[i8] + sArr7[i8 - 1] + sArr7[i8 - 2]) * 2) + s9);
        }
        polynomialCreatePolynomial.mod3PhiN();
        polynomialCreatePolynomial.z3ToZq();
        this.coeffs[0] = (short) (-polynomialCreatePolynomial.coeffs[0]);
        while (i2 < length - 1) {
            short[] sArr8 = this.coeffs;
            int i9 = i2 + 1;
            short[] sArr9 = polynomialCreatePolynomial.coeffs;
            sArr8[i9] = (short) (sArr9[i2] - sArr9[i9]);
            i2 = i9;
        }
    }

    @Override // org.bouncycastle.pqc.math.ntru.Polynomial
    public void sqFromBytes(byte[] bArr) {
        int i2 = 0;
        while (i2 < this.params.packDegree() / 8) {
            short[] sArr = this.coeffs;
            int i3 = i2 * 8;
            int i4 = i2 * 13;
            int i5 = bArr[i4] & 255;
            byte b2 = bArr[i4 + 1];
            sArr[i3] = (short) (i5 | ((((short) (b2 & 255)) & 31) << 8));
            int i6 = ((b2 & 255) >>> 5) | (((short) (bArr[i4 + 2] & 255)) << 3);
            byte b3 = bArr[i4 + 3];
            sArr[i3 + 1] = (short) (i6 | ((((short) (b3 & 255)) & 3) << 11));
            int i7 = (b3 & 255) >>> 2;
            byte b4 = bArr[i4 + 4];
            sArr[i3 + 2] = (short) (i7 | ((((short) (b4 & 255)) & 127) << 6));
            int i8 = ((b4 & 255) >>> 7) | (((short) (bArr[i4 + 5] & 255)) << 1);
            byte b5 = bArr[i4 + 6];
            sArr[i3 + 3] = (short) (i8 | ((((short) (b5 & 255)) & 15) << 9));
            int i9 = (((short) (bArr[i4 + 7] & 255)) << 4) | ((b5 & 255) >>> 4);
            byte b6 = bArr[i4 + 8];
            sArr[i3 + 4] = (short) (i9 | ((((short) (b6 & 255)) & 1) << 12));
            int i10 = (b6 & 255) >>> 1;
            byte b7 = bArr[i4 + 9];
            sArr[i3 + 5] = (short) (i10 | ((((short) (b7 & 255)) & 63) << 7));
            int i11 = (((short) (bArr[i4 + 10] & 255)) << 2) | ((b7 & 255) >>> 6);
            byte b8 = bArr[i4 + 11];
            sArr[i3 + 6] = (short) (i11 | ((((short) (b8 & 255)) & 7) << 10));
            sArr[i3 + 7] = (short) (((b8 & 255) >>> 3) | (((short) (bArr[i4 + 12] & 255)) << 5));
            i2++;
        }
        int iPackDegree = this.params.packDegree() & 7;
        if (iPackDegree == 2) {
            short[] sArr2 = this.coeffs;
            int i12 = i2 * 8;
            int i13 = i2 * 13;
            int i14 = bArr[i13] & 255;
            byte b9 = bArr[i13 + 1];
            sArr2[i12] = (short) (i14 | ((((short) (b9 & 255)) & 31) << 8));
            sArr2[i12 + 1] = (short) (((((short) (bArr[i13 + 3] & 255)) & 3) << 11) | ((b9 & 255) >>> 5) | (((short) (bArr[i13 + 2] & 255)) << 3));
        } else if (iPackDegree == 4) {
            short[] sArr3 = this.coeffs;
            int i15 = i2 * 8;
            int i16 = i2 * 13;
            int i17 = bArr[i16] & 255;
            byte b10 = bArr[i16 + 1];
            sArr3[i15] = (short) (i17 | ((((short) (b10 & 255)) & 31) << 8));
            int i18 = ((b10 & 255) >>> 5) | (((short) (bArr[i16 + 2] & 255)) << 3);
            byte b11 = bArr[i16 + 3];
            sArr3[i15 + 1] = (short) (i18 | ((((short) (b11 & 255)) & 3) << 11));
            byte b12 = bArr[i16 + 4];
            sArr3[i15 + 2] = (short) (((b11 & 255) >>> 2) | ((((short) (b12 & 255)) & 127) << 6));
            sArr3[i15 + 3] = (short) (((((short) (bArr[i16 + 6] & 255)) & 15) << 9) | ((b12 & 255) >>> 7) | (((short) (bArr[i16 + 5] & 255)) << 1));
        }
        this.coeffs[this.params.n() - 1] = 0;
    }

    @Override // org.bouncycastle.pqc.math.ntru.Polynomial
    public byte[] sqToBytes(int i2) {
        byte[] bArr = new byte[i2];
        short[] sArr = new short[8];
        int i3 = 0;
        while (i3 < this.params.packDegree() / 8) {
            for (int i4 = 0; i4 < 8; i4++) {
                sArr[i4] = (short) Polynomial.modQ(this.coeffs[(i3 * 8) + i4] & HPKE.aead_EXPORT_ONLY, this.params.q());
            }
            int i5 = i3 * 13;
            short s = sArr[0];
            bArr[i5] = (byte) (s & 255);
            short s2 = sArr[1];
            bArr[i5 + 1] = (byte) ((s >>> 8) | ((s2 & 7) << 5));
            bArr[i5 + 2] = (byte) ((s2 >>> 3) & 255);
            int i6 = s2 >>> 11;
            short s3 = sArr[2];
            bArr[i5 + 3] = (byte) (i6 | ((s3 & 63) << 2));
            short s4 = sArr[3];
            bArr[i5 + 4] = (byte) ((s3 >>> 6) | ((s4 & 1) << 7));
            bArr[i5 + 5] = (byte) ((s4 >>> 1) & 255);
            int i7 = s4 >>> 9;
            short s5 = sArr[4];
            bArr[i5 + 6] = (byte) (i7 | ((s5 & 15) << 4));
            bArr[i5 + 7] = (byte) ((s5 >>> 4) & 255);
            short s6 = sArr[5];
            bArr[i5 + 8] = (byte) ((s5 >>> 12) | ((s6 & 127) << 1));
            int i8 = s6 >>> 7;
            short s7 = sArr[6];
            bArr[i5 + 9] = (byte) (i8 | ((s7 & 3) << 6));
            bArr[i5 + 10] = (byte) ((s7 >>> 2) & 255);
            short s8 = sArr[7];
            bArr[i5 + 11] = (byte) ((s7 >>> 10) | ((s8 & 31) << 3));
            bArr[i5 + 12] = (byte) (s8 >>> 5);
            i3++;
        }
        int i9 = 0;
        while (true) {
            int i10 = i3 * 8;
            if (i9 >= this.params.packDegree() - i10) {
                break;
            }
            sArr[i9] = (short) Polynomial.modQ(this.coeffs[i10 + i9] & HPKE.aead_EXPORT_ONLY, this.params.q());
            i9++;
        }
        while (i9 < 8) {
            sArr[i9] = 0;
            i9++;
        }
        int iPackDegree = this.params.packDegree() - ((this.params.packDegree() / 8) * 8);
        if (iPackDegree != 2) {
            if (iPackDegree != 4) {
                return bArr;
            }
            int i11 = i3 * 13;
            short s9 = sArr[0];
            bArr[i11] = (byte) (s9 & 255);
            short s10 = sArr[1];
            bArr[i11 + 1] = (byte) ((s9 >>> 8) | ((s10 & 7) << 5));
            bArr[i11 + 2] = (byte) ((s10 >>> 3) & 255);
            int i12 = s10 >>> 11;
            short s11 = sArr[2];
            bArr[i11 + 3] = (byte) (i12 | ((s11 & 63) << 2));
            int i13 = s11 >>> 6;
            short s12 = sArr[3];
            bArr[i11 + 4] = (byte) (i13 | ((s12 & 1) << 7));
            bArr[i11 + 5] = (byte) ((s12 >>> 1) & 255);
            bArr[i11 + 6] = (byte) ((s12 >>> 9) | ((sArr[4] & 15) << 4));
        }
        int i14 = i3 * 13;
        short s13 = sArr[0];
        bArr[i14] = (byte) (s13 & 255);
        short s14 = sArr[1];
        bArr[i14 + 1] = (byte) ((s13 >>> 8) | ((s14 & 7) << 5));
        bArr[i14 + 2] = (byte) ((s14 >>> 3) & 255);
        bArr[i14 + 3] = (byte) ((s14 >>> 11) | ((sArr[2] & 63) << 2));
        return bArr;
    }
}
