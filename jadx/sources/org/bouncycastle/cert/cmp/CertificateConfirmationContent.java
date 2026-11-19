package org.bouncycastle.cert.cmp;

import defpackage.md;
import org.bouncycastle.asn1.cmp.CertConfirmContent;
import org.bouncycastle.asn1.cmp.CertStatus;
import org.bouncycastle.asn1.cmp.PKIBody;
import org.bouncycastle.operator.DefaultDigestAlgorithmIdentifierFinder;
import org.bouncycastle.operator.DigestAlgorithmIdentifierFinder;

/* JADX INFO: loaded from: classes3.dex */
public class CertificateConfirmationContent {
    private CertConfirmContent content;
    private DigestAlgorithmIdentifierFinder digestAlgFinder;

    public CertificateConfirmationContent(CertConfirmContent certConfirmContent) {
        this(certConfirmContent, new DefaultDigestAlgorithmIdentifierFinder());
    }

    public static CertificateConfirmationContent fromPKIBody(PKIBody pKIBody, DigestAlgorithmIdentifierFinder digestAlgorithmIdentifierFinder) {
        if (isCertificateConfirmationContent(pKIBody.getType())) {
            return new CertificateConfirmationContent(CertConfirmContent.getInstance(pKIBody.getContent()), digestAlgorithmIdentifierFinder);
        }
        md.g(pKIBody.getType(), "content of PKIBody wrong type: ");
        return null;
    }

    public static boolean isCertificateConfirmationContent(int i2) {
        return i2 == 24;
    }

    public CertificateStatus[] getStatusMessages() {
        CertStatus[] certStatusArray = this.content.toCertStatusArray();
        int length = certStatusArray.length;
        CertificateStatus[] certificateStatusArr = new CertificateStatus[length];
        for (int i2 = 0; i2 != length; i2++) {
            certificateStatusArr[i2] = new CertificateStatus(this.digestAlgFinder, certStatusArray[i2]);
        }
        return certificateStatusArr;
    }

    public CertConfirmContent toASN1Structure() {
        return this.content;
    }

    public CertificateConfirmationContent(CertConfirmContent certConfirmContent, DigestAlgorithmIdentifierFinder digestAlgorithmIdentifierFinder) {
        this.digestAlgFinder = digestAlgorithmIdentifierFinder;
        this.content = certConfirmContent;
    }

    public static CertificateConfirmationContent fromPKIBody(PKIBody pKIBody) {
        return fromPKIBody(pKIBody, new DefaultDigestAlgorithmIdentifierFinder());
    }
}
