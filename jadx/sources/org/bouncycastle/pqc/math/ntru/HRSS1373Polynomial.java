package org.bouncycastle.pqc.math.ntru;

import org.bouncycastle.crypto.hpke.HPKE;
import org.bouncycastle.pqc.math.ntru.parameters.NTRUHRSSParameterSet;

/* JADX INFO: loaded from: classes5.dex */
public class HRSS1373Polynomial extends HRSSPolynomial {
    private static final int K = 86;
    private static final int L = 1376;
    private static final int M = 344;

    public HRSS1373Polynomial(NTRUHRSSParameterSet nTRUHRSSParameterSet) {
        super(nTRUHRSSParameterSet);
    }

    @Override // org.bouncycastle.pqc.math.ntru.HRSSPolynomial, org.bouncycastle.pqc.math.ntru.Polynomial
    public void sqFromBytes(byte[] bArr) {
        int i2 = 0;
        while (i2 < this.params.packDegree() / 4) {
            short[] sArr = this.coeffs;
            int i3 = i2 * 4;
            int i4 = i2 * 7;
            int i5 = bArr[i4] & 255;
            byte b2 = bArr[i4 + 1];
            sArr[i3] = (short) (i5 | ((((short) (b2 & 255)) & 63) << 8));
            int i6 = ((b2 & 255) >>> 6) | (((short) (bArr[i4 + 2] & 255)) << 2);
            byte b3 = bArr[i4 + 3];
            sArr[i3 + 1] = (short) (i6 | (((short) (b3 & 15)) << 10));
            int i7 = ((b3 & 255) >>> 4) | ((((short) (bArr[i4 + 4] & 255)) & 255) << 4);
            byte b4 = bArr[i4 + 5];
            sArr[i3 + 2] = (short) (i7 | (((short) (b4 & 3)) << 12));
            sArr[i3 + 3] = (short) (((b4 & 255) >>> 2) | (((short) (bArr[i4 + 6] & 255)) << 6));
            i2++;
        }
        if (this.params.packDegree() % 4 == 2) {
            short[] sArr2 = this.coeffs;
            int i8 = i2 * 4;
            int i9 = i2 * 7;
            byte b5 = bArr[i9];
            byte b6 = bArr[i9 + 1];
            sArr2[i8] = (short) (b5 | ((b6 & 63) << 8));
            sArr2[i8 + 1] = (short) (((bArr[i9 + 3] & 15) << 10) | (bArr[i9 + 2] << 2) | (b6 >>> 6));
        }
        this.coeffs[this.params.n() - 1] = 0;
    }

    @Override // org.bouncycastle.pqc.math.ntru.HRSSPolynomial, org.bouncycastle.pqc.math.ntru.Polynomial
    public byte[] sqToBytes(int i2) {
        byte[] bArr = new byte[i2];
        short[] sArr = new short[4];
        int i3 = 0;
        while (i3 < this.params.packDegree() / 4) {
            for (int i4 = 0; i4 < 4; i4++) {
                sArr[i4] = (short) Polynomial.modQ(this.coeffs[(i3 * 4) + i4] & HPKE.aead_EXPORT_ONLY, this.params.q());
            }
            int i5 = i3 * 7;
            short s = sArr[0];
            bArr[i5] = (byte) (s & 255);
            short s2 = sArr[1];
            bArr[i5 + 1] = (byte) ((s >>> 8) | ((s2 & 3) << 6));
            bArr[i5 + 2] = (byte) ((s2 >>> 2) & 255);
            short s3 = sArr[2];
            bArr[i5 + 3] = (byte) ((s2 >>> 10) | ((s3 & 15) << 4));
            bArr[i5 + 4] = (byte) ((s3 >>> 4) & 255);
            short s4 = sArr[3];
            bArr[i5 + 5] = (byte) ((s3 >>> 12) | ((s4 & 63) << 2));
            bArr[i5 + 6] = (byte) (s4 >>> 6);
            i3++;
        }
        if (this.params.packDegree() % 4 == 2) {
            sArr[0] = (short) Polynomial.modQ(this.coeffs[this.params.packDegree() - 2] & HPKE.aead_EXPORT_ONLY, this.params.q());
            short sModQ = (short) Polynomial.modQ(this.coeffs[this.params.packDegree() - 1] & HPKE.aead_EXPORT_ONLY, this.params.q());
            sArr[1] = sModQ;
            int i6 = i3 * 7;
            short s5 = sArr[0];
            bArr[i6] = (byte) (s5 & 255);
            bArr[i6 + 1] = (byte) ((s5 >>> 8) | ((sModQ & 3) << 6));
            bArr[i6 + 2] = (byte) ((sModQ >>> 2) & 255);
            bArr[i6 + 3] = (byte) (sModQ >>> 10);
        }
        return bArr;
    }
}
