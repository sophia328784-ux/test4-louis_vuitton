package org.bouncycastle.pqc.crypto.sphincsplus;

import defpackage.md;
import org.bouncycastle.crypto.Digest;

/* JADX INFO: loaded from: classes5.dex */
class HarakaS256Digest extends HarakaSBase implements Digest {
    public HarakaS256Digest(HarakaSXof harakaSXof) {
        this.haraka256_rc = harakaSXof.haraka256_rc;
    }

    @Override // org.bouncycastle.crypto.Digest
    public int doFinal(byte[] bArr, int i2) {
        byte[] bArr2 = new byte[32];
        haraka256Perm(bArr2);
        HarakaSBase.xor(bArr2, 0, this.buffer, 0, bArr, i2, 32);
        reset();
        return bArr.length;
    }

    @Override // org.bouncycastle.crypto.Digest
    public String getAlgorithmName() {
        return "HarakaS-256";
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
        if (i4 > 32 - i3) {
            md.n("total input cannot be more than 32 bytes");
        } else {
            System.arraycopy(bArr, i2, this.buffer, i4, i3);
            this.off += i3;
        }
    }

    @Override // org.bouncycastle.crypto.Digest
    public void update(byte b2) {
        int i2 = this.off;
        if (i2 > 31) {
            md.n("total input cannot be more than 32 bytes");
            return;
        }
        byte[] bArr = this.buffer;
        this.off = i2 + 1;
        bArr[i2] = b2;
    }
}
