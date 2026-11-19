package org.bouncycastle.oer.its.ieee1609dot2.basetypes;

import defpackage.md;
import java.math.BigInteger;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1Object;
import org.bouncycastle.asn1.ASN1OctetString;
import org.bouncycastle.asn1.ASN1Primitive;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.DEROctetString;
import org.bouncycastle.asn1.DERSequence;
import org.bouncycastle.util.BigIntegers;

/* JADX INFO: loaded from: classes5.dex */
public class Point384 extends ASN1Object {
    private final ASN1OctetString x;
    private final ASN1OctetString y;

    private Point384(ASN1Sequence aSN1Sequence) {
        if (aSN1Sequence.size() != 2) {
            md.n("expected sequence size of 2");
            throw null;
        }
        ASN1OctetString aSN1OctetString = ASN1OctetString.getInstance(aSN1Sequence.getObjectAt(0));
        this.x = aSN1OctetString;
        ASN1OctetString aSN1OctetString2 = ASN1OctetString.getInstance(aSN1Sequence.getObjectAt(1));
        this.y = aSN1OctetString2;
        if (aSN1OctetString.getOctets().length != 48) {
            md.n("x must be 48 bytes long");
            throw null;
        }
        if (aSN1OctetString2.getOctets().length == 48) {
            return;
        }
        md.n("y must be 48 bytes long");
        throw null;
    }

    public static Builder builder() {
        return new Builder();
    }

    public static Point384 getInstance(Object obj) {
        if (obj instanceof Point384) {
            return (Point384) obj;
        }
        if (obj != null) {
            return new Point384(ASN1Sequence.getInstance(obj));
        }
        return null;
    }

    public ASN1OctetString getX() {
        return this.x;
    }

    public ASN1OctetString getY() {
        return this.y;
    }

    @Override // org.bouncycastle.asn1.ASN1Object, org.bouncycastle.asn1.ASN1Encodable
    public ASN1Primitive toASN1Primitive() {
        return new DERSequence(new ASN1Encodable[]{this.x, this.y});
    }

    public static class Builder {
        private ASN1OctetString x;
        private ASN1OctetString y;

        public Point384 createPoint384() {
            return new Point384(this.x, this.y);
        }

        public Builder setX(BigInteger bigInteger) {
            this.x = new DEROctetString(BigIntegers.asUnsignedByteArray(48, bigInteger));
            return this;
        }

        public Builder setY(BigInteger bigInteger) {
            this.y = new DEROctetString(BigIntegers.asUnsignedByteArray(48, bigInteger));
            return this;
        }

        public Builder setX(ASN1OctetString aSN1OctetString) {
            this.x = aSN1OctetString;
            return this;
        }

        public Builder setY(ASN1OctetString aSN1OctetString) {
            this.y = aSN1OctetString;
            return this;
        }

        public Builder setX(byte[] bArr) {
            this.x = new DEROctetString(bArr);
            return this;
        }

        public Builder setY(byte[] bArr) {
            this.y = new DEROctetString(bArr);
            return this;
        }
    }

    public Point384(ASN1OctetString aSN1OctetString, ASN1OctetString aSN1OctetString2) {
        if (aSN1OctetString.getOctets().length != 48) {
            md.n("x must be 48 bytes long");
            throw null;
        }
        if (aSN1OctetString2.getOctets().length != 48) {
            md.n("y must be 48 bytes long");
            throw null;
        }
        this.x = aSN1OctetString;
        this.y = aSN1OctetString2;
    }
}
