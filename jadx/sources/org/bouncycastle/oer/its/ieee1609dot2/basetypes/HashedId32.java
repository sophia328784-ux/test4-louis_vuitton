package org.bouncycastle.oer.its.ieee1609dot2.basetypes;

import defpackage.md;
import org.bouncycastle.asn1.ASN1OctetString;

/* JADX INFO: loaded from: classes5.dex */
public class HashedId32 extends HashedId {
    public HashedId32(byte[] bArr) {
        super(bArr);
        if (bArr.length == 32) {
            return;
        }
        md.n("hash id not 32 bytes");
        throw null;
    }

    public static HashedId32 getInstance(Object obj) {
        if (obj instanceof HashedId32) {
            return (HashedId32) obj;
        }
        if (obj != null) {
            return new HashedId32(ASN1OctetString.getInstance(obj).getOctets());
        }
        return null;
    }
}
