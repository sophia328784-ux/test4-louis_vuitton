package org.spongycastle.crypto.digests;

import defpackage.md;
import defpackage.n00;
import org.spongycastle.crypto.Xof;

/* JADX INFO: loaded from: classes5.dex */
public class SHAKEDigest extends KeccakDigest implements Xof {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SHAKEDigest(int i2) {
        super(i2);
        if (i2 == 128 || i2 == 256) {
        } else {
            md.n(n00.m(i2, "'bitLength' ", " not supported for SHAKE"));
            throw null;
        }
    }

    @Override // org.spongycastle.crypto.digests.KeccakDigest, org.spongycastle.crypto.Digest
    public final int b(byte[] bArr) {
        int digestSize = getDigestSize();
        doFinal(bArr, digestSize);
        return digestSize;
    }

    @Override // org.spongycastle.crypto.Xof
    public final int doFinal(byte[] bArr, int i2) {
        boolean z = this.f77852f;
        if (!z) {
            int i3 = this.d;
            if (i3 % 8 != 0) {
                md.k("attempt to absorb with odd length queue");
                return 0;
            }
            if (z) {
                md.k("attempt to absorb while squeezing");
                return 0;
            }
            this.f77849b[i3 >> 3] = 15;
            this.d = i3 + 4;
        }
        h(((long) i2) * 8, bArr);
        f(this.f77851e);
        return i2;
    }

    @Override // org.spongycastle.crypto.digests.KeccakDigest, org.spongycastle.crypto.Digest
    public final String getAlgorithmName() {
        return "SHAKE" + this.f77851e;
    }

    public SHAKEDigest() {
        this(128);
    }

    public SHAKEDigest(SHAKEDigest sHAKEDigest) {
        super(sHAKEDigest);
    }
}
