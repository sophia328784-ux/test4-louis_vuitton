package org.spongycastle.math.ec;

import defpackage.az;
import defpackage.ct0;
import defpackage.md;
import java.math.BigInteger;
import java.util.Random;
import org.spongycastle.math.ec.endo.ECEndomorphism;
import org.spongycastle.math.field.FiniteField;
import org.spongycastle.math.field.FiniteFields;
import org.spongycastle.math.field.PolynomialExtensionField;
import org.spongycastle.util.BigIntegers;

/* JADX INFO: loaded from: classes5.dex */
public abstract class ECCurve {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final FiniteField f77918a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public ECFieldElement f77919b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public ECFieldElement f77920c;
    public BigInteger d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public BigInteger f77921e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f77922f = 0;
    public ECEndomorphism g = null;

    public static abstract class AbstractF2m extends ECCurve {
        /* JADX WARN: Illegal instructions before constructor call */
        public AbstractF2m(int i2, int i3, int i4, int i5) {
            PolynomialExtensionField polynomialExtensionFieldA;
            if (i3 == 0) {
                md.n("k1 must be > 0");
                throw null;
            }
            if (i4 == 0) {
                if (i5 != 0) {
                    md.n("k3 must be 0 if k2 == 0");
                    throw null;
                }
                polynomialExtensionFieldA = FiniteFields.a(new int[]{0, i3, i2});
            } else {
                if (i4 <= i3) {
                    md.n("k2 must be > k1");
                    throw null;
                }
                if (i5 <= i4) {
                    md.n("k3 must be > k2");
                    throw null;
                }
                polynomialExtensionFieldA = FiniteFields.a(new int[]{0, i3, i4, i5, i2});
            }
            super(polynomialExtensionFieldA);
        }

        @Override // org.spongycastle.math.ec.ECCurve
        public final ECPoint b(boolean z, BigInteger bigInteger, BigInteger bigInteger2) {
            ECFieldElement eCFieldElementG = g(bigInteger);
            ECFieldElement eCFieldElementG2 = g(bigInteger2);
            int i2 = this.f77922f;
            if (i2 == 5 || i2 == 6) {
                if (!eCFieldElementG.i()) {
                    eCFieldElementG2 = eCFieldElementG2.d(eCFieldElementG).a(eCFieldElementG);
                } else if (!eCFieldElementG2.o().equals(this.f77920c)) {
                    ct0.c();
                    return null;
                }
            }
            return c(eCFieldElementG, eCFieldElementG2, z);
        }

        @Override // org.spongycastle.math.ec.ECCurve
        public final ECPoint e(int i2, BigInteger bigInteger) {
            ECFieldElement eCFieldElementA;
            ECFieldElement eCFieldElementG = g(bigInteger);
            if (eCFieldElementG.i()) {
                eCFieldElementA = this.f77920c.n();
            } else {
                ECFieldElement eCFieldElementA2 = eCFieldElementG.o().g().j(this.f77920c).a(this.f77919b).a(eCFieldElementG);
                if (!eCFieldElementA2.i()) {
                    ECFieldElement eCFieldElementG2 = g(ECConstants.f77915a);
                    int iH = h();
                    Random random = new Random();
                    while (true) {
                        ECFieldElement eCFieldElementG3 = g(new BigInteger(iH, random));
                        ECFieldElement eCFieldElementA3 = eCFieldElementA2;
                        ECFieldElement eCFieldElementA4 = eCFieldElementG2;
                        for (int i3 = 1; i3 < iH; i3++) {
                            ECFieldElement eCFieldElementO = eCFieldElementA3.o();
                            eCFieldElementA4 = eCFieldElementA4.o().a(eCFieldElementO.j(eCFieldElementG3));
                            eCFieldElementA3 = eCFieldElementO.a(eCFieldElementA2);
                        }
                        if (!eCFieldElementA3.i()) {
                            eCFieldElementA2 = null;
                            break;
                        }
                        if (!eCFieldElementA4.o().a(eCFieldElementA4).i()) {
                            eCFieldElementA2 = eCFieldElementA4;
                            break;
                        }
                    }
                }
                if (eCFieldElementA2 != null) {
                    if (eCFieldElementA2.r() != (i2 == 1)) {
                        eCFieldElementA2 = eCFieldElementA2.b();
                    }
                    int i4 = this.f77922f;
                    eCFieldElementA = (i4 == 5 || i4 == 6) ? eCFieldElementA2.a(eCFieldElementG) : eCFieldElementA2.j(eCFieldElementG);
                } else {
                    eCFieldElementA = null;
                }
            }
            if (eCFieldElementA != null) {
                return c(eCFieldElementG, eCFieldElementA, true);
            }
            md.n("Invalid point compression");
            return null;
        }
    }

