package org.bouncycastle.pqc.crypto.ntru;

import com.batch.android.x0.h;
import defpackage.md;
import org.bouncycastle.crypto.hpke.HPKE;
import org.bouncycastle.pqc.math.ntru.HPSPolynomial;
import org.bouncycastle.pqc.math.ntru.HRSSPolynomial;
import org.bouncycastle.pqc.math.ntru.Polynomial;
import org.bouncycastle.pqc.math.ntru.parameters.NTRUHPSParameterSet;
import org.bouncycastle.pqc.math.ntru.parameters.NTRUHRSSParameterSet;
import org.bouncycastle.pqc.math.ntru.parameters.NTRUParameterSet;
import org.bouncycastle.util.Arrays;

/* JADX INFO: loaded from: classes5.dex */
class NTRUSampling {
    private final NTRUParameterSet params;

    public NTRUSampling(NTRUParameterSet nTRUParameterSet) {
        this.params = nTRUParameterSet;
    }

    private static int mod3(int i2) {
        return i2 % 3;
    }

    public PolynomialPair sampleFg(byte[] bArr) {
        NTRUParameterSet nTRUParameterSet = this.params;
        if (nTRUParameterSet instanceof NTRUHRSSParameterSet) {
            return new PolynomialPair(sampleIidPlus(Arrays.copyOfRange(bArr, 0, nTRUParameterSet.sampleIidBytes())), sampleIidPlus(Arrays.copyOfRange(bArr, this.params.sampleIidBytes(), bArr.length)));
        }
        if (nTRUParameterSet instanceof NTRUHPSParameterSet) {
            return new PolynomialPair((HPSPolynomial) sampleIid(Arrays.copyOfRange(bArr, 0, nTRUParameterSet.sampleIidBytes())), sampleFixedType(Arrays.copyOfRange(bArr, this.params.sampleIidBytes(), bArr.length)));
        }
        md.n("Invalid polynomial type");
        return null;
    }

    public HPSPolynomial sampleFixedType(byte[] bArr) {
        int i2;
        int i3;
        int iN = this.params.n();
        int iWeight = ((NTRUHPSParameterSet) this.params).weight();
        HPSPolynomial hPSPolynomial = new HPSPolynomial((NTRUHPSParameterSet) this.params);
        int i4 = iN - 1;
        int[] iArr = new int[i4];
        int i5 = 0;
        while (true) {
            i2 = i4 / 4;
            if (i5 >= i2) {
                break;
            }
            int i6 = i5 * 4;
            int i7 = i5 * 15;
            iArr[i6] = ((bArr[i7] & 255) << 2) + ((bArr[i7 + 1] & 255) << 10) + ((bArr[i7 + 2] & 255) << 18) + ((bArr[i7 + 3] & 255) << 26);
            iArr[i6 + 1] = ((bArr[(i5 * 3) + 15] & h.a.f24176e) >> 4) + ((bArr[i7 + 4] & 255) << 4) + ((bArr[i7 + 5] & 255) << 12) + ((bArr[i7 + 6] & 255) << 20) + ((bArr[i7 + 7] & 255) << 28);
            int i8 = ((bArr[(i5 * 7) + 15] & 240) >> 2) + ((bArr[i7 + 8] & 255) << 6) + ((bArr[i7 + 9] & 255) << 14) + ((bArr[i7 + 10] & 255) << 22);
            byte b2 = bArr[i7 + 11];
            iArr[i6 + 2] = i8 + ((b2 & 255) << 30);
            iArr[i6 + 3] = (b2 & 252) + ((bArr[i7 + 12] & 255) << 8) + ((bArr[i7 + 13] & 255) << 16) + ((bArr[i7 + 14] & 255) << 24);
            i5++;
        }
        int i9 = i2 * 4;
        if (i4 > i9) {
            int i10 = i2 * 15;
            iArr[i9] = ((bArr[i10] & 255) << 2) + ((bArr[i10 + 1] & 255) << 10) + ((bArr[i10 + 2] & 255) << 18) + ((bArr[i10 + 3] & 255) << 26);
            iArr[i9 + 1] = ((bArr[(i2 * 3) + 15] & h.a.f24176e) >> 4) + ((bArr[i10 + 4] & 255) << 4) + ((bArr[i10 + 5] & 255) << 12) + ((bArr[i10 + 6] & 255) << 20) + ((bArr[i10 + 7] & 255) << 28);
        }
        int i11 = 0;
        while (true) {
            i3 = iWeight / 2;
            if (i11 >= i3) {
                break;
            }
            iArr[i11] = iArr[i11] | 1;
            i11++;
        }
        while (i3 < iWeight) {
            iArr[i3] = iArr[i3] | 2;
            i3++;
        }
        java.util.Arrays.sort(iArr);
        int i12 = 0;
        while (true) {
            short[] sArr = hPSPolynomial.coeffs;
            if (i12 >= i4) {
                sArr[i4] = 0;
                return hPSPolynomial;
            }
            sArr[i12] = (short) (iArr[i12] & 3);
            i12++;
        }
    }

