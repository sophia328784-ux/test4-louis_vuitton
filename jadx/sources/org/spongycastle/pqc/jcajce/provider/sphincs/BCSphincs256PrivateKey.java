package org.spongycastle.pqc.jcajce.provider.sphincs;

import java.io.IOException;
import java.security.PrivateKey;
import org.spongycastle.asn1.ASN1Encodable;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.ASN1OctetString;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.DEROctetString;
import org.spongycastle.asn1.pkcs.PrivateKeyInfo;
import org.spongycastle.asn1.x509.AlgorithmIdentifier;
import org.spongycastle.pqc.asn1.PQCObjectIdentifiers;
import org.spongycastle.pqc.asn1.SPHINCS256KeyParams;
import org.spongycastle.pqc.crypto.sphincs.SPHINCSPrivateKeyParameters;
import org.spongycastle.pqc.jcajce.interfaces.SPHINCSKey;
import org.spongycastle.util.Arrays;

/* JADX INFO: loaded from: classes5.dex */
public class BCSphincs256PrivateKey implements PrivateKey, SPHINCSKey {
    private static final long serialVersionUID = 1;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ASN1ObjectIdentifier f78228b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final SPHINCSPrivateKeyParameters f78229c;

    public BCSphincs256PrivateKey(PrivateKeyInfo privateKeyInfo) throws IOException {
        ASN1Encodable aSN1Encodable = privateKeyInfo.f77797c.f77823c;
        this.f78228b = (aSN1Encodable instanceof SPHINCS256KeyParams ? (SPHINCS256KeyParams) aSN1Encodable : aSN1Encodable != null ? new SPHINCS256KeyParams(ASN1Sequence.r(aSN1Encodable)) : null).f78082c.f77822b;
        this.f78229c = new SPHINCSPrivateKeyParameters(ASN1OctetString.r(privateKeyInfo.m()).s());
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof BCSphincs256PrivateKey) {
            BCSphincs256PrivateKey bCSphincs256PrivateKey = (BCSphincs256PrivateKey) obj;
            if (this.f78228b.equals(bCSphincs256PrivateKey.f78228b) && Arrays.a(Arrays.c(this.f78229c.f78129b), Arrays.c(bCSphincs256PrivateKey.f78229c.f78129b))) {
                return true;
            }
        }
        return false;
    }

    @Override // java.security.Key
    public final String getAlgorithm() {
        return "SPHINCS-256";
    }

    @Override // java.security.Key
    public final byte[] getEncoded() {
        try {
            return new PrivateKeyInfo(new AlgorithmIdentifier(PQCObjectIdentifiers.d, new SPHINCS256KeyParams(new AlgorithmIdentifier(this.f78228b))), new DEROctetString(Arrays.c(this.f78229c.f78129b))).f();
        } catch (IOException unused) {
            return null;
        }
    }

    @Override // java.security.Key
    public final String getFormat() {
        return "PKCS#8";
    }

    public final int hashCode() {
        return (Arrays.g(Arrays.c(this.f78229c.f78129b)) * 37) + this.f78228b.f77710b.hashCode();
    }

    public BCSphincs256PrivateKey(ASN1ObjectIdentifier aSN1ObjectIdentifier, SPHINCSPrivateKeyParameters sPHINCSPrivateKeyParameters) {
        this.f78228b = aSN1ObjectIdentifier;
        this.f78229c = sPHINCSPrivateKeyParameters;
    }
}
