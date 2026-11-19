package org.bouncycastle.pqc.crypto.sphincsplus;

import defpackage.md;
import org.bouncycastle.crypto.Digest;

/* JADX INFO: loaded from: classes5.dex */
class HarakaS512Digest extends HarakaSBase implements Digest {
    public HarakaS512Digest(HarakaSXof harakaSXof) {
        this.haraka512_rc = harakaSXof.haraka512_rc;
    }

    @Override // org.bouncycastle.crypto.Digest
    public int doFinal(byte[] bArr, int i2) {
        byte[] bArr2 = new byte[64];
        haraka512Perm(bArr2);
        HarakaSBase.xor(bArr2, 8, this.buffer, 8, bArr, i2, 8);
        HarakaSBase.xor(bArr2, 24, this.buffer, 24, bArr, i2 + 8, 16);
        HarakaSBase.xor(bArr2, 48, this.buffer, 48, bArr, i2 + 24, 8);
        reset();
        return 64;
    }

    @Override // org.bouncycastle.crypto.Digest
    public String getAlgorithmName() {
        return "HarakaS-512";
    }

    @Override // org.bouncycastle.crypto.Digest
    public int getDigestSize() {
        return 32;
    }

    @Override // org.bouncycastle.pqc.crypto.sphincsplus.HarakaSBase, org.bouncycastle.crypto.Digest
    public void reset() {
        super.reset();
    }

    @Override // org.bouncycastle.crypto.Digest
    public void update(byte[] bArr, int i2, int i3) {
        int i4 = this.off;
        if (i4 > 64 - i3) {
            md.n("total input cannot be more than 64 bytes");
        } else {
            System.arraycopy(bArr, i2, this.buffer, i4, i3);
            this.off += i3;
        }
    }

    @Override // org.bouncycastle.crypto.Digest
    public void update(byte b2) {
        int i2 = this.off;
        if (i2 > 63) {
            md.n("total input cannot be more than 64 bytes");
            return;
        }
        byte[] bArr = this.buffer;
        this.off = i2 + 1;
        bArr[i2] = b2;
    }
}
