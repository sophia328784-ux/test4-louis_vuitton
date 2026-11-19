package org.spongycastle.asn1.x9;

import defpackage.md;
import java.math.BigInteger;
import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Integer;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.DERSequence;

/* JADX INFO: loaded from: classes5.dex */
public class X9FieldID extends ASN1Object implements X9ObjectIdentifiers {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ASN1ObjectIdentifier f77841b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ASN1Primitive f77842c;

    public X9FieldID(int i2, int i3, int i4, int i5) {
        this.f77841b = X9ObjectIdentifiers.B0;
        ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector();
        aSN1EncodableVector.a(new ASN1Integer(i2));
        if (i4 == 0) {
            if (i5 != 0) {
                md.n("inconsistent k values");
                throw null;
            }
            aSN1EncodableVector.a(X9ObjectIdentifiers.C0);
            aSN1EncodableVector.a(new ASN1Integer(i3));
        } else {
            if (i4 <= i3 || i5 <= i4) {
                md.n("inconsistent k values");
                throw null;
            }
            aSN1EncodableVector.a(X9ObjectIdentifiers.D0);
            ASN1EncodableVector aSN1EncodableVector2 = new ASN1EncodableVector();
            aSN1EncodableVector2.a(new ASN1Integer(i3));
            aSN1EncodableVector2.a(new ASN1Integer(i4));
            aSN1EncodableVector2.a(new ASN1Integer(i5));
            aSN1EncodableVector.a(new DERSequence(aSN1EncodableVector2));
        }
        this.f77842c = new DERSequence(aSN1EncodableVector);
    }

    @Override // org.spongycastle.asn1.ASN1Object, org.spongycastle.asn1.ASN1Encodable
    public final ASN1Primitive toASN1Primitive() {
        ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector();
        aSN1EncodableVector.a(this.f77841b);
        aSN1EncodableVector.a(this.f77842c);
        return new DERSequence(aSN1EncodableVector);
    }

    public X9FieldID(int i2, int i3) {
        this(i2, i3, 0, 0);
    }

    public X9FieldID(BigInteger bigInteger) {
        this.f77841b = X9ObjectIdentifiers.A0;
        this.f77842c = new ASN1Integer(bigInteger);
    }
}
