package org.bouncycastle.jce.provider;

import defpackage.md;
import defpackage.mt;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.DerivationFunction;
import org.bouncycastle.crypto.DerivationParameters;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.crypto.params.KDFParameters;

/* JADX INFO: loaded from: classes5.dex */
public class BrokenKDF2BytesGenerator implements DerivationFunction {
    private Digest digest;
    private byte[] iv;
    private byte[] shared;

    public BrokenKDF2BytesGenerator(Digest digest) {
        this.digest = digest;
    }

    @Override // org.bouncycastle.crypto.DerivationFunction
    public int generateBytes(byte[] bArr, int i2, int i3) throws DataLengthException, IllegalArgumentException {
        if (bArr.length - i3 < i2) {
            mt.n("output buffer too small");
            return 0;
        }
        long j2 = ((long) i3) * 8;
        if (j2 > ((long) this.digest.getDigestSize()) * 17179869184L) {
            md.n("Output length too large");
            return 0;
        }
        int digestSize = (int) (j2 / ((long) this.digest.getDigestSize()));
        int digestSize2 = this.digest.getDigestSize();
        byte[] bArr2 = new byte[digestSize2];
        int i4 = 1;
        while (true) {
            Digest digest = this.digest;
            if (i4 > digestSize) {
                digest.reset();
                return i3;
            }
            byte[] bArr3 = this.shared;
            digest.update(bArr3, 0, bArr3.length);
            this.digest.update((byte) (i4 & 255));
            this.digest.update((byte) ((i4 >> 8) & 255));
            this.digest.update((byte) ((i4 >> 16) & 255));
            this.digest.update((byte) ((i4 >> 24) & 255));
            Digest digest2 = this.digest;
            byte[] bArr4 = this.iv;
            digest2.update(bArr4, 0, bArr4.length);
            this.digest.doFinal(bArr2, 0);
            int i5 = i3 - i2;
            if (i5 > digestSize2) {
                System.arraycopy(bArr2, 0, bArr, i2, digestSize2);
                i2 += digestSize2;
            } else {
                System.arraycopy(bArr2, 0, bArr, i2, i5);
            }
            i4++;
        }
    }

    public Digest getDigest() {
        return this.digest;
    }

    @Override // org.bouncycastle.crypto.DerivationFunction
    public void init(DerivationParameters derivationParameters) {
        if (!(derivationParameters instanceof KDFParameters)) {
            md.n("KDF parameters required for generator");
            return;
        }
        KDFParameters kDFParameters = (KDFParameters) derivationParameters;
        this.shared = kDFParameters.getSharedSecret();
        this.iv = kDFParameters.getIV();
    }
}
