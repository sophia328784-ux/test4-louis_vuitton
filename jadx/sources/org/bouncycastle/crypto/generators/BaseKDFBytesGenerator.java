package org.bouncycastle.crypto.generators;

import defpackage.md;
import defpackage.mt;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.DerivationParameters;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.crypto.DigestDerivationFunction;
import org.bouncycastle.crypto.params.ISO18033KDFParameters;
import org.bouncycastle.crypto.params.KDFParameters;
import org.bouncycastle.util.Pack;

/* JADX INFO: loaded from: classes5.dex */
public class BaseKDFBytesGenerator implements DigestDerivationFunction {
    private int counterStart;
    private Digest digest;
    private byte[] iv;
    private byte[] shared;

    public BaseKDFBytesGenerator(int i2, Digest digest) {
        this.counterStart = i2;
        this.digest = digest;
    }

    @Override // org.bouncycastle.crypto.DerivationFunction
    public int generateBytes(byte[] bArr, int i2, int i3) throws DataLengthException, IllegalArgumentException {
        int i4 = i3;
        int i5 = i2;
        if (bArr.length - i4 < i5) {
            mt.n("output buffer too small");
            return 0;
        }
        long j2 = i4;
        int digestSize = this.digest.getDigestSize();
        if (j2 > 8589934591L) {
            md.n("Output length too large");
            return 0;
        }
        long j3 = digestSize;
        int i6 = (int) (((j2 + j3) - 1) / j3);
        byte[] bArr2 = new byte[this.digest.getDigestSize()];
        byte[] bArr3 = new byte[4];
        Pack.intToBigEndian(this.counterStart, bArr3, 0);
        int i7 = this.counterStart & (-256);
        int i8 = 0;
        while (true) {
            Digest digest = this.digest;
            if (i8 >= i6) {
                digest.reset();
                return (int) j2;
            }
            byte[] bArr4 = this.shared;
            digest.update(bArr4, 0, bArr4.length);
            this.digest.update(bArr3, 0, 4);
            byte[] bArr5 = this.iv;
            if (bArr5 != null) {
                this.digest.update(bArr5, 0, bArr5.length);
            }
            this.digest.doFinal(bArr2, 0);
            if (i4 > digestSize) {
                System.arraycopy(bArr2, 0, bArr, i5, digestSize);
                i5 += digestSize;
                i4 -= digestSize;
            } else {
                System.arraycopy(bArr2, 0, bArr, i5, i4);
            }
            byte b2 = (byte) (bArr3[3] + 1);
            bArr3[3] = b2;
            if (b2 == 0) {
                i7 += 256;
                Pack.intToBigEndian(i7, bArr3, 0);
            }
            i8++;
        }
    }

    @Override // org.bouncycastle.crypto.DigestDerivationFunction
    public Digest getDigest() {
        return this.digest;
    }

    @Override // org.bouncycastle.crypto.DerivationFunction
    public void init(DerivationParameters derivationParameters) {
        if (derivationParameters instanceof KDFParameters) {
            KDFParameters kDFParameters = (KDFParameters) derivationParameters;
            this.shared = kDFParameters.getSharedSecret();
            this.iv = kDFParameters.getIV();
        } else if (!(derivationParameters instanceof ISO18033KDFParameters)) {
            md.n("KDF parameters required for generator");
        } else {
            this.shared = ((ISO18033KDFParameters) derivationParameters).getSeed();
            this.iv = null;
        }
    }
}
