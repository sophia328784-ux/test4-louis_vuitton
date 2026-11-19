package org.bouncycastle.asn1.eac;

import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.ASN1TaggedObject;
import org.bouncycastle.asn1.DEROctetString;
import org.bouncycastle.asn1.DERTaggedObject;

/* JADX INFO: loaded from: classes3.dex */
class EACTagged {
    public static ASN1TaggedObject create(int i2, byte[] bArr) {
        return new DERTaggedObject(false, 64, i2, (ASN1Encodable) new DEROctetString(bArr));
    }

    public static ASN1TaggedObject create(int i2, PublicKeyDataObject publicKeyDataObject) {
        return new DERTaggedObject(false, 64, i2, (ASN1Encodable) publicKeyDataObject);
    }

    public static ASN1TaggedObject create(int i2, ASN1Sequence aSN1Sequence) {
        return new DERTaggedObject(false, 64, i2, (ASN1Encodable) aSN1Sequence);
    }
}
