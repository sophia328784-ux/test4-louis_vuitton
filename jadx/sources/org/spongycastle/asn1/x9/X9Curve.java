package org.spongycastle.asn1.x9;

import defpackage.md;
import java.math.BigInteger;
import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Integer;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.ASN1OctetString;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.DERBitString;
import org.spongycastle.asn1.DERSequence;
import org.spongycastle.math.ec.ECConstants;
import org.spongycastle.math.ec.ECCurve;
import org.spongycastle.math.field.FiniteField;
import org.spongycastle.math.field.PolynomialExtensionField;

/* JADX INFO: loaded from: classes5.dex */
public class X9Curve extends ASN1Object implements X9ObjectIdentifiers {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ECCurve f77829b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final byte[] f77830c;
    public ASN1ObjectIdentifier d;

    public X9Curve(X9FieldID x9FieldID, ASN1Sequence aSN1Sequence) {
        int iIntValue;
        int iIntValue2;
        int i2;
        this.d = null;
        ASN1ObjectIdentifier aSN1ObjectIdentifier = x9FieldID.f77841b;
        ASN1Primitive aSN1Primitive = x9FieldID.f77842c;
        this.d = aSN1ObjectIdentifier;
        if (aSN1ObjectIdentifier.equals(X9ObjectIdentifiers.A0)) {
            BigInteger bigIntegerS = ((ASN1Integer) aSN1Primitive).s();
            this.f77829b = new ECCurve.Fp(bigIntegerS, new X9FieldElement(bigIntegerS, (ASN1OctetString) aSN1Sequence.s(0)).f77840b.s(), new X9FieldElement(bigIntegerS, (ASN1OctetString) aSN1Sequence.s(1)).f77840b.s());
        } else {
            if (!this.d.equals(X9ObjectIdentifiers.B0)) {
                md.n("This type of ECCurve is not implemented");
                throw null;
            }
            ASN1Sequence aSN1SequenceR = ASN1Sequence.r(aSN1Primitive);
            int iIntValue3 = ((ASN1Integer) aSN1SequenceR.s(0)).s().intValue();
            ASN1ObjectIdentifier aSN1ObjectIdentifier2 = (ASN1ObjectIdentifier) aSN1SequenceR.s(1);
            if (aSN1ObjectIdentifier2.equals(X9ObjectIdentifiers.C0)) {
                iIntValue2 = ASN1Integer.r(aSN1SequenceR.s(2)).s().intValue();
                i2 = 0;
                iIntValue = 0;
            } else {
                if (!aSN1ObjectIdentifier2.equals(X9ObjectIdentifiers.D0)) {
                    md.n("This type of EC basis is not implemented");
                    throw null;
                }
                ASN1Sequence aSN1SequenceR2 = ASN1Sequence.r(aSN1SequenceR.s(2));
                int iIntValue4 = ASN1Integer.r(aSN1SequenceR2.s(0)).s().intValue();
                int iIntValue5 = ASN1Integer.r(aSN1SequenceR2.s(1)).s().intValue();
                iIntValue = ASN1Integer.r(aSN1SequenceR2.s(2)).s().intValue();
                iIntValue2 = iIntValue4;
                i2 = iIntValue5;
            }
            this.f77829b = new ECCurve.F2m(iIntValue3, iIntValue2, i2, iIntValue, new X9FieldElement(iIntValue3, iIntValue2, i2, iIntValue, (ASN1OctetString) aSN1Sequence.s(0)).f77840b.s(), new X9FieldElement(iIntValue3, iIntValue2, i2, iIntValue, (ASN1OctetString) aSN1Sequence.s(1)).f77840b.s());
        }
        if (aSN1Sequence.size() == 3) {
            this.f77830c = ((DERBitString) aSN1Sequence.s(2)).r();
        }
    }

    public final void i() {
        ECCurve eCCurve = this.f77829b;
        if (eCCurve.f77918a.getDimension() == 1) {
            this.d = X9ObjectIdentifiers.A0;
            return;
        }
        FiniteField finiteField = eCCurve.f77918a;
        if (finiteField.getDimension() > 1 && finiteField.getCharacteristic().equals(ECConstants.f77917c) && (finiteField instanceof PolynomialExtensionField)) {
            this.d = X9ObjectIdentifiers.B0;
        } else {
            md.n("This type of ECCurve is not implemented");
        }
    }

    @Override // org.spongycastle.asn1.ASN1Object, org.spongycastle.asn1.ASN1Encodable
    public final ASN1Primitive toASN1Primitive() {
        ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector();
        boolean zEquals = this.d.equals(X9ObjectIdentifiers.A0);
        ECCurve eCCurve = this.f77829b;
        if (zEquals || this.d.equals(X9ObjectIdentifiers.B0)) {
            aSN1EncodableVector.a(new X9FieldElement(eCCurve.f77919b).toASN1Primitive());
            aSN1EncodableVector.a(new X9FieldElement(eCCurve.f77920c).toASN1Primitive());
        }
        byte[] bArr = this.f77830c;
        if (bArr != null) {
            aSN1EncodableVector.a(new DERBitString(bArr));
        }
        return new DERSequence(aSN1EncodableVector);
    }

    public X9Curve(ECCurve eCCurve, byte[] bArr) {
        this.d = null;
        this.f77829b = eCCurve;
        this.f77830c = bArr;
        i();
    }

    public X9Curve(ECCurve eCCurve) {
        this.d = null;
        this.f77829b = eCCurve;
        this.f77830c = null;
        i();
    }
}
