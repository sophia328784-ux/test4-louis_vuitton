package org.bouncycastle.crypto.digests;

import defpackage.md;
import defpackage.n00;
import org.bouncycastle.crypto.CryptoServiceProperties;
import org.bouncycastle.crypto.CryptoServicePurpose;
import org.bouncycastle.crypto.Xof;

/* JADX INFO: loaded from: classes5.dex */
public class SHAKEDigest extends KeccakDigest implements Xof {
    public SHAKEDigest(int i2) {
        super(checkBitLength(i2), CryptoServicePurpose.ANY);
    }

    private static int checkBitLength(int i2) {
        if (i2 == 128 || i2 == 256) {
            return i2;
        }
        md.n(n00.m(i2, "'bitStrength' ", " not supported for SHAKE"));
        return 0;
    }

    @Override // org.bouncycastle.crypto.digests.KeccakDigest
    public CryptoServiceProperties cryptoServiceProperties() {
        return Utils.getDefaultProperties(this, this.purpose);
    }

    public int doFinal(byte[] bArr, int i2, int i3, byte b2, int i4) {
        if (i4 < 0 || i4 > 7) {
            md.n("'partialBits' must be in the range [0,7]");
            return 0;
        }
        int i5 = (b2 & ((1 << i4) - 1)) | (15 << i4);
        int i6 = i4 + 4;
        if (i6 >= 8) {
            absorb((byte) i5);
            i6 = i4 - 4;
            i5 >>>= 8;
        }
        if (i6 > 0) {
            absorbBits(i5, i6);
        }
        squeeze(bArr, i2, ((long) i3) * 8);
        reset();
        return i3;
    }

    public int doOutput(byte[] bArr, int i2, int i3) {
        if (!this.squeezing) {
            absorbBits(15, 4);
        }
        squeeze(bArr, i2, ((long) i3) * 8);
        return i3;
    }

    @Override // org.bouncycastle.crypto.digests.KeccakDigest, org.bouncycastle.crypto.Digest
    public String getAlgorithmName() {
        return "SHAKE" + this.fixedOutputLength;
    }

    @Override // org.bouncycastle.crypto.digests.KeccakDigest, org.bouncycastle.crypto.Digest
    public int getDigestSize() {
        return this.fixedOutputLength / 4;
    }

    public SHAKEDigest() {
        this(128);
    }

    public SHAKEDigest(int i2, CryptoServicePurpose cryptoServicePurpose) {
        super(checkBitLength(i2), cryptoServicePurpose);
    }

    public SHAKEDigest(CryptoServicePurpose cryptoServicePurpose) {
        this(128, cryptoServicePurpose);
    }

    public SHAKEDigest(SHAKEDigest sHAKEDigest) {
        super(sHAKEDigest);
    }

    @Override // org.bouncycastle.crypto.digests.KeccakDigest
    public int doFinal(byte[] bArr, int i2, byte b2, int i3) {
        return doFinal(bArr, i2, getDigestSize(), b2, i3);
    }

    @Override // org.bouncycastle.crypto.Xof
    public int doFinal(byte[] bArr, int i2, int i3) {
        int iDoOutput = doOutput(bArr, i2, i3);
        reset();
        return iDoOutput;
    }

    @Override // org.bouncycastle.crypto.digests.KeccakDigest, org.bouncycastle.crypto.Digest
    public int doFinal(byte[] bArr, int i2) {
        return doFinal(bArr, i2, getDigestSize());
    }
}
