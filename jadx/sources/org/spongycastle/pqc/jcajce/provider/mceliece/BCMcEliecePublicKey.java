package org.spongycastle.pqc.jcajce.provider.mceliece;

import defpackage.a;
import defpackage.n00;
import java.io.IOException;
import java.security.PublicKey;
import org.spongycastle.asn1.x509.AlgorithmIdentifier;
import org.spongycastle.asn1.x509.SubjectPublicKeyInfo;
import org.spongycastle.pqc.asn1.McEliecePublicKey;
import org.spongycastle.pqc.asn1.PQCObjectIdentifiers;
import org.spongycastle.pqc.crypto.mceliece.McEliecePublicKeyParameters;

/* JADX INFO: loaded from: classes5.dex */
public class BCMcEliecePublicKey implements PublicKey {
    private static final long serialVersionUID = 1;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final McEliecePublicKeyParameters f78218b;

    public BCMcEliecePublicKey(McEliecePublicKeyParameters mcEliecePublicKeyParameters) {
        this.f78218b = mcEliecePublicKeyParameters;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof BCMcEliecePublicKey) {
            McEliecePublicKeyParameters mcEliecePublicKeyParameters = this.f78218b;
            int i2 = mcEliecePublicKeyParameters.f78113b;
            McEliecePublicKeyParameters mcEliecePublicKeyParameters2 = ((BCMcEliecePublicKey) obj).f78218b;
            if (i2 == mcEliecePublicKeyParameters2.f78113b && mcEliecePublicKeyParameters.f78114c == mcEliecePublicKeyParameters2.f78114c && mcEliecePublicKeyParameters.d.equals(mcEliecePublicKeyParameters2.d)) {
                return true;
            }
        }
        return false;
    }

    @Override // java.security.Key
    public final String getAlgorithm() {
        return "McEliece";
    }

    @Override // java.security.Key
    public final byte[] getEncoded() {
        McEliecePublicKeyParameters mcEliecePublicKeyParameters = this.f78218b;
        try {
            return new SubjectPublicKeyInfo(new AlgorithmIdentifier(PQCObjectIdentifiers.f78067b), new McEliecePublicKey(mcEliecePublicKeyParameters.f78113b, mcEliecePublicKeyParameters.f78114c, mcEliecePublicKeyParameters.d)).f();
        } catch (IOException unused) {
            return null;
        }
    }

    @Override // java.security.Key
    public final String getFormat() {
        return "X.509";
    }

    public final int hashCode() {
        McEliecePublicKeyParameters mcEliecePublicKeyParameters = this.f78218b;
        return mcEliecePublicKeyParameters.d.hashCode() + (((mcEliecePublicKeyParameters.f78114c * 37) + mcEliecePublicKeyParameters.f78113b) * 37);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("McEliecePublicKey:\n length of the code         : ");
        McEliecePublicKeyParameters mcEliecePublicKeyParameters = this.f78218b;
        StringBuilder sbU = n00.u(a.i(mcEliecePublicKeyParameters.f78114c, "\n", n00.u(a.i(mcEliecePublicKeyParameters.f78113b, "\n", sb), " error correction capability: ")), " generator matrix           : ");
        sbU.append(mcEliecePublicKeyParameters.d);
        return sbU.toString();
    }
}
