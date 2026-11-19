package org.bouncycastle.pqc.asn1;

import defpackage.fc;
import defpackage.md;
import defpackage.pq0;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1Integer;
import org.bouncycastle.asn1.ASN1Object;
import org.bouncycastle.asn1.ASN1Primitive;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.DERSequence;
import org.bouncycastle.util.Arrays;

/* JADX INFO: loaded from: classes5.dex */
public class ParSet extends ASN1Object {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int[] f77656h;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int[] f77657k;
    private int t;
    private int[] w;

    private ParSet(ASN1Sequence aSN1Sequence) {
        if (aSN1Sequence.size() != 4) {
            md.n(fc.o(aSN1Sequence, new StringBuilder("sie of seqOfParams = ")));
            throw null;
        }
        this.t = checkBigIntegerInIntRangeAndPositive(aSN1Sequence.getObjectAt(0));
        ASN1Sequence aSN1Sequence2 = (ASN1Sequence) aSN1Sequence.getObjectAt(1);
        ASN1Sequence aSN1Sequence3 = (ASN1Sequence) aSN1Sequence.getObjectAt(2);
        ASN1Sequence aSN1Sequence4 = (ASN1Sequence) aSN1Sequence.getObjectAt(3);
        if (aSN1Sequence2.size() != this.t || aSN1Sequence3.size() != this.t || aSN1Sequence4.size() != this.t) {
            md.n("invalid size of sequences");
            throw null;
        }
        this.f77656h = new int[aSN1Sequence2.size()];
        this.w = new int[aSN1Sequence3.size()];
        this.f77657k = new int[aSN1Sequence4.size()];
        for (int i2 = 0; i2 < this.t; i2++) {
            this.f77656h[i2] = checkBigIntegerInIntRangeAndPositive(aSN1Sequence2.getObjectAt(i2));
            this.w[i2] = checkBigIntegerInIntRangeAndPositive(aSN1Sequence3.getObjectAt(i2));
            this.f77657k[i2] = checkBigIntegerInIntRangeAndPositive(aSN1Sequence4.getObjectAt(i2));
        }
    }

    private static int checkBigIntegerInIntRangeAndPositive(ASN1Encodable aSN1Encodable) {
        int iIntValueExact = ((ASN1Integer) aSN1Encodable).intValueExact();
        if (iIntValueExact > 0) {
            return iIntValueExact;
        }
        md.n(pq0.k(iIntValueExact, "BigInteger not in Range: "));
        return 0;
    }

    public static ParSet getInstance(Object obj) {
        if (obj instanceof ParSet) {
            return (ParSet) obj;
        }
        if (obj != null) {
            return new ParSet(ASN1Sequence.getInstance(obj));
        }
        return null;
    }

    public int[] getH() {
        return Arrays.clone(this.f77656h);
    }

    public int[] getK() {
        return Arrays.clone(this.f77657k);
    }

    public int getT() {
        return this.t;
    }

    public int[] getW() {
        return Arrays.clone(this.w);
    }

    @Override // org.bouncycastle.asn1.ASN1Object, org.bouncycastle.asn1.ASN1Encodable
    public ASN1Primitive toASN1Primitive() {
        ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector();
        ASN1EncodableVector aSN1EncodableVector2 = new ASN1EncodableVector();
        ASN1EncodableVector aSN1EncodableVector3 = new ASN1EncodableVector();
        for (int i2 = 0; i2 < this.f77656h.length; i2++) {
            aSN1EncodableVector.add(new ASN1Integer(this.f77656h[i2]));
            aSN1EncodableVector2.add(new ASN1Integer(this.w[i2]));
            aSN1EncodableVector3.add(new ASN1Integer(this.f77657k[i2]));
        }
        ASN1EncodableVector aSN1EncodableVector4 = new ASN1EncodableVector();
        aSN1EncodableVector4.add(new ASN1Integer(this.t));
        aSN1EncodableVector4.add(new DERSequence(aSN1EncodableVector));
        aSN1EncodableVector4.add(new DERSequence(aSN1EncodableVector2));
        aSN1EncodableVector4.add(new DERSequence(aSN1EncodableVector3));
        return new DERSequence(aSN1EncodableVector4);
    }

    public ParSet(int i2, int[] iArr, int[] iArr2, int[] iArr3) {
        this.t = i2;
        this.f77656h = iArr;
        this.w = iArr2;
        this.f77657k = iArr3;
    }
}
