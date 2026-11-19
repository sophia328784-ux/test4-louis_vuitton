package org.spongycastle.pqc.jcajce.provider.rainbow;

import java.io.IOException;
import java.security.PrivateKey;
import java.util.Arrays;
import org.spongycastle.asn1.DERNull;
import org.spongycastle.asn1.pkcs.PrivateKeyInfo;
import org.spongycastle.asn1.x509.AlgorithmIdentifier;
import org.spongycastle.pqc.asn1.PQCObjectIdentifiers;
import org.spongycastle.pqc.asn1.RainbowPrivateKey;
import org.spongycastle.pqc.crypto.rainbow.Layer;
import org.spongycastle.pqc.crypto.rainbow.RainbowPrivateKeyParameters;
import org.spongycastle.pqc.crypto.rainbow.util.RainbowUtil;
import org.spongycastle.pqc.jcajce.spec.RainbowPrivateKeySpec;

/* JADX INFO: loaded from: classes5.dex */
public class BCRainbowPrivateKey implements PrivateKey {
    private static final long serialVersionUID = 1;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final short[][] f78221b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final short[] f78222c;
    public final short[][] d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final short[] f78223e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Layer[] f78224f;
    public final int[] g;

    public BCRainbowPrivateKey(RainbowPrivateKeyParameters rainbowPrivateKeyParameters) {
        this(rainbowPrivateKeyParameters.f78123c, rainbowPrivateKeyParameters.d, rainbowPrivateKeyParameters.f78124e, rainbowPrivateKeyParameters.f78125f, rainbowPrivateKeyParameters.g, rainbowPrivateKeyParameters.f78126h);
    }

    public final boolean equals(Object obj) {
        if (obj == null || !(obj instanceof BCRainbowPrivateKey)) {
            return false;
        }
        BCRainbowPrivateKey bCRainbowPrivateKey = (BCRainbowPrivateKey) obj;
        Layer[] layerArr = bCRainbowPrivateKey.f78224f;
        boolean zEquals = RainbowUtil.h(this.f78221b, bCRainbowPrivateKey.f78221b) && RainbowUtil.h(this.d, bCRainbowPrivateKey.d) && RainbowUtil.g(this.f78222c, bCRainbowPrivateKey.f78222c) && RainbowUtil.g(this.f78223e, bCRainbowPrivateKey.f78223e) && Arrays.equals(this.g, bCRainbowPrivateKey.g);
        Layer[] layerArr2 = this.f78224f;
        if (layerArr2.length != layerArr.length) {
            return false;
        }
        for (int length = layerArr2.length - 1; length >= 0; length--) {
            zEquals &= layerArr2[length].equals(layerArr[length]);
        }
        return zEquals;
    }

    @Override // java.security.Key
    public final String getAlgorithm() {
        return "Rainbow";
    }

    @Override // java.security.Key
    public final byte[] getEncoded() {
        try {
            return new PrivateKeyInfo(new AlgorithmIdentifier(PQCObjectIdentifiers.f78066a, DERNull.f77751b), new RainbowPrivateKey(this.f78221b, this.f78222c, this.d, this.f78223e, this.g, this.f78224f)).f();
        } catch (IOException unused) {
            return null;
        }
    }

    @Override // java.security.Key
    public final String getFormat() {
        return "PKCS#8";
    }

    public final int hashCode() {
        Layer[] layerArr = this.f78224f;
        int iH = org.spongycastle.util.Arrays.h(this.g) + ((org.spongycastle.util.Arrays.j(this.f78223e) + ((org.spongycastle.util.Arrays.k(this.d) + ((org.spongycastle.util.Arrays.j(this.f78222c) + ((org.spongycastle.util.Arrays.k(this.f78221b) + (layerArr.length * 37)) * 37)) * 37)) * 37)) * 37);
        for (int length = layerArr.length - 1; length >= 0; length--) {
            iH = (iH * 37) + layerArr[length].hashCode();
        }
        return iH;
    }

    public BCRainbowPrivateKey(short[][] sArr, short[] sArr2, short[][] sArr3, short[] sArr4, int[] iArr, Layer[] layerArr) {
        this.f78221b = sArr;
        this.f78222c = sArr2;
        this.d = sArr3;
        this.f78223e = sArr4;
        this.g = iArr;
        this.f78224f = layerArr;
    }

    public BCRainbowPrivateKey(RainbowPrivateKeySpec rainbowPrivateKeySpec) {
        this(rainbowPrivateKeySpec.f78240b, rainbowPrivateKeySpec.f78241c, rainbowPrivateKeySpec.d, rainbowPrivateKeySpec.f78242e, rainbowPrivateKeySpec.f78243f, rainbowPrivateKeySpec.g);
    }
}
