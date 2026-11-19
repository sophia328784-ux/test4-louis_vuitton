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
import org.spongycastle.pqc.asn1.XMSSKeyParams;
import org.spongycastle.pqc.asn1.XMSSPublicKey;
import org.spongycastle.pqc.crypto.xmss.XMSSParameters;
import org.spongycastle.pqc.crypto.xmss.XMSSPublicKeyParameters;
import org.spongycastle.pqc.crypto.xmss.XMSSUtil;
import org.spongycastle.pqc.jcajce.interfaces.XMSSKey;
import org.spongycastle.util.Arrays;

/* JADX INFO: loaded from: classes5.dex */
public class BCXMSSPublicKey implements PublicKey, XMSSKey {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final XMSSPublicKeyParameters f78238b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ASN1ObjectIdentifier f78239c;

    public BCXMSSPublicKey(SubjectPublicKeyInfo subjectPublicKeyInfo) throws IOException {
        XMSSKeyParams xMSSKeyParams;
        ASN1Encodable aSN1Encodable = subjectPublicKeyInfo.f77824b.f77823c;
        if (aSN1Encodable instanceof XMSSKeyParams) {
            xMSSKeyParams = (XMSSKeyParams) aSN1Encodable;
        } else {
            xMSSKeyParams = aSN1Encodable != null ? new XMSSKeyParams(ASN1Sequence.r(aSN1Encodable)) : null;
        }
        ASN1ObjectIdentifier aSN1ObjectIdentifier = xMSSKeyParams.d.f77822b;
        this.f78239c = aSN1ObjectIdentifier;
        ASN1Primitive aSN1PrimitiveM = subjectPublicKeyInfo.m();
        XMSSPublicKey xMSSPublicKey = aSN1PrimitiveM != null ? new XMSSPublicKey(ASN1Sequence.r(aSN1PrimitiveM)) : null;
        XMSSPublicKeyParameters.Builder builder = new XMSSPublicKeyParameters.Builder(new XMSSParameters(xMSSKeyParams.f78084c, DigestUtil.a(aSN1ObjectIdentifier)));
        builder.f78214c = XMSSUtil.b(Arrays.c(xMSSPublicKey.f78096b));
        builder.f78213b = XMSSUtil.b(Arrays.c(xMSSPublicKey.f78097c));
        this.f78238b = new XMSSPublicKeyParameters(builder);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof BCXMSSPublicKey) {
            BCXMSSPublicKey bCXMSSPublicKey = (BCXMSSPublicKey) obj;
            if (this.f78239c.equals(bCXMSSPublicKey.f78239c) && Arrays.a(this.f78238b.a(), bCXMSSPublicKey.f78238b.a())) {
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
        XMSSPublicKeyParameters xMSSPublicKeyParameters = this.f78238b;
        try {
            return new SubjectPublicKeyInfo(new AlgorithmIdentifier(PQCObjectIdentifiers.f78070f, new XMSSKeyParams(xMSSPublicKeyParameters.f78210b.f78199b, new AlgorithmIdentifier(this.f78239c))), new XMSSPublicKey(XMSSUtil.b(xMSSPublicKeyParameters.d), XMSSUtil.b(xMSSPublicKeyParameters.f78211c))).f();
        } catch (IOException unused) {
            return null;
        }
    }

    @Override // java.security.Key
    public final String getFormat() {
        return "X.509";
    }

    public final int hashCode() {
        return (Arrays.g(this.f78238b.a()) * 37) + this.f78239c.f77710b.hashCode();
    }

    public BCXMSSPublicKey(ASN1ObjectIdentifier aSN1ObjectIdentifier, XMSSPublicKeyParameters xMSSPublicKeyParameters) {
        this.f78239c = aSN1ObjectIdentifier;
        this.f78238b = xMSSPublicKeyParameters;
    }
}
