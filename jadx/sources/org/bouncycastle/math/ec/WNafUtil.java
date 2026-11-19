package org.bouncycastle.math.ec;

import defpackage.md;
import java.math.BigInteger;

/* JADX INFO: loaded from: classes5.dex */
public abstract class WNafUtil {
    private static final int[] DEFAULT_WINDOW_SIZE_CUTOFFS = {13, 41, 121, 337, 897, 2305};
    private static final byte[] EMPTY_BYTES = new byte[0];
    private static final int[] EMPTY_INTS = new int[0];
    private static final ECPoint[] EMPTY_POINTS = new ECPoint[0];
    private static final int MAX_WIDTH = 16;
    public static final String PRECOMP_NAME = "bc_wnaf";

    public static void configureBasepoint(ECPoint eCPoint) {
        ECCurve curve = eCPoint.getCurve();
        if (curve == null) {
            return;
        }
        BigInteger order = curve.getOrder();
        final int iMin = Math.min(16, getWindowSize(order == null ? curve.getFieldSize() + 1 : order.bitLength()) + 3);
        curve.precompute(eCPoint, PRECOMP_NAME, new PreCompCallback() { // from class: org.bouncycastle.math.ec.WNafUtil.1
            @Override // org.bouncycastle.math.ec.PreCompCallback
            public PreCompInfo precompute(PreCompInfo preCompInfo) {
                WNafPreCompInfo wNafPreCompInfo = preCompInfo instanceof WNafPreCompInfo ? (WNafPreCompInfo) preCompInfo : null;
                if (wNafPreCompInfo != null && wNafPreCompInfo.getConfWidth() == iMin) {
                    wNafPreCompInfo.setPromotionCountdown(0);
                    return wNafPreCompInfo;
                }
                WNafPreCompInfo wNafPreCompInfo2 = new WNafPreCompInfo();
                wNafPreCompInfo2.setPromotionCountdown(0);
                wNafPreCompInfo2.setConfWidth(iMin);
                if (wNafPreCompInfo != null) {
                    wNafPreCompInfo2.setPreComp(wNafPreCompInfo.getPreComp());
                    wNafPreCompInfo2.setPreCompNeg(wNafPreCompInfo.getPreCompNeg());
                    wNafPreCompInfo2.setTwice(wNafPreCompInfo.getTwice());
                    wNafPreCompInfo2.setWidth(wNafPreCompInfo.getWidth());
                }
                return wNafPreCompInfo2;
            }
        });
    }

    public static int[] generateCompactNaf(BigInteger bigInteger) {
        if ((bigInteger.bitLength() >>> 16) != 0) {
            md.n("'k' must have bitlength < 2^16");
            return null;
        }
        if (bigInteger.signum() == 0) {
            return EMPTY_INTS;
        }
        BigInteger bigIntegerAdd = bigInteger.shiftLeft(1).add(bigInteger);
        int iBitLength = bigIntegerAdd.bitLength();
        int i2 = iBitLength >> 1;
        int[] iArr = new int[i2];
        BigInteger bigIntegerXor = bigIntegerAdd.xor(bigInteger);
        int i3 = iBitLength - 1;
        int i4 = 0;
        int i5 = 1;
        int i6 = 0;
        while (i5 < i3) {
            if (bigIntegerXor.testBit(i5)) {
                iArr[i4] = i6 | ((bigInteger.testBit(i5) ? -1 : 1) << 16);
                i5++;
                i6 = 1;
                i4++;
            } else {
                i6++;
            }
            i5++;
        }
        int i7 = i4 + 1;
        iArr[i4] = 65536 | i6;
        return i2 > i7 ? trim(iArr, i7) : iArr;
    }

