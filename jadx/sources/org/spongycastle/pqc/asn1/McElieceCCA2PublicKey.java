package org.spongycastle.pqc.asn1;

import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Integer;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1OctetString;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.DEROctetString;
import org.spongycastle.asn1.DERSequence;
import org.spongycastle.asn1.x509.AlgorithmIdentifier;
import org.spongycastle.pqc.math.linearalgebra.GF2Matrix;

/* JADX INFO: loaded from: classes5.dex */
public class McElieceCCA2PublicKey extends ASN1Object {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f78056b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f78057c;
    public final GF2Matrix d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final AlgorithmIdentifier f78058e;

    public McElieceCCA2PublicKey(ASN1Sequence aSN1Sequence) {
        this.f78056b = ((ASN1Integer) aSN1Sequence.s(0)).s().intValue();
        this.f78057c = ((ASN1Integer) aSN1Sequence.s(1)).s().intValue();
        this.d = new GF2Matrix(((ASN1OctetString) aSN1Sequence.s(2)).s());
        this.f78058e = AlgorithmIdentifier.i(aSN1Sequence.s(3));
    }

    @Override // org.spongycastle.asn1.ASN1Object, org.spongycastle.asn1.ASN1Encodable
    public final ASN1Primitive toASN1Primitive() {
        ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector();
        aSN1EncodableVector.a(new ASN1Integer(this.f78056b));
        aSN1EncodableVector.a(new ASN1Integer(this.f78057c));
        aSN1EncodableVector.a(new DEROctetString(this.d.b()));
        aSN1EncodableVector.a(this.f78058e);
        return new DERSequence(aSN1EncodableVector);
    }

    public McElieceCCA2PublicKey(int i2, int i3, GF2Matrix gF2Matrix, AlgorithmIdentifier algorithmIdentifier) {
        this.f78056b = i2;
        this.f78057c = i3;
        this.d = new GF2Matrix(gF2Matrix.b());
        this.f78058e = algorithmIdentifier;
    }
}
