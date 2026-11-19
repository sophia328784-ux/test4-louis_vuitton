package org.spongycastle.pqc.jcajce.provider.mceliece;

import defpackage.a;
import defpackage.n00;
import java.io.IOException;
import java.security.PublicKey;
import org.spongycastle.asn1.x509.AlgorithmIdentifier;
import org.spongycastle.asn1.x509.SubjectPublicKeyInfo;
import org.spongycastle.crypto.CipherParameters;
import org.spongycastle.pqc.asn1.McElieceCCA2PublicKey;
import org.spongycastle.pqc.asn1.PQCObjectIdentifiers;
import org.spongycastle.pqc.crypto.mceliece.McElieceCCA2PublicKeyParameters;

/* JADX INFO: loaded from: classes5.dex */
public class BCMcElieceCCA2PublicKey implements CipherParameters, PublicKey {
    private static final long serialVersionUID = 1;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final McElieceCCA2PublicKeyParameters f78216b;

    public BCMcElieceCCA2PublicKey(McElieceCCA2PublicKeyParameters mcElieceCCA2PublicKeyParameters) {
        this.f78216b = mcElieceCCA2PublicKeyParameters;
    }

    public final boolean equals(Object obj) {
        if (obj != null && (obj instanceof BCMcElieceCCA2PublicKey)) {
            McElieceCCA2PublicKeyParameters mcElieceCCA2PublicKeyParameters = this.f78216b;
            int i2 = mcElieceCCA2PublicKeyParameters.f78103c;
            McElieceCCA2PublicKeyParameters mcElieceCCA2PublicKeyParameters2 = ((BCMcElieceCCA2PublicKey) obj).f78216b;
            if (i2 == mcElieceCCA2PublicKeyParameters2.f78103c && mcElieceCCA2PublicKeyParameters.d == mcElieceCCA2PublicKeyParameters2.d && mcElieceCCA2PublicKeyParameters.f78104e.equals(mcElieceCCA2PublicKeyParameters2.f78104e)) {
                return true;
            }
        }
        return false;
    }

    @Override // java.security.Key
    public final String getAlgorithm() {
        return "McEliece-CCA2";
    }

    @Override // java.security.Key
    public final byte[] getEncoded() {
        McElieceCCA2PublicKeyParameters mcElieceCCA2PublicKeyParameters = this.f78216b;
        try {
            return new SubjectPublicKeyInfo(new AlgorithmIdentifier(PQCObjectIdentifiers.f78068c), new McElieceCCA2PublicKey(mcElieceCCA2PublicKeyParameters.f78103c, mcElieceCCA2PublicKeyParameters.d, mcElieceCCA2PublicKeyParameters.f78104e, Utils.a(mcElieceCCA2PublicKeyParameters.f78098b))).f();
        } catch (IOException unused) {
            return null;
        }
    }

    @Override // java.security.Key
    public final String getFormat() {
        return "X.509";
    }

    public final int hashCode() {
        McElieceCCA2PublicKeyParameters mcElieceCCA2PublicKeyParameters = this.f78216b;
        return mcElieceCCA2PublicKeyParameters.f78104e.hashCode() + (((mcElieceCCA2PublicKeyParameters.d * 37) + mcElieceCCA2PublicKeyParameters.f78103c) * 37);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("McEliecePublicKey:\n length of the code         : ");
        McElieceCCA2PublicKeyParameters mcElieceCCA2PublicKeyParameters = this.f78216b;
        StringBuilder sbU = n00.u(a.i(mcElieceCCA2PublicKeyParameters.d, "\n", n00.u(a.i(mcElieceCCA2PublicKeyParameters.f78103c, "\n", sb), " error correction capability: ")), " generator matrix           : ");
        sbU.append(mcElieceCCA2PublicKeyParameters.f78104e.toString());
        return sbU.toString();
    }
}
