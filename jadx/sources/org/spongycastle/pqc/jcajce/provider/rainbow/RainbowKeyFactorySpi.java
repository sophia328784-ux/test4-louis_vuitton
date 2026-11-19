package org.spongycastle.pqc.jcajce.provider.rainbow;

import com.sightcall.universal.media.offline.FileUtils;
import defpackage.fc;
import defpackage.pq0;
import defpackage.wp;
import java.security.InvalidKeyException;
import java.security.Key;
import java.security.KeyFactorySpi;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.KeySpec;
import java.security.spec.PKCS8EncodedKeySpec;
import java.security.spec.X509EncodedKeySpec;
import org.spongycastle.asn1.ASN1Integer;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.ASN1OctetString;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.pkcs.PrivateKeyInfo;
import org.spongycastle.asn1.x509.SubjectPublicKeyInfo;
import org.spongycastle.jcajce.provider.util.AsymmetricKeyInfoConverter;
import org.spongycastle.pqc.asn1.RainbowPrivateKey;
import org.spongycastle.pqc.asn1.RainbowPublicKey;
import org.spongycastle.pqc.crypto.rainbow.Layer;
import org.spongycastle.pqc.crypto.rainbow.util.RainbowUtil;
import org.spongycastle.pqc.jcajce.spec.RainbowPrivateKeySpec;
import org.spongycastle.pqc.jcajce.spec.RainbowPublicKeySpec;
import org.spongycastle.util.Arrays;

/* JADX INFO: loaded from: classes5.dex */
public class RainbowKeyFactorySpi extends KeyFactorySpi implements AsymmetricKeyInfoConverter {
    public final PrivateKey a(PrivateKeyInfo privateKeyInfo) {
        RainbowPrivateKey rainbowPrivateKey;
        ASN1Primitive aSN1PrimitiveM = privateKeyInfo.m();
        int i2 = 0;
        if (aSN1PrimitiveM != null) {
            ASN1Sequence aSN1SequenceR = ASN1Sequence.r(aSN1PrimitiveM);
            rainbowPrivateKey = new RainbowPrivateKey();
            if (aSN1SequenceR.s(0) instanceof ASN1Integer) {
                rainbowPrivateKey.f78071b = ASN1Integer.r(aSN1SequenceR.s(0));
            } else {
                rainbowPrivateKey.f78072c = ASN1ObjectIdentifier.u(aSN1SequenceR.s(0));
            }
            ASN1Sequence aSN1Sequence = (ASN1Sequence) aSN1SequenceR.s(1);
            rainbowPrivateKey.d = new byte[aSN1Sequence.size()][];
            for (int i3 = 0; i3 < aSN1Sequence.size(); i3++) {
                rainbowPrivateKey.d[i3] = ((ASN1OctetString) aSN1Sequence.s(i3)).s();
            }
            rainbowPrivateKey.f78073e = ((ASN1OctetString) ((ASN1Sequence) aSN1SequenceR.s(2)).s(0)).s();
            ASN1Sequence aSN1Sequence2 = (ASN1Sequence) aSN1SequenceR.s(3);
            rainbowPrivateKey.f78074f = new byte[aSN1Sequence2.size()][];
            for (int i4 = 0; i4 < aSN1Sequence2.size(); i4++) {
                rainbowPrivateKey.f78074f[i4] = ((ASN1OctetString) aSN1Sequence2.s(i4)).s();
            }
            rainbowPrivateKey.g = ((ASN1OctetString) ((ASN1Sequence) aSN1SequenceR.s(4)).s(0)).s();
            rainbowPrivateKey.f78075h = ((ASN1OctetString) ((ASN1Sequence) aSN1SequenceR.s(5)).s(0)).s();
            ASN1Sequence aSN1Sequence3 = (ASN1Sequence) aSN1SequenceR.s(6);
            byte[][][][] bArr = new byte[aSN1Sequence3.size()][][][];
            byte[][][][] bArr2 = new byte[aSN1Sequence3.size()][][][];
            byte[][][] bArr3 = new byte[aSN1Sequence3.size()][][];
            byte[][] bArr4 = new byte[aSN1Sequence3.size()][];
            int i5 = 0;
            while (i5 < aSN1Sequence3.size()) {
                ASN1Sequence aSN1Sequence4 = (ASN1Sequence) aSN1Sequence3.s(i5);
                ASN1Sequence aSN1Sequence5 = (ASN1Sequence) aSN1Sequence4.s(i2);
                bArr[i5] = new byte[aSN1Sequence5.size()][][];
                for (int i6 = i2; i6 < aSN1Sequence5.size(); i6++) {
                    ASN1Sequence aSN1Sequence6 = (ASN1Sequence) aSN1Sequence5.s(i6);
                    bArr[i5][i6] = new byte[aSN1Sequence6.size()][];
                    for (int i7 = 0; i7 < aSN1Sequence6.size(); i7++) {
                        bArr[i5][i6][i7] = ((ASN1OctetString) aSN1Sequence6.s(i7)).s();
                    }
                }
                ASN1Sequence aSN1Sequence7 = (ASN1Sequence) aSN1Sequence4.s(1);
                bArr2[i5] = new byte[aSN1Sequence7.size()][][];
                for (int i8 = 0; i8 < aSN1Sequence7.size(); i8++) {
                    ASN1Sequence aSN1Sequence8 = (ASN1Sequence) aSN1Sequence7.s(i8);
                    bArr2[i5][i8] = new byte[aSN1Sequence8.size()][];
                    for (int i9 = 0; i9 < aSN1Sequence8.size(); i9++) {
                        bArr2[i5][i8][i9] = ((ASN1OctetString) aSN1Sequence8.s(i9)).s();
                    }
                }
                ASN1Sequence aSN1Sequence9 = (ASN1Sequence) aSN1Sequence4.s(2);
                bArr3[i5] = new byte[aSN1Sequence9.size()][];
                for (int i10 = 0; i10 < aSN1Sequence9.size(); i10++) {
                    bArr3[i5][i10] = ((ASN1OctetString) aSN1Sequence9.s(i10)).s();
                }
                bArr4[i5] = ((ASN1OctetString) aSN1Sequence4.s(3)).s();
                i5++;
                i2 = 0;
            }
            int length = rainbowPrivateKey.f78075h.length - 1;
            rainbowPrivateKey.f78076i = new Layer[length];
            int i11 = 0;
            while (i11 < length) {
                byte[] bArr5 = rainbowPrivateKey.f78075h;
                int i12 = i11 + 1;
                rainbowPrivateKey.f78076i[i11] = new Layer(bArr5[i11], bArr5[i12], RainbowUtil.f(bArr[i11]), RainbowUtil.f(bArr2[i11]), RainbowUtil.d(bArr3[i11]), RainbowUtil.b(bArr4[i11]));
                i11 = i12;
            }
        } else {
            rainbowPrivateKey = null;
        }
        short[][] sArrD = RainbowUtil.d(rainbowPrivateKey.d);
        short[] sArrB = RainbowUtil.b(rainbowPrivateKey.f78073e);
        short[][] sArrD2 = RainbowUtil.d(rainbowPrivateKey.f78074f);
        short[] sArrB2 = RainbowUtil.b(rainbowPrivateKey.g);
        byte[] bArr6 = rainbowPrivateKey.f78075h;
        int[] iArr = new int[bArr6.length];
        for (int i13 = 0; i13 < bArr6.length; i13++) {
            iArr[i13] = bArr6[i13] & 255;
        }
        return new BCRainbowPrivateKey(sArrD, sArrB, sArrD2, sArrB2, iArr, rainbowPrivateKey.f78076i);
    }

