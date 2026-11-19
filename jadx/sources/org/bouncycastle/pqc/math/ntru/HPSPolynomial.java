package org.bouncycastle.pqc.math.ntru;

import org.bouncycastle.crypto.hpke.HPKE;
import org.bouncycastle.pqc.math.ntru.parameters.NTRUHPSParameterSet;

/* JADX INFO: loaded from: classes5.dex */
public class HPSPolynomial extends Polynomial {
    public HPSPolynomial(NTRUHPSParameterSet nTRUHPSParameterSet) {
        super(nTRUHPSParameterSet);
    }

    @Override // org.bouncycastle.pqc.math.ntru.Polynomial
    public void lift(Polynomial polynomial) {
        short[] sArr = this.coeffs;
        System.arraycopy(polynomial.coeffs, 0, sArr, 0, sArr.length);
        z3ToZq();
    }

    @Override // org.bouncycastle.pqc.math.ntru.Polynomial
    public void sqFromBytes(byte[] bArr) {
        int length = this.coeffs.length;
        int i2 = 0;
        while (i2 < this.params.packDegree() / 8) {
            short[] sArr = this.coeffs;
            int i3 = i2 * 8;
            int i4 = i2 * 11;
            int i5 = bArr[i4] & 255;
            byte b2 = bArr[i4 + 1];
            sArr[i3] = (short) (i5 | ((((short) (b2 & 255)) & 7) << 8));
            byte b3 = bArr[i4 + 2];
            sArr[i3 + 1] = (short) (((b2 & 255) >>> 3) | ((((short) (b3 & 255)) & 63) << 5));
            int i6 = ((b3 & 255) >>> 6) | ((((short) (bArr[i4 + 3] & 255)) & 255) << 2);
            byte b4 = bArr[i4 + 4];
            sArr[i3 + 2] = (short) (i6 | ((((short) (b4 & 255)) & 1) << 10));
            int i7 = (b4 & 255) >>> 1;
            byte b5 = bArr[i4 + 5];
            sArr[i3 + 3] = (short) (i7 | ((((short) (b5 & 255)) & 15) << 7));
            int i8 = (b5 & 255) >>> 4;
            byte b6 = bArr[i4 + 6];
            sArr[i3 + 4] = (short) (((((short) (b6 & 255)) & 127) << 4) | i8);
            int i9 = ((b6 & 255) >>> 7) | ((((short) (bArr[i4 + 7] & 255)) & 255) << 1);
            byte b7 = bArr[i4 + 8];
            sArr[i3 + 5] = (short) (i9 | ((((short) (b7 & 255)) & 3) << 9));
            byte b8 = bArr[i4 + 9];
            sArr[i3 + 6] = (short) (((b7 & 255) >>> 2) | ((((short) (b8 & 255)) & 31) << 6));
            sArr[i3 + 7] = (short) (((b8 & 255) >>> 5) | ((((short) (bArr[i4 + 10] & 255)) & 255) << 3));
            i2++;
        }
        int iPackDegree = this.params.packDegree() & 7;
        if (iPackDegree == 2) {
            short[] sArr2 = this.coeffs;
            int i10 = i2 * 8;
            int i11 = i2 * 11;
            int i12 = bArr[i11] & 255;
            byte b9 = bArr[i11 + 1];
            sArr2[i10] = (short) (i12 | ((((short) (b9 & 255)) & 7) << 8));
            sArr2[i10 + 1] = (short) (((((short) (bArr[i11 + 2] & 255)) & 63) << 5) | ((b9 & 255) >>> 3));
        } else if (iPackDegree == 4) {
            short[] sArr3 = this.coeffs;
            int i13 = i2 * 8;
            int i14 = i2 * 11;
            int i15 = bArr[i14] & 255;
            byte b10 = bArr[i14 + 1];
            sArr3[i13] = (short) (i15 | ((((short) (b10 & 255)) & 7) << 8));
            byte b11 = bArr[i14 + 2];
            sArr3[i13 + 1] = (short) (((b10 & 255) >>> 3) | ((((short) (b11 & 255)) & 63) << 5));
            int i16 = ((((short) (bArr[i14 + 3] & 255)) & 255) << 2) | ((b11 & 255) >>> 6);
            byte b12 = bArr[i14 + 4];
            sArr3[i13 + 2] = (short) (i16 | ((((short) (b12 & 255)) & 1) << 10));
            sArr3[i13 + 3] = (short) (((((short) (bArr[i14 + 5] & 255)) & 15) << 7) | ((b12 & 255) >>> 1));
        }
        this.coeffs[length - 1] = 0;
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
            int i5 = i3 * 11;
            short s = sArr[0];
            bArr[i5] = (byte) (s & 255);
            short s2 = sArr[1];
            bArr[i5 + 1] = (byte) ((s >>> 8) | ((s2 & 31) << 3));
            int i6 = s2 >>> 5;
            short s3 = sArr[2];
            bArr[i5 + 2] = (byte) (i6 | ((s3 & 3) << 6));
            bArr[i5 + 3] = (byte) ((s3 >>> 2) & 255);
            int i7 = s3 >>> 10;
            short s4 = sArr[3];
            bArr[i5 + 4] = (byte) (i7 | ((s4 & 127) << 1));
            short s5 = sArr[4];
            bArr[i5 + 5] = (byte) ((s4 >>> 7) | ((s5 & 15) << 4));
            short s6 = sArr[5];
            bArr[i5 + 6] = (byte) ((s5 >>> 4) | ((s6 & 1) << 7));
            bArr[i5 + 7] = (byte) ((s6 >>> 1) & 255);
            int i8 = s6 >>> 9;
            short s7 = sArr[6];
            bArr[i5 + 8] = (byte) (i8 | ((s7 & 63) << 2));
            short s8 = sArr[7];
            bArr[i5 + 9] = (byte) ((s7 >>> 6) | ((s8 & 7) << 5));
            bArr[i5 + 10] = (byte) (s8 >>> 3);
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
        int iPackDegree = this.params.packDegree() & 7;
        if (iPackDegree == 2) {
            int i11 = i3 * 11;
            short s9 = sArr[0];
            bArr[i11] = (byte) (s9 & 255);
            short s10 = sArr[1];
            bArr[i11 + 1] = (byte) ((s9 >>> 8) | ((s10 & 31) << 3));
            bArr[i11 + 2] = (byte) ((s10 >>> 5) | ((sArr[2] & 3) << 6));
            return bArr;
        }
        if (iPackDegree != 4) {
            return bArr;
        }
        int i12 = i3 * 11;
        short s11 = sArr[0];
        bArr[i12] = (byte) (s11 & 255);
        short s12 = sArr[1];
        bArr[i12 + 1] = (byte) ((s11 >>> 8) | ((s12 & 31) << 3));
        short s13 = sArr[2];
        bArr[i12 + 2] = (byte) ((s12 >>> 5) | ((s13 & 3) << 6));
        bArr[i12 + 3] = (byte) ((s13 >>> 2) & 255);
        int i13 = s13 >>> 10;
        short s14 = sArr[3];
        bArr[i12 + 4] = (byte) (i13 | ((s14 & 127) << 1));
        bArr[i12 + 5] = (byte) ((s14 >>> 7) | ((sArr[4] & 15) << 4));
        return bArr;
    }
}
