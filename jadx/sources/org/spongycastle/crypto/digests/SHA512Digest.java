package org.spongycastle.crypto.digests;

import org.spongycastle.util.Pack;

/* JADX INFO: loaded from: classes5.dex */
public class SHA512Digest extends LongDigest {
    public SHA512Digest(byte[] bArr) {
        j(bArr);
    }

    @Override // org.spongycastle.crypto.Digest
    public final int b(byte[] bArr) {
        g();
        Pack.g(this.f77856e, bArr, 0);
        Pack.g(this.f77857f, bArr, 8);
        Pack.g(this.g, bArr, 16);
        Pack.g(this.f77858h, bArr, 24);
        Pack.g(this.f77859i, bArr, 32);
        Pack.g(this.f77860j, bArr, 40);
        Pack.g(this.f77861k, bArr, 48);
        Pack.g(this.l, bArr, 56);
        i();
        return 64;
    }

    @Override // org.spongycastle.crypto.Digest
    public final String getAlgorithmName() {
        return "SHA-512";
    }

    @Override // org.spongycastle.crypto.Digest
    public final int getDigestSize() {
        return 64;
    }

    @Override // org.spongycastle.crypto.digests.LongDigest
    public final void i() {
        super.i();
        this.f77856e = 7640891576956012808L;
        this.f77857f = -4942790177534073029L;
        this.g = 4354685564936845355L;
        this.f77858h = -6534734903238641935L;
        this.f77859i = 5840696475078001361L;
        this.f77860j = -7276294671716946913L;
        this.f77861k = 2270897969802886507L;
        this.l = 6620516959819538809L;
    }

    public SHA512Digest(SHA512Digest sHA512Digest) {
        super(sHA512Digest);
    }

    public SHA512Digest() {
    }
}
