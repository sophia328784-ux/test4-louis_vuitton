package org.bouncycastle.oer.its.ieee1609dot2.basetypes;

import defpackage.md;
import org.bouncycastle.asn1.ASN1OctetString;

/* JADX INFO: loaded from: classes5.dex */
public class HashedId8 extends HashedId {
    public HashedId8(byte[] bArr) {
        super(bArr);
        if (bArr.length == 8) {
            return;
        }
        md.n("hash id not 8 bytes");
        throw null;
    }

    public static HashedId8 getInstance(Object obj) {
        if (obj instanceof HashedId8) {
            return (HashedId8) obj;
        }
        if (obj != null) {
            return new HashedId8(ASN1OctetString.getInstance(obj).getOctets());
        }
        return null;
    }
}
