package org.bouncycastle.math.ec;

import defpackage.a;
import defpackage.az;
import defpackage.ct0;
import defpackage.md;
import defpackage.mt;
import defpackage.pq0;
import java.math.BigInteger;
import java.security.SecureRandom;
import java.util.Collections;
import java.util.HashSet;
import java.util.Hashtable;
import java.util.Random;
import java.util.Set;
import org.bouncycastle.asn1.eac.CertificateBody;
import org.bouncycastle.crypto.CryptoServicesRegistrar;
import org.bouncycastle.math.Primes;
import org.bouncycastle.math.ec.endo.ECEndomorphism;
import org.bouncycastle.math.ec.endo.GLVEndomorphism;
import org.bouncycastle.math.field.FiniteField;
import org.bouncycastle.math.field.FiniteFields;
import org.bouncycastle.math.raw.Nat;
import org.bouncycastle.util.BigIntegers;
import org.bouncycastle.util.Integers;
import org.bouncycastle.util.Properties;

/* JADX INFO: loaded from: classes5.dex */
public abstract class ECCurve {
    public static final int COORD_AFFINE = 0;
    public static final int COORD_HOMOGENEOUS = 1;
    public static final int COORD_JACOBIAN = 2;
    public static final int COORD_JACOBIAN_CHUDNOVSKY = 3;
    public static final int COORD_JACOBIAN_MODIFIED = 4;
    public static final int COORD_LAMBDA_AFFINE = 5;
    public static final int COORD_LAMBDA_PROJECTIVE = 6;
    public static final int COORD_SKEWED = 7;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected ECFieldElement f77647a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected ECFieldElement f77648b;
    protected BigInteger cofactor;
    protected FiniteField field;
    protected BigInteger order;
    protected int coord = 0;
    protected ECEndomorphism endomorphism = null;
    protected ECMultiplier multiplier = null;

    public static abstract class AbstractF2m extends ECCurve {
        private BigInteger[] si;

        public AbstractF2m(int i2, int i3, int i4, int i5) {
            super(buildField(i2, i3, i4, i5));
            this.si = null;
            if (Properties.isOverrideSet("org.bouncycastle.ec.disable")) {
                mt.i("F2M disabled by \"org.bouncycastle.ec.disable\"");
                throw null;
            }
            if (Properties.isOverrideSet("org.bouncycastle.ec.disable_f2m")) {
                mt.i("F2M disabled by \"org.bouncycastle.ec.disable_f2m\"");
                throw null;
            }
        }

        private static FiniteField buildField(int i2, int i3, int i4, int i5) {
            if (i2 <= Properties.asInteger("org.bouncycastle.ec.max_f2m_field_size", 1142)) {
                return FiniteFields.getBinaryExtensionField((i4 | i5) == 0 ? new int[]{0, i3, i2} : new int[]{0, i3, i4, i5, i2});
            }
            md.n(pq0.k(i2, "field size out of range: "));
            return null;
        }

        private static BigInteger implRandomFieldElementMult(SecureRandom secureRandom, int i2) {
            BigInteger bigIntegerCreateRandomBigInteger;
            do {
                bigIntegerCreateRandomBigInteger = BigIntegers.createRandomBigInteger(i2, secureRandom);
            } while (bigIntegerCreateRandomBigInteger.signum() <= 0);
            return bigIntegerCreateRandomBigInteger;
        }

        public static BigInteger inverse(int i2, int[] iArr, BigInteger bigInteger) {
            return new LongArray(bigInteger).modInverse(i2, iArr).toBigInteger();
        }

        @Override // org.bouncycastle.math.ec.ECCurve
        public ECPoint createPoint(BigInteger bigInteger, BigInteger bigInteger2) {
            ECFieldElement eCFieldElementFromBigInteger = fromBigInteger(bigInteger);
            ECFieldElement eCFieldElementFromBigInteger2 = fromBigInteger(bigInteger2);
            int coordinateSystem = getCoordinateSystem();
            if (coordinateSystem == 5 || coordinateSystem == 6) {
                if (!eCFieldElementFromBigInteger.isZero()) {
                    eCFieldElementFromBigInteger2 = eCFieldElementFromBigInteger2.divide(eCFieldElementFromBigInteger).add(eCFieldElementFromBigInteger);
                } else if (!eCFieldElementFromBigInteger2.square().equals(getB())) {
                    ct0.c();
                    return null;
                }
            }
            return createRawPoint(eCFieldElementFromBigInteger, eCFieldElementFromBigInteger2);
        }

