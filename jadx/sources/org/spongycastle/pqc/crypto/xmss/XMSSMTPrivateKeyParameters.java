package org.spongycastle.pqc.crypto.xmss;

import defpackage.md;
import defpackage.r81;
import defpackage.v7;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.ObjectOutputStream;
import org.spongycastle.crypto.params.AsymmetricKeyParameter;
import org.spongycastle.util.Arrays;

/* JADX INFO: loaded from: classes5.dex */
public final class XMSSMTPrivateKeyParameters extends AsymmetricKeyParameter implements XMSSStoreableObjectInterface {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final XMSSMTParameters f78181b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f78182c;
    public final byte[] d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final byte[] f78183e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final byte[] f78184f;
    public final byte[] g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final BDSStateMap f78185h;

    public static class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final XMSSMTParameters f78186a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public long f78187b = 0;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public byte[] f78188c = null;
        public byte[] d = null;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public byte[] f78189e = null;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public byte[] f78190f = null;
        public BDSStateMap g = null;

        public Builder(XMSSMTParameters xMSSMTParameters) {
            this.f78186a = xMSSMTParameters;
        }
    }

    public XMSSMTPrivateKeyParameters(Builder builder) {
        super(true);
        XMSSMTParameters xMSSMTParameters = builder.f78186a;
        this.f78181b = xMSSMTParameters;
        if (xMSSMTParameters == null) {
            r81.d("params == null");
            throw null;
        }
        int iA = xMSSMTParameters.f78178a.a();
        long j2 = builder.f78187b;
        this.f78182c = j2;
        byte[] bArr = builder.f78188c;
        if (bArr == null) {
            this.d = new byte[iA];
        } else {
            if (bArr.length != iA) {
                md.n("size of secretKeySeed needs to be equal size of digest");
                throw null;
            }
            this.d = bArr;
        }
        byte[] bArr2 = builder.d;
        if (bArr2 == null) {
            this.f78183e = new byte[iA];
        } else {
            if (bArr2.length != iA) {
                md.n("size of secretKeyPRF needs to be equal size of digest");
                throw null;
            }
            this.f78183e = bArr2;
        }
        byte[] bArr3 = builder.f78189e;
        if (bArr3 == null) {
            this.f78184f = new byte[iA];
        } else {
            if (bArr3.length != iA) {
                md.n("size of publicSeed needs to be equal size of digest");
                throw null;
            }
            this.f78184f = bArr3;
        }
        byte[] bArr4 = builder.f78190f;
        if (bArr4 == null) {
            this.g = new byte[iA];
        } else {
            if (bArr4.length != iA) {
                md.n("size of root needs to be equal size of digest");
                throw null;
            }
            this.g = bArr4;
        }
        BDSStateMap bDSStateMap = builder.g;
        if (bDSStateMap != null) {
            this.f78185h = bDSStateMap;
        } else if (!XMSSUtil.f(xMSSMTParameters.f78179b, j2) || bArr3 == null || bArr == null) {
            this.f78185h = new BDSStateMap();
        } else {
            this.f78185h = new BDSStateMap(xMSSMTParameters, builder.f78187b, bArr3, bArr);
        }
    }

    public final byte[] a() {
        XMSSMTParameters xMSSMTParameters = this.f78181b;
        int iA = xMSSMTParameters.f78178a.a();
        int i2 = (xMSSMTParameters.f78179b + 7) / 8;
        int i3 = i2 + iA;
        int i4 = i3 + iA;
        int i5 = i4 + iA;
        byte[] bArr = new byte[iA + i5];
        XMSSUtil.d(bArr, XMSSUtil.g(this.f78182c, i2), 0);
        XMSSUtil.d(bArr, this.d, i2);
        XMSSUtil.d(bArr, this.f78183e, i3);
        XMSSUtil.d(bArr, this.f78184f, i4);
        XMSSUtil.d(bArr, this.g, i5);
        try {
            BDSStateMap bDSStateMap = this.f78185h;
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            ObjectOutputStream objectOutputStream = new ObjectOutputStream(byteArrayOutputStream);
            objectOutputStream.writeObject(bDSStateMap);
            objectOutputStream.flush();
            return Arrays.e(bArr, byteArrayOutputStream.toByteArray());
        } catch (IOException e2) {
            e2.printStackTrace();
            v7.h("error serializing bds state");
            return null;
        }
    }
}