    public static abstract class AbstractFp extends ECCurve {
        public AbstractFp(BigInteger bigInteger) {
            super(FiniteFields.b(bigInteger));
        }

        @Override // org.spongycastle.math.ec.ECCurve
        public final ECPoint e(int i2, BigInteger bigInteger) {
            ECFieldElement eCFieldElementG = g(bigInteger);
            ECFieldElement eCFieldElementN = eCFieldElementG.o().a(this.f77919b).j(eCFieldElementG).a(this.f77920c).n();
            if (eCFieldElementN == null) {
                md.n("Invalid point compression");
                return null;
            }
            if (eCFieldElementN.r() != (i2 == 1)) {
                eCFieldElementN = eCFieldElementN.m();
            }
            return c(eCFieldElementG, eCFieldElementN, true);
        }
    }

    public class Config {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f77923a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public ECEndomorphism f77924b;

        public Config(int i2, ECEndomorphism eCEndomorphism) {
            this.f77923a = i2;
            this.f77924b = eCEndomorphism;
        }

        public final ECCurve a() {
            if (!ECCurve.this.k(this.f77923a)) {
                md.k("unsupported coordinate system");
                return null;
            }
            ECCurve eCCurveA = ECCurve.this.a();
            if (eCCurveA == ECCurve.this) {
                md.k("implementation returned current curve");
                return null;
            }
            synchronized (eCCurveA) {
                eCCurveA.f77922f = this.f77923a;
                eCCurveA.g = this.f77924b;
            }
            return eCCurveA;
        }
    }

    public ECCurve(FiniteField finiteField) {
        this.f77918a = finiteField;
    }

    public abstract ECCurve a();

    public ECPoint b(boolean z, BigInteger bigInteger, BigInteger bigInteger2) {
        return c(g(bigInteger), g(bigInteger2), z);
    }

    public abstract ECPoint c(ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, boolean z);

    public final ECPoint d(byte[] bArr) {
        ECPoint eCPointI;
        int iH = (h() + 7) / 8;
        byte b2 = bArr[0];
        if (b2 != 0) {
            if (b2 == 2 || b2 == 3) {
                if (bArr.length != iH + 1) {
                    md.n("Incorrect length for compressed encoding");
                    return null;
                }
                eCPointI = e(b2 & 1, BigIntegers.a(bArr, 1, iH));
                if (!eCPointI.l()) {
                    md.n("Invalid point");
                    return null;
                }
            } else if (b2 != 4) {
                if (b2 != 6 && b2 != 7) {
                    az.w(Integer.toString(b2, 16), "Invalid point encoding 0x");
                    return null;
                }
                if (bArr.length != (iH * 2) + 1) {
                    md.n("Incorrect length for hybrid encoding");
                    return null;
                }
                BigInteger bigIntegerA = BigIntegers.a(bArr, 1, iH);
                BigInteger bigIntegerA2 = BigIntegers.a(bArr, iH + 1, iH);
                if (bigIntegerA2.testBit(0) != (b2 == 7)) {
                    md.n("Inconsistent Y coordinate in hybrid encoding");
                    return null;
                }
                eCPointI = b(false, bigIntegerA, bigIntegerA2);
                if (!eCPointI.g() && eCPointI.f77938a != null && (!eCPointI.m() || !eCPointI.l())) {
                    md.n("Invalid point coordinates");
                    return null;
                }
            } else {
                if (bArr.length != (iH * 2) + 1) {
                    md.n("Incorrect length for uncompressed encoding");
                    return null;
                }
                eCPointI = b(false, BigIntegers.a(bArr, 1, iH), BigIntegers.a(bArr, iH + 1, iH));
                if (!eCPointI.g() && eCPointI.f77938a != null && (!eCPointI.m() || !eCPointI.l())) {
                    md.n("Invalid point coordinates");
                    return null;
                }
            }
        } else {
            if (bArr.length != 1) {
                md.n("Incorrect length for infinity encoding");
                return null;
            }
            eCPointI = i();
        }
        if (b2 == 0 || !eCPointI.g()) {
            return eCPointI;
        }
        md.n("Invalid infinity encoding");
        return null;
    }

