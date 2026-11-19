package org.bouncycastle.crypto.digests;

import defpackage.md;
import defpackage.n00;
import org.bouncycastle.crypto.CryptoServicePurpose;

/* JADX INFO: loaded from: classes5.dex */
public class SHA3Digest extends KeccakDigest {
    public SHA3Digest(int i2) {
        super(checkBitLength(i2), CryptoServicePurpose.ANY);
    }

    private static int checkBitLength(int i2) {
        if (i2 == 224 || i2 == 256 || i2 == 384 || i2 == 512) {
            return i2;
        }
        md.n(n00.m(i2, "'bitLength' ", " not supported for SHA-3"));
        return 0;
    }

    @Override // org.bouncycastle.crypto.digests.KeccakDigest
    public int doFinal(byte[] bArr, int i2, byte b2, int i3) {
        if (i3 < 0 || i3 > 7) {
            md.n("'partialBits' must be in the range [0,7]");
            return 0;
        }
        int i4 = (b2 & ((1 << i3) - 1)) | (2 << i3);
        int i5 = i3 + 2;
        if (i5 >= 8) {
            absorb((byte) i4);
            i5 = i3 - 6;
            i4 >>>= 8;
        }
        return super.doFinal(bArr, i2, (byte) i4, i5);
    }

    @Override // org.bouncycastle.crypto.digests.KeccakDigest, org.bouncycastle.crypto.Digest
    public String getAlgorithmName() {
        return "SHA3-" + this.fixedOutputLength;
    }

    public SHA3Digest() {
        this(256, CryptoServicePurpose.ANY);
    }

    public SHA3Digest(int i2, CryptoServicePurpose cryptoServicePurpose) {
        super(checkBitLength(i2), cryptoServicePurpose);
    }

    public SHA3Digest(CryptoServicePurpose cryptoServicePurpose) {
        this(256, cryptoServicePurpose);
    }

    public SHA3Digest(SHA3Digest sHA3Digest) {
        super(sHA3Digest);
    }

    @Override // org.bouncycastle.crypto.digests.KeccakDigest, org.bouncycastle.crypto.Digest
    public int doFinal(byte[] bArr, int i2) {
        absorbBits(2, 2);
        return super.doFinal(bArr, i2);
    }
}
