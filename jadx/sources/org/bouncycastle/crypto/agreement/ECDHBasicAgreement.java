package org.bouncycastle.crypto.agreement;

import defpackage.md;
import java.math.BigInteger;
import org.bouncycastle.crypto.BasicAgreement;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.CryptoServicesRegistrar;
import org.bouncycastle.crypto.params.ECDomainParameters;
import org.bouncycastle.crypto.params.ECPrivateKeyParameters;
import org.bouncycastle.crypto.params.ECPublicKeyParameters;
import org.bouncycastle.math.ec.ECAlgorithms;
import org.bouncycastle.math.ec.ECConstants;
import org.bouncycastle.math.ec.ECPoint;

/* JADX INFO: loaded from: classes5.dex */
public class ECDHBasicAgreement implements BasicAgreement {
    private ECPrivateKeyParameters key;

    @Override // org.bouncycastle.crypto.BasicAgreement
    public BigInteger calculateAgreement(CipherParameters cipherParameters) {
        String str;
        ECPublicKeyParameters eCPublicKeyParameters = (ECPublicKeyParameters) cipherParameters;
        ECDomainParameters parameters = this.key.getParameters();
        if (parameters.equals(eCPublicKeyParameters.getParameters())) {
            BigInteger d = this.key.getD();
            ECPoint eCPointCleanPoint = ECAlgorithms.cleanPoint(parameters.getCurve(), eCPublicKeyParameters.getQ());
            if (eCPointCleanPoint.isInfinity()) {
                str = "Infinity is not a valid public key for ECDH";
            } else {
                BigInteger h2 = parameters.getH();
                if (!h2.equals(ECConstants.ONE)) {
                    d = parameters.getHInv().multiply(d).mod(parameters.getN());
                    eCPointCleanPoint = ECAlgorithms.referenceMultiply(eCPointCleanPoint, h2);
                }
                ECPoint eCPointNormalize = eCPointCleanPoint.multiply(d).normalize();
                if (!eCPointNormalize.isInfinity()) {
                    return eCPointNormalize.getAffineXCoord().toBigInteger();
                }
                str = "Infinity is not a valid agreement value for ECDH";
            }
        } else {
            str = "ECDH public key has wrong domain parameters";
        }
        md.k(str);
        return null;
    }

    @Override // org.bouncycastle.crypto.BasicAgreement
    public int getFieldSize() {
        return (this.key.getParameters().getCurve().getFieldSize() + 7) / 8;
    }

    @Override // org.bouncycastle.crypto.BasicAgreement
    public void init(CipherParameters cipherParameters) {
        ECPrivateKeyParameters eCPrivateKeyParameters = (ECPrivateKeyParameters) cipherParameters;
        this.key = eCPrivateKeyParameters;
        CryptoServicesRegistrar.checkConstraints(Utils.getDefaultProperties("ECDH", eCPrivateKeyParameters));
    }
}
