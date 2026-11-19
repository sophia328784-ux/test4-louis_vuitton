package org.spongycastle.pqc.jcajce.provider.newhope;

import java.io.IOException;
import org.spongycastle.asn1.x509.AlgorithmIdentifier;
import org.spongycastle.asn1.x509.SubjectPublicKeyInfo;
import org.spongycastle.pqc.asn1.PQCObjectIdentifiers;
import org.spongycastle.pqc.crypto.newhope.NHPublicKeyParameters;
import org.spongycastle.pqc.jcajce.interfaces.NHPublicKey;
import org.spongycastle.util.Arrays;

/* JADX INFO: loaded from: classes5.dex */
public class BCNHPublicKey implements NHPublicKey {
    private static final long serialVersionUID = 1;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final NHPublicKeyParameters f78220b;

    public BCNHPublicKey(SubjectPublicKeyInfo subjectPublicKeyInfo) {
        this.f78220b = new NHPublicKeyParameters(subjectPublicKeyInfo.f77825c.r());
    }

    public final boolean equals(Object obj) {
        if (obj == null || !(obj instanceof BCNHPublicKey)) {
            return false;
        }
        return Arrays.a(Arrays.c(this.f78220b.f78116b), Arrays.c(((BCNHPublicKey) obj).f78220b.f78116b));
    }

    @Override // java.security.Key
    public final String getAlgorithm() {
        return "NH";
    }

    @Override // java.security.Key
    public final byte[] getEncoded() {
        try {
            return new SubjectPublicKeyInfo(new AlgorithmIdentifier(PQCObjectIdentifiers.f78069e), Arrays.c(this.f78220b.f78116b)).f();
        } catch (IOException unused) {
            return null;
        }
    }

    @Override // java.security.Key
    public final String getFormat() {
        return "X.509";
    }

    public final int hashCode() {
        return Arrays.g(Arrays.c(this.f78220b.f78116b));
    }

    public BCNHPublicKey(NHPublicKeyParameters nHPublicKeyParameters) {
        this.f78220b = nHPublicKeyParameters;
    }
}