    public Polynomial sampleIid(byte[] bArr) {
        Polynomial polynomialCreatePolynomial = this.params.createPolynomial();
        for (int i2 = 0; i2 < this.params.n() - 1; i2++) {
            polynomialCreatePolynomial.coeffs[i2] = (short) mod3(bArr[i2] & 255);
        }
        polynomialCreatePolynomial.coeffs[this.params.n() - 1] = 0;
        return polynomialCreatePolynomial;
    }

    public HRSSPolynomial sampleIidPlus(byte[] bArr) {
        int i2;
        int iN = this.params.n();
        HRSSPolynomial hRSSPolynomial = (HRSSPolynomial) sampleIid(bArr);
        int i3 = 0;
        while (true) {
            i2 = iN - 1;
            if (i3 >= i2) {
                break;
            }
            short[] sArr = hRSSPolynomial.coeffs;
            short s = sArr[i3];
            sArr[i3] = (short) (s | (-(s >>> 1)));
            i3++;
        }
        int i4 = 0;
        short s2 = 0;
        while (i4 < i2) {
            short[] sArr2 = hRSSPolynomial.coeffs;
            int i5 = i4 + 1;
            s2 = (short) (s2 + ((short) (sArr2[i5] * sArr2[i4])));
            i4 = i5;
        }
        short s3 = (short) ((-((s2 & HPKE.aead_EXPORT_ONLY) >>> 15)) | 1);
        for (int i6 = 0; i6 < i2; i6 += 2) {
            short[] sArr3 = hRSSPolynomial.coeffs;
            sArr3[i6] = (short) (sArr3[i6] * s3);
        }
        for (int i7 = 0; i7 < i2; i7++) {
            short[] sArr4 = hRSSPolynomial.coeffs;
            short s4 = sArr4[i7];
            sArr4[i7] = (short) ((((s4 & HPKE.aead_EXPORT_ONLY) >>> 15) ^ (s4 & HPKE.aead_EXPORT_ONLY)) & 3);
        }
        return hRSSPolynomial;
    }

    public PolynomialPair sampleRm(byte[] bArr) {
        NTRUParameterSet nTRUParameterSet = this.params;
        if (nTRUParameterSet instanceof NTRUHRSSParameterSet) {
            return new PolynomialPair((HRSSPolynomial) sampleIid(Arrays.copyOfRange(bArr, 0, nTRUParameterSet.sampleIidBytes())), (HRSSPolynomial) sampleIid(Arrays.copyOfRange(bArr, this.params.sampleIidBytes(), bArr.length)));
        }
        if (nTRUParameterSet instanceof NTRUHPSParameterSet) {
            return new PolynomialPair((HPSPolynomial) sampleIid(Arrays.copyOfRange(bArr, 0, nTRUParameterSet.sampleIidBytes())), sampleFixedType(Arrays.copyOfRange(bArr, this.params.sampleIidBytes(), bArr.length)));
        }
        md.n("Invalid polynomial type");
        return null;
    }
}
