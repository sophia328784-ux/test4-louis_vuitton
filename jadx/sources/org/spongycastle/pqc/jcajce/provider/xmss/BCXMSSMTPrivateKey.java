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
import org.spongycastle.pqc.asn1.XMSSMTKeyParams;
import org.spongycastle.pqc.asn1.XMSSMTPrivateKey;
import org.spongycastle.pqc.asn1.XMSSPrivateKey;
import org.spongycastle.pqc.crypto.xmss.BDSStateMap;
import org.spongycastle.pqc.crypto.xmss.XMSSMTParameters;
import org.spongycastle.pqc.crypto.xmss.XMSSMTPrivateKeyParameters;
import org.spongycastle.pqc.crypto.xmss.XMSSUtil;
import org.spongycastle.pqc.jcajce.interfaces.XMSSMTKey;
import org.spongycastle.util.Arrays;

/* JADX INFO: loaded from: classes5.dex */
public class BCXMSSMTPrivateKey implements PrivateKey, XMSSMTKey {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ASN1ObjectIdentifier f78232b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final XMSSMTPrivateKeyParameters f78233c;

    public BCXMSSMTPrivateKey(PrivateKeyInfo privateKeyInfo) throws IOException {
        ASN1Encodable aSN1Encodable = privateKeyInfo.f77797c.f77823c;
        XMSSMTKeyParams xMSSMTKeyParams = aSN1Encodable instanceof XMSSMTKeyParams ? (XMSSMTKeyParams) aSN1Encodable : aSN1Encodable != null ? new XMSSMTKeyParams(ASN1Sequence.r(aSN1Encodable)) : null;
        ASN1ObjectIdentifier aSN1ObjectIdentifier = xMSSMTKeyParams.f78087e.f77822b;
        this.f78232b = aSN1ObjectIdentifier;
        ASN1Primitive aSN1PrimitiveM = privateKeyInfo.m();
        XMSSPrivateKey xMSSPrivateKey = aSN1PrimitiveM != null ? new XMSSPrivateKey(ASN1Sequence.r(aSN1PrimitiveM)) : null;
        try {
            XMSSMTPrivateKeyParameters.Builder builder = new XMSSMTPrivateKeyParameters.Builder(new XMSSMTParameters(xMSSMTKeyParams.f78086c, xMSSMTKeyParams.d, DigestUtil.a(aSN1ObjectIdentifier)));
            int i2 = xMSSPrivateKey.f78092b;
            byte[] bArr = xMSSPrivateKey.g;
            builder.f78187b = i2;
            builder.f78188c = XMSSUtil.b(Arrays.c(xMSSPrivateKey.f78093c));
            builder.d = XMSSUtil.b(Arrays.c(xMSSPrivateKey.d));
            builder.f78189e = XMSSUtil.b(Arrays.c(xMSSPrivateKey.f78094e));
            builder.f78190f = XMSSUtil.b(Arrays.c(xMSSPrivateKey.f78095f));
            if (Arrays.c(bArr) != null) {
                builder.g = (BDSStateMap) new ObjectInputStream(new ByteArrayInputStream(Arrays.c(bArr))).readObject();
            }
            this.f78233c = new XMSSMTPrivateKeyParameters(builder);
        } catch (ClassNotFoundException e2) {
            az.y(e2.getMessage(), "ClassNotFoundException processing BDS state: ");
            throw null;
        }
    }

    public final XMSSMTPrivateKey a() {
        XMSSMTPrivateKeyParameters xMSSMTPrivateKeyParameters = this.f78233c;
        byte[] bArrA = xMSSMTPrivateKeyParameters.a();
        XMSSMTParameters xMSSMTParameters = xMSSMTPrivateKeyParameters.f78181b;
        int iA = xMSSMTParameters.f78178a.a();
        int i2 = xMSSMTParameters.f78179b;
        int i3 = (i2 + 7) / 8;
        int iA2 = (int) XMSSUtil.a(i3, bArrA);
        if (!XMSSUtil.f(i2, iA2)) {
            md.n("index out of bounds");
            return null;
        }
        byte[] bArrE = XMSSUtil.e(bArrA, i3, iA);
        int i4 = i3 + iA;
        byte[] bArrE2 = XMSSUtil.e(bArrA, i4, iA);
        int i5 = i4 + iA;
        byte[] bArrE3 = XMSSUtil.e(bArrA, i5, iA);
        int i6 = i5 + iA;
        byte[] bArrE4 = XMSSUtil.e(bArrA, i6, iA);
        int i7 = i6 + iA;
        return new XMSSMTPrivateKey(iA2, bArrE, bArrE2, bArrE3, bArrE4, XMSSUtil.e(bArrA, i7, bArrA.length - i7));
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof BCXMSSMTPrivateKey) {
            BCXMSSMTPrivateKey bCXMSSMTPrivateKey = (BCXMSSMTPrivateKey) obj;
            if (this.f78232b.equals(bCXMSSMTPrivateKey.f78232b) && Arrays.a(this.f78233c.a(), bCXMSSMTPrivateKey.f78233c.a())) {
                return true;
            }
        }
        return false;
    }

    @Override // java.security.Key
    public final String getAlgorithm() {
        return "XMSSMT";
    }

    @Override // java.security.Key
    public final byte[] getEncoded() {
        try {
            ASN1ObjectIdentifier aSN1ObjectIdentifier = PQCObjectIdentifiers.g;
            XMSSMTParameters xMSSMTParameters = this.f78233c.f78181b;
            return new PrivateKeyInfo(new AlgorithmIdentifier(aSN1ObjectIdentifier, new XMSSMTKeyParams(xMSSMTParameters.f78179b, xMSSMTParameters.f78180c, new AlgorithmIdentifier(this.f78232b))), a()).f();
        } catch (IOException unused) {
            return null;
        }
    }

    @Override // java.security.Key
    public final String getFormat() {
        return "PKCS#8";
    }

    public final int hashCode() {
        return (Arrays.g(this.f78233c.a()) * 37) + this.f78232b.f77710b.hashCode();
    }

    public BCXMSSMTPrivateKey(ASN1ObjectIdentifier aSN1ObjectIdentifier, XMSSMTPrivateKeyParameters xMSSMTPrivateKeyParameters) {
        this.f78232b = aSN1ObjectIdentifier;
        this.f78233c = xMSSMTPrivateKeyParameters;
    }
}
