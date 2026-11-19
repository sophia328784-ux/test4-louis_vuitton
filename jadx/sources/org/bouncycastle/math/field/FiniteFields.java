package org.bouncycastle.math.field;

import defpackage.md;
import java.math.BigInteger;
import org.bouncycastle.util.BigIntegers;

/* JADX INFO: loaded from: classes5.dex */
public abstract class FiniteFields {
    static final FiniteField GF_2 = new PrimeField(BigInteger.valueOf(2));
    static final FiniteField GF_3 = new PrimeField(BigInteger.valueOf(3));

    public static PolynomialExtensionField getBinaryExtensionField(int[] iArr) {
        String str;
        if (iArr[0] == 0) {
            for (int i2 = 1; i2 < iArr.length; i2++) {
                if (iArr[i2] <= iArr[i2 - 1]) {
                    str = "Polynomial exponents must be monotonically increasing";
                }
            }
            return new GenericPolynomialExtensionField(GF_2, new GF2Polynomial(iArr));
        }
        str = "Irreducible polynomials in GF(2) must have constant term";
        md.n(str);
        return null;
    }

    public static FiniteField getPrimeField(BigInteger bigInteger) {
        int iBitLength = bigInteger.bitLength();
        if (bigInteger.signum() <= 0 || iBitLength < 2) {
            md.n("'characteristic' must be >= 2");
            return null;
        }
        if (iBitLength < 3) {
            int iIntValueExact = BigIntegers.intValueExact(bigInteger);
            if (iIntValueExact == 2) {
                return GF_2;
            }
            if (iIntValueExact == 3) {
                return GF_3;
            }
        }
        return new PrimeField(bigInteger);
    }
}
