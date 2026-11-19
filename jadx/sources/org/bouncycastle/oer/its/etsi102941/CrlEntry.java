package org.bouncycastle.oer.its.etsi102941;

import defpackage.md;
import org.bouncycastle.asn1.ASN1OctetString;
import org.bouncycastle.oer.its.ieee1609dot2.basetypes.HashedId;

/* JADX INFO: loaded from: classes5.dex */
public class CrlEntry extends HashedId {
    public CrlEntry(byte[] bArr) {
        super(bArr);
        if (bArr.length == 8) {
            return;
        }
        md.n("expected 8 bytes");
        throw null;
    }

    public static CrlEntry getInstance(Object obj) {
        if (obj instanceof CrlEntry) {
            return (CrlEntry) obj;
        }
        if (obj != null) {
            return new CrlEntry(ASN1OctetString.getInstance(obj));
        }
        return null;
    }

    private CrlEntry(ASN1OctetString aSN1OctetString) {
        super(aSN1OctetString.getOctets());
    }
}
