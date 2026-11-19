package org.spongycastle.asn1.x9;

import defpackage.md;
import java.math.BigInteger;
import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Integer;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.DERSequence;
import org.spongycastle.math.ec.ECConstants;
import org.spongycastle.math.ec.ECCurve;
import org.spongycastle.math.ec.ECPoint;
import org.spongycastle.math.field.FiniteField;
import org.spongycastle.math.field.PolynomialExtensionField;

/* JADX INFO: loaded from: classes5.dex */
public class X9ECParameters extends ASN1Object implements X9ObjectIdentifiers {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final BigInteger f77831h = BigInteger.valueOf(1);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final X9FieldID f77832b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ECCurve f77833c;
    public final X9ECPoint d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final BigInteger f77834e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final BigInteger f77835f;
    public final byte[] g;

    public X9ECParameters(ECCurve eCCurve, X9ECPoint x9ECPoint, BigInteger bigInteger, BigInteger bigInteger2, byte[] bArr) {
        this.f77833c = eCCurve;
        this.d = x9ECPoint;
        this.f77834e = bigInteger;
        this.f77835f = bigInteger2;
        this.g = bArr;
        FiniteField finiteField = eCCurve.f77918a;
        if (finiteField.getDimension() == 1) {
            this.f77832b = new X9FieldID(finiteField.getCharacteristic());
            return;
        }
        FiniteField finiteField2 = eCCurve.f77918a;
        if (finiteField2.getDimension() <= 1 || !finiteField2.getCharacteristic().equals(ECConstants.f77917c) || !(finiteField2 instanceof PolynomialExtensionField)) {
            md.n("'curve' is of an unsupported type");
            throw null;
        }
        int[] exponentsPresent = ((PolynomialExtensionField) finiteField).getMinimalPolynomial().getExponentsPresent();
        if (exponentsPresent.length == 3) {
            this.f77832b = new X9FieldID(exponentsPresent[2], exponentsPresent[1]);
        } else if (exponentsPresent.length == 5) {
            this.f77832b = new X9FieldID(exponentsPresent[4], exponentsPresent[1], exponentsPresent[2], exponentsPresent[3]);
        } else {
            md.n("Only trinomial and pentomial curves are supported");
            throw null;
        }
    }

    @Override // org.spongycastle.asn1.ASN1Object, org.spongycastle.asn1.ASN1Encodable
    public final ASN1Primitive toASN1Primitive() {
        ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector();
        aSN1EncodableVector.a(new ASN1Integer(f77831h));
        aSN1EncodableVector.a(this.f77832b);
        aSN1EncodableVector.a(new X9Curve(this.f77833c, this.g));
        aSN1EncodableVector.a(this.d);
        aSN1EncodableVector.a(new ASN1Integer(this.f77834e));
        BigInteger bigInteger = this.f77835f;
        if (bigInteger != null) {
            aSN1EncodableVector.a(new ASN1Integer(bigInteger));
        }
        return new DERSequence(aSN1EncodableVector);
    }

    public X9ECParameters(ECCurve eCCurve, X9ECPoint x9ECPoint, BigInteger bigInteger, BigInteger bigInteger2) {
        this(eCCurve, x9ECPoint, bigInteger, bigInteger2, (byte[]) null);
    }

    public X9ECParameters(ECCurve eCCurve, ECPoint eCPoint, BigInteger bigInteger, BigInteger bigInteger2) {
        this(eCCurve, eCPoint, bigInteger, bigInteger2, (byte[]) null);
    }

    public X9ECParameters(ECCurve eCCurve, ECPoint eCPoint, BigInteger bigInteger, BigInteger bigInteger2, byte[] bArr) {
        this(eCCurve, new X9ECPoint(eCPoint), bigInteger, bigInteger2, bArr);
    }

    public X9ECParameters(ECCurve eCCurve, ECPoint eCPoint, BigInteger bigInteger) {
        this(eCCurve, eCPoint, bigInteger, (BigInteger) null, (byte[]) null);
    }
}
