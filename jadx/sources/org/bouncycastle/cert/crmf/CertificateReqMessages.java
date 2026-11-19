package org.bouncycastle.cert.crmf;

import defpackage.md;
import org.bouncycastle.asn1.cmp.PKIBody;
import org.bouncycastle.asn1.crmf.CertReqMessages;
import org.bouncycastle.asn1.crmf.CertReqMsg;

/* JADX INFO: loaded from: classes3.dex */
public class CertificateReqMessages {
    private final CertReqMsg[] reqs;

    public CertificateReqMessages(CertReqMessages certReqMessages) {
        this.reqs = certReqMessages.toCertReqMsgArray();
    }

    public static CertificateReqMessages fromPKIBody(PKIBody pKIBody) {
        if (isCertificateRequestMessages(pKIBody.getType())) {
            return new CertificateReqMessages(CertReqMessages.getInstance(pKIBody.getContent()));
        }
        md.g(pKIBody.getType(), "content of PKIBody wrong type: ");
        return null;
    }

    public static boolean isCertificateRequestMessages(int i2) {
        return i2 == 0 || i2 == 2 || i2 == 7 || i2 == 9 || i2 == 13;
    }

    public CertificateRequestMessage[] getRequests() {
        int length = this.reqs.length;
        CertificateRequestMessage[] certificateRequestMessageArr = new CertificateRequestMessage[length];
        for (int i2 = 0; i2 != length; i2++) {
            certificateRequestMessageArr[i2] = new CertificateRequestMessage(this.reqs[i2]);
        }
        return certificateRequestMessageArr;
    }

    public CertReqMessages toASN1Structure() {
        return new CertReqMessages(this.reqs);
    }
}
