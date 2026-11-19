package org.spongycastle.pqc.jcajce.provider.sphincs;

import java.io.IOException;
import java.security.PublicKey;
import org.spongycastle.asn1.ASN1Encodable;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.x509.AlgorithmIdentifier;
import org.spongycastle.asn1.x509.SubjectPublicKeyInfo;
import org.spongycastle.pqc.asn1.PQCObjectIdentifiers;
import org.spongycastle.pqc.asn1.SPHINCS256KeyParams;
import org.spongycastle.pqc.crypto.sphincs.SPHINCSPublicKeyParameters;
import org.spongycastle.pqc.jcajce.interfaces.SPHINCSKey;
import org.spongycastle.util.Arrays;

/* JADX INFO: loaded from: classes5.dex */
public class BCSphincs256PublicKey implements PublicKey, SPHINCSKey {
    private static final long serialVersionUID = 1;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ASN1ObjectIdentifier f78230b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final SPHINCSPublicKeyParameters f78231c;

    public BCSphincs256PublicKey(SubjectPublicKeyInfo subjectPublicKeyInfo) {
        ASN1Encodable aSN1Encodable = subjectPublicKeyInfo.f77824b.f77823c;
        this.f78230b = (aSN1Encodable instanceof SPHINCS256KeyParams ? (SPHINCS256KeyParams) aSN1Encodable : aSN1Encodable != null ? new SPHINCS256KeyParams(ASN1Sequence.r(aSN1Encodable)) : null).f78082c.f77822b;
        this.f78231c = new SPHINCSPublicKeyParameters(subjectPublicKeyInfo.f77825c.r());
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof BCSphincs256PublicKey) {
            BCSphincs256PublicKey bCSphincs256PublicKey = (BCSphincs256PublicKey) obj;
            if (this.f78230b.equals(bCSphincs256PublicKey.f78230b) && Arrays.a(Arrays.c(this.f78231c.f78130b), Arrays.c(bCSphincs256PublicKey.f78231c.f78130b))) {
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
            return new SubjectPublicKeyInfo(new AlgorithmIdentifier(PQCObjectIdentifiers.d, new SPHINCS256KeyParams(new AlgorithmIdentifier(this.f78230b))), Arrays.c(this.f78231c.f78130b)).f();
        } catch (IOException unused) {
            return null;
        }
    }

    @Override // java.security.Key
    public final String getFormat() {
        return "X.509";
    }

    public final int hashCode() {
        return (Arrays.g(Arrays.c(this.f78231c.f78130b)) * 37) + this.f78230b.f77710b.hashCode();
    }

    public BCSphincs256PublicKey(ASN1ObjectIdentifier aSN1ObjectIdentifier, SPHINCSPublicKeyParameters sPHINCSPublicKeyParameters) {
        this.f78230b = aSN1ObjectIdentifier;
        this.f78231c = sPHINCSPublicKeyParameters;
    }
}
