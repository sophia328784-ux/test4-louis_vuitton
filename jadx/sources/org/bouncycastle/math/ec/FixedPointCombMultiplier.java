package org.bouncycastle.math.ec;

import defpackage.md;
import java.math.BigInteger;
import org.bouncycastle.math.raw.Nat;

/* JADX INFO: loaded from: classes5.dex */
public class FixedPointCombMultiplier extends AbstractECMultiplier {
    @Override // org.bouncycastle.math.ec.AbstractECMultiplier
    public ECPoint multiplyPositive(ECPoint eCPoint, BigInteger bigInteger) {
        ECCurve curve = eCPoint.getCurve();
        int combSize = FixedPointUtil.getCombSize(curve);
        if (bigInteger.bitLength() > combSize) {
            md.k("fixed-point comb doesn't support scalars larger than the curve order");
            return null;
        }
        FixedPointPreCompInfo fixedPointPreCompInfoPrecompute = FixedPointUtil.precompute(eCPoint);
        ECLookupTable lookupTable = fixedPointPreCompInfoPrecompute.getLookupTable();
        int width = fixedPointPreCompInfoPrecompute.getWidth();
        int i2 = ((combSize + width) - 1) / width;
        ECPoint infinity = curve.getInfinity();
        int i3 = width * i2;
        int[] iArrFromBigInteger = Nat.fromBigInteger(i3, bigInteger);
        int i4 = i3 - 1;
        for (int i5 = 0; i5 < i2; i5++) {
            int i6 = 0;
            for (int i7 = i4 - i5; i7 >= 0; i7 -= i2) {
                int i8 = iArrFromBigInteger[i7 >>> 5] >>> (i7 & 31);
                i6 = ((i6 ^ (i8 >>> 1)) << 1) ^ i8;
            }
            infinity = infinity.twicePlus(lookupTable.lookup(i6));
        }
        return infinity.add(fixedPointPreCompInfoPrecompute.getOffset());
    }
}