    public static int[] generateCompactWindowNaf(int i2, BigInteger bigInteger) {
        String str;
        if (i2 == 2) {
            return generateCompactNaf(bigInteger);
        }
        if (i2 < 2 || i2 > 16) {
            str = "'width' must be in the range [2, 16]";
        } else {
            if ((bigInteger.bitLength() >>> 16) == 0) {
                if (bigInteger.signum() == 0) {
                    return EMPTY_INTS;
                }
                int iBitLength = (bigInteger.bitLength() / i2) + 1;
                int[] iArr = new int[iBitLength];
                int i3 = 1 << i2;
                int i4 = i3 - 1;
                int i5 = i3 >>> 1;
                int i6 = 0;
                int i7 = 0;
                boolean z = false;
                while (i6 <= bigInteger.bitLength()) {
                    if (bigInteger.testBit(i6) == z) {
                        i6++;
                    } else {
                        bigInteger = bigInteger.shiftRight(i6);
                        int iIntValue = bigInteger.intValue() & i4;
                        if (z) {
                            iIntValue++;
                        }
                        z = (iIntValue & i5) != 0;
                        if (z) {
                            iIntValue -= i3;
                        }
                        if (i7 > 0) {
                            i6--;
                        }
                        iArr[i7] = i6 | (iIntValue << 16);
                        i6 = i2;
                        i7++;
                    }
                }
                return iBitLength > i7 ? trim(iArr, i7) : iArr;
            }
            str = "'k' must have bitlength < 2^16";
        }
        md.n(str);
        return null;
    }

    public static byte[] generateJSF(BigInteger bigInteger, BigInteger bigInteger2) {
        int iMax = Math.max(bigInteger.bitLength(), bigInteger2.bitLength()) + 1;
        byte[] bArr = new byte[iMax];
        BigInteger bigIntegerShiftRight = bigInteger;
        BigInteger bigIntegerShiftRight2 = bigInteger2;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        while (true) {
            if ((i2 | i3) == 0 && bigIntegerShiftRight.bitLength() <= i4 && bigIntegerShiftRight2.bitLength() <= i4) {
                break;
            }
            int iIntValue = (bigIntegerShiftRight.intValue() >>> i4) + i2;
            int i6 = iIntValue & 7;
            int iIntValue2 = (bigIntegerShiftRight2.intValue() >>> i4) + i3;
            int i7 = iIntValue2 & 7;
            int i8 = iIntValue & 1;
            if (i8 != 0) {
                i8 -= iIntValue & 2;
                if (i6 + i8 == 4 && (iIntValue2 & 3) == 2) {
                    i8 = -i8;
                }
            }
            int i9 = iIntValue2 & 1;
            if (i9 != 0) {
                i9 -= iIntValue2 & 2;
                if (i7 + i9 == 4 && (iIntValue & 3) == 2) {
                    i9 = -i9;
                }
            }
            if ((i2 << 1) == i8 + 1) {
                i2 ^= 1;
            }
            if ((i3 << 1) == i9 + 1) {
                i3 ^= 1;
            }
            i4++;
            if (i4 == 30) {
                bigIntegerShiftRight = bigIntegerShiftRight.shiftRight(30);
                bigIntegerShiftRight2 = bigIntegerShiftRight2.shiftRight(30);
                i4 = 0;
            }
            bArr[i5] = (byte) ((i9 & 15) | (i8 << 4));
            i5++;
        }
        return iMax > i5 ? trim(bArr, i5) : bArr;
    }

    public static byte[] generateNaf(BigInteger bigInteger) {
        if (bigInteger.signum() == 0) {
            return EMPTY_BYTES;
        }
        BigInteger bigIntegerAdd = bigInteger.shiftLeft(1).add(bigInteger);
        int iBitLength = bigIntegerAdd.bitLength();
        int i2 = iBitLength - 1;
        byte[] bArr = new byte[i2];
        BigInteger bigIntegerXor = bigIntegerAdd.xor(bigInteger);
        int i3 = 1;
        while (i3 < i2) {
            if (bigIntegerXor.testBit(i3)) {
                bArr[i3 - 1] = (byte) (bigInteger.testBit(i3) ? -1 : 1);
                i3++;
            }
            i3++;
        }
        bArr[iBitLength - 2] = 1;
        return bArr;
    }