    public final PublicKey b(SubjectPublicKeyInfo subjectPublicKeyInfo) {
        RainbowPublicKey rainbowPublicKey;
        ASN1Primitive aSN1PrimitiveM = subjectPublicKeyInfo.m();
        if (aSN1PrimitiveM != null) {
            ASN1Sequence aSN1SequenceR = ASN1Sequence.r(aSN1PrimitiveM);
            rainbowPublicKey = new RainbowPublicKey();
            if (aSN1SequenceR.s(0) instanceof ASN1Integer) {
                rainbowPublicKey.f78077b = ASN1Integer.r(aSN1SequenceR.s(0));
            } else {
                rainbowPublicKey.f78078c = ASN1ObjectIdentifier.u(aSN1SequenceR.s(0));
            }
            rainbowPublicKey.d = ASN1Integer.r(aSN1SequenceR.s(1));
            ASN1Sequence aSN1SequenceR2 = ASN1Sequence.r(aSN1SequenceR.s(2));
            rainbowPublicKey.f78079e = new byte[aSN1SequenceR2.size()][];
            for (int i2 = 0; i2 < aSN1SequenceR2.size(); i2++) {
                rainbowPublicKey.f78079e[i2] = ASN1OctetString.r(aSN1SequenceR2.s(i2)).s();
            }
            ASN1Sequence aSN1Sequence = (ASN1Sequence) aSN1SequenceR.s(3);
            rainbowPublicKey.f78080f = new byte[aSN1Sequence.size()][];
            for (int i3 = 0; i3 < aSN1Sequence.size(); i3++) {
                rainbowPublicKey.f78080f[i3] = ASN1OctetString.r(aSN1Sequence.s(i3)).s();
            }
            rainbowPublicKey.g = ASN1OctetString.r(((ASN1Sequence) aSN1SequenceR.s(4)).s(0)).s();
        } else {
            rainbowPublicKey = null;
        }
        return new BCRainbowPublicKey(rainbowPublicKey.d.s().intValue(), RainbowUtil.d(rainbowPublicKey.f78079e), RainbowUtil.d(rainbowPublicKey.f78080f), RainbowUtil.b(rainbowPublicKey.g));
    }

