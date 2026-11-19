package org.spongycastle.jce.spec;

import defpackage.md;
import java.math.BigInteger;
import java.security.spec.ECField;
import java.security.spec.ECFieldF2m;
import java.security.spec.ECFieldFp;
import java.security.spec.EllipticCurve;
import org.spongycastle.math.ec.ECCurve;
import org.spongycastle.math.ec.ECPoint;
import org.spongycastle.math.field.FiniteField;
import org.spongycastle.math.field.Polynomial;
import org.spongycastle.math.field.PolynomialExtensionField;

/* JADX INFO: loaded from: classes5.dex */
public class ECNamedCurveSpec extends java.security.spec.ECParameterSpec {
    public ECNamedCurveSpec(String str, ECCurve eCCurve, ECPoint eCPoint, BigInteger bigInteger, BigInteger bigInteger2) {
        super(a(eCCurve, null), b(eCPoint), bigInteger, bigInteger2.intValue());
    }

    public static EllipticCurve a(ECCurve eCCurve, byte[] bArr) {
        ECField eCFieldF2m;
        FiniteField finiteField = eCCurve.f77918a;
        if (finiteField.getDimension() == 1) {
            eCFieldF2m = new ECFieldFp(finiteField.getCharacteristic());
        } else {
            Polynomial minimalPolynomial = ((PolynomialExtensionField) finiteField).getMinimalPolynomial();
            int[] exponentsPresent = minimalPolynomial.getExponentsPresent();
            int length = exponentsPresent.length;
            int i2 = length - 1;
            int i3 = length - 2;
            if (i3 < 0) {
                StringBuffer stringBuffer = new StringBuffer(1);
                stringBuffer.append(" > ");
                stringBuffer.append(i2);
                throw new IllegalArgumentException(stringBuffer.toString());
            }
            int[] iArr = new int[i3];
            int i4 = 0;
            if (exponentsPresent.length - 1 < i3) {
                System.arraycopy(exponentsPresent, 1, iArr, 0, exponentsPresent.length - 1);
            } else {
                System.arraycopy(exponentsPresent, 1, iArr, 0, i3);
            }
            int[] iArr2 = new int[i3];
            while (true) {
                i3--;
                if (i3 < 0) {
                    break;
                }
                iArr2[i3] = iArr[i4];
                i4++;
            }
            eCFieldF2m = new ECFieldF2m(minimalPolynomial.getDegree(), iArr2);
        }
        return new EllipticCurve(eCFieldF2m, eCCurve.f77919b.s(), eCCurve.f77920c.s(), bArr);
    }

    public static java.security.spec.ECPoint b(ECPoint eCPoint) {
        ECPoint eCPointJ = eCPoint.j();
        if (!eCPointJ.h()) {
            md.k("point not in normal form");
            return null;
        }
        BigInteger bigIntegerS = eCPointJ.f77939b.s();
        if (eCPointJ.h()) {
            return new java.security.spec.ECPoint(bigIntegerS, eCPointJ.e().s());
        }
        md.k("point not in normal form");
        return null;
    }

    public ECNamedCurveSpec(String str, EllipticCurve ellipticCurve, java.security.spec.ECPoint eCPoint, BigInteger bigInteger) {
        super(ellipticCurve, eCPoint, bigInteger, 1);
    }

    public ECNamedCurveSpec(String str, ECCurve eCCurve, ECPoint eCPoint, BigInteger bigInteger) {
        super(a(eCCurve, null), b(eCPoint), bigInteger, 1);
    }

    public ECNamedCurveSpec(String str, EllipticCurve ellipticCurve, java.security.spec.ECPoint eCPoint, BigInteger bigInteger, BigInteger bigInteger2) {
        super(ellipticCurve, eCPoint, bigInteger, bigInteger2.intValue());
    }

    public ECNamedCurveSpec(String str, ECCurve eCCurve, ECPoint eCPoint, BigInteger bigInteger, BigInteger bigInteger2, byte[] bArr) {
        super(a(eCCurve, bArr), b(eCPoint), bigInteger, bigInteger2.intValue());
    }
}