    public abstract ECPoint e(int i2, BigInteger bigInteger);

    public final boolean equals(Object obj) {
        if (this != obj) {
            return (obj instanceof ECCurve) && f((ECCurve) obj);
        }
        return true;
    }

    public final boolean f(ECCurve eCCurve) {
        if (this != eCCurve) {
            return eCCurve != null && this.f77918a.equals(eCCurve.f77918a) && this.f77919b.s().equals(eCCurve.f77919b.s()) && this.f77920c.s().equals(eCCurve.f77920c.s());
        }
        return true;
    }

    public abstract ECFieldElement g(BigInteger bigInteger);

    public abstract int h();

    public final int hashCode() {
        return Integer.rotateLeft(this.f77920c.s().hashCode(), 16) ^ (this.f77918a.hashCode() ^ Integer.rotateLeft(this.f77919b.s().hashCode(), 8));
    }

    public abstract ECPoint i();

    public ECPoint j(ECPoint eCPoint) {
        if (this == eCPoint.f77938a) {
            return eCPoint;
        }
        if (eCPoint.g()) {
            return i();
        }
        ECPoint eCPointJ = eCPoint.j();
        ECPoint eCPointB = b(eCPointJ.f77941e, eCPointJ.f77939b.s(), eCPointJ.e().s());
        if (eCPointB.g() || eCPointB.f77938a == null) {
            return eCPointB;
        }
        if (eCPointB.m() && eCPointB.l()) {
            return eCPointB;
        }
        md.n("Invalid point coordinates");
        return null;
    }

    public abstract boolean k(int i2);

    public static class F2m extends AbstractF2m {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public int f77926h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public int f77927i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public int f77928j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public int f77929k;
        public ECPoint.F2m l;

        public F2m(int i2, int i3, int i4, int i5, BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, BigInteger bigInteger4) {
            super(i2, i3, i4, i5);
            this.f77926h = i2;
            this.f77927i = i3;
            this.f77928j = i4;
            this.f77929k = i5;
            this.d = bigInteger3;
            this.f77921e = bigInteger4;
            this.l = new ECPoint.F2m(this, null, null);
            this.f77919b = g(bigInteger);
            this.f77920c = g(bigInteger2);
            this.f77922f = 6;
        }

        @Override // org.spongycastle.math.ec.ECCurve
        public final ECCurve a() {
            int i2 = this.f77926h;
            int i3 = this.f77927i;
            int i4 = this.f77928j;
            int i5 = this.f77929k;
            ECFieldElement eCFieldElement = this.f77919b;
            ECFieldElement eCFieldElement2 = this.f77920c;
            BigInteger bigInteger = this.d;
            BigInteger bigInteger2 = this.f77921e;
            F2m f2m = new F2m(i2, i3, i4, i5);
            f2m.f77926h = i2;
            f2m.f77927i = i3;
            f2m.f77928j = i4;
            f2m.f77929k = i5;
            f2m.d = bigInteger;
            f2m.f77921e = bigInteger2;
            f2m.l = new ECPoint.F2m(f2m, null, null);
            f2m.f77919b = eCFieldElement;
            f2m.f77920c = eCFieldElement2;
            f2m.f77922f = 6;
            return f2m;
        }

        @Override // org.spongycastle.math.ec.ECCurve
        public final ECPoint c(ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, boolean z) {
            return new ECPoint.F2m(this, eCFieldElement, eCFieldElement2, z);
        }

        @Override // org.spongycastle.math.ec.ECCurve
        public final ECFieldElement g(BigInteger bigInteger) {
            return new ECFieldElement.F2m(this.f77926h, this.f77927i, this.f77928j, this.f77929k, bigInteger);
        }

