package org.spongycastle.pqc.crypto.xmss;

import defpackage.md;
import org.spongycastle.crypto.Digest;
import org.spongycastle.crypto.Xof;

/* JADX INFO: loaded from: classes5.dex */
final class KeyedHashFunctions {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Digest f78152a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f78153b;

    public KeyedHashFunctions(int i2, Digest digest) {
        this.f78152a = digest;
        this.f78153b = i2;
    }

    public final byte[] a(byte[] bArr, byte[] bArr2) {
        if (bArr.length != this.f78153b) {
            md.n("wrong key length");
            return null;
        }
        if (bArr2.length == 32) {
            return b(3, bArr, bArr2);
        }
        md.n("wrong address length");
        return null;
    }

    public final byte[] b(int i2, byte[] bArr, byte[] bArr2) {
        long j2 = i2;
        int i3 = this.f78153b;
        byte[] bArrG = XMSSUtil.g(j2, i3);
        int length = bArrG.length;
        Digest digest = this.f78152a;
        digest.a(length, bArrG);
        digest.a(bArr.length, bArr);
        digest.a(bArr2.length, bArr2);
        byte[] bArr3 = new byte[i3];
        if (digest instanceof Xof) {
            ((Xof) digest).doFinal(bArr3, i3);
            return bArr3;
        }
        digest.b(bArr3);
        return bArr3;
    }
}
