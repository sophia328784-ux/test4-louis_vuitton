package org.spongycastle.asn1.x9;

import java.math.BigInteger;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1OctetString;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.DEROctetString;
import org.spongycastle.math.ec.ECFieldElement;

/* JADX INFO: loaded from: classes5.dex */
public class X9FieldElement extends ASN1Object {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final X9IntegerConverter f77839c = new X9IntegerConverter();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ECFieldElement f77840b;

    public X9FieldElement(int i2, int i3, int i4, int i5, ASN1OctetString aSN1OctetString) {
        this(new ECFieldElement.F2m(i2, i3, i4, i5, new BigInteger(1, aSN1OctetString.s())));
    }

    @Override // org.spongycastle.asn1.ASN1Object, org.spongycastle.asn1.ASN1Encodable
    public final ASN1Primitive toASN1Primitive() {
        byte[] bArr;
        X9IntegerConverter x9IntegerConverter = f77839c;
        x9IntegerConverter.getClass();
        ECFieldElement eCFieldElement = this.f77840b;
        int iF = (eCFieldElement.f() + 7) / 8;
        BigInteger bigIntegerS = eCFieldElement.s();
        x9IntegerConverter.getClass();
        byte[] byteArray = bigIntegerS.toByteArray();
        if (iF >= byteArray.length) {
            if (iF > byteArray.length) {
                bArr = new byte[iF];
                System.arraycopy(byteArray, 0, bArr, iF - byteArray.length, byteArray.length);
            }
            return new DEROctetString(byteArray);
        }
        bArr = new byte[iF];
        System.arraycopy(byteArray, byteArray.length - iF, bArr, 0, iF);
        byteArray = bArr;
        return new DEROctetString(byteArray);
    }

    public X9FieldElement(BigInteger bigInteger, ASN1OctetString aSN1OctetString) {
        this(new ECFieldElement.Fp(bigInteger, new BigInteger(1, aSN1OctetString.s())));
    }

    public X9FieldElement(ECFieldElement eCFieldElement) {
        this.f77840b = eCFieldElement;
    }
}
