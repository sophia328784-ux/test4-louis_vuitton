package org.spongycastle.asn1.x509;

import defpackage.md;
import org.spongycastle.asn1.ASN1Encodable;
import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.DERSequence;

/* JADX INFO: loaded from: classes5.dex */
public class AlgorithmIdentifier extends ASN1Object {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public ASN1ObjectIdentifier f77822b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public ASN1Encodable f77823c;

    public AlgorithmIdentifier(ASN1ObjectIdentifier aSN1ObjectIdentifier, ASN1Encodable aSN1Encodable) {
        this.f77822b = aSN1ObjectIdentifier;
        this.f77823c = aSN1Encodable;
    }

    public static AlgorithmIdentifier i(Object obj) {
        if (obj instanceof AlgorithmIdentifier) {
            return (AlgorithmIdentifier) obj;
        }
        if (obj != null) {
            ASN1Sequence aSN1SequenceR = ASN1Sequence.r(obj);
            AlgorithmIdentifier algorithmIdentifier = new AlgorithmIdentifier();
            if (aSN1SequenceR.size() >= 1 && aSN1SequenceR.size() <= 2) {
                algorithmIdentifier.f77822b = ASN1ObjectIdentifier.u(aSN1SequenceR.s(0));
                if (aSN1SequenceR.size() == 2) {
                    algorithmIdentifier.f77823c = aSN1SequenceR.s(1);
                    return algorithmIdentifier;
                }
                algorithmIdentifier.f77823c = null;
                return algorithmIdentifier;
            }
            md.g(aSN1SequenceR.size(), "Bad sequence size: ");
        }
        return null;
    }

    @Override // org.spongycastle.asn1.ASN1Object, org.spongycastle.asn1.ASN1Encodable
    public final ASN1Primitive toASN1Primitive() {
        ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector();
        aSN1EncodableVector.a(this.f77822b);
        ASN1Encodable aSN1Encodable = this.f77823c;
        if (aSN1Encodable != null) {
            aSN1EncodableVector.a(aSN1Encodable);
        }
        return new DERSequence(aSN1EncodableVector);
    }

    public AlgorithmIdentifier(ASN1ObjectIdentifier aSN1ObjectIdentifier) {
        this.f77822b = aSN1ObjectIdentifier;
    }
}