    public static byte[] generateWindowNaf(int i2, BigInteger bigInteger) {
        if (i2 == 2) {
            return generateNaf(bigInteger);
        }
        if (i2 < 2 || i2 > 8) {
            md.n("'width' must be in the range [2, 8]");
            return null;
        }
        if (bigInteger.signum() == 0) {
            return EMPTY_BYTES;
        }
        int iBitLength = bigInteger.bitLength() + 1;
        byte[] bArr = new byte[iBitLength];
        int i3 = 1 << i2;
        int i4 = i3 - 1;
        int i5 = i3 >>> 1;
        int i6 = 0;
        int i7 = 0;
        boolean z = false;
        while (i6 <= bigInteger.bitLength()) {
            if (bigInteger.testBit(i6) == z) {
                i6++;
            } else {
                bigInteger = bigInteger.shiftRight(i6);
                int iIntValue = bigInteger.intValue() & i4;
                if (z) {
                    iIntValue++;
                }
                z = (iIntValue & i5) != 0;
                if (z) {
                    iIntValue -= i3;
                }
                if (i7 > 0) {
                    i6--;
                }
                int i8 = i7 + i6;
                bArr[i8] = (byte) iIntValue;
                i7 = i8 + 1;
                i6 = i2;
            }
        }
        return iBitLength > i7 ? trim(bArr, i7) : bArr;
    }

    public static int getNafWeight(BigInteger bigInteger) {
        if (bigInteger.signum() == 0) {
            return 0;
        }
        return bigInteger.shiftLeft(1).add(bigInteger).xor(bigInteger).bitCount();
    }

    public static WNafPreCompInfo getWNafPreCompInfo(ECPoint eCPoint) {
        return getWNafPreCompInfo(eCPoint.getCurve().getPreCompInfo(eCPoint, PRECOMP_NAME));
    }

    public static int getWindowSize(int i2, int[] iArr, int i3) {
        int i4 = 0;
        while (i4 < iArr.length && i2 >= iArr[i4]) {
            i4++;
        }
        return Math.max(2, Math.min(i3, i4 + 2));
    }

