package org.bouncycastle.pqc.crypto.lms;

import defpackage.md;
import org.bouncycastle.crypto.Digest;

/* JADX INFO: loaded from: classes5.dex */
class SeedDerive {
    private final byte[] I;
    private final Digest digest;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f77667j;
    private final byte[] masterSeed;
    private int q;

    public SeedDerive(byte[] bArr, byte[] bArr2, Digest digest) {
        this.I = bArr;
        this.masterSeed = bArr2;
        this.digest = digest;
    }

    public byte[] deriveSeed(byte[] bArr, int i2) {
        if (bArr.length - i2 < this.digest.getDigestSize()) {
            md.n("target length is less than digest size.");
            return null;
        }
        Digest digest = this.digest;
        byte[] bArr2 = this.I;
        digest.update(bArr2, 0, bArr2.length);
        this.digest.update((byte) (this.q >>> 24));
        this.digest.update((byte) (this.q >>> 16));
        this.digest.update((byte) (this.q >>> 8));
        this.digest.update((byte) this.q);
        this.digest.update((byte) (this.f77667j >>> 8));
        this.digest.update((byte) this.f77667j);
        this.digest.update((byte) -1);
        Digest digest2 = this.digest;
        byte[] bArr3 = this.masterSeed;
        digest2.update(bArr3, 0, bArr3.length);
        this.digest.doFinal(bArr, i2);
        return bArr;
    }

    public byte[] getI() {
        return this.I;
    }

    public int getJ() {
        return this.f77667j;
    }

    public byte[] getMasterSeed() {
        return this.masterSeed;
    }

    public int getQ() {
        return this.q;
    }

    public void setJ(int i2) {
        this.f77667j = i2;
    }

    public void setQ(int i2) {
        this.q = i2;
    }

    public void deriveSeed(byte[] bArr, boolean z, int i2) {
        deriveSeed(bArr, i2);
        if (z) {
            this.f77667j++;
        }
    }

    public void deriveSeed(byte[] bArr, boolean z) {
        deriveSeed(bArr, z, 0);
    }
}
