package org.bouncycastle.math.ec.custom.sec;

import java.math.BigInteger;
import org.bouncycastle.math.ec.AbstractECLookupTable;
import org.bouncycastle.math.ec.ECConstants;
import org.bouncycastle.math.ec.ECCurve;
import org.bouncycastle.math.ec.ECFieldElement;
import org.bouncycastle.math.ec.ECLookupTable;
import org.bouncycastle.math.ec.ECMultiplier;
import org.bouncycastle.math.ec.ECPoint;
import org.bouncycastle.math.ec.WTauNafMultiplier;
import org.bouncycastle.math.raw.Nat192;
import org.bouncycastle.util.encoders.Hex;

/* JADX INFO: loaded from: classes5.dex */
public class SecT163K1Curve extends ECCurve.AbstractF2m {
    private static final ECFieldElement[] SECT163K1_AFFINE_ZS = {new SecT163FieldElement(ECConstants.ONE)};
    private static final int SECT163K1_DEFAULT_COORDS = 6;
    protected SecT163K1Point infinity;

    public SecT163K1Curve() {
        super(163, 3, 6, 7);
        this.infinity = new SecT163K1Point(this, null, null);
        ECFieldElement eCFieldElementFromBigInteger = fromBigInteger(BigInteger.valueOf(1L));
        this.f77647a = eCFieldElementFromBigInteger;
        this.f77648b = eCFieldElementFromBigInteger;
        this.order = new BigInteger(1, Hex.decodeStrict("04000000000000000000020108A2E0CC0D99F8A5EF"));
        this.cofactor = BigInteger.valueOf(2L);
        this.coord = 6;
    }

    @Override // org.bouncycastle.math.ec.ECCurve
    public ECCurve cloneCurve() {
        return new SecT163K1Curve();
    }

    @Override // org.bouncycastle.math.ec.ECCurve
    public ECLookupTable createCacheSafeLookupTable(ECPoint[] eCPointArr, int i2, final int i3) {
        final long[] jArr = new long[i3 * 6];
        int i4 = 0;
        for (int i5 = 0; i5 < i3; i5++) {
            ECPoint eCPoint = eCPointArr[i2 + i5];
            Nat192.copy64(((SecT163FieldElement) eCPoint.getRawXCoord()).x, 0, jArr, i4);
            Nat192.copy64(((SecT163FieldElement) eCPoint.getRawYCoord()).x, 0, jArr, i4 + 3);
            i4 += 6;
        }
        return new AbstractECLookupTable() { // from class: org.bouncycastle.math.ec.custom.sec.SecT163K1Curve.1
            private ECPoint createPoint(long[] jArr2, long[] jArr3) {
                return SecT163K1Curve.this.createRawPoint(new SecT163FieldElement(jArr2), new SecT163FieldElement(jArr3), SecT163K1Curve.SECT163K1_AFFINE_ZS);
            }

            @Override // org.bouncycastle.math.ec.ECLookupTable
            public int getSize() {
                return i3;
            }

            @Override // org.bouncycastle.math.ec.ECLookupTable
            public ECPoint lookup(int i6) {
                long[] jArrCreate64 = Nat192.create64();
                long[] jArrCreate65 = Nat192.create64();
                int i7 = 0;
                for (int i8 = 0; i8 < i3; i8++) {
                    long j2 = ((i8 ^ i6) - 1) >> 31;
                    for (int i9 = 0; i9 < 3; i9++) {
                        long j3 = jArrCreate64[i9];
                        long[] jArr2 = jArr;
                        jArrCreate64[i9] = j3 ^ (jArr2[i7 + i9] & j2);
                        jArrCreate65[i9] = jArrCreate65[i9] ^ (jArr2[(i7 + 3) + i9] & j2);
                    }
                    i7 += 6;
                }
                return createPoint(jArrCreate64, jArrCreate65);
            }

            @Override // org.bouncycastle.math.ec.AbstractECLookupTable, org.bouncycastle.math.ec.ECLookupTable
            public ECPoint lookupVar(int i6) {
                long[] jArrCreate64 = Nat192.create64();
                long[] jArrCreate65 = Nat192.create64();
                int i7 = i6 * 6;
                for (int i8 = 0; i8 < 3; i8++) {
                    long[] jArr2 = jArr;
                    jArrCreate64[i8] = jArr2[i7 + i8];
                    jArrCreate65[i8] = jArr2[3 + i7 + i8];
                }
                return createPoint(jArrCreate64, jArrCreate65);
            }
        };
    }

    @Override // org.bouncycastle.math.ec.ECCurve
    public ECMultiplier createDefaultMultiplier() {
        return new WTauNafMultiplier();
    }

    @Override // org.bouncycastle.math.ec.ECCurve
    public ECPoint createRawPoint(ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2) {
        return new SecT163K1Point(this, eCFieldElement, eCFieldElement2);
    }

    @Override // org.bouncycastle.math.ec.ECCurve
    public ECFieldElement fromBigInteger(BigInteger bigInteger) {
        return new SecT163FieldElement(bigInteger);
    }

    @Override // org.bouncycastle.math.ec.ECCurve
    public int getFieldSize() {
        return 163;
    }

    @Override // org.bouncycastle.math.ec.ECCurve
    public ECPoint getInfinity() {
        return this.infinity;
    }

    public int getK1() {
        return 3;
    }

    public int getK2() {
        return 6;
    }

    public int getK3() {
        return 7;
    }

    public int getM() {
        return 163;
    }

    @Override // org.bouncycastle.math.ec.ECCurve.AbstractF2m
    public boolean isKoblitz() {
        return true;
    }

    public boolean isTrinomial() {
        return false;
    }

    @Override // org.bouncycastle.math.ec.ECCurve
    public boolean supportsCoordinateSystem(int i2) {
        return i2 == 6;
    }

    @Override // org.bouncycastle.math.ec.ECCurve
    public ECPoint createRawPoint(ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, ECFieldElement[] eCFieldElementArr) {
        return new SecT163K1Point(this, eCFieldElement, eCFieldElement2, eCFieldElementArr);
    }
}
