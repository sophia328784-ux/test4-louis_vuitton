package org.spongycastle.asn1.pkcs;

import defpackage.md;
import java.io.IOException;
import java.util.Enumeration;
import org.bouncycastle.asn1.ASN1Encoding;
import org.spongycastle.asn1.ASN1Encodable;
import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Integer;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1OctetString;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.ASN1Set;
import org.spongycastle.asn1.ASN1TaggedObject;
import org.spongycastle.asn1.BERSet;
import org.spongycastle.asn1.BERTaggedObject;
import org.spongycastle.asn1.DEROctetString;
import org.spongycastle.asn1.DERSequence;
import org.spongycastle.asn1.DERTaggedObject;
import org.spongycastle.asn1.DLSet;
import org.spongycastle.asn1.x509.AlgorithmIdentifier;

/* JADX INFO: loaded from: classes5.dex */
public class PrivateKeyInfo extends ASN1Object {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ASN1OctetString f77796b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AlgorithmIdentifier f77797c;
    public final ASN1Set d;

    public PrivateKeyInfo(ASN1Sequence aSN1Sequence) {
        ASN1Set bERSet;
        Enumeration enumerationT = aSN1Sequence.t();
        if (((ASN1Integer) enumerationT.nextElement()).s().intValue() != 0) {
            md.n("wrong version for private key info");
            throw null;
        }
        this.f77797c = AlgorithmIdentifier.i(enumerationT.nextElement());
        this.f77796b = ASN1OctetString.r(enumerationT.nextElement());
        if (enumerationT.hasMoreElements()) {
            ASN1TaggedObject aSN1TaggedObject = (ASN1TaggedObject) enumerationT.nextElement();
            if (aSN1TaggedObject.f77725c) {
                bERSet = aSN1TaggedObject instanceof BERTaggedObject ? new BERSet(aSN1TaggedObject.s()) : new DLSet(aSN1TaggedObject.s());
            } else if (aSN1TaggedObject.s() instanceof ASN1Set) {
                bERSet = (ASN1Set) aSN1TaggedObject.s();
            } else {
                if (!(aSN1TaggedObject.s() instanceof ASN1Sequence)) {
                    md.n("unknown object in getInstance: ".concat(aSN1TaggedObject.getClass().getName()));
                    throw null;
                }
                ASN1Sequence aSN1Sequence2 = (ASN1Sequence) aSN1TaggedObject.s();
                bERSet = aSN1TaggedObject instanceof BERTaggedObject ? new BERSet(aSN1Sequence2.u()) : new DLSet(aSN1Sequence2.u());
            }
            this.d = bERSet;
        }
    }

    public static PrivateKeyInfo i(ASN1Primitive aSN1Primitive) {
        if (aSN1Primitive != null) {
            return new PrivateKeyInfo(ASN1Sequence.r(aSN1Primitive));
        }
        return null;
    }

    public final ASN1Primitive m() {
        return ASN1Primitive.n(this.f77796b.s());
    }

    @Override // org.spongycastle.asn1.ASN1Object, org.spongycastle.asn1.ASN1Encodable
    public final ASN1Primitive toASN1Primitive() {
        ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector();
        aSN1EncodableVector.a(new ASN1Integer(0L));
        aSN1EncodableVector.a(this.f77797c);
        aSN1EncodableVector.a(this.f77796b);
        ASN1Set aSN1Set = this.d;
        if (aSN1Set != null) {
            aSN1EncodableVector.a(new DERTaggedObject(false, 0, aSN1Set));
        }
        return new DERSequence(aSN1EncodableVector);
    }

    public PrivateKeyInfo(AlgorithmIdentifier algorithmIdentifier, ASN1Encodable aSN1Encodable, ASN1Set aSN1Set) throws IOException {
        this.f77796b = new DEROctetString(aSN1Encodable.toASN1Primitive().h(ASN1Encoding.DER));
        this.f77797c = algorithmIdentifier;
        this.d = aSN1Set;
    }

    public PrivateKeyInfo(AlgorithmIdentifier algorithmIdentifier, ASN1Encodable aSN1Encodable) throws IOException {
        this(algorithmIdentifier, aSN1Encodable, null);
    }
}
