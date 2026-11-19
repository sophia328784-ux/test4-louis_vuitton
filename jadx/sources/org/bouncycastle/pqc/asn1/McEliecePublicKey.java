package org.bouncycastle.pqc.asn1;

import defpackage.tr;
import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1Integer;
import org.bouncycastle.asn1.ASN1Object;
import org.bouncycastle.asn1.ASN1OctetString;
import org.bouncycastle.asn1.ASN1Primitive;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.DEROctetString;
import org.bouncycastle.pqc.legacy.math.linearalgebra.GF2Matrix;

/* JADX INFO: loaded from: classes5.dex */
public class McEliecePublicKey extends ASN1Object {
    private final GF2Matrix g;
    private final int n;
    private final int t;

    private McEliecePublicKey(ASN1Sequence aSN1Sequence) {
        this.n = ((ASN1Integer) aSN1Sequence.getObjectAt(0)).intValueExact();
        this.t = ((ASN1Integer) aSN1Sequence.getObjectAt(1)).intValueExact();
        this.g = new GF2Matrix(((ASN1OctetString) aSN1Sequence.getObjectAt(2)).getOctets());
    }

    public static McEliecePublicKey getInstance(Object obj) {
        if (obj instanceof McEliecePublicKey) {
            return (McEliecePublicKey) obj;
        }
        if (obj != null) {
            return new McEliecePublicKey(ASN1Sequence.getInstance(obj));
        }
        return null;
    }

    public GF2Matrix getG() {
        return new GF2Matrix(this.g);
    }

    public int getN() {
        return this.n;
    }

    public int getT() {
        return this.t;
    }

    @Override // org.bouncycastle.asn1.ASN1Object, org.bouncycastle.asn1.ASN1Encodable
    public ASN1Primitive toASN1Primitive() {
        ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector();
        aSN1EncodableVector.add(new ASN1Integer(this.n));
        aSN1EncodableVector.add(new ASN1Integer(this.t));
        return tr.s(aSN1EncodableVector, new DEROctetString(this.g.getEncoded()), aSN1EncodableVector);
    }

    public McEliecePublicKey(int i2, int i3, GF2Matrix gF2Matrix) {
        this.n = i2;
        this.t = i3;
        this.g = new GF2Matrix(gF2Matrix);
    }
}
