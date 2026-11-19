package org.spongycastle.pqc.jcajce.provider.rainbow;

import java.security.PublicKey;
import org.bouncycastle.asn1.ASN1Encoding;
import org.spongycastle.asn1.DERNull;
import org.spongycastle.asn1.x509.AlgorithmIdentifier;
import org.spongycastle.asn1.x509.SubjectPublicKeyInfo;
import org.spongycastle.pqc.asn1.PQCObjectIdentifiers;
import org.spongycastle.pqc.asn1.RainbowPublicKey;
import org.spongycastle.pqc.crypto.rainbow.RainbowPublicKeyParameters;
import org.spongycastle.pqc.crypto.rainbow.util.RainbowUtil;
import org.spongycastle.pqc.jcajce.spec.RainbowPublicKeySpec;
import org.spongycastle.util.Arrays;

/* JADX INFO: loaded from: classes5.dex */
public class BCRainbowPublicKey implements PublicKey {
    private static final long serialVersionUID = 1;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final short[][] f78225b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final short[][] f78226c;
    public final short[] d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f78227e;

    public BCRainbowPublicKey(RainbowPublicKeyParameters rainbowPublicKeyParameters) {
        this(rainbowPublicKeyParameters.f78122b, rainbowPublicKeyParameters.f78127c, rainbowPublicKeyParameters.d, rainbowPublicKeyParameters.f78128e);
    }

    public final boolean equals(Object obj) {
        if (obj != null && (obj instanceof BCRainbowPublicKey)) {
            BCRainbowPublicKey bCRainbowPublicKey = (BCRainbowPublicKey) obj;
            if (this.f78227e == bCRainbowPublicKey.f78227e && RainbowUtil.h(this.f78225b, bCRainbowPublicKey.f78225b)) {
                short[][] sArr = bCRainbowPublicKey.f78226c;
                short[][] sArr2 = new short[sArr.length][];
                for (int i2 = 0; i2 != sArr.length; i2++) {
                    sArr2[i2] = Arrays.d(sArr[i2]);
                }
                if (RainbowUtil.h(this.f78226c, sArr2)) {
                    if (RainbowUtil.g(this.d, Arrays.d(bCRainbowPublicKey.d))) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    @Override // java.security.Key
    public final String getAlgorithm() {
        return "Rainbow";
    }

    @Override // java.security.Key
    public final byte[] getEncoded() {
        try {
            return new SubjectPublicKeyInfo(new AlgorithmIdentifier(PQCObjectIdentifiers.f78066a, DERNull.f77751b), new RainbowPublicKey(this.f78227e, this.f78225b, this.f78226c, this.d)).h(ASN1Encoding.DER);
        } catch (Exception unused) {
            return null;
        }
    }

    @Override // java.security.Key
    public final String getFormat() {
        return "X.509";
    }

    public final int hashCode() {
        return Arrays.j(this.d) + ((Arrays.k(this.f78226c) + ((Arrays.k(this.f78225b) + (this.f78227e * 37)) * 37)) * 37);
    }

    public BCRainbowPublicKey(RainbowPublicKeySpec rainbowPublicKeySpec) {
        this(rainbowPublicKeySpec.f78246e, rainbowPublicKeySpec.f78244b, rainbowPublicKeySpec.f78245c, rainbowPublicKeySpec.d);
    }

    public BCRainbowPublicKey(int i2, short[][] sArr, short[][] sArr2, short[] sArr3) {
        this.f78227e = i2;
        this.f78225b = sArr;
        this.f78226c = sArr2;
        this.d = sArr3;
    }
}
