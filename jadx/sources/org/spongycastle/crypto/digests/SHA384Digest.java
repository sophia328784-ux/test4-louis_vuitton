package org.spongycastle.crypto.digests;

import org.bouncycastle.pqc.jcajce.spec.McElieceCCA2KeyGenParameterSpec;
import org.spongycastle.util.Pack;

/* JADX INFO: loaded from: classes5.dex */
public class SHA384Digest extends LongDigest {
    public SHA384Digest(byte[] bArr) {
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
        i();
        return 48;
    }

    @Override // org.spongycastle.crypto.Digest
    public final String getAlgorithmName() {
        return McElieceCCA2KeyGenParameterSpec.SHA384;
    }

    @Override // org.spongycastle.crypto.Digest
    public final int getDigestSize() {
        return 48;
    }

    @Override // org.spongycastle.crypto.digests.LongDigest
    public final void i() {
        super.i();
        this.f77856e = -3766243637369397544L;
        this.f77857f = 7105036623409894663L;
        this.g = -7973340178411365097L;
        this.f77858h = 1526699215303891257L;
        this.f77859i = 7436329637833083697L;
        this.f77860j = -8163818279084223215L;
        this.f77861k = -2662702644619276377L;
        this.l = 5167115440072839076L;
    }

    public SHA384Digest(SHA384Digest sHA384Digest) {
        super(sHA384Digest);
    }

    public SHA384Digest() {
    }
}
