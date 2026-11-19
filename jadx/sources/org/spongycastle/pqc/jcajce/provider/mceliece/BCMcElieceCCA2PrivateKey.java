package org.spongycastle.pqc.jcajce.provider.mceliece;

import java.io.IOException;
import java.security.PrivateKey;
import org.spongycastle.asn1.pkcs.PrivateKeyInfo;
import org.spongycastle.asn1.x509.AlgorithmIdentifier;
import org.spongycastle.pqc.asn1.McElieceCCA2PrivateKey;
import org.spongycastle.pqc.asn1.PQCObjectIdentifiers;
import org.spongycastle.pqc.crypto.mceliece.McElieceCCA2PrivateKeyParameters;

/* JADX INFO: loaded from: classes5.dex */
public class BCMcElieceCCA2PrivateKey implements PrivateKey {
    private static final long serialVersionUID = 1;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final McElieceCCA2PrivateKeyParameters f78215b;

    public BCMcElieceCCA2PrivateKey(McElieceCCA2PrivateKeyParameters mcElieceCCA2PrivateKeyParameters) {
        this.f78215b = mcElieceCCA2PrivateKeyParameters;
    }

    public final boolean equals(Object obj) {
        if (obj != null && (obj instanceof BCMcElieceCCA2PrivateKey)) {
            McElieceCCA2PrivateKeyParameters mcElieceCCA2PrivateKeyParameters = ((BCMcElieceCCA2PrivateKey) obj).f78215b;
            McElieceCCA2PrivateKeyParameters mcElieceCCA2PrivateKeyParameters2 = this.f78215b;
            if (mcElieceCCA2PrivateKeyParameters2.f78099c == mcElieceCCA2PrivateKeyParameters.f78099c && mcElieceCCA2PrivateKeyParameters2.d == mcElieceCCA2PrivateKeyParameters.d && mcElieceCCA2PrivateKeyParameters2.f78100e.equals(mcElieceCCA2PrivateKeyParameters.f78100e) && mcElieceCCA2PrivateKeyParameters2.f78101f.equals(mcElieceCCA2PrivateKeyParameters.f78101f) && mcElieceCCA2PrivateKeyParameters2.g.equals(mcElieceCCA2PrivateKeyParameters.g) && mcElieceCCA2PrivateKeyParameters2.f78102h.equals(mcElieceCCA2PrivateKeyParameters.f78102h)) {
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
        try {
            McElieceCCA2PrivateKeyParameters mcElieceCCA2PrivateKeyParameters = this.f78215b;
            return new PrivateKeyInfo(new AlgorithmIdentifier(PQCObjectIdentifiers.f78068c), new McElieceCCA2PrivateKey(mcElieceCCA2PrivateKeyParameters.f78099c, mcElieceCCA2PrivateKeyParameters.d, mcElieceCCA2PrivateKeyParameters.f78100e, mcElieceCCA2PrivateKeyParameters.f78101f, mcElieceCCA2PrivateKeyParameters.g, Utils.a(mcElieceCCA2PrivateKeyParameters.f78098b))).f();
        } catch (IOException unused) {
            return null;
        }
    }

    @Override // java.security.Key
    public final String getFormat() {
        return "PKCS#8";
    }

    public final int hashCode() {
        McElieceCCA2PrivateKeyParameters mcElieceCCA2PrivateKeyParameters = this.f78215b;
        return mcElieceCCA2PrivateKeyParameters.f78102h.hashCode() + ((mcElieceCCA2PrivateKeyParameters.g.f78255a.hashCode() + ((mcElieceCCA2PrivateKeyParameters.f78101f.hashCode() + (((((mcElieceCCA2PrivateKeyParameters.d * 37) + mcElieceCCA2PrivateKeyParameters.f78099c) * 37) + mcElieceCCA2PrivateKeyParameters.f78100e.f78249b) * 37)) * 37)) * 37);
    }
}
