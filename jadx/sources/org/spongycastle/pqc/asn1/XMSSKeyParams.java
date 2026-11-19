package org.spongycastle.pqc.asn1;

import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Integer;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.DERSequence;
import org.spongycastle.asn1.x509.AlgorithmIdentifier;

/* JADX INFO: loaded from: classes5.dex */
public class XMSSKeyParams extends ASN1Object {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ASN1Integer f78083b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f78084c;
    public final AlgorithmIdentifier d;

    public XMSSKeyParams(ASN1Sequence aSN1Sequence) {
        this.f78083b = ASN1Integer.r(aSN1Sequence.s(0));
        this.f78084c = ASN1Integer.r(aSN1Sequence.s(1)).s().intValue();
        this.d = AlgorithmIdentifier.i(aSN1Sequence.s(2));
    }

    @Override // org.spongycastle.asn1.ASN1Object, org.spongycastle.asn1.ASN1Encodable
    public final ASN1Primitive toASN1Primitive() {
        ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector();
        aSN1EncodableVector.a(this.f78083b);
        aSN1EncodableVector.a(new ASN1Integer(this.f78084c));
        aSN1EncodableVector.a(this.d);
        return new DERSequence(aSN1EncodableVector);
    }

    public XMSSKeyParams(int i2, AlgorithmIdentifier algorithmIdentifier) {
        this.f78083b = new ASN1Integer(0L);
        this.f78084c = i2;
        this.d = algorithmIdentifier;
    }
}
