package org.bouncycastle.cert.crmf;

import defpackage.n00;
import java.io.IOException;
import java.io.OutputStream;
import org.bouncycastle.asn1.ASN1Encoding;
import org.bouncycastle.asn1.DERBitString;
import org.bouncycastle.asn1.crmf.PKMACValue;
import org.bouncycastle.asn1.x509.SubjectPublicKeyInfo;
import org.bouncycastle.operator.MacCalculator;

/* JADX INFO: loaded from: classes3.dex */
abstract class PKMACValueGenerator {
    private PKMACValueGenerator() {
    }

    public static PKMACValue generate(PKMACBuilder pKMACBuilder, char[] cArr, SubjectPublicKeyInfo subjectPublicKeyInfo) throws CRMFException {
        MacCalculator macCalculatorBuild = pKMACBuilder.build(cArr);
        OutputStream outputStream = macCalculatorBuild.getOutputStream();
        try {
            outputStream.write(subjectPublicKeyInfo.getEncoded(ASN1Encoding.DER));
            outputStream.close();
            return new PKMACValue(macCalculatorBuild.getAlgorithmIdentifier(), new DERBitString(macCalculatorBuild.getMac()));
        } catch (IOException e2) {
            throw new CRMFException(n00.o(e2, new StringBuilder("exception encoding mac input: ")), e2);
        }
    }
}