        @Override // org.bouncycastle.math.ec.ECCurve
        public ECPoint decompressPoint(int i2, BigInteger bigInteger) {
            ECFieldElement eCFieldElementAdd;
            ECFieldElement eCFieldElementFromBigInteger = fromBigInteger(bigInteger);
            if (eCFieldElementFromBigInteger.isZero()) {
                eCFieldElementAdd = getB().sqrt();
            } else {
                ECFieldElement eCFieldElementSolveQuadraticEquation = solveQuadraticEquation(eCFieldElementFromBigInteger.square().invert().multiply(getB()).add(getA()).add(eCFieldElementFromBigInteger));
                if (eCFieldElementSolveQuadraticEquation != null) {
                    if (eCFieldElementSolveQuadraticEquation.testBitZero() != (i2 == 1)) {
                        eCFieldElementSolveQuadraticEquation = eCFieldElementSolveQuadraticEquation.addOne();
                    }
                    int coordinateSystem = getCoordinateSystem();
                    eCFieldElementAdd = (coordinateSystem == 5 || coordinateSystem == 6) ? eCFieldElementSolveQuadraticEquation.add(eCFieldElementFromBigInteger) : eCFieldElementSolveQuadraticEquation.multiply(eCFieldElementFromBigInteger);
                } else {
                    eCFieldElementAdd = null;
                }
            }
            if (eCFieldElementAdd != null) {
                return createRawPoint(eCFieldElementFromBigInteger, eCFieldElementAdd);
            }
            md.n("Invalid point compression");
            return null;
        }

        public synchronized BigInteger[] getSi() {
            try {
                if (this.si == null) {
                    this.si = Tnaf.getSi(this);
                }
            } catch (Throwable th) {
                throw th;
            }
            return this.si;
        }

        public boolean isKoblitz() {
            if (this.order == null || this.cofactor == null || !this.f77648b.isOne()) {
                return false;
            }
            return this.f77647a.isZero() || this.f77647a.isOne();
        }

        @Override // org.bouncycastle.math.ec.ECCurve
        public boolean isValidFieldElement(BigInteger bigInteger) {
            return bigInteger != null && bigInteger.signum() >= 0 && bigInteger.bitLength() <= getFieldSize();
        }

        @Override // org.bouncycastle.math.ec.ECCurve
        public ECFieldElement randomFieldElement(SecureRandom secureRandom) {
            return fromBigInteger(BigIntegers.createRandomBigInteger(getFieldSize(), secureRandom));
        }

        @Override // org.bouncycastle.math.ec.ECCurve
        public ECFieldElement randomFieldElementMult(SecureRandom secureRandom) {
            int fieldSize = getFieldSize();
            return fromBigInteger(implRandomFieldElementMult(secureRandom, fieldSize)).multiply(fromBigInteger(implRandomFieldElementMult(secureRandom, fieldSize)));
        }

        public ECFieldElement solveQuadraticEquation(ECFieldElement eCFieldElement) {
            ECFieldElement eCFieldElementAdd;
            ECFieldElement.AbstractF2m abstractF2m = (ECFieldElement.AbstractF2m) eCFieldElement;
            boolean zHasFastTrace = abstractF2m.hasFastTrace();
            if (zHasFastTrace && abstractF2m.trace() != 0) {
                return null;
            }
            int fieldSize = getFieldSize();
            if ((fieldSize & 1) != 0) {
                ECFieldElement eCFieldElementHalfTrace = abstractF2m.halfTrace();
                if (zHasFastTrace || eCFieldElementHalfTrace.square().add(eCFieldElementHalfTrace).add(eCFieldElement).isZero()) {
                    return eCFieldElementHalfTrace;
                }
                return null;
            }
            if (eCFieldElement.isZero()) {
                return eCFieldElement;
            }
            ECFieldElement eCFieldElementFromBigInteger = fromBigInteger(ECConstants.ZERO);
            Random random = new Random();
            do {
                ECFieldElement eCFieldElementFromBigInteger2 = fromBigInteger(new BigInteger(fieldSize, random));
                ECFieldElement eCFieldElementAdd2 = eCFieldElement;
                eCFieldElementAdd = eCFieldElementFromBigInteger;
                for (int i2 = 1; i2 < fieldSize; i2++) {
                    ECFieldElement eCFieldElementSquare = eCFieldElementAdd2.square();
                    eCFieldElementAdd = eCFieldElementAdd.square().add(eCFieldElementSquare.multiply(eCFieldElementFromBigInteger2));
                    eCFieldElementAdd2 = eCFieldElementSquare.add(eCFieldElement);
                }
                if (!eCFieldElementAdd2.isZero()) {
                    return null;
                }
            } while (eCFieldElementAdd.square().add(eCFieldElementAdd).isZero());
            return eCFieldElementAdd;
        }
    }

    public static abstract class AbstractFp extends ECCurve {
        public AbstractFp(BigInteger bigInteger) {
            super(FiniteFields.getPrimeField(bigInteger));
        }

        private static BigInteger implRandomFieldElement(SecureRandom secureRandom, BigInteger bigInteger) {
            BigInteger bigIntegerCreateRandomBigInteger;
            do {
                bigIntegerCreateRandomBigInteger = BigIntegers.createRandomBigInteger(bigInteger.bitLength(), secureRandom);
            } while (bigIntegerCreateRandomBigInteger.compareTo(bigInteger) >= 0);
            return bigIntegerCreateRandomBigInteger;
        }

