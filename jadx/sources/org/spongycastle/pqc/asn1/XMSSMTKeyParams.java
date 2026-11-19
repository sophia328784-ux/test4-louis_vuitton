package org.spongycastle.pqc.asn1;

import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Integer;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.DERSequence;
import org.spongycastle.asn1.x509.AlgorithmIdentifier;

/* JADX INFO: loaded from: classes5.dex */
public class XMSSMTKeyParams extends ASN1Object {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ASN1Integer f78085b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f78086c;
    public final int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final AlgorithmIdentifier f78087e;

    public XMSSMTKeyParams(ASN1Sequence aSN1Sequence) {
        this.f78085b = ASN1Integer.r(aSN1Sequence.s(0));
        this.f78086c = ASN1Integer.r(aSN1Sequence.s(1)).s().intValue();
        this.d = ASN1Integer.r(aSN1Sequence.s(2)).s().intValue();
        this.f78087e = AlgorithmIdentifier.i(aSN1Sequence.s(3));
    }

    @Override // org.spongycastle.asn1.ASN1Object, org.spongycastle.asn1.ASN1Encodable
    public final ASN1Primitive toASN1Primitive() {
        ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector();
        aSN1EncodableVector.a(this.f78085b);
        aSN1EncodableVector.a(new ASN1Integer(this.f78086c));
        aSN1EncodableVector.a(new ASN1Integer(this.d));
        aSN1EncodableVector.a(this.f78087e);
        return new DERSequence(aSN1EncodableVector);
    }

    public XMSSMTKeyParams(int i2, int i3, AlgorithmIdentifier algorithmIdentifier) {
        this.f78085b = new ASN1Integer(0L);
        this.f78086c = i2;
        this.d = i3;
        this.f78087e = algorithmIdentifier;
    }
}
