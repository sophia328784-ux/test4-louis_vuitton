package org.bouncycastle.oer.its.ieee1609dot2.basetypes;

import defpackage.md;
import org.bouncycastle.asn1.ASN1OctetString;

/* JADX INFO: loaded from: classes5.dex */
public class HashedId10 extends HashedId {
    public HashedId10(byte[] bArr) {
        super(bArr);
        if (bArr.length == 10) {
            return;
        }
        md.n("hash id not 10 bytes");
        throw null;
    }

    public static HashedId10 getInstance(Object obj) {
        if (obj instanceof HashedId10) {
            return (HashedId10) obj;
        }
        if (obj != null) {
            return new HashedId10(ASN1OctetString.getInstance(obj).getOctets());
        }
        return null;
    }
}
