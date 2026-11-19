package io.jsonwebtoken.impl.crypto;

import defpackage.az;
import defpackage.ct0;
import io.jsonwebtoken.JwtException;
import io.jsonwebtoken.SignatureAlgorithm;
import java.security.InvalidKeyException;
import java.security.Key;
import java.security.PrivateKey;
import java.security.Signature;
import java.security.SignatureException;
import java.security.interfaces.ECKey;

/* JADX INFO: loaded from: classes4.dex */
public class EllipticCurveSigner extends EllipticCurveProvider implements Signer {
    public EllipticCurveSigner(SignatureAlgorithm signatureAlgorithm, Key key) {
        super(signatureAlgorithm, key);
        if ((key instanceof PrivateKey) && (key instanceof ECKey)) {
            return;
        }
        az.r("Elliptic Curve signatures must be computed using an EC PrivateKey.  The specified key of type ", key.getClass().getName(), " is not an EC PrivateKey.");
        throw null;
    }

    public byte[] doSign(byte[] bArr) throws SignatureException, InvalidKeyException, JwtException {
        PrivateKey privateKey = (PrivateKey) this.key;
        Signature signatureCreateSignatureInstance = createSignatureInstance();
        signatureCreateSignatureInstance.initSign(privateKey);
        signatureCreateSignatureInstance.update(bArr);
        return EllipticCurveProvider.transcodeSignatureToConcat(signatureCreateSignatureInstance.sign(), EllipticCurveProvider.getSignatureByteArrayLength(this.alg));
    }

    @Override // io.jsonwebtoken.impl.crypto.Signer
    public byte[] sign(byte[] bArr) {
        try {
            return doSign(bArr);
        } catch (JwtException e2) {
            ct0.n("Unable to convert signature to JOSE format. ", e2.getMessage(), e2);
            return null;
        } catch (InvalidKeyException e3) {
            ct0.n("Invalid Elliptic Curve PrivateKey. ", e3.getMessage(), e3);
            return null;
        } catch (SignatureException e4) {
            ct0.n("Unable to calculate signature using Elliptic Curve PrivateKey. ", e4.getMessage(), e4);
            return null;
        }
    }
}
