package org.bouncycastle.asn1.ua;

import defpackage.md;
import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1Integer;
import org.bouncycastle.asn1.ASN1Object;
import org.bouncycastle.asn1.ASN1Primitive;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.DERSequence;

/* JADX INFO: loaded from: classes5.dex */
public class DSTU4145BinaryField extends ASN1Object {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f77587j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f77588k;
    private int l;
    private int m;

    private DSTU4145BinaryField(ASN1Sequence aSN1Sequence) {
        this.m = ASN1Integer.getInstance(aSN1Sequence.getObjectAt(0)).intPositiveValueExact();
        if (aSN1Sequence.getObjectAt(1) instanceof ASN1Integer) {
            this.f77588k = ((ASN1Integer) aSN1Sequence.getObjectAt(1)).intPositiveValueExact();
            return;
        }
        if (!(aSN1Sequence.getObjectAt(1) instanceof ASN1Sequence)) {
            md.n("object parse error");
            throw null;
        }
        ASN1Sequence aSN1Sequence2 = ASN1Sequence.getInstance(aSN1Sequence.getObjectAt(1));
        this.f77588k = ASN1Integer.getInstance(aSN1Sequence2.getObjectAt(0)).intPositiveValueExact();
        this.f77587j = ASN1Integer.getInstance(aSN1Sequence2.getObjectAt(1)).intPositiveValueExact();
        this.l = ASN1Integer.getInstance(aSN1Sequence2.getObjectAt(2)).intPositiveValueExact();
    }

    public static DSTU4145BinaryField getInstance(Object obj) {
        if (obj instanceof DSTU4145BinaryField) {
            return (DSTU4145BinaryField) obj;
        }
        if (obj != null) {
            return new DSTU4145BinaryField(ASN1Sequence.getInstance(obj));
        }
        return null;
    }

    public int getK1() {
        return this.f77588k;
    }

    public int getK2() {
        return this.f77587j;
    }

    public int getK3() {
        return this.l;
    }

    public int getM() {
        return this.m;
    }

    @Override // org.bouncycastle.asn1.ASN1Object, org.bouncycastle.asn1.ASN1Encodable
    public ASN1Primitive toASN1Primitive() {
        ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector(2);
        aSN1EncodableVector.add(new ASN1Integer(this.m));
        if (this.f77587j == 0) {
            aSN1EncodableVector.add(new ASN1Integer(this.f77588k));
        } else {
            ASN1EncodableVector aSN1EncodableVector2 = new ASN1EncodableVector(3);
            aSN1EncodableVector2.add(new ASN1Integer(this.f77588k));
            aSN1EncodableVector2.add(new ASN1Integer(this.f77587j));
            aSN1EncodableVector2.add(new ASN1Integer(this.l));
            aSN1EncodableVector.add(new DERSequence(aSN1EncodableVector2));
        }
        return new DERSequence(aSN1EncodableVector);
    }

    public DSTU4145BinaryField(int i2, int i3, int i4, int i5) {
        this.m = i2;
        this.f77588k = i3;
        this.f77587j = i4;
        this.l = i5;
    }

    public DSTU4145BinaryField(int i2, int i3) {
        this(i2, i3, 0, 0);
    }
}
