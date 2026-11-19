package org.spongycastle.pqc.asn1;

import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Integer;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.DERSequence;
import org.spongycastle.asn1.x509.AlgorithmIdentifier;

/* JADX INFO: loaded from: classes5.dex */
public class SPHINCS256KeyParams extends ASN1Object {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ASN1Integer f78081b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AlgorithmIdentifier f78082c;

    public SPHINCS256KeyParams(ASN1Sequence aSN1Sequence) {
        this.f78081b = ASN1Integer.r(aSN1Sequence.s(0));
        this.f78082c = AlgorithmIdentifier.i(aSN1Sequence.s(1));
    }

    @Override // org.spongycastle.asn1.ASN1Object, org.spongycastle.asn1.ASN1Encodable
    public final ASN1Primitive toASN1Primitive() {
        ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector();
        aSN1EncodableVector.a(this.f78081b);
        aSN1EncodableVector.a(this.f78082c);
        return new DERSequence(aSN1EncodableVector);
    }

    public SPHINCS256KeyParams(AlgorithmIdentifier algorithmIdentifier) {
        this.f78081b = new ASN1Integer(0L);
        this.f78082c = algorithmIdentifier;
    }
}
