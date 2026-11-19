package org.spongycastle.pqc.jcajce.provider.newhope;

import java.io.IOException;
import org.spongycastle.asn1.ASN1OctetString;
import org.spongycastle.asn1.DEROctetString;
import org.spongycastle.asn1.pkcs.PrivateKeyInfo;
import org.spongycastle.asn1.x509.AlgorithmIdentifier;
import org.spongycastle.pqc.asn1.PQCObjectIdentifiers;
import org.spongycastle.pqc.crypto.newhope.NHPrivateKeyParameters;
import org.spongycastle.pqc.jcajce.interfaces.NHPrivateKey;
import org.spongycastle.util.Arrays;

/* JADX INFO: loaded from: classes5.dex */
public class BCNHPrivateKey implements NHPrivateKey {
    private static final long serialVersionUID = 1;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final NHPrivateKeyParameters f78219b;

    public BCNHPrivateKey(PrivateKeyInfo privateKeyInfo) throws IOException {
        byte[] bArrS = ASN1OctetString.r(privateKeyInfo.m()).s();
        int length = bArrS.length / 2;
        short[] sArr = new short[length];
        for (int i2 = 0; i2 != length; i2++) {
            int i3 = i2 * 2;
            sArr[i2] = (short) (((bArrS[i3 + 1] & 255) << 8) | (bArrS[i3] & 255));
        }
        this.f78219b = new NHPrivateKeyParameters(sArr);
    }

    public final boolean equals(Object obj) {
        if (obj != null && (obj instanceof BCNHPrivateKey)) {
            short[] sArrD = Arrays.d(this.f78219b.f78115b);
            short[] sArrD2 = Arrays.d(((BCNHPrivateKey) obj).f78219b.f78115b);
            if (sArrD == sArrD2) {
                return true;
            }
            if (sArrD != null && sArrD2 != null && sArrD.length == sArrD2.length) {
                for (int i2 = 0; i2 != sArrD.length; i2++) {
                    if (sArrD[i2] == sArrD2[i2]) {
                    }
                }
                return true;
            }
        }
        return false;
    }

    @Override // java.security.Key
    public final String getAlgorithm() {
        return "NH";
    }

    @Override // java.security.Key
    public final byte[] getEncoded() {
        try {
            AlgorithmIdentifier algorithmIdentifier = new AlgorithmIdentifier(PQCObjectIdentifiers.f78069e);
            short[] sArrD = Arrays.d(this.f78219b.f78115b);
            byte[] bArr = new byte[sArrD.length * 2];
            for (int i2 = 0; i2 != sArrD.length; i2++) {
                short s = sArrD[i2];
                int i3 = i2 * 2;
                bArr[i3] = (byte) s;
                bArr[i3 + 1] = (byte) (s >>> 8);
            }
            return new PrivateKeyInfo(algorithmIdentifier, new DEROctetString(bArr)).f();
        } catch (IOException unused) {
            return null;
        }
    }

    @Override // java.security.Key
    public final String getFormat() {
        return "PKCS#8";
    }

    public final int hashCode() {
        return Arrays.j(Arrays.d(this.f78219b.f78115b));
    }

    public BCNHPrivateKey(NHPrivateKeyParameters nHPrivateKeyParameters) {
        this.f78219b = nHPrivateKeyParameters;
    }
}
