package org.spongycastle.pqc.jcajce.provider.xmss;

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
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.pkcs.PrivateKeyInfo;
import org.spongycastle.asn1.x509.SubjectPublicKeyInfo;
import org.spongycastle.jcajce.provider.util.AsymmetricKeyInfoConverter;

/* JADX INFO: loaded from: classes5.dex */
public class XMSSMTKeyFactorySpi extends KeyFactorySpi implements AsymmetricKeyInfoConverter {
    @Override // java.security.KeyFactorySpi
    public final PrivateKey engineGeneratePrivate(KeySpec keySpec) throws InvalidKeySpecException {
        if (!(keySpec instanceof PKCS8EncodedKeySpec)) {
            throw new InvalidKeySpecException(fc.n(keySpec, new StringBuilder("unsupported key specification: "), FileUtils.HIDDEN_PREFIX));
        }
        try {
            return new BCXMSSMTPrivateKey(PrivateKeyInfo.i(ASN1Primitive.n(((PKCS8EncodedKeySpec) keySpec).getEncoded())));
        } catch (Exception e2) {
            wp.b(e2);
            return null;
        }
    }

    @Override // java.security.KeyFactorySpi
    public final PublicKey engineGeneratePublic(KeySpec keySpec) throws InvalidKeySpecException {
        if (!(keySpec instanceof X509EncodedKeySpec)) {
            throw new InvalidKeySpecException(fc.j("unknown key specification: ", keySpec, FileUtils.HIDDEN_PREFIX));
        }
        try {
            return new BCXMSSMTPublicKey(SubjectPublicKeyInfo.i(((X509EncodedKeySpec) keySpec).getEncoded()));
        } catch (Exception e2) {
            wp.b(e2);
            return null;
        }
    }

    @Override // java.security.KeyFactorySpi
    public final KeySpec engineGetKeySpec(Key key, Class cls) throws InvalidKeySpecException {
        if (key instanceof BCXMSSMTPrivateKey) {
            if (PKCS8EncodedKeySpec.class.isAssignableFrom(cls)) {
                return new PKCS8EncodedKeySpec(key.getEncoded());
            }
        } else {
            if (!(key instanceof BCXMSSMTPublicKey)) {
                throw new InvalidKeySpecException(fc.m(key, new StringBuilder("unsupported key type: "), FileUtils.HIDDEN_PREFIX));
            }
            if (X509EncodedKeySpec.class.isAssignableFrom(cls)) {
                return new X509EncodedKeySpec(key.getEncoded());
            }
        }
        throw new InvalidKeySpecException(pq0.n(cls, "unknown key specification: ", FileUtils.HIDDEN_PREFIX));
    }

    @Override // java.security.KeyFactorySpi
    public final Key engineTranslateKey(Key key) throws InvalidKeyException {
        if ((key instanceof BCXMSSMTPrivateKey) || (key instanceof BCXMSSMTPublicKey)) {
            return key;
        }
        wp.d("unsupported key type");
        return null;
    }
}
