package org.spongycastle.pqc.jcajce.provider.xmss;

import defpackage.az;
import defpackage.md;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.security.PrivateKey;
import org.spongycastle.asn1.ASN1Encodable;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.pkcs.PrivateKeyInfo;
import org.spongycastle.asn1.x509.AlgorithmIdentifier;
import org.spongycastle.pqc.asn1.PQCObjectIdentifiers;
import org.spongycastle.pqc.asn1.XMSSKeyParams;
import org.spongycastle.pqc.asn1.XMSSPrivateKey;
import org.spongycastle.pqc.crypto.xmss.BDS;
import org.spongycastle.pqc.crypto.xmss.XMSSParameters;
import org.spongycastle.pqc.crypto.xmss.XMSSPrivateKeyParameters;
import org.spongycastle.pqc.crypto.xmss.XMSSUtil;
import org.spongycastle.pqc.jcajce.interfaces.XMSSKey;
import org.spongycastle.util.Arrays;

/* JADX INFO: loaded from: classes5.dex */
public class BCXMSSPrivateKey implements PrivateKey, XMSSKey {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final XMSSPrivateKeyParameters f78236b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ASN1ObjectIdentifier f78237c;

    public BCXMSSPrivateKey(PrivateKeyInfo privateKeyInfo) throws IOException {
        ASN1Encodable aSN1Encodable = privateKeyInfo.f77797c.f77823c;
        XMSSKeyParams xMSSKeyParams = aSN1Encodable instanceof XMSSKeyParams ? (XMSSKeyParams) aSN1Encodable : aSN1Encodable != null ? new XMSSKeyParams(ASN1Sequence.r(aSN1Encodable)) : null;
        ASN1ObjectIdentifier aSN1ObjectIdentifier = xMSSKeyParams.d.f77822b;
        this.f78237c = aSN1ObjectIdentifier;
        ASN1Primitive aSN1PrimitiveM = privateKeyInfo.m();
        XMSSPrivateKey xMSSPrivateKey = aSN1PrimitiveM != null ? new XMSSPrivateKey(ASN1Sequence.r(aSN1PrimitiveM)) : null;
        try {
            XMSSPrivateKeyParameters.Builder builder = new XMSSPrivateKeyParameters.Builder(new XMSSParameters(xMSSKeyParams.f78084c, DigestUtil.a(aSN1ObjectIdentifier)));
            int i2 = xMSSPrivateKey.f78092b;
            byte[] bArr = xMSSPrivateKey.g;
            builder.f78206b = i2;
            builder.f78207c = XMSSUtil.b(Arrays.c(xMSSPrivateKey.f78093c));
            builder.d = XMSSUtil.b(Arrays.c(xMSSPrivateKey.d));
            builder.f78208e = XMSSUtil.b(Arrays.c(xMSSPrivateKey.f78094e));
            builder.f78209f = XMSSUtil.b(Arrays.c(xMSSPrivateKey.f78095f));
            if (Arrays.c(bArr) != null) {
                builder.g = (BDS) new ObjectInputStream(new ByteArrayInputStream(Arrays.c(bArr))).readObject();
            }
            this.f78236b = new XMSSPrivateKeyParameters(builder);
        } catch (ClassNotFoundException e2) {
            az.y(e2.getMessage(), "ClassNotFoundException processing BDS state: ");
            throw null;
        }
    }

    public final XMSSPrivateKey a() {
        XMSSPrivateKeyParameters xMSSPrivateKeyParameters = this.f78236b;
        byte[] bArrA = xMSSPrivateKeyParameters.a();
        XMSSParameters xMSSParameters = xMSSPrivateKeyParameters.f78201b;
        int iA = xMSSParameters.a();
        int i2 = xMSSParameters.f78199b;
        int iA2 = (int) XMSSUtil.a(4, bArrA);
        if (!XMSSUtil.f(i2, iA2)) {
            md.n("index out of bounds");
            return null;
        }
        byte[] bArrE = XMSSUtil.e(bArrA, 4, iA);
        int i3 = 4 + iA;
        byte[] bArrE2 = XMSSUtil.e(bArrA, i3, iA);
        int i4 = i3 + iA;
        byte[] bArrE3 = XMSSUtil.e(bArrA, i4, iA);
        int i5 = i4 + iA;
        byte[] bArrE4 = XMSSUtil.e(bArrA, i5, iA);
        int i6 = i5 + iA;
        return new XMSSPrivateKey(iA2, bArrE, bArrE2, bArrE3, bArrE4, XMSSUtil.e(bArrA, i6, bArrA.length - i6));
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof BCXMSSPrivateKey) {
            BCXMSSPrivateKey bCXMSSPrivateKey = (BCXMSSPrivateKey) obj;
            if (this.f78237c.equals(bCXMSSPrivateKey.f78237c) && Arrays.a(this.f78236b.a(), bCXMSSPrivateKey.f78236b.a())) {
                return true;
            }
        }
        return false;
    }

    @Override // java.security.Key
    public final String getAlgorithm() {
        return "XMSS";
    }

    @Override // java.security.Key
    public final byte[] getEncoded() {
        try {
            return new PrivateKeyInfo(new AlgorithmIdentifier(PQCObjectIdentifiers.f78070f, new XMSSKeyParams(this.f78236b.f78201b.f78199b, new AlgorithmIdentifier(this.f78237c))), a()).f();
        } catch (IOException unused) {
            return null;
        }
    }

    @Override // java.security.Key
    public final String getFormat() {
        return "PKCS#8";
    }

    public final int hashCode() {
        return (Arrays.g(this.f78236b.a()) * 37) + this.f78237c.f77710b.hashCode();
    }

    public BCXMSSPrivateKey(ASN1ObjectIdentifier aSN1ObjectIdentifier, XMSSPrivateKeyParameters xMSSPrivateKeyParameters) {
        this.f78237c = aSN1ObjectIdentifier;
        this.f78236b = xMSSPrivateKeyParameters;
    }
}