        private static BigInteger implRandomFieldElementMult(SecureRandom secureRandom, BigInteger bigInteger) {
            while (true) {
                BigInteger bigIntegerCreateRandomBigInteger = BigIntegers.createRandomBigInteger(bigInteger.bitLength(), secureRandom);
                if (bigIntegerCreateRandomBigInteger.signum() > 0 && bigIntegerCreateRandomBigInteger.compareTo(bigInteger) < 0) {
                    return bigIntegerCreateRandomBigInteger;
                }
            }
        }

        @Override // org.bouncycastle.math.ec.ECCurve
        public ECPoint decompressPoint(int i2, BigInteger bigInteger) {
            ECFieldElement eCFieldElementFromBigInteger = fromBigInteger(bigInteger);
            ECFieldElement eCFieldElementSqrt = eCFieldElementFromBigInteger.square().add(this.f77647a).multiply(eCFieldElementFromBigInteger).add(this.f77648b).sqrt();
            if (eCFieldElementSqrt == null) {
                md.n("Invalid point compression");
                return null;
            }
            if (eCFieldElementSqrt.testBitZero() != (i2 == 1)) {
                eCFieldElementSqrt = eCFieldElementSqrt.negate();
            }
            return createRawPoint(eCFieldElementFromBigInteger, eCFieldElementSqrt);
        }

        @Override // org.bouncycastle.math.ec.ECCurve
        public boolean isValidFieldElement(BigInteger bigInteger) {
            return bigInteger != null && bigInteger.signum() >= 0 && bigInteger.compareTo(getField().getCharacteristic()) < 0;
        }

        @Override // org.bouncycastle.math.ec.ECCurve
        public ECFieldElement randomFieldElement(SecureRandom secureRandom) {
            BigInteger characteristic = getField().getCharacteristic();
            return fromBigInteger(implRandomFieldElement(secureRandom, characteristic)).multiply(fromBigInteger(implRandomFieldElement(secureRandom, characteristic)));
        }

        @Override // org.bouncycastle.math.ec.ECCurve
        public ECFieldElement randomFieldElementMult(SecureRandom secureRandom) {
            BigInteger characteristic = getField().getCharacteristic();
            return fromBigInteger(implRandomFieldElementMult(secureRandom, characteristic)).multiply(fromBigInteger(implRandomFieldElementMult(secureRandom, characteristic)));
        }
    }

    public class Config {
        protected int coord;
        protected ECEndomorphism endomorphism;
        protected ECMultiplier multiplier;

        public Config(int i2, ECEndomorphism eCEndomorphism, ECMultiplier eCMultiplier) {
            this.coord = i2;
            this.endomorphism = eCEndomorphism;
            this.multiplier = eCMultiplier;
        }

        public ECCurve create() {
            String str;
            if (ECCurve.this.supportsCoordinateSystem(this.coord)) {
                ECCurve eCCurveCloneCurve = ECCurve.this.cloneCurve();
                if (eCCurveCloneCurve != ECCurve.this) {
                    synchronized (eCCurveCloneCurve) {
                        eCCurveCloneCurve.coord = this.coord;
                        eCCurveCloneCurve.endomorphism = this.endomorphism;
                        eCCurveCloneCurve.multiplier = this.multiplier;
                    }
                    return eCCurveCloneCurve;
                }
                str = "implementation returned current curve";
            } else {
                str = "unsupported coordinate system";
            }
            md.k(str);
            return null;
        }

        public Config setCoordinateSystem(int i2) {
            this.coord = i2;
            return this;
        }

        public Config setEndomorphism(ECEndomorphism eCEndomorphism) {
            this.endomorphism = eCEndomorphism;
            return this;
        }

        public Config setMultiplier(ECMultiplier eCMultiplier) {
            this.multiplier = eCMultiplier;
            return this;
        }
    }

    public ECCurve(FiniteField finiteField) {
        this.field = finiteField;
    }