    public static WNafPreCompInfo precompute(final ECPoint eCPoint, final int i2, final boolean z) {
        final ECCurve curve = eCPoint.getCurve();
        return (WNafPreCompInfo) curve.precompute(eCPoint, PRECOMP_NAME, new PreCompCallback() { // from class: org.bouncycastle.math.ec.WNafUtil.2
            private boolean checkExisting(WNafPreCompInfo wNafPreCompInfo, int i3, int i4, boolean z2) {
                if (wNafPreCompInfo == null || wNafPreCompInfo.getWidth() < Math.max(wNafPreCompInfo.getConfWidth(), i3) || !checkTable(wNafPreCompInfo.getPreComp(), i4)) {
                    return false;
                }
                return !z2 || checkTable(wNafPreCompInfo.getPreCompNeg(), i4);
            }

            private boolean checkTable(ECPoint[] eCPointArr, int i3) {
                return eCPointArr != null && eCPointArr.length >= i3;
            }

            /* JADX WARN: Code duplicated, block: B:45:0x00ef A[PHI: r14
              0x00ef: PHI (r14v6 org.bouncycastle.math.ec.ECPoint) = 
              (r14v4 org.bouncycastle.math.ec.ECPoint)
              (r14v9 org.bouncycastle.math.ec.ECPoint)
              (r14v9 org.bouncycastle.math.ec.ECPoint)
              (r14v9 org.bouncycastle.math.ec.ECPoint)
              (r14v9 org.bouncycastle.math.ec.ECPoint)
             binds: [B:28:0x0091, B:30:0x009d, B:32:0x00a5, B:34:0x00af, B:40:0x00bd] A[DONT_GENERATE, DONT_INLINE]] */
            /* JADX WARN: Code duplicated, block: B:58:0x0117 A[LOOP:1: B:57:0x0115->B:58:0x0117, LOOP_END] */
            @Override // org.bouncycastle.math.ec.PreCompCallback
            public PreCompInfo precompute(PreCompInfo preCompInfo) {
                ECPoint eCPointTwice;
                ECPoint[] eCPointArrResizeTable;
                ECPoint[] preCompNeg;
                int length;
                ECPoint[] eCPointArrResizeTable2;
                int i3;
                ECPoint eCPointCreatePoint;
                int coordinateSystem;
                ECFieldElement zCoord = null;
                WNafPreCompInfo wNafPreCompInfo = preCompInfo instanceof WNafPreCompInfo ? (WNafPreCompInfo) preCompInfo : null;
                int iMax = Math.max(2, Math.min(16, i2));
                if (checkExisting(wNafPreCompInfo, iMax, 1 << (iMax - 2), z)) {
                    wNafPreCompInfo.decrementPromotionCountdown();
                    return wNafPreCompInfo;
                }
                WNafPreCompInfo wNafPreCompInfo2 = new WNafPreCompInfo();
                if (wNafPreCompInfo != null) {
                    wNafPreCompInfo2.setPromotionCountdown(wNafPreCompInfo.decrementPromotionCountdown());
                    wNafPreCompInfo2.setConfWidth(wNafPreCompInfo.getConfWidth());
                    eCPointArrResizeTable = wNafPreCompInfo.getPreComp();
                    preCompNeg = wNafPreCompInfo.getPreCompNeg();
                    eCPointTwice = wNafPreCompInfo.getTwice();
                } else {
                    eCPointTwice = null;
                    eCPointArrResizeTable = null;
                    preCompNeg = null;
                }
                int iMin = Math.min(16, Math.max(wNafPreCompInfo2.getConfWidth(), iMax));
                int i4 = 1 << (iMin - 2);
                int length2 = 0;
                if (eCPointArrResizeTable == null) {
                    eCPointArrResizeTable = WNafUtil.EMPTY_POINTS;
                    length = 0;
                } else {
                    length = eCPointArrResizeTable.length;
                }
                if (length < i4) {
                    eCPointArrResizeTable = WNafUtil.resizeTable(eCPointArrResizeTable, i4);
                    if (i4 == 1) {
                        eCPointArrResizeTable[0] = eCPoint.normalize();
                    } else {
                        if (length == 0) {
                            eCPointArrResizeTable[0] = eCPoint;
                            i3 = 1;
                        } else {
                            i3 = length;
                        }
                        if (i4 == 2) {
                            eCPointArrResizeTable[1] = eCPoint.threeTimes();
                        } else {
                            ECPoint eCPointAdd = eCPointArrResizeTable[i3 - 1];
                            if (eCPointTwice == null) {
                                eCPointTwice = eCPointArrResizeTable[0].twice();
                                if (eCPointTwice.isInfinity() || !ECAlgorithms.isFpCurve(curve) || curve.getFieldSize() < 64 || !((coordinateSystem = curve.getCoordinateSystem()) == 2 || coordinateSystem == 3 || coordinateSystem == 4)) {
                                    eCPointCreatePoint = eCPointTwice;
                                } else {
                                    zCoord = eCPointTwice.getZCoord(0);
                                    eCPointCreatePoint = curve.createPoint(eCPointTwice.getXCoord().toBigInteger(), eCPointTwice.getYCoord().toBigInteger());
                                    ECFieldElement eCFieldElementSquare = zCoord.square();
                                    eCPointAdd = eCPointAdd.scaleX(eCFieldElementSquare).scaleY(eCFieldElementSquare.multiply(zCoord));
                                    if (length == 0) {
                                        eCPointArrResizeTable[0] = eCPointAdd;
                                    }
                                }
                            } else {
                                eCPointCreatePoint = eCPointTwice;
                            }
                            while (i3 < i4) {
                                eCPointAdd = eCPointAdd.add(eCPointCreatePoint);
                                eCPointArrResizeTable[i3] = eCPointAdd;
                                i3++;
                            }
                        }
                        curve.normalizeAll(eCPointArrResizeTable, length, i4 - length, zCoord);
                    }
                }
                if (z) {
                    if (preCompNeg == null) {
                        eCPointArrResizeTable2 = new ECPoint[i4];
                    } else {
                        length2 = preCompNeg.length;
                        if (length2 < i4) {
                            eCPointArrResizeTable2 = WNafUtil.resizeTable(preCompNeg, i4);
                        }
                        while (length2 < i4) {
                            preCompNeg[length2] = eCPointArrResizeTable[length2].negate();
                            length2++;
                        }
                    }
                    preCompNeg = eCPointArrResizeTable2;
                    while (length2 < i4) {
                        preCompNeg[length2] = eCPointArrResizeTable[length2].negate();
                        length2++;
                    }
                }
                wNafPreCompInfo2.setPreComp(eCPointArrResizeTable);
                wNafPreCompInfo2.setPreCompNeg(preCompNeg);
                wNafPreCompInfo2.setTwice(eCPointTwice);
                wNafPreCompInfo2.setWidth(iMin);
                return wNafPreCompInfo2;
            }
        });
    }

