package org.bouncycastle.pqc.math.ntru;

import org.bouncycastle.crypto.hpke.HPKE;
import org.bouncycastle.pqc.math.ntru.parameters.NTRUHPSParameterSet;

/* JADX INFO: loaded from: classes5.dex */
public class HPS4096Polynomial extends HPSPolynomial {
    public HPS4096Polynomial(NTRUHPSParameterSet nTRUHPSParameterSet) {
        super(nTRUHPSParameterSet);
    }

    @Override // org.bouncycastle.pqc.math.ntru.HPSPolynomial, org.bouncycastle.pqc.math.ntru.Polynomial
    public void sqFromBytes(byte[] bArr) {
        int i2 = 0;
        while (true) {
            int iPackDegree = this.params.packDegree() / 2;
            short[] sArr = this.coeffs;
            if (i2 >= iPackDegree) {
                sArr[this.params.n() - 1] = 0;
                return;
            }
            int i3 = i2 * 2;
            int i4 = i2 * 3;
            int i5 = bArr[i4] & 255;
            byte b2 = bArr[i4 + 1];
            sArr[i3] = (short) (i5 | ((((short) (b2 & 255)) & 15) << 8));
            sArr[i3 + 1] = (short) (((((short) (bArr[i4 + 2] & 255)) & 255) << 4) | ((b2 & 255) >>> 4));
            i2++;
        }
    }

    @Override // org.bouncycastle.pqc.math.ntru.HPSPolynomial, org.bouncycastle.pqc.math.ntru.Polynomial
    public byte[] sqToBytes(int i2) {
        byte[] bArr = new byte[i2];
        int iQ = this.params.q();
        for (int i3 = 0; i3 < this.params.packDegree() / 2; i3++) {
            int i4 = i3 * 3;
            int i5 = i3 * 2;
            bArr[i4] = (byte) (Polynomial.modQ(this.coeffs[i5] & HPKE.aead_EXPORT_ONLY, iQ) & 255);
            int iModQ = Polynomial.modQ(this.coeffs[i5] & HPKE.aead_EXPORT_ONLY, iQ) >>> 8;
            int i6 = i5 + 1;
            bArr[i4 + 1] = (byte) (iModQ | ((Polynomial.modQ(this.coeffs[i6] & HPKE.aead_EXPORT_ONLY, iQ) & 15) << 4));
            bArr[i4 + 2] = (byte) (Polynomial.modQ(this.coeffs[i6] & HPKE.aead_EXPORT_ONLY, iQ) >>> 4);
        }
        return bArr;
    }
}
