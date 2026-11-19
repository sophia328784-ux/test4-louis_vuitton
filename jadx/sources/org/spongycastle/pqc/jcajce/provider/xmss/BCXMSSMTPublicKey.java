package org.spongycastle.pqc.jcajce.provider.xmss;

import java.io.IOException;
import java.security.PublicKey;
import org.spongycastle.asn1.ASN1Encodable;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.x509.AlgorithmIdentifier;
import org.spongycastle.asn1.x509.SubjectPublicKeyInfo;
import org.spongycastle.pqc.asn1.PQCObjectIdentifiers;
import org.spongycastle.pqc.asn1.XMSSMTKeyParams;
import org.spongycastle.pqc.asn1.XMSSPublicKey;
import org.spongycastle.pqc.crypto.xmss.XMSSMTParameters;
import org.spongycastle.pqc.crypto.xmss.XMSSMTPublicKeyParameters;
import org.spongycastle.pqc.crypto.xmss.XMSSUtil;
import org.spongycastle.pqc.jcajce.interfaces.XMSSMTKey;
import org.spongycastle.util.Arrays;

/* JADX INFO: loaded from: classes5.dex */
public class BCXMSSMTPublicKey implements PublicKey, XMSSMTKey {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ASN1ObjectIdentifier f78234b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final XMSSMTPublicKeyParameters f78235c;

    public BCXMSSMTPublicKey(SubjectPublicKeyInfo subjectPublicKeyInfo) throws IOException {
        XMSSMTKeyParams xMSSMTKeyParams;
        ASN1Encodable aSN1Encodable = subjectPublicKeyInfo.f77824b.f77823c;
        if (aSN1Encodable instanceof XMSSMTKeyParams) {
            xMSSMTKeyParams = (XMSSMTKeyParams) aSN1Encodable;
        } else {
            xMSSMTKeyParams = aSN1Encodable != null ? new XMSSMTKeyParams(ASN1Sequence.r(aSN1Encodable)) : null;
        }
        ASN1ObjectIdentifier aSN1ObjectIdentifier = xMSSMTKeyParams.f78087e.f77822b;
        this.f78234b = aSN1ObjectIdentifier;
        ASN1Primitive aSN1PrimitiveM = subjectPublicKeyInfo.m();
        XMSSPublicKey xMSSPublicKey = aSN1PrimitiveM != null ? new XMSSPublicKey(ASN1Sequence.r(aSN1PrimitiveM)) : null;
        XMSSMTPublicKeyParameters.Builder builder = new XMSSMTPublicKeyParameters.Builder(new XMSSMTParameters(xMSSMTKeyParams.f78086c, xMSSMTKeyParams.d, DigestUtil.a(aSN1ObjectIdentifier)));
        builder.f78195c = XMSSUtil.b(Arrays.c(xMSSPublicKey.f78096b));
        builder.f78194b = XMSSUtil.b(Arrays.c(xMSSPublicKey.f78097c));
        this.f78235c = new XMSSMTPublicKeyParameters(builder);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof BCXMSSMTPublicKey) {
            BCXMSSMTPublicKey bCXMSSMTPublicKey = (BCXMSSMTPublicKey) obj;
            if (this.f78234b.equals(bCXMSSMTPublicKey.f78234b) && Arrays.a(this.f78235c.a(), bCXMSSMTPublicKey.f78235c.a())) {
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
        XMSSMTPublicKeyParameters xMSSMTPublicKeyParameters = this.f78235c;
        try {
            ASN1ObjectIdentifier aSN1ObjectIdentifier = PQCObjectIdentifiers.g;
            XMSSMTParameters xMSSMTParameters = xMSSMTPublicKeyParameters.f78191b;
            return new SubjectPublicKeyInfo(new AlgorithmIdentifier(aSN1ObjectIdentifier, new XMSSMTKeyParams(xMSSMTParameters.f78179b, xMSSMTParameters.f78180c, new AlgorithmIdentifier(this.f78234b))), new XMSSPublicKey(XMSSUtil.b(xMSSMTPublicKeyParameters.d), XMSSUtil.b(xMSSMTPublicKeyParameters.f78192c))).f();
        } catch (IOException unused) {
            return null;
        }
    }

    @Override // java.security.Key
    public final String getFormat() {
        return "X.509";
    }

    public final int hashCode() {
        return (Arrays.g(this.f78235c.a()) * 37) + this.f78234b.f77710b.hashCode();
    }

    public BCXMSSMTPublicKey(ASN1ObjectIdentifier aSN1ObjectIdentifier, XMSSMTPublicKeyParameters xMSSMTPublicKeyParameters) {
        this.f78234b = aSN1ObjectIdentifier;
        this.f78235c = xMSSMTPublicKeyParameters;
    }
}