        @Override // org.spongycastle.math.ec.ECCurve
        public final int h() {
            return this.f77926h;
        }

        @Override // org.spongycastle.math.ec.ECCurve
        public final ECPoint i() {
            return this.l;
        }

        @Override // org.spongycastle.math.ec.ECCurve
        public final boolean k(int i2) {
            return i2 == 0 || i2 == 1 || i2 == 6;
        }

        public F2m(int i2, int i3, BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, BigInteger bigInteger4) {
            this(i2, i3, 0, 0, bigInteger, bigInteger2, bigInteger3, bigInteger4);
        }

        public F2m(int i2, int i3, int i4, int i5, BigInteger bigInteger, BigInteger bigInteger2) {
            this(i2, i3, i4, i5, bigInteger, bigInteger2, null, null);
        }

        public F2m(int i2, int i3, BigInteger bigInteger, BigInteger bigInteger2) {
            this(i2, i3, 0, 0, bigInteger, bigInteger2, null, null);
        }
    }

    public static class Fp extends AbstractFp {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public BigInteger f77930h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public BigInteger f77931i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public ECPoint.Fp f77932j;

        public Fp(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, BigInteger bigInteger4, BigInteger bigInteger5) {
            super(bigInteger);
            this.f77930h = bigInteger;
            this.f77931i = ECFieldElement.Fp.t(bigInteger);
            this.f77932j = new ECPoint.Fp(this, null, null);
            this.f77919b = g(bigInteger2);
            this.f77920c = g(bigInteger3);
            this.d = bigInteger4;
            this.f77921e = bigInteger5;
            this.f77922f = 4;
        }

        @Override // org.spongycastle.math.ec.ECCurve
        public final ECCurve a() {
            BigInteger bigInteger = this.f77930h;
            BigInteger bigInteger2 = this.f77931i;
            ECFieldElement eCFieldElement = this.f77919b;
            ECFieldElement eCFieldElement2 = this.f77920c;
            BigInteger bigInteger3 = this.d;
            BigInteger bigInteger4 = this.f77921e;
            Fp fp = new Fp(bigInteger);
            fp.f77930h = bigInteger;
            fp.f77931i = bigInteger2;
            fp.f77932j = new ECPoint.Fp(fp, null, null);
            fp.f77919b = eCFieldElement;
            fp.f77920c = eCFieldElement2;
            fp.d = bigInteger3;
            fp.f77921e = bigInteger4;
            fp.f77922f = 4;
            return fp;
        }

        @Override // org.spongycastle.math.ec.ECCurve
        public final ECPoint c(ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, boolean z) {
            return new ECPoint.Fp(this, eCFieldElement, eCFieldElement2, z);
        }

        @Override // org.spongycastle.math.ec.ECCurve
        public final ECFieldElement g(BigInteger bigInteger) {
            return new ECFieldElement.Fp(this.f77930h, this.f77931i, bigInteger);
        }

        @Override // org.spongycastle.math.ec.ECCurve
        public final int h() {
            return this.f77930h.bitLength();
        }

        @Override // org.spongycastle.math.ec.ECCurve
        public final ECPoint i() {
            return this.f77932j;
        }

        @Override // org.spongycastle.math.ec.ECCurve
        public final ECPoint j(ECPoint eCPoint) {
            int i2;
            return (this == eCPoint.f77938a || this.f77922f != 2 || eCPoint.g() || !((i2 = eCPoint.f77938a.f77922f) == 2 || i2 == 3 || i2 == 4)) ? super.j(eCPoint) : new ECPoint.Fp(this, g(eCPoint.f77939b.s()), g(eCPoint.f77940c.s()), new ECFieldElement[]{g(eCPoint.d[0].s())}, eCPoint.f77941e);
        }

        @Override // org.spongycastle.math.ec.ECCurve
        public final boolean k(int i2) {
            return i2 == 0 || i2 == 1 || i2 == 2 || i2 == 4;
        }

        public Fp(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3) {
            this(bigInteger, bigInteger2, bigInteger3, null, null);
        }
    }
}
