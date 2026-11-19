package org.bouncycastle.cert.crmf;

import defpackage.md;
import org.bouncycastle.asn1.cmp.CMPCertificate;
import org.bouncycastle.asn1.cmp.CertResponse;
import org.bouncycastle.asn1.cms.ContentInfo;
import org.bouncycastle.asn1.pkcs.PKCSObjectIdentifiers;
import org.bouncycastle.cms.CMSEnvelopedData;
import org.bouncycastle.cms.CMSException;
import org.bouncycastle.cms.Recipient;

/* JADX INFO: loaded from: classes3.dex */
public class CertificateResponse {
    private final CertResponse certResponse;

    public CertificateResponse(CertResponse certResponse) {
        this.certResponse = certResponse;
    }

    public CMPCertificate getCertificate(Recipient recipient) throws CMSException {
        return CMPCertificate.getInstance(getEncryptedCertificate().getRecipientInfos().getRecipients().iterator().next().getContent(recipient));
    }

    public CMSEnvelopedData getEncryptedCertificate() throws CMSException {
        String str;
        if (hasEncryptedCertificate()) {
            CMSEnvelopedData cMSEnvelopedData = new CMSEnvelopedData(new ContentInfo(PKCSObjectIdentifiers.envelopedData, this.certResponse.getCertifiedKeyPair().getCertOrEncCert().getEncryptedCert().getValue()));
            if (cMSEnvelopedData.getRecipientInfos().size() == 1) {
                return cMSEnvelopedData;
            }
            str = "data encrypted for more than one recipient";
        } else {
            str = "encrypted certificate asked for, none found";
        }
        md.k(str);
        return null;
    }

    public boolean hasEncryptedCertificate() {
        return this.certResponse.getCertifiedKeyPair().getCertOrEncCert().hasEncryptedCertificate();
    }

    public CertResponse toASN1Structure() {
        return this.certResponse;
    }

    public CMPCertificate getCertificate() throws CMSException {
        if (!hasEncryptedCertificate()) {
            return this.certResponse.getCertifiedKeyPair().getCertOrEncCert().getCertificate();
        }
        md.k("plaintext certificate asked for, none found");
        return null;
    }
}
