package org.bouncycastle.crypto.generators;

import defpackage.b21;
import defpackage.md;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.DerivationFunction;
import org.bouncycastle.crypto.DerivationParameters;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.crypto.macs.HMac;
import org.bouncycastle.crypto.params.HKDFParameters;
import org.bouncycastle.crypto.params.KeyParameter;

/* JADX INFO: loaded from: classes5.dex */
public class HKDFBytesGenerator implements DerivationFunction {
    private byte[] currentT;
    private int generatedBytes;
    private HMac hMacHash;
    private int hashLen;
    private byte[] info;

    public HKDFBytesGenerator(Digest digest) {
        this.hMacHash = new HMac(digest);
        this.hashLen = digest.getDigestSize();
    }

    private void expandNext() throws DataLengthException {
        int i2 = this.generatedBytes;
        int i3 = this.hashLen;
        int i4 = (i2 / i3) + 1;
        if (i4 >= 256) {
            b21.q("HKDF cannot generate more than 255 blocks of HashLen size");
            return;
        }
        if (i2 != 0) {
            this.hMacHash.update(this.currentT, 0, i3);
        }
        HMac hMac = this.hMacHash;
        byte[] bArr = this.info;
        hMac.update(bArr, 0, bArr.length);
        this.hMacHash.update((byte) i4);
        this.hMacHash.doFinal(this.currentT, 0);
    }

    public byte[] extractPRK(byte[] bArr, byte[] bArr2) {
        HMac hMac = this.hMacHash;
        if (bArr == null) {
            hMac.init(new KeyParameter(new byte[this.hashLen]));
        } else {
            hMac.init(new KeyParameter(bArr));
        }
        this.hMacHash.update(bArr2, 0, bArr2.length);
        byte[] bArr3 = new byte[this.hashLen];
        this.hMacHash.doFinal(bArr3, 0);
        return bArr3;
    }

    @Override // org.bouncycastle.crypto.DerivationFunction
    public int generateBytes(byte[] bArr, int i2, int i3) throws DataLengthException, IllegalArgumentException {
        int i4 = this.generatedBytes;
        int i5 = i4 + i3;
        int i6 = this.hashLen;
        if (i5 > i6 * 255) {
            b21.q("HKDF may only be used for 255 * HashLen bytes of output");
            return 0;
        }
        if (i4 % i6 == 0) {
            expandNext();
        }
        int i7 = this.generatedBytes;
        int i8 = this.hashLen;
        int i9 = i7 % i8;
        int iMin = Math.min(i8 - (i7 % i8), i3);
        System.arraycopy(this.currentT, i9, bArr, i2, iMin);
        this.generatedBytes += iMin;
        int i10 = i3 - iMin;
        while (true) {
            i2 += iMin;
            if (i10 <= 0) {
                return i3;
            }
            expandNext();
            iMin = Math.min(this.hashLen, i10);
            System.arraycopy(this.currentT, 0, bArr, i2, iMin);
            this.generatedBytes += iMin;
            i10 -= iMin;
        }
    }

    public Digest getDigest() {
        return this.hMacHash.getUnderlyingDigest();
    }

    @Override // org.bouncycastle.crypto.DerivationFunction
    public void init(DerivationParameters derivationParameters) {
        if (!(derivationParameters instanceof HKDFParameters)) {
            md.n("HKDF parameters required for HKDFBytesGenerator");
            return;
        }
        HKDFParameters hKDFParameters = (HKDFParameters) derivationParameters;
        this.hMacHash.init(hKDFParameters.skipExtract() ? new KeyParameter(hKDFParameters.getIKM()) : new KeyParameter(extractPRK(hKDFParameters.getSalt(), hKDFParameters.getIKM())));
        this.info = hKDFParameters.getInfo();
        this.generatedBytes = 0;
        this.currentT = new byte[this.hashLen];
    }
}