    public static int[] getAllCoordinateSystems() {
        return new int[]{0, 1, 2, 3, 4, 5, 6, 7};
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int getNumberOfIterations(int i2, int i3) {
        if (i2 >= 1536) {
            if (i3 <= 100) {
                return 3;
            }
            if (i3 <= 128) {
                return 4;
            }
            return a.a(i3, CertificateBody.profileType, 2, 4);
        }
        if (i2 >= 1024) {
            if (i3 <= 100) {
                return 4;
            }
            if (i3 <= 112) {
                return 5;
            }
            return a.a(i3, 111, 2, 5);
        }
        if (i2 < 512) {
            if (i3 <= 80) {
                return 40;
            }
            return a.a(i3, 79, 2, 40);
        }
        if (i3 <= 80) {
            return 5;
        }
        if (i3 <= 100) {
            return 7;
        }
        return a.a(i3, 99, 2, 7);
    }

    public void checkPoint(ECPoint eCPoint) {
        if (eCPoint == null || this != eCPoint.getCurve()) {
            md.n("'point' must be non-null and on this curve");
        }
    }

    public void checkPoints(ECPoint[] eCPointArr, int i2, int i3) {
        String str;
        if (eCPointArr == null) {
            str = "'points' cannot be null";
        } else {
            if (i2 >= 0 && i3 >= 0 && i2 <= eCPointArr.length - i3) {
                for (int i4 = 0; i4 < i3; i4++) {
                    ECPoint eCPoint = eCPointArr[i2 + i4];
                    if (eCPoint != null && this != eCPoint.getCurve()) {
                        str = "'points' entries must be null or on this curve";
                    }
                }
                return;
            }
            str = "invalid range specified for 'points'";
        }
        md.n(str);
    }

    public abstract ECCurve cloneCurve();

    public synchronized Config configure() {
        return new Config(this.coord, this.endomorphism, this.multiplier);
    }

    public ECLookupTable createCacheSafeLookupTable(ECPoint[] eCPointArr, int i2, final int i3) {
        final int fieldSize = (getFieldSize() + 7) >>> 3;
        final byte[] bArr = new byte[i3 * fieldSize * 2];
        int i4 = 0;
        for (int i5 = 0; i5 < i3; i5++) {
            ECPoint eCPoint = eCPointArr[i2 + i5];
            byte[] byteArray = eCPoint.getRawXCoord().toBigInteger().toByteArray();
            byte[] byteArray2 = eCPoint.getRawYCoord().toBigInteger().toByteArray();
            int i6 = 1;
            int i7 = byteArray.length > fieldSize ? 1 : 0;
            int length = byteArray.length - i7;
            if (byteArray2.length <= fieldSize) {
                i6 = 0;
            }
            int length2 = byteArray2.length - i6;
            int i8 = i4 + fieldSize;
            System.arraycopy(byteArray, i7, bArr, i8 - length, length);
            i4 = i8 + fieldSize;
            System.arraycopy(byteArray2, i6, bArr, i4 - length2, length2);
        }
        return new AbstractECLookupTable() { // from class: org.bouncycastle.math.ec.ECCurve.1
            private ECPoint createPoint(byte[] bArr2, byte[] bArr3) {
                ECCurve eCCurve = ECCurve.this;
                return eCCurve.createRawPoint(eCCurve.fromBigInteger(new BigInteger(1, bArr2)), ECCurve.this.fromBigInteger(new BigInteger(1, bArr3)));
            }

            @Override // org.bouncycastle.math.ec.ECLookupTable
            public int getSize() {
                return i3;
            }

            @Override // org.bouncycastle.math.ec.ECLookupTable
            public ECPoint lookup(int i9) {
                int i10;
                int i11 = fieldSize;
                byte[] bArr2 = new byte[i11];
                byte[] bArr3 = new byte[i11];
                int i12 = 0;
                for (int i13 = 0; i13 < i3; i13++) {
                    int i14 = ((i13 ^ i9) - 1) >> 31;
                    int i15 = 0;
                    while (true) {
                        i10 = fieldSize;
                        if (i15 < i10) {
                            byte b2 = bArr2[i15];
                            byte[] bArr4 = bArr;
                            bArr2[i15] = (byte) (b2 ^ (bArr4[i12 + i15] & i14));
                            bArr3[i15] = (byte) ((bArr4[(i10 + i12) + i15] & i14) ^ bArr3[i15]);
                            i15++;
                        }
                    }
                    i12 += i10 * 2;
                }
                return createPoint(bArr2, bArr3);
            }

            @Override // org.bouncycastle.math.ec.AbstractECLookupTable, org.bouncycastle.math.ec.ECLookupTable
            public ECPoint lookupVar(int i9) {
                int i10 = fieldSize;
                byte[] bArr2 = new byte[i10];
                byte[] bArr3 = new byte[i10];
                int i11 = i9 * i10 * 2;
                int i12 = 0;
                while (true) {
                    int i13 = fieldSize;
                    if (i12 >= i13) {
                        return createPoint(bArr2, bArr3);
                    }
                    byte[] bArr4 = bArr;
                    bArr2[i12] = bArr4[i11 + i12];
                    bArr3[i12] = bArr4[i13 + i11 + i12];
                    i12++;
                }
            }
        };
    }

    public ECMultiplier createDefaultMultiplier() {
        ECEndomorphism eCEndomorphism = this.endomorphism;
        return eCEndomorphism instanceof GLVEndomorphism ? new GLVMultiplier(this, (GLVEndomorphism) eCEndomorphism) : new WNafL2RMultiplier();
    }

    public ECPoint createPoint(BigInteger bigInteger, BigInteger bigInteger2) {
        return createRawPoint(fromBigInteger(bigInteger), fromBigInteger(bigInteger2));
    }

    public abstract ECPoint createRawPoint(ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2);

    public abstract ECPoint createRawPoint(ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, ECFieldElement[] eCFieldElementArr);

    public ECPoint decodePoint(byte[] bArr) {
        ECPoint infinity;
        int fieldSize = (getFieldSize() + 7) / 8;
        byte b2 = bArr[0];
        if (b2 != 0) {
            if (b2 == 2 || b2 == 3) {
                if (bArr.length != fieldSize + 1) {
                    md.n("Incorrect length for compressed encoding");
                    return null;
                }
                infinity = decompressPoint(b2 & 1, BigIntegers.fromUnsignedByteArray(bArr, 1, fieldSize));
                if (!infinity.implIsValid(true, true)) {
                    md.n("Invalid point");
                    return null;
                }
            } else if (b2 != 4) {
                if (b2 != 6 && b2 != 7) {
                    az.w(Integer.toString(b2, 16), "Invalid point encoding 0x");
                    return null;
                }
                if (bArr.length != (fieldSize * 2) + 1) {
                    md.n("Incorrect length for hybrid encoding");
                    return null;
                }
                BigInteger bigIntegerFromUnsignedByteArray = BigIntegers.fromUnsignedByteArray(bArr, 1, fieldSize);
                BigInteger bigIntegerFromUnsignedByteArray2 = BigIntegers.fromUnsignedByteArray(bArr, fieldSize + 1, fieldSize);
                if (bigIntegerFromUnsignedByteArray2.testBit(0) != (b2 == 7)) {
                    md.n("Inconsistent Y coordinate in hybrid encoding");
                    return null;
                }
                infinity = validatePoint(bigIntegerFromUnsignedByteArray, bigIntegerFromUnsignedByteArray2);
            } else {
                if (bArr.length != (fieldSize * 2) + 1) {
                    md.n("Incorrect length for uncompressed encoding");
                    return null;
                }
                infinity = validatePoint(BigIntegers.fromUnsignedByteArray(bArr, 1, fieldSize), BigIntegers.fromUnsignedByteArray(bArr, fieldSize + 1, fieldSize));
            }
        } else {
            if (bArr.length != 1) {
                md.n("Incorrect length for infinity encoding");
                return null;
            }
            infinity = getInfinity();
        }
        if (b2 == 0 || !infinity.isInfinity()) {
            return infinity;
        }
        md.n("Invalid infinity encoding");
        return null;
    }

    public abstract ECPoint decompressPoint(int i2, BigInteger bigInteger);

    public boolean equals(ECCurve eCCurve) {
        if (this != eCCurve) {
            return eCCurve != null && getField().equals(eCCurve.getField()) && getA().toBigInteger().equals(eCCurve.getA().toBigInteger()) && getB().toBigInteger().equals(eCCurve.getB().toBigInteger());
        }
        return true;
    }

    public abstract ECFieldElement fromBigInteger(BigInteger bigInteger);

    public ECFieldElement getA() {
        return this.f77647a;
    }

    public ECFieldElement getB() {
        return this.f77648b;
    }

    public BigInteger getCofactor() {
        return this.cofactor;
    }

    public int getCoordinateSystem() {
        return this.coord;
    }

    public ECEndomorphism getEndomorphism() {
        return this.endomorphism;
    }

    public FiniteField getField() {
        return this.field;
    }

    public abstract int getFieldSize();

    public abstract ECPoint getInfinity();

    public ECMultiplier getMultiplier() {
        if (this.multiplier == null) {
            this.multiplier = createDefaultMultiplier();
        }
        return this.multiplier;
    }

    public BigInteger getOrder() {
        return this.order;
    }

    public PreCompInfo getPreCompInfo(ECPoint eCPoint, String str) {
        Hashtable hashtable;
        PreCompInfo preCompInfo;
        checkPoint(eCPoint);
        synchronized (eCPoint) {
            hashtable = eCPoint.preCompTable;
        }
        if (hashtable == null) {
            return null;
        }
        synchronized (hashtable) {
            preCompInfo = (PreCompInfo) hashtable.get(str);
        }
        return preCompInfo;
    }

    public int hashCode() {
        return Integers.rotateLeft(getB().toBigInteger().hashCode(), 16) ^ (getField().hashCode() ^ Integers.rotateLeft(getA().toBigInteger().hashCode(), 8));
    }

    public ECPoint importPoint(ECPoint eCPoint) {
        if (this == eCPoint.getCurve()) {
            return eCPoint;
        }
        if (eCPoint.isInfinity()) {
            return getInfinity();
        }
        ECPoint eCPointNormalize = eCPoint.normalize();
        return createPoint(eCPointNormalize.getXCoord().toBigInteger(), eCPointNormalize.getYCoord().toBigInteger());
    }

    public abstract boolean isValidFieldElement(BigInteger bigInteger);

    public void normalizeAll(ECPoint[] eCPointArr, int i2, int i3, ECFieldElement eCFieldElement) {
        checkPoints(eCPointArr, i2, i3);
        int coordinateSystem = getCoordinateSystem();
        if (coordinateSystem == 0 || coordinateSystem == 5) {
            if (eCFieldElement == null) {
                return;
            }
            md.n("'iso' not valid for affine coordinates");
            return;
        }
        ECFieldElement[] eCFieldElementArr = new ECFieldElement[i3];
        int[] iArr = new int[i3];
        int i4 = 0;
        for (int i5 = 0; i5 < i3; i5++) {
            int i6 = i2 + i5;
            ECPoint eCPoint = eCPointArr[i6];
            if (eCPoint != null && (eCFieldElement != null || !eCPoint.isNormalized())) {
                eCFieldElementArr[i4] = eCPoint.getZCoord(0);
                iArr[i4] = i6;
                i4++;
            }
        }
        if (i4 == 0) {
            return;
        }
        ECAlgorithms.montgomeryTrick(eCFieldElementArr, 0, i4, eCFieldElement);
        for (int i7 = 0; i7 < i4; i7++) {
            int i8 = iArr[i7];
            eCPointArr[i8] = eCPointArr[i8].normalize(eCFieldElementArr[i7]);
        }
    }

    public PreCompInfo precompute(ECPoint eCPoint, String str, PreCompCallback preCompCallback) {
        Hashtable hashtable;
        PreCompInfo preCompInfoPrecompute;
        checkPoint(eCPoint);
        synchronized (eCPoint) {
            try {
                hashtable = eCPoint.preCompTable;
                if (hashtable == null) {
                    hashtable = new Hashtable(4);
                    eCPoint.preCompTable = hashtable;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        synchronized (hashtable) {
            try {
                PreCompInfo preCompInfo = (PreCompInfo) hashtable.get(str);
                preCompInfoPrecompute = preCompCallback.precompute(preCompInfo);
                if (preCompInfoPrecompute != preCompInfo) {
                    hashtable.put(str, preCompInfoPrecompute);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return preCompInfoPrecompute;
    }

    public abstract ECFieldElement randomFieldElement(SecureRandom secureRandom);

    public abstract ECFieldElement randomFieldElementMult(SecureRandom secureRandom);

    public boolean supportsCoordinateSystem(int i2) {
        return i2 == 0;
    }

    public ECPoint validatePoint(BigInteger bigInteger, BigInteger bigInteger2) {
        ECPoint eCPointCreatePoint = createPoint(bigInteger, bigInteger2);
        if (eCPointCreatePoint.isValid()) {
            return eCPointCreatePoint;
        }
        md.n("Invalid point coordinates");
        return null;
    }

    public static class F2m extends AbstractF2m {
        private static final int F2M_DEFAULT_COORDS = 6;
        private ECPoint.F2m infinity;
        private int k1;
        private int k2;
        private int k3;
        private int m;

        public F2m(int i2, int i3, int i4, int i5, BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, BigInteger bigInteger4) {
            super(i2, i3, i4, i5);
            this.m = i2;
            this.k1 = i3;
            this.k2 = i4;
            this.k3 = i5;
            this.order = bigInteger3;
            this.cofactor = bigInteger4;
            this.infinity = new ECPoint.F2m(this, null, null);
            this.f77647a = fromBigInteger(bigInteger);
            this.f77648b = fromBigInteger(bigInteger2);
            this.coord = 6;
        }

        @Override // org.bouncycastle.math.ec.ECCurve
        public ECCurve cloneCurve() {
            return new F2m(this.m, this.k1, this.k2, this.k3, this.f77647a, this.f77648b, this.order, this.cofactor);
        }

        @Override // org.bouncycastle.math.ec.ECCurve
        public ECLookupTable createCacheSafeLookupTable(ECPoint[] eCPointArr, int i2, final int i3) {
            final int i4 = (this.m + 63) >>> 6;
            boolean zIsTrinomial = isTrinomial();
            int i5 = this.k1;
            final int[] iArr = zIsTrinomial ? new int[]{i5} : new int[]{i5, this.k2, this.k3};
            final long[] jArr = new long[i3 * i4 * 2];
            int i6 = 0;
            for (int i7 = 0; i7 < i3; i7++) {
                ECPoint eCPoint = eCPointArr[i2 + i7];
                ((ECFieldElement.F2m) eCPoint.getRawXCoord()).x.copyTo(jArr, i6);
                int i8 = i6 + i4;
                ((ECFieldElement.F2m) eCPoint.getRawYCoord()).x.copyTo(jArr, i8);
                i6 = i8 + i4;
            }
            return new AbstractECLookupTable() { // from class: org.bouncycastle.math.ec.ECCurve.F2m.1
                private ECPoint createPoint(long[] jArr2, long[] jArr3) {
                    return F2m.this.createRawPoint(new ECFieldElement.F2m(F2m.this.m, iArr, new LongArray(jArr2)), new ECFieldElement.F2m(F2m.this.m, iArr, new LongArray(jArr3)));
                }

                @Override // org.bouncycastle.math.ec.ECLookupTable
                public int getSize() {
                    return i3;
                }

                @Override // org.bouncycastle.math.ec.ECLookupTable
                public ECPoint lookup(int i9) {
                    int i10;
                    long[] jArrCreate64 = Nat.create64(i4);
                    long[] jArrCreate65 = Nat.create64(i4);
                    int i11 = 0;
                    for (int i12 = 0; i12 < i3; i12++) {
                        long j2 = ((i12 ^ i9) - 1) >> 31;
                        int i13 = 0;
                        while (true) {
                            i10 = i4;
                            if (i13 < i10) {
                                long j3 = jArrCreate64[i13];
                                long[] jArr2 = jArr;
                                jArrCreate64[i13] = j3 ^ (jArr2[i11 + i13] & j2);
                                jArrCreate65[i13] = jArrCreate65[i13] ^ (jArr2[(i10 + i11) + i13] & j2);
                                i13++;
                            }
                        }
                        i11 += i10 * 2;
                    }
                    return createPoint(jArrCreate64, jArrCreate65);
                }

                @Override // org.bouncycastle.math.ec.AbstractECLookupTable, org.bouncycastle.math.ec.ECLookupTable
                public ECPoint lookupVar(int i9) {
                    long[] jArrCreate64 = Nat.create64(i4);
                    long[] jArrCreate65 = Nat.create64(i4);
                    int i10 = i9 * i4 * 2;
                    int i11 = 0;
                    while (true) {
                        int i12 = i4;
                        if (i11 >= i12) {
                            return createPoint(jArrCreate64, jArrCreate65);
                        }
                        long[] jArr2 = jArr;
                        jArrCreate64[i11] = jArr2[i10 + i11];
                        jArrCreate65[i11] = jArr2[i12 + i10 + i11];
                        i11++;
                    }
                }
            };
        }

        @Override // org.bouncycastle.math.ec.ECCurve
        public ECMultiplier createDefaultMultiplier() {
            return isKoblitz() ? new WTauNafMultiplier() : super.createDefaultMultiplier();
        }

        @Override // org.bouncycastle.math.ec.ECCurve
        public ECPoint createRawPoint(ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2) {
            return new ECPoint.F2m(this, eCFieldElement, eCFieldElement2);
        }

        @Override // org.bouncycastle.math.ec.ECCurve
        public ECFieldElement fromBigInteger(BigInteger bigInteger) {
            if (bigInteger != null && bigInteger.signum() >= 0) {
                int iBitLength = bigInteger.bitLength();
                int i2 = this.m;
                if (iBitLength <= i2) {
                    int i3 = this.k2;
                    int i4 = this.k3;
                    int i5 = i3 | i4;
                    int i6 = this.k1;
                    return new ECFieldElement.F2m(i2, i5 == 0 ? new int[]{i6} : new int[]{i6, i3, i4}, new LongArray(bigInteger));
                }
            }
            md.n("x value invalid in F2m field element");
            return null;
        }

        @Override // org.bouncycastle.math.ec.ECCurve
        public int getFieldSize() {
            return this.m;
        }

        @Override // org.bouncycastle.math.ec.ECCurve
        public ECPoint getInfinity() {
            return this.infinity;
        }

        public int getK1() {
            return this.k1;
        }

        public int getK2() {
            return this.k2;
        }

        public int getK3() {
            return this.k3;
        }

        public int getM() {
            return this.m;
        }

        public boolean isTrinomial() {
            return this.k2 == 0 && this.k3 == 0;
        }

        @Override // org.bouncycastle.math.ec.ECCurve
        public boolean supportsCoordinateSystem(int i2) {
            return i2 == 0 || i2 == 1 || i2 == 6;
        }

        @Override // org.bouncycastle.math.ec.ECCurve
        public ECPoint createRawPoint(ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, ECFieldElement[] eCFieldElementArr) {
            return new ECPoint.F2m(this, eCFieldElement, eCFieldElement2, eCFieldElementArr);
        }

        public F2m(int i2, int i3, int i4, int i5, BigInteger bigInteger, BigInteger bigInteger2) {
            this(i2, i3, i4, i5, bigInteger, bigInteger2, (BigInteger) null, (BigInteger) null);
        }

        public F2m(int i2, int i3, int i4, int i5, ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, BigInteger bigInteger, BigInteger bigInteger2) {
            super(i2, i3, i4, i5);
            this.m = i2;
            this.k1 = i3;
            this.k2 = i4;
            this.k3 = i5;
            this.order = bigInteger;
            this.cofactor = bigInteger2;
            this.infinity = new ECPoint.F2m(this, null, null);
            this.f77647a = eCFieldElement;
            this.f77648b = eCFieldElement2;
            this.coord = 6;
        }

        public F2m(int i2, int i3, BigInteger bigInteger, BigInteger bigInteger2) {
            this(i2, i3, 0, 0, bigInteger, bigInteger2, (BigInteger) null, (BigInteger) null);
        }

        public F2m(int i2, int i3, BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, BigInteger bigInteger4) {
            this(i2, i3, 0, 0, bigInteger, bigInteger2, bigInteger3, bigInteger4);
        }
    }

    public static class Fp extends AbstractFp {
        private static final int FP_DEFAULT_COORDS = 4;
        private static final Set<BigInteger> knownQs = Collections.synchronizedSet(new HashSet());
        private static final BigIntegers.Cache validatedQs = new BigIntegers.Cache();
        ECPoint.Fp infinity;
        BigInteger q;
        BigInteger r;

        public Fp(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, BigInteger bigInteger4, BigInteger bigInteger5, boolean z) {
            super(bigInteger);
            if (z) {
                this.q = bigInteger;
                knownQs.add(bigInteger);
            } else {
                if (!knownQs.contains(bigInteger)) {
                    BigIntegers.Cache cache = validatedQs;
                    if (!cache.contains(bigInteger)) {
                        int iAsInteger = Properties.asInteger("org.bouncycastle.ec.fp_max_size", 1042);
                        int iAsInteger2 = Properties.asInteger("org.bouncycastle.ec.fp_certainty", 100);
                        int iBitLength = bigInteger.bitLength();
                        if (iAsInteger < iBitLength) {
                            md.n("Fp q value out of range");
                            throw null;
                        }
                        if (Primes.hasAnySmallFactors(bigInteger) || !Primes.isMRProbablePrime(bigInteger, CryptoServicesRegistrar.getSecureRandom(), ECCurve.getNumberOfIterations(iBitLength, iAsInteger2))) {
                            md.n("Fp q value not prime");
                            throw null;
                        }
                        cache.add(bigInteger);
                    }
                }
                this.q = bigInteger;
            }
            this.r = ECFieldElement.Fp.calculateResidue(bigInteger);
            this.infinity = new ECPoint.Fp(this, null, null);
            this.f77647a = fromBigInteger(bigInteger2);
            this.f77648b = fromBigInteger(bigInteger3);
            this.order = bigInteger4;
            this.cofactor = bigInteger5;
            this.coord = 4;
        }

        @Override // org.bouncycastle.math.ec.ECCurve
        public ECCurve cloneCurve() {
            return new Fp(this.q, this.r, this.f77647a, this.f77648b, this.order, this.cofactor);
        }

        @Override // org.bouncycastle.math.ec.ECCurve
        public ECPoint createRawPoint(ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2) {
            return new ECPoint.Fp(this, eCFieldElement, eCFieldElement2);
        }

        @Override // org.bouncycastle.math.ec.ECCurve
        public ECFieldElement fromBigInteger(BigInteger bigInteger) {
            if (bigInteger != null && bigInteger.signum() >= 0 && bigInteger.compareTo(this.q) < 0) {
                return new ECFieldElement.Fp(this.q, this.r, bigInteger);
            }
            md.n("x value invalid for Fp field element");
            return null;
        }

        @Override // org.bouncycastle.math.ec.ECCurve
        public int getFieldSize() {
            return this.q.bitLength();
        }

        @Override // org.bouncycastle.math.ec.ECCurve
        public ECPoint getInfinity() {
            return this.infinity;
        }

        public BigInteger getQ() {
            return this.q;
        }

        @Override // org.bouncycastle.math.ec.ECCurve
        public ECPoint importPoint(ECPoint eCPoint) {
            int coordinateSystem;
            return (this == eCPoint.getCurve() || getCoordinateSystem() != 2 || eCPoint.isInfinity() || !((coordinateSystem = eCPoint.getCurve().getCoordinateSystem()) == 2 || coordinateSystem == 3 || coordinateSystem == 4)) ? super.importPoint(eCPoint) : new ECPoint.Fp(this, fromBigInteger(eCPoint.x.toBigInteger()), fromBigInteger(eCPoint.y.toBigInteger()), new ECFieldElement[]{fromBigInteger(eCPoint.zs[0].toBigInteger())});
        }

        @Override // org.bouncycastle.math.ec.ECCurve
        public boolean supportsCoordinateSystem(int i2) {
            return i2 == 0 || i2 == 1 || i2 == 2 || i2 == 4;
        }

        @Override // org.bouncycastle.math.ec.ECCurve
        public ECPoint createRawPoint(ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, ECFieldElement[] eCFieldElementArr) {
            return new ECPoint.Fp(this, eCFieldElement, eCFieldElement2, eCFieldElementArr);
        }

        public Fp(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, BigInteger bigInteger4, BigInteger bigInteger5) {
            this(bigInteger, bigInteger2, bigInteger3, bigInteger4, bigInteger5, false);
        }

        public Fp(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3) {
            this(bigInteger, bigInteger2, bigInteger3, null, null);
        }

        public Fp(BigInteger bigInteger, BigInteger bigInteger2, ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, BigInteger bigInteger3, BigInteger bigInteger4) {
            super(bigInteger);
            this.q = bigInteger;
            this.r = bigInteger2;
            this.infinity = new ECPoint.Fp(this, null, null);
            this.f77647a = eCFieldElement;
            this.f77648b = eCFieldElement2;
            this.order = bigInteger3;
            this.cofactor = bigInteger4;
            this.coord = 4;
        }
    }

    public void checkPoints(ECPoint[] eCPointArr) {
        checkPoints(eCPointArr, 0, eCPointArr.length);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            return (obj instanceof ECCurve) && equals((ECCurve) obj);
        }
        return true;
    }

    public void normalizeAll(ECPoint[] eCPointArr) {
        normalizeAll(eCPointArr, 0, eCPointArr.length, null);
    }
}
