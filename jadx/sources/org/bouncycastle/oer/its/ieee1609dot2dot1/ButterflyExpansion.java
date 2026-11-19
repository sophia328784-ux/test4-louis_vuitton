package org.bouncycastle.oer.its.ieee1609dot2dot1;

import defpackage.md;
import defpackage.pq0;
import org.bouncycastle.asn1.ASN1Choice;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1Object;
import org.bouncycastle.asn1.ASN1OctetString;
import org.bouncycastle.asn1.ASN1Primitive;
import org.bouncycastle.asn1.ASN1TaggedObject;
import org.bouncycastle.asn1.DEROctetString;
import org.bouncycastle.asn1.DERTaggedObject;

/* JADX INFO: loaded from: classes5.dex */
public class ButterflyExpansion extends ASN1Object implements ASN1Choice {
    public static final int aes128 = 0;
    protected final ASN1Encodable butterflyExpansion;
    protected final int choice;

    private ButterflyExpansion(ASN1TaggedObject aSN1TaggedObject) {
        int tagNo = aSN1TaggedObject.getTagNo();
        this.choice = tagNo;
        if (tagNo == 0) {
            this.butterflyExpansion = ASN1OctetString.getInstance(aSN1TaggedObject.getExplicitBaseObject());
        } else {
            md.n(pq0.k(tagNo, "invalid choice value "));
            throw null;
        }
    }

    public static ButterflyExpansion aes128(byte[] bArr) {
        if (bArr.length == 16) {
            return new ButterflyExpansion(0, new DEROctetString(bArr));
        }
        md.n("length must be 16");
        return null;
    }

    public static ButterflyExpansion getInstance(Object obj) {
        if (obj instanceof ButterflyExpansion) {
            return (ButterflyExpansion) obj;
        }
        if (obj != null) {
            return new ButterflyExpansion(ASN1TaggedObject.getInstance(obj, 128));
        }
        return null;
    }

    public ASN1Encodable getButterflyExpansion() {
        return this.butterflyExpansion;
    }

    public int getChoice() {
        return this.choice;
    }

    @Override // org.bouncycastle.asn1.ASN1Object, org.bouncycastle.asn1.ASN1Encodable
    public ASN1Primitive toASN1Primitive() {
        return new DERTaggedObject(this.choice, this.butterflyExpansion);
    }

    public static ButterflyExpansion aes128(ASN1OctetString aSN1OctetString) {
        return aes128(aSN1OctetString.getOctets());
    }

    public ButterflyExpansion(int i2, ASN1Encodable aSN1Encodable) {
        this.choice = i2;
        this.butterflyExpansion = aSN1Encodable;
    }
}
