package org.spongycastle.pqc.crypto.xmss;

import defpackage.md;
import defpackage.r81;
import org.spongycastle.crypto.params.AsymmetricKeyParameter;

/* JADX INFO: loaded from: classes5.dex */
public final class XMSSMTPublicKeyParameters extends AsymmetricKeyParameter implements XMSSStoreableObjectInterface {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final XMSSMTParameters f78191b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final byte[] f78192c;
    public final byte[] d;

    public static class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final XMSSMTParameters f78193a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public byte[] f78194b = null;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public byte[] f78195c = null;

        public Builder(XMSSMTParameters xMSSMTParameters) {
            this.f78193a = xMSSMTParameters;
        }
    }

    public XMSSMTPublicKeyParameters(Builder builder) {
        super(false);
        XMSSMTParameters xMSSMTParameters = builder.f78193a;
        this.f78191b = xMSSMTParameters;
        if (xMSSMTParameters == null) {
            r81.d("params == null");
            throw null;
        }
        int iA = xMSSMTParameters.f78178a.a();
        byte[] bArr = builder.f78194b;
        if (bArr == null) {
            this.f78192c = new byte[iA];
        } else {
            if (bArr.length != iA) {
                md.n("length of root must be equal to length of digest");
                throw null;
            }
            this.f78192c = bArr;
        }
        byte[] bArr2 = builder.f78195c;
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
        int iA = this.f78191b.f78178a.a();
        byte[] bArr = new byte[iA + iA];
        XMSSUtil.d(bArr, this.f78192c, 0);
        XMSSUtil.d(bArr, this.d, iA);
        return bArr;
    }
}
