package org.bouncycastle.crypto.agreement.kdf;

import defpackage.b21;
import defpackage.md;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.DerivationParameters;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.crypto.DigestDerivationFunction;
import org.bouncycastle.util.Arrays;
import org.bouncycastle.util.Pack;

/* JADX INFO: loaded from: classes5.dex */
public class GSKKFDGenerator implements DigestDerivationFunction {
    private byte[] buf;
    private int counter;
    private final Digest digest;
    private byte[] r;
    private byte[] z;

    public GSKKFDGenerator(Digest digest) {
        this.digest = digest;
        this.buf = new byte[digest.getDigestSize()];
    }

    @Override // org.bouncycastle.crypto.DerivationFunction
    public int generateBytes(byte[] bArr, int i2, int i3) throws DataLengthException, IllegalArgumentException {
        if (i2 + i3 > bArr.length) {
            b21.q("output buffer too small");
            return 0;
        }
        Digest digest = this.digest;
        byte[] bArr2 = this.z;
        digest.update(bArr2, 0, bArr2.length);
        int i4 = this.counter;
        this.counter = i4 + 1;
        byte[] bArrIntToBigEndian = Pack.intToBigEndian(i4);
        this.digest.update(bArrIntToBigEndian, 0, bArrIntToBigEndian.length);
        byte[] bArr3 = this.r;
        if (bArr3 != null) {
            this.digest.update(bArr3, 0, bArr3.length);
        }
        this.digest.doFinal(this.buf, 0);
        System.arraycopy(this.buf, 0, bArr, i2, i3);
        Arrays.clear(this.buf);
        return i3;
    }

    @Override // org.bouncycastle.crypto.DigestDerivationFunction
    public Digest getDigest() {
        return this.digest;
    }

    @Override // org.bouncycastle.crypto.DerivationFunction
    public void init(DerivationParameters derivationParameters) {
        if (!(derivationParameters instanceof GSKKDFParameters)) {
            md.n("unkown parameters type");
            return;
        }
        GSKKDFParameters gSKKDFParameters = (GSKKDFParameters) derivationParameters;
        this.z = gSKKDFParameters.getZ();
        this.counter = gSKKDFParameters.getStartCounter();
        this.r = gSKKDFParameters.getNonce();
    }
}