    @Override // java.security.KeyFactorySpi
    public final PrivateKey engineGeneratePrivate(KeySpec keySpec) throws InvalidKeySpecException {
        if (keySpec instanceof RainbowPrivateKeySpec) {
            return new BCRainbowPrivateKey((RainbowPrivateKeySpec) keySpec);
        }
        if (!(keySpec instanceof PKCS8EncodedKeySpec)) {
            throw new InvalidKeySpecException(fc.n(keySpec, new StringBuilder("Unsupported key specification: "), FileUtils.HIDDEN_PREFIX));
        }
        try {
            return a(PrivateKeyInfo.i(ASN1Primitive.n(((PKCS8EncodedKeySpec) keySpec).getEncoded())));
        } catch (Exception e2) {
            wp.b(e2);
            return null;
        }
    }

    @Override // java.security.KeyFactorySpi
    public final PublicKey engineGeneratePublic(KeySpec keySpec) throws InvalidKeySpecException {
        if (keySpec instanceof RainbowPublicKeySpec) {
            return new BCRainbowPublicKey((RainbowPublicKeySpec) keySpec);
        }
        if (!(keySpec instanceof X509EncodedKeySpec)) {
            throw new InvalidKeySpecException(fc.j("Unknown key specification: ", keySpec, FileUtils.HIDDEN_PREFIX));
        }
        try {
            return b(SubjectPublicKeyInfo.i(((X509EncodedKeySpec) keySpec).getEncoded()));
        } catch (Exception e2) {
            wp.b(e2);
            return null;
        }
    }

    @Override // java.security.KeyFactorySpi
    public final KeySpec engineGetKeySpec(Key key, Class cls) throws InvalidKeySpecException {
        if (key instanceof BCRainbowPrivateKey) {
            if (PKCS8EncodedKeySpec.class.isAssignableFrom(cls)) {
                return new PKCS8EncodedKeySpec(key.getEncoded());
            }
            if (RainbowPrivateKeySpec.class.isAssignableFrom(cls)) {
                BCRainbowPrivateKey bCRainbowPrivateKey = (BCRainbowPrivateKey) key;
                return new RainbowPrivateKeySpec(bCRainbowPrivateKey.f78221b, bCRainbowPrivateKey.f78222c, bCRainbowPrivateKey.d, bCRainbowPrivateKey.f78223e, bCRainbowPrivateKey.g, bCRainbowPrivateKey.f78224f);
            }
        } else {
            if (!(key instanceof BCRainbowPublicKey)) {
                throw new InvalidKeySpecException(fc.m(key, new StringBuilder("Unsupported key type: "), FileUtils.HIDDEN_PREFIX));
            }
            if (X509EncodedKeySpec.class.isAssignableFrom(cls)) {
                return new X509EncodedKeySpec(key.getEncoded());
            }
            if (RainbowPublicKeySpec.class.isAssignableFrom(cls)) {
                BCRainbowPublicKey bCRainbowPublicKey = (BCRainbowPublicKey) key;
                int i2 = bCRainbowPublicKey.f78227e;
                short[][] sArr = bCRainbowPublicKey.f78225b;
                short[][] sArr2 = bCRainbowPublicKey.f78226c;
                short[][] sArr3 = new short[sArr2.length][];
                for (int i3 = 0; i3 != sArr2.length; i3++) {
                    sArr3[i3] = Arrays.d(sArr2[i3]);
                }
                return new RainbowPublicKeySpec(i2, sArr, sArr3, Arrays.d(bCRainbowPublicKey.d));
            }
        }
        throw new InvalidKeySpecException(pq0.n(cls, "Unknown key specification: ", FileUtils.HIDDEN_PREFIX));
    }

    @Override // java.security.KeyFactorySpi
    public final Key engineTranslateKey(Key key) throws InvalidKeyException {
        if ((key instanceof BCRainbowPrivateKey) || (key instanceof BCRainbowPublicKey)) {
            return key;
        }
        wp.d("Unsupported key type");
        return null;
    }
}
