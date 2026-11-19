package org.spongycastle.pqc.jcajce.provider.mceliece;

import java.io.IOException;
import java.security.PrivateKey;
import org.spongycastle.asn1.pkcs.PrivateKeyInfo;
import org.spongycastle.asn1.x509.AlgorithmIdentifier;
import org.spongycastle.crypto.CipherParameters;
import org.spongycastle.pqc.asn1.McEliecePrivateKey;
import org.spongycastle.pqc.asn1.PQCObjectIdentifiers;
import org.spongycastle.pqc.crypto.mceliece.McEliecePrivateKeyParameters;

/* JADX INFO: loaded from: classes5.dex */
public class BCMcEliecePrivateKey implements CipherParameters, PrivateKey {
    private static final long serialVersionUID = 1;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final McEliecePrivateKeyParameters f78217b;

    public BCMcEliecePrivateKey(McEliecePrivateKeyParameters mcEliecePrivateKeyParameters) {
        this.f78217b = mcEliecePrivateKeyParameters;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof BCMcEliecePrivateKey)) {
            return false;
        }
        McEliecePrivateKeyParameters mcEliecePrivateKeyParameters = ((BCMcEliecePrivateKey) obj).f78217b;
        McEliecePrivateKeyParameters mcEliecePrivateKeyParameters2 = this.f78217b;
        return mcEliecePrivateKeyParameters2.f78107b == mcEliecePrivateKeyParameters.f78107b && mcEliecePrivateKeyParameters2.f78108c == mcEliecePrivateKeyParameters.f78108c && mcEliecePrivateKeyParameters2.d.equals(mcEliecePrivateKeyParameters.d) && mcEliecePrivateKeyParameters2.f78109e.equals(mcEliecePrivateKeyParameters.f78109e) && mcEliecePrivateKeyParameters2.f78110f.equals(mcEliecePrivateKeyParameters.f78110f) && mcEliecePrivateKeyParameters2.g.equals(mcEliecePrivateKeyParameters.g) && mcEliecePrivateKeyParameters2.f78111h.equals(mcEliecePrivateKeyParameters.f78111h);
    }

    @Override // java.security.Key
    public final String getAlgorithm() {
        return "McEliece";
    }

    @Override // java.security.Key
    public final byte[] getEncoded() {
        McEliecePrivateKeyParameters mcEliecePrivateKeyParameters = this.f78217b;
        try {
            return new PrivateKeyInfo(new AlgorithmIdentifier(PQCObjectIdentifiers.f78067b), new McEliecePrivateKey(mcEliecePrivateKeyParameters.f78107b, mcEliecePrivateKeyParameters.f78108c, mcEliecePrivateKeyParameters.d, mcEliecePrivateKeyParameters.f78109e, mcEliecePrivateKeyParameters.g, mcEliecePrivateKeyParameters.f78111h, mcEliecePrivateKeyParameters.f78110f)).f();
        } catch (IOException unused) {
            return null;
        }
    }

    @Override // java.security.Key
    public final String getFormat() {
        return "PKCS#8";
    }

    public final int hashCode() {
        McEliecePrivateKeyParameters mcEliecePrivateKeyParameters = this.f78217b;
        return mcEliecePrivateKeyParameters.f78110f.hashCode() + ((mcEliecePrivateKeyParameters.f78111h.f78255a.hashCode() + ((mcEliecePrivateKeyParameters.g.f78255a.hashCode() + ((mcEliecePrivateKeyParameters.f78109e.hashCode() + (((((mcEliecePrivateKeyParameters.f78108c * 37) + mcEliecePrivateKeyParameters.f78107b) * 37) + mcEliecePrivateKeyParameters.d.f78249b) * 37)) * 37)) * 37)) * 37);
    }
}