    public static WNafPreCompInfo precomputeWithPointMap(ECPoint eCPoint, final ECPointMap eCPointMap, final WNafPreCompInfo wNafPreCompInfo, final boolean z) {
        return (WNafPreCompInfo) eCPoint.getCurve().precompute(eCPoint, PRECOMP_NAME, new PreCompCallback() { // from class: org.bouncycastle.math.ec.WNafUtil.3
            private boolean checkExisting(WNafPreCompInfo wNafPreCompInfo2, int i2, int i3, boolean z2) {
                if (wNafPreCompInfo2 == null || wNafPreCompInfo2.getWidth() < i2 || !checkTable(wNafPreCompInfo2.getPreComp(), i3)) {
                    return false;
                }
                return !z2 || checkTable(wNafPreCompInfo2.getPreCompNeg(), i3);
            }

            private boolean checkTable(ECPoint[] eCPointArr, int i2) {
                return eCPointArr != null && eCPointArr.length >= i2;
            }

            @Override // org.bouncycastle.math.ec.PreCompCallback
            public PreCompInfo precompute(PreCompInfo preCompInfo) {
                WNafPreCompInfo wNafPreCompInfo2 = preCompInfo instanceof WNafPreCompInfo ? (WNafPreCompInfo) preCompInfo : null;
                int width = wNafPreCompInfo.getWidth();
                if (checkExisting(wNafPreCompInfo2, width, wNafPreCompInfo.getPreComp().length, z)) {
                    wNafPreCompInfo2.decrementPromotionCountdown();
                    return wNafPreCompInfo2;
                }
                WNafPreCompInfo wNafPreCompInfo3 = new WNafPreCompInfo();
                wNafPreCompInfo3.setPromotionCountdown(wNafPreCompInfo.getPromotionCountdown());
                ECPoint twice = wNafPreCompInfo.getTwice();
                if (twice != null) {
                    wNafPreCompInfo3.setTwice(eCPointMap.map(twice));
                }
                ECPoint[] preComp = wNafPreCompInfo.getPreComp();
                int length = preComp.length;
                ECPoint[] eCPointArr = new ECPoint[length];
                for (int i2 = 0; i2 < preComp.length; i2++) {
                    eCPointArr[i2] = eCPointMap.map(preComp[i2]);
                }
                wNafPreCompInfo3.setPreComp(eCPointArr);
                wNafPreCompInfo3.setWidth(width);
                if (z) {
                    ECPoint[] eCPointArr2 = new ECPoint[length];
                    for (int i3 = 0; i3 < length; i3++) {
                        eCPointArr2[i3] = eCPointArr[i3].negate();
                    }
                    wNafPreCompInfo3.setPreCompNeg(eCPointArr2);
                }
                return wNafPreCompInfo3;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static ECPoint[] resizeTable(ECPoint[] eCPointArr, int i2) {
        ECPoint[] eCPointArr2 = new ECPoint[i2];
        System.arraycopy(eCPointArr, 0, eCPointArr2, 0, eCPointArr.length);
        return eCPointArr2;
    }

    private static byte[] trim(byte[] bArr, int i2) {
        byte[] bArr2 = new byte[i2];
        System.arraycopy(bArr, 0, bArr2, 0, i2);
        return bArr2;
    }

    private static int[] trim(int[] iArr, int i2) {
        int[] iArr2 = new int[i2];
        System.arraycopy(iArr, 0, iArr2, 0, i2);
        return iArr2;
    }

    public static WNafPreCompInfo getWNafPreCompInfo(PreCompInfo preCompInfo) {
        if (preCompInfo instanceof WNafPreCompInfo) {
            return (WNafPreCompInfo) preCompInfo;
        }
        return null;
    }

    public static int getWindowSize(int i2, int i3) {
        return getWindowSize(i2, DEFAULT_WINDOW_SIZE_CUTOFFS, i3);
    }

    public static int getWindowSize(int i2, int[] iArr) {
        return getWindowSize(i2, iArr, 16);
    }

    public static int getWindowSize(int i2) {
        return getWindowSize(i2, DEFAULT_WINDOW_SIZE_CUTOFFS, 16);
    }
}
