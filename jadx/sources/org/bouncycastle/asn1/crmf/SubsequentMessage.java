package org.bouncycastle.asn1.crmf;

import defpackage.md;
import defpackage.pq0;
import org.bouncycastle.asn1.ASN1Integer;

/* JADX INFO: loaded from: classes3.dex */
public class SubsequentMessage extends ASN1Integer {
    public static final SubsequentMessage encrCert = new SubsequentMessage(0);
    public static final SubsequentMessage challengeResp = new SubsequentMessage(1);

    private SubsequentMessage(int i2) {
        super(i2);
    }

    public static SubsequentMessage valueOf(int i2) {
        if (i2 == 0) {
            return encrCert;
        }
        if (i2 == 1) {
            return challengeResp;
        }
        md.n(pq0.k(i2, "unknown value: "));
        return null;
    }
}
