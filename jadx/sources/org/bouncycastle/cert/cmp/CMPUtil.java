package org.bouncycastle.cert.cmp;

import defpackage.n00;
import java.io.IOException;
import java.io.OutputStream;
import org.bouncycastle.asn1.ASN1Encoding;
import org.bouncycastle.asn1.ASN1Object;
import org.bouncycastle.asn1.x509.AlgorithmIdentifier;
import org.bouncycastle.operator.DigestAlgorithmIdentifierFinder;
import org.bouncycastle.operator.DigestCalculator;
import org.bouncycastle.operator.DigestCalculatorProvider;
import org.bouncycastle.operator.OperatorCreationException;

/* JADX INFO: loaded from: classes3.dex */
class CMPUtil {
    public static byte[] calculateCertHash(ASN1Object aSN1Object, AlgorithmIdentifier algorithmIdentifier, DigestCalculatorProvider digestCalculatorProvider, DigestAlgorithmIdentifierFinder digestAlgorithmIdentifierFinder) throws CMPException {
        AlgorithmIdentifier algorithmIdentifierFind = digestAlgorithmIdentifierFinder.find(algorithmIdentifier);
        if (algorithmIdentifierFind != null) {
            return calculateDigest(aSN1Object, algorithmIdentifierFind, digestCalculatorProvider);
        }
        throw new CMPException("cannot find digest algorithm from signature algorithm");
    }

    public static byte[] calculateDigest(ASN1Object aSN1Object, AlgorithmIdentifier algorithmIdentifier, DigestCalculatorProvider digestCalculatorProvider) throws CMPException {
        DigestCalculator digestCalculator = getDigestCalculator(algorithmIdentifier, digestCalculatorProvider);
        derEncodeToStream(aSN1Object, digestCalculator.getOutputStream());
        return digestCalculator.getDigest();
    }

    public static void derEncodeToStream(ASN1Object aSN1Object, OutputStream outputStream) {
        try {
            aSN1Object.encodeTo(outputStream, ASN1Encoding.DER);
            outputStream.close();
        } catch (IOException e2) {
            throw new CMPRuntimeException(n00.o(e2, new StringBuilder("unable to DER encode object: ")), e2);
        }
    }

    public static DigestCalculator getDigestCalculator(AlgorithmIdentifier algorithmIdentifier, DigestCalculatorProvider digestCalculatorProvider) throws CMPException {
        try {
            return digestCalculatorProvider.get(algorithmIdentifier);
        } catch (OperatorCreationException e2) {
            throw new CMPException("unable to create digester: " + e2.getMessage(), e2);
        }
    }
}
