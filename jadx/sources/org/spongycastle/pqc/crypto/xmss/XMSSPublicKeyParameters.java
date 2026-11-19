package org.spongycastle.pqc.crypto.xmss;

import defpackage.md;
import defpackage.r81;
import org.spongycastle.crypto.params.AsymmetricKeyParameter;

/* JADX INFO: loaded from: classes5.dex */
public final class XMSSPublicKeyParameters extends AsymmetricKeyParameter implements XMSSStoreableObjectInterface {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final XMSSParameters f78210b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final byte[] f78211c;
    public final byte[] d;

    public static class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final XMSSParameters f78212a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public byte[] f78213b = null;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public byte[] f78214c = null;

        public Builder(XMSSParameters xMSSParameters) {
            this.f78212a = xMSSParameters;
        }
    }

    public XMSSPublicKeyParameters(Builder builder) {
        super(false);
        XMSSParameters xMSSParameters = builder.f78212a;
        this.f78210b = xMSSParameters;
        if (xMSSParameters == null) {
            r81.d("params == null");
            throw null;
        }
        int iA = xMSSParameters.a();
        byte[] bArr = builder.f78213b;
        if (bArr == null) {
            this.f78211c = new byte[iA];
        } else {
            if (bArr.length != iA) {
                md.n("length of root must be equal to length of digest");
                throw null;
            }
            this.f78211c = bArr;
        }
        byte[] bArr2 = builder.f78214c;
        if (bArr2 == null) {
            this.d = new byte[iA];
        } else if (bArr2.length == iA) {
            this.d = bArr2;
        } else {
            md.n("length of publicSeed must be equal to length of digest");
            throw null;
        }
    }

    public final byte[] a() {
        int iA = this.f78210b.a();
        byte[] bArr = new byte[iA + iA];
        XMSSUtil.d(bArr, this.f78211c, 0);
        XMSSUtil.d(bArr, this.d, iA);
        return bArr;
    }
}
