package org.bouncycastle.cert.crmf.jcajce;

import java.security.cert.CertificateEncodingException;
import java.security.cert.X509Certificate;
import org.bouncycastle.cert.X509CertificateHolder;
import org.bouncycastle.cert.crmf.CertificateRepMessageBuilder;
import org.bouncycastle.cert.jcajce.JcaX509CertificateHolder;

/* JADX INFO: loaded from: classes3.dex */
public class JcaCertificateRepMessageBuilder extends CertificateRepMessageBuilder {
    public JcaCertificateRepMessageBuilder(X509Certificate... x509CertificateArr) throws CertificateEncodingException {
        super(convert(x509CertificateArr));
    }

    private static X509CertificateHolder[] convert(X509Certificate... x509CertificateArr) throws CertificateEncodingException {
        int length = x509CertificateArr.length;
        X509CertificateHolder[] x509CertificateHolderArr = new X509CertificateHolder[length];
        for (int i2 = 0; i2 != length; i2++) {
            x509CertificateHolderArr[i2] = new JcaX509CertificateHolder(x509CertificateArr[i2]);
        }
        return x509CertificateHolderArr;
    }
}
