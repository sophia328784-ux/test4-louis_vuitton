package org.spongycastle.pqc.crypto.xmss;

import defpackage.md;
import defpackage.n00;
import defpackage.r81;
import defpackage.v7;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.ObjectOutputStream;
import org.spongycastle.crypto.params.AsymmetricKeyParameter;
import org.spongycastle.util.Arrays;
import org.spongycastle.util.Pack;

/* JADX INFO: loaded from: classes5.dex */
public final class XMSSPrivateKeyParameters extends AsymmetricKeyParameter implements XMSSStoreableObjectInterface {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final XMSSParameters f78201b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final byte[] f78202c;
    public final byte[] d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final byte[] f78203e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final byte[] f78204f;
    public final BDS g;

    public static class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final XMSSParameters f78205a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f78206b = 0;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public byte[] f78207c = null;
        public byte[] d = null;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public byte[] f78208e = null;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public byte[] f78209f = null;
        public BDS g = null;

        public Builder(XMSSParameters xMSSParameters) {
            this.f78205a = xMSSParameters;
        }
    }

    public XMSSPrivateKeyParameters(Builder builder) {
        super(true);
        XMSSParameters xMSSParameters = builder.f78205a;
        this.f78201b = xMSSParameters;
        if (xMSSParameters == null) {
            r81.d("params == null");
            throw null;
        }
        int i2 = xMSSParameters.f78200c;
        WOTSPlus wOTSPlus = xMSSParameters.f78198a;
        int i3 = xMSSParameters.f78199b;
        int iA = xMSSParameters.a();
        byte[] bArr = builder.f78207c;
        if (bArr == null) {
            this.f78202c = new byte[iA];
        } else {
            if (bArr.length != iA) {
                md.n("size of secretKeySeed needs to be equal size of digest");
                throw null;
            }
            this.f78202c = bArr;
        }
        byte[] bArr2 = builder.d;
        if (bArr2 == null) {
            this.d = new byte[iA];
        } else {
            if (bArr2.length != iA) {
                md.n("size of secretKeyPRF needs to be equal size of digest");
                throw null;
            }
            this.d = bArr2;
        }
        byte[] bArr3 = builder.f78208e;
        if (bArr3 == null) {
            this.f78203e = new byte[iA];
        } else {
            if (bArr3.length != iA) {
                md.n("size of publicSeed needs to be equal size of digest");
                throw null;
            }
            this.f78203e = bArr3;
        }
        byte[] bArr4 = builder.f78209f;
        if (bArr4 == null) {
            this.f78204f = new byte[iA];
        } else {
            if (bArr4.length != iA) {
                md.n("size of root needs to be equal size of digest");
                throw null;
            }
            this.f78204f = bArr4;
        }
        BDS bds = builder.g;
        if (bds != null) {
            this.g = bds;
            return;
        }
        int i4 = builder.f78206b;
        if (i4 >= (1 << i3) - 2 || bArr3 == null || bArr == null) {
            BDS bds2 = new BDS(wOTSPlus, i3, i2);
            bds2.f78137j = i4;
            bds2.f78138k = true;
            this.g = bds2;
            return;
        }
        OTSHashAddress oTSHashAddress = new OTSHashAddress(new OTSHashAddress.Builder());
        BDS bds3 = new BDS(wOTSPlus, i3, i2);
        bds3.a(bArr3, bArr, oTSHashAddress);
        while (bds3.f78137j < i4) {
            bds3.b(bArr3, bArr, oTSHashAddress);
            bds3.f78138k = false;
        }
        this.g = bds3;
    }

    public final byte[] a() {
        int iA = this.f78201b.a();
        int i2 = iA + 4;
        int i3 = i2 + iA;
        int i4 = i3 + iA;
        byte[] bArr = new byte[iA + i4];
        BDS bds = this.g;
        Pack.c(bds.f78137j, bArr, 0);
        XMSSUtil.d(bArr, this.f78202c, 4);
        XMSSUtil.d(bArr, this.d, i2);
        XMSSUtil.d(bArr, this.f78203e, i3);
        XMSSUtil.d(bArr, this.f78204f, i4);
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            ObjectOutputStream objectOutputStream = new ObjectOutputStream(byteArrayOutputStream);
            objectOutputStream.writeObject(bds);
            objectOutputStream.flush();
            return Arrays.e(bArr, byteArrayOutputStream.toByteArray());
        } catch (IOException e2) {
            v7.h(n00.o(e2, new StringBuilder("error serializing bds state: ")));
            return null;
        }
    }
}
