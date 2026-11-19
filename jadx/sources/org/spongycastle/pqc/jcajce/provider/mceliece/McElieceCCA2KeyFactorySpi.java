package org.spongycastle.pqc.jcajce.provider.mceliece;

import com.sightcall.universal.media.offline.FileUtils;
import defpackage.fc;
import defpackage.n00;
import defpackage.o60;
import defpackage.wp;
import java.io.IOException;
import java.security.Key;
import java.security.KeyFactorySpi;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.KeySpec;
import java.security.spec.PKCS8EncodedKeySpec;
import java.security.spec.X509EncodedKeySpec;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.pkcs.PrivateKeyInfo;
import org.spongycastle.asn1.x509.SubjectPublicKeyInfo;
import org.spongycastle.jcajce.provider.util.AsymmetricKeyInfoConverter;
import org.spongycastle.pqc.asn1.McElieceCCA2PrivateKey;
import org.spongycastle.pqc.asn1.McElieceCCA2PublicKey;
import org.spongycastle.pqc.asn1.PQCObjectIdentifiers;
import org.spongycastle.pqc.crypto.mceliece.McElieceCCA2PrivateKeyParameters;
import org.spongycastle.pqc.crypto.mceliece.McElieceCCA2PublicKeyParameters;
import org.spongycastle.pqc.math.linearalgebra.GF2mField;
import org.spongycastle.pqc.math.linearalgebra.Permutation;
import org.spongycastle.pqc.math.linearalgebra.PolynomialGF2mSmallM;

/* JADX INFO: loaded from: classes5.dex */
public class McElieceCCA2KeyFactorySpi extends KeyFactorySpi implements AsymmetricKeyInfoConverter {
    @Override // java.security.KeyFactorySpi
    public final PrivateKey engineGeneratePrivate(KeySpec keySpec) throws InvalidKeySpecException {
        if (!(keySpec instanceof PKCS8EncodedKeySpec)) {
            throw new InvalidKeySpecException(fc.n(keySpec, new StringBuilder("Unsupported key specification: "), FileUtils.HIDDEN_PREFIX));
        }
        try {
            PrivateKeyInfo privateKeyInfoI = PrivateKeyInfo.i(ASN1Primitive.n(((PKCS8EncodedKeySpec) keySpec).getEncoded()));
            try {
                if (!PQCObjectIdentifiers.f78068c.equals(privateKeyInfoI.f77797c.f77822b)) {
                    throw new InvalidKeySpecException("Unable to recognise OID in McEliece public key");
                }
                McElieceCCA2PrivateKey mcElieceCCA2PrivateKeyI = McElieceCCA2PrivateKey.i(privateKeyInfoI.m());
                int i2 = mcElieceCCA2PrivateKeyI.f78052b;
                byte[] bArr = mcElieceCCA2PrivateKeyI.d;
                return new BCMcElieceCCA2PrivateKey(new McElieceCCA2PrivateKeyParameters(i2, mcElieceCCA2PrivateKeyI.f78053c, new GF2mField(bArr), new PolynomialGF2mSmallM(new GF2mField(bArr), mcElieceCCA2PrivateKeyI.f78054e), new Permutation(mcElieceCCA2PrivateKeyI.f78055f), Utils.b(mcElieceCCA2PrivateKeyI.g).getAlgorithmName()));
            } catch (IOException unused) {
                throw new InvalidKeySpecException("Unable to decode PKCS8EncodedKeySpec.");
            }
        } catch (IOException e2) {
            throw new InvalidKeySpecException(o60.m("Unable to decode PKCS8EncodedKeySpec: ", e2));
        }
    }

    @Override // java.security.KeyFactorySpi
    public final PublicKey engineGeneratePublic(KeySpec keySpec) throws InvalidKeySpecException {
        if (!(keySpec instanceof X509EncodedKeySpec)) {
            throw new InvalidKeySpecException(fc.n(keySpec, new StringBuilder("Unsupported key specification: "), FileUtils.HIDDEN_PREFIX));
        }
        try {
            SubjectPublicKeyInfo subjectPublicKeyInfoI = SubjectPublicKeyInfo.i(ASN1Primitive.n(((X509EncodedKeySpec) keySpec).getEncoded()));
            try {
                if (!PQCObjectIdentifiers.f78068c.equals(subjectPublicKeyInfoI.f77824b.f77822b)) {
                    throw new InvalidKeySpecException("Unable to recognise OID in McEliece private key");
                }
                ASN1Primitive aSN1PrimitiveM = subjectPublicKeyInfoI.m();
                McElieceCCA2PublicKey mcElieceCCA2PublicKey = aSN1PrimitiveM != null ? new McElieceCCA2PublicKey(ASN1Sequence.r(aSN1PrimitiveM)) : null;
                return new BCMcElieceCCA2PublicKey(new McElieceCCA2PublicKeyParameters(mcElieceCCA2PublicKey.f78056b, mcElieceCCA2PublicKey.f78057c, mcElieceCCA2PublicKey.d, Utils.b(mcElieceCCA2PublicKey.f78058e).getAlgorithmName()));
            } catch (IOException e2) {
                throw new InvalidKeySpecException(n00.o(e2, new StringBuilder("Unable to decode X509EncodedKeySpec: ")));
            }
        } catch (IOException e3) {
            wp.b(e3);
            return null;
        }
    }

    @Override // java.security.KeyFactorySpi
    public final KeySpec engineGetKeySpec(Key key, Class cls) {
        return null;
    }

    @Override // java.security.KeyFactorySpi
    public final Key engineTranslateKey(Key key) {
        return null;
    }
}
