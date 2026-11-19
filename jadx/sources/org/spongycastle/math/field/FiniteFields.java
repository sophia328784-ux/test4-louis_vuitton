package org.spongycastle.math.field;

import defpackage.md;
import java.math.BigInteger;

/* JADX INFO: loaded from: classes5.dex */
public abstract class FiniteFields {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final FiniteField f78046a = new PrimeField(BigInteger.valueOf(2));

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final FiniteField f78047b = new PrimeField(BigInteger.valueOf(3));

    public static PolynomialExtensionField a(int[] iArr) {
        if (iArr[0] != 0) {
            md.n("Irreducible polynomials in GF(2) must have constant term");
            return null;
        }
        for (int i2 = 1; i2 < iArr.length; i2++) {
            if (iArr[i2] <= iArr[i2 - 1]) {
                md.n("Polynomial exponents must be montonically increasing");
                return null;
            }
        }
        return new GenericPolynomialExtensionField(f78046a, new GF2Polynomial(iArr));
    }

    public static FiniteField b(BigInteger bigInteger) {
        int iBitLength = bigInteger.bitLength();
        if (bigInteger.signum() <= 0 || iBitLength < 2) {
            md.n("'characteristic' must be >= 2");
            return null;
        }
        if (iBitLength < 3) {
            int iIntValue = bigInteger.intValue();
            if (iIntValue == 2) {
                return f78046a;
            }
            if (iIntValue == 3) {
                return f78047b;
            }
        }
        return new PrimeField(bigInteger);
    }
}
