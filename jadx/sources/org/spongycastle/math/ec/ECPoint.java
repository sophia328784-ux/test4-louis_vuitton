package org.spongycastle.math.ec;

import defpackage.md;
import defpackage.tr;
import java.math.BigInteger;

/* JADX INFO: loaded from: classes5.dex */
public abstract class ECPoint {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final ECFieldElement[] f77937f = new ECFieldElement[0];

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ECCurve f77938a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ECFieldElement f77939b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ECFieldElement f77940c;
    public final ECFieldElement[] d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f77941e;

    public static abstract class AbstractF2m extends ECPoint {
        @Override // org.spongycastle.math.ec.ECPoint
        public final boolean m() {
            ECFieldElement eCFieldElementL;
            ECFieldElement eCFieldElementP;
            ECCurve eCCurve = this.f77938a;
            ECFieldElement eCFieldElementJ = eCCurve.f77919b;
            ECFieldElement eCFieldElementJ2 = eCCurve.f77920c;
            int i2 = eCCurve.f77922f;
            ECFieldElement eCFieldElement = this.f77940c;
            ECFieldElement[] eCFieldElementArr = this.d;
            ECFieldElement eCFieldElement2 = this.f77939b;
            if (i2 != 6) {
                ECFieldElement eCFieldElementJ3 = eCFieldElement.a(eCFieldElement2).j(eCFieldElement);
                if (i2 != 0) {
                    if (i2 != 1) {
                        md.k("unsupported coordinate system");
                        return false;
                    }
                    ECFieldElement eCFieldElement3 = eCFieldElementArr[0];
                    if (!eCFieldElement3.h()) {
                        ECFieldElement eCFieldElementJ4 = eCFieldElement3.j(eCFieldElement3.o());
                        eCFieldElementJ3 = eCFieldElementJ3.j(eCFieldElement3);
                        eCFieldElementJ = eCFieldElementJ.j(eCFieldElement3);
                        eCFieldElementJ2 = eCFieldElementJ2.j(eCFieldElementJ4);
                    }
                }
                return eCFieldElementJ3.equals(eCFieldElement2.a(eCFieldElementJ).j(eCFieldElement2.o()).a(eCFieldElementJ2));
            }
            ECFieldElement eCFieldElement4 = eCFieldElementArr[0];
            boolean zH = eCFieldElement4.h();
            if (eCFieldElement2.i()) {
                ECFieldElement eCFieldElementO = eCFieldElement.o();
                if (!zH) {
                    eCFieldElementJ2 = eCFieldElementJ2.j(eCFieldElement4.o());
                }
                return eCFieldElementO.equals(eCFieldElementJ2);
            }
            ECFieldElement eCFieldElementO2 = eCFieldElement2.o();
            if (zH) {
                eCFieldElementL = tr.u(eCFieldElement, eCFieldElement, eCFieldElementJ);
                eCFieldElementP = eCFieldElementO2.o().a(eCFieldElementJ2);
            } else {
                ECFieldElement eCFieldElementO3 = eCFieldElement4.o();
                ECFieldElement eCFieldElementO4 = eCFieldElementO3.o();
                eCFieldElementL = eCFieldElement.a(eCFieldElement4).l(eCFieldElement, eCFieldElementJ, eCFieldElementO3);
                eCFieldElementP = eCFieldElementO2.p(eCFieldElementJ2, eCFieldElementO4);
            }
            return eCFieldElementL.j(eCFieldElementO2).equals(eCFieldElementP);
        }
    }

    public static abstract class AbstractFp extends ECPoint {
        @Override // org.spongycastle.math.ec.ECPoint
        public final boolean c() {
            if (h()) {
                return e().r();
            }
            md.k("point not in normal form");
            return false;
        }

        @Override // org.spongycastle.math.ec.ECPoint
        public final boolean m() {
            ECCurve eCCurve = this.f77938a;
            ECFieldElement eCFieldElementJ = eCCurve.f77919b;
            ECFieldElement eCFieldElementJ2 = eCCurve.f77920c;
            ECFieldElement eCFieldElementO = this.f77940c.o();
            int iD = d();
            if (iD != 0) {
                ECFieldElement[] eCFieldElementArr = this.d;
                if (iD == 1) {
                    ECFieldElement eCFieldElement = eCFieldElementArr[0];
                    if (!eCFieldElement.h()) {
                        ECFieldElement eCFieldElementO2 = eCFieldElement.o();
                        ECFieldElement eCFieldElementJ3 = eCFieldElement.j(eCFieldElementO2);
                        eCFieldElementO = eCFieldElementO.j(eCFieldElement);
                        eCFieldElementJ = eCFieldElementJ.j(eCFieldElementO2);
                        eCFieldElementJ2 = eCFieldElementJ2.j(eCFieldElementJ3);
                    }
                } else {
                    if (iD != 2 && iD != 3 && iD != 4) {
                        md.k("unsupported coordinate system");
                        return false;
                    }
                    ECFieldElement eCFieldElement2 = eCFieldElementArr[0];
                    if (!eCFieldElement2.h()) {
                        ECFieldElement eCFieldElementO3 = eCFieldElement2.o();
                        ECFieldElement eCFieldElementO4 = eCFieldElementO3.o();
                        ECFieldElement eCFieldElementJ4 = eCFieldElementO3.j(eCFieldElementO4);
                        eCFieldElementJ = eCFieldElementJ.j(eCFieldElementO4);
                        eCFieldElementJ2 = eCFieldElementJ2.j(eCFieldElementJ4);
                    }
                }
            }
            ECFieldElement eCFieldElement3 = this.f77939b;
            return eCFieldElementO.equals(eCFieldElement3.o().a(eCFieldElementJ).j(eCFieldElement3).a(eCFieldElementJ2));
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public ECPoint(ECCurve eCCurve, ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2) {
        ECFieldElement[] eCFieldElementArr;
        int i2 = eCCurve == null ? 0 : eCCurve.f77922f;
        if (i2 == 0 || i2 == 5) {
            eCFieldElementArr = f77937f;
        } else {
            ECFieldElement eCFieldElementG = eCCurve.g(ECConstants.f77916b);
            if (i2 == 1 || i2 == 2) {
                eCFieldElementArr = new ECFieldElement[]{eCFieldElementG};
            } else if (i2 == 3) {
                eCFieldElementArr = new ECFieldElement[]{eCFieldElementG, eCFieldElementG, eCFieldElementG};
            } else if (i2 != 4) {
                if (i2 != 6) {
                    md.n("unknown coordinate system");
                    throw null;
                }
                eCFieldElementArr = new ECFieldElement[]{eCFieldElementG};
            } else {
                eCFieldElementArr = new ECFieldElement[]{eCFieldElementG, eCCurve.f77919b};
            }
        }
        this(eCCurve, eCFieldElement, eCFieldElement2, eCFieldElementArr);
    }

    public abstract ECPoint a(ECPoint eCPoint);

    /* JADX WARN: Code duplicated, block: B:72:0x00fa A[RETURN] */
    public final boolean b(ECPoint eCPoint) {
        if (eCPoint != null) {
            ECCurve eCCurve = eCPoint.f77938a;
            ECCurve eCCurve2 = this.f77938a;
            boolean z = eCCurve2 == null;
            boolean z2 = eCCurve == null;
            boolean zG = g();
            boolean zG2 = eCPoint.g();
            if (zG || zG2) {
                if (zG && zG2 && (z || z2 || eCCurve2.f(eCCurve))) {
                    return true;
                }
            } else if (!z || !z2) {
                if (z) {
                    eCPoint = eCPoint.j();
                } else if (z2) {
                    this = j();
                } else if (eCCurve2.f(eCCurve)) {
                    ECPoint[] eCPointArr = new ECPoint[2];
                    eCPointArr[0] = this;
                    eCPointArr[1] = eCCurve2.j(eCPoint);
                    for (int i2 = 0; i2 < 2; i2++) {
                        ECPoint eCPoint2 = eCPointArr[i2];
                        if (eCPoint2 != null && eCCurve2 != eCPoint2.f77938a) {
                            md.n("'points' entries must be null or on this curve");
                            return false;
                        }
                    }
                    int i3 = eCCurve2.f77922f;
                    if (i3 != 0 && i3 != 5) {
                        ECFieldElement[] eCFieldElementArr = new ECFieldElement[2];
                        int[] iArr = new int[2];
                        int i4 = 0;
                        for (int i5 = 0; i5 < 2; i5++) {
                            ECPoint eCPoint3 = eCPointArr[i5];
                            if (eCPoint3 != null && !eCPoint3.h()) {
                                eCFieldElementArr[i4] = eCPoint3.f();
                                iArr[i4] = i5;
                                i4++;
                            }
                        }
                        if (i4 != 0) {
                            ECFieldElement[] eCFieldElementArr2 = new ECFieldElement[i4];
                            eCFieldElementArr2[0] = eCFieldElementArr[0];
                            int i6 = 0;
                            while (true) {
                                int i7 = i6 + 1;
                                if (i7 >= i4) {
                                    break;
                                }
                                eCFieldElementArr2[i7] = eCFieldElementArr2[i6].j(eCFieldElementArr[i7]);
                                i6 = i7;
                            }
                            ECFieldElement eCFieldElementG = eCFieldElementArr2[i6].g();
                            while (i6 > 0) {
                                int i8 = i6 - 1;
                                ECFieldElement eCFieldElement = eCFieldElementArr[i6];
                                eCFieldElementArr[i6] = eCFieldElementArr2[i8].j(eCFieldElementG);
                                eCFieldElementG = eCFieldElementG.j(eCFieldElement);
                                i6 = i8;
                            }
                            eCFieldElementArr[0] = eCFieldElementG;
                            for (int i9 = 0; i9 < i4; i9++) {
                                int i10 = iArr[i9];
                                eCPointArr[i10] = eCPointArr[i10].k(eCFieldElementArr[i9]);
                            }
                        }
                    }
                    this = eCPointArr[0];
                    eCPoint = eCPointArr[1];
                }
                if (!this.f77939b.equals(eCPoint.f77939b) && this.e().equals(eCPoint.e())) {
                    return true;
                }
            } else if (!this.f77939b.equals(eCPoint.f77939b)) {
            }
        }
        return false;
    }

    public abstract boolean c();

    public final int d() {
        ECCurve eCCurve = this.f77938a;
        if (eCCurve == null) {
            return 0;
        }
        return eCCurve.f77922f;
    }

    public ECFieldElement e() {
        return this.f77940c;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof ECPoint) {
            return b((ECPoint) obj);
        }
        return false;
    }

    public ECFieldElement f() {
        ECFieldElement[] eCFieldElementArr = this.d;
        if (eCFieldElementArr.length <= 0) {
            return null;
        }
        return eCFieldElementArr[0];
    }

    public final boolean g() {
        if (this.f77939b == null || this.f77940c == null) {
            return true;
        }
        ECFieldElement[] eCFieldElementArr = this.d;
        return eCFieldElementArr.length > 0 && eCFieldElementArr[0].i();
    }

    public final boolean h() {
        int iD = d();
        return iD == 0 || iD == 5 || g() || this.d[0].h();
    }

    public final int hashCode() {
        ECCurve eCCurve = this.f77938a;
        int i2 = eCCurve == null ? 0 : ~eCCurve.hashCode();
        if (g()) {
            return i2;
        }
        ECPoint eCPointJ = j();
        return (eCPointJ.e().hashCode() * 257) ^ (i2 ^ (eCPointJ.f77939b.hashCode() * 17));
    }

    public abstract ECPoint i();

    public final ECPoint j() {
        int iD;
        if (g() || (iD = d()) == 0 || iD == 5) {
            return this;
        }
        ECFieldElement eCFieldElementF = f();
        return eCFieldElementF.h() ? this : k(eCFieldElementF.g());
    }

    public final ECPoint k(ECFieldElement eCFieldElement) {
        int iD = d();
        ECFieldElement eCFieldElement2 = this.f77940c;
        ECFieldElement eCFieldElement3 = this.f77939b;
        ECCurve eCCurve = this.f77938a;
        if (iD != 1) {
            if (iD == 2 || iD == 3 || iD == 4) {
                ECFieldElement eCFieldElementO = eCFieldElement.o();
                return eCCurve.c(eCFieldElement3.j(eCFieldElementO), eCFieldElement2.j(eCFieldElementO.j(eCFieldElement)), this.f77941e);
            }
            if (iD != 6) {
                md.k("not a projective coordinate system");
                return null;
            }
        }
        return eCCurve.c(eCFieldElement3.j(eCFieldElement), eCFieldElement2.j(eCFieldElement), this.f77941e);
    }

    public final boolean l() {
        ECCurve eCCurve = this.f77938a;
        BigInteger bigInteger = eCCurve.f77921e;
        if (bigInteger != null && !bigInteger.equals(ECConstants.f77916b)) {
            BigInteger bigIntegerAbs = bigInteger.abs();
            ECPoint eCPointI = eCCurve.i();
            int iBitLength = bigIntegerAbs.bitLength();
            if (iBitLength > 0) {
                if (bigIntegerAbs.testBit(0)) {
                    eCPointI = this;
                }
                for (int i2 = 1; i2 < iBitLength; i2++) {
                    this = this.n();
                    if (bigIntegerAbs.testBit(i2)) {
                        eCPointI = eCPointI.a(this);
                    }
                }
            }
            if (bigInteger.signum() < 0) {
                eCPointI = eCPointI.i();
            }
            if (eCPointI.g()) {
                return false;
            }
        }
        return true;
    }

    public abstract boolean m();

    public abstract ECPoint n();

    public final String toString() {
        if (g()) {
            return "INF";
        }
        StringBuffer stringBuffer = new StringBuffer("(");
        stringBuffer.append(this.f77939b);
        stringBuffer.append(',');
        stringBuffer.append(this.f77940c);
        int i2 = 0;
        while (true) {
            ECFieldElement[] eCFieldElementArr = this.d;
            if (i2 >= eCFieldElementArr.length) {
                stringBuffer.append(')');
                return stringBuffer.toString();
            }
            stringBuffer.append(',');
            stringBuffer.append(eCFieldElementArr[i2]);
            i2++;
        }
    }

    public static class Fp extends AbstractFp {
        public Fp(ECCurve eCCurve, ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, boolean z) {
            super(eCCurve, eCFieldElement, eCFieldElement2);
            if ((eCFieldElement == null) == (eCFieldElement2 == null)) {
                this.f77941e = z;
            } else {
                md.n("Exactly one of the field elements is null");
                throw null;
            }
        }

        /*  JADX ERROR: Type inference failed
            jadx.core.utils.exceptions.JadxOverflowException: Type inference error: updates count limit reached with updateSeq = 5451. Try increasing type updates limit count.
            	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
            	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
            	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
            	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:79)
            */
        @Override // org.spongycastle.math.ec.ECPoint
        public final org.spongycastle.math.ec.ECPoint a(org.spongycastle.math.ec.ECPoint r19) {
            /*
                Method dump skipped, instruction units count: 545
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: org.spongycastle.math.ec.ECPoint.Fp.a(org.spongycastle.math.ec.ECPoint):org.spongycastle.math.ec.ECPoint");
        }

        @Override // org.spongycastle.math.ec.ECPoint
        public final ECPoint i() {
            if (g()) {
                return this;
            }
            ECCurve eCCurve = this.f77938a;
            int i2 = eCCurve.f77922f;
            ECFieldElement eCFieldElement = this.f77940c;
            ECFieldElement eCFieldElement2 = this.f77939b;
            return i2 != 0 ? new Fp(eCCurve, eCFieldElement2, eCFieldElement.m(), this.d, this.f77941e) : new Fp(eCCurve, eCFieldElement2, eCFieldElement.m(), this.f77941e);
        }

        @Override // org.spongycastle.math.ec.ECPoint
        public final ECPoint n() {
            ECFieldElement eCFieldElementQ;
            ECFieldElement eCFieldElementA;
            if (g()) {
                return this;
            }
            ECFieldElement eCFieldElement = this.f77940c;
            boolean zI = eCFieldElement.i();
            ECCurve eCCurve = this.f77938a;
            if (zI) {
                return eCCurve.i();
            }
            int i2 = eCCurve.f77922f;
            ECFieldElement eCFieldElement2 = this.f77939b;
            if (i2 == 0) {
                ECFieldElement eCFieldElementO = eCFieldElement2.o();
                ECFieldElement eCFieldElementD = eCFieldElementO.a(eCFieldElementO).a(eCFieldElementO).a(eCCurve.f77919b).d(eCFieldElement.a(eCFieldElement));
                ECFieldElement eCFieldElementQ2 = eCFieldElementD.o().q(eCFieldElement2.a(eCFieldElement2));
                return new Fp(eCCurve, eCFieldElementQ2, eCFieldElementD.j(eCFieldElement2.q(eCFieldElementQ2)).q(eCFieldElement), this.f77941e);
            }
            ECFieldElement[] eCFieldElementArr = this.d;
            if (i2 == 1) {
                ECFieldElement eCFieldElement3 = eCFieldElementArr[0];
                boolean zH = eCFieldElement3.h();
                ECFieldElement eCFieldElementJ = eCCurve.f77919b;
                if (!eCFieldElementJ.i() && !zH) {
                    eCFieldElementJ = eCFieldElementJ.j(eCFieldElement3.o());
                }
                ECFieldElement eCFieldElementO2 = eCFieldElement2.o();
                ECFieldElement eCFieldElementA2 = eCFieldElementJ.a(eCFieldElementO2.a(eCFieldElementO2).a(eCFieldElementO2));
                ECFieldElement eCFieldElementJ2 = zH ? eCFieldElement : eCFieldElement.j(eCFieldElement3);
                ECFieldElement eCFieldElementO3 = zH ? eCFieldElement.o() : eCFieldElementJ2.j(eCFieldElement);
                ECFieldElement eCFieldElementJ3 = eCFieldElement2.j(eCFieldElementO3);
                ECFieldElement eCFieldElementA3 = eCFieldElementJ3.a(eCFieldElementJ3);
                ECFieldElement eCFieldElementA4 = eCFieldElementA3.a(eCFieldElementA3);
                ECFieldElement eCFieldElementQ3 = eCFieldElementA2.o().q(eCFieldElementA4.a(eCFieldElementA4));
                ECFieldElement eCFieldElementA5 = eCFieldElementJ2.a(eCFieldElementJ2);
                ECFieldElement eCFieldElementJ4 = eCFieldElementQ3.j(eCFieldElementA5);
                ECFieldElement eCFieldElementA6 = eCFieldElementO3.a(eCFieldElementO3);
                ECFieldElement eCFieldElementJ5 = eCFieldElementA4.q(eCFieldElementQ3).j(eCFieldElementA2);
                ECFieldElement eCFieldElementO4 = eCFieldElementA6.o();
                ECFieldElement eCFieldElementQ4 = eCFieldElementJ5.q(eCFieldElementO4.a(eCFieldElementO4));
                ECFieldElement eCFieldElementA7 = zH ? eCFieldElementA6.a(eCFieldElementA6) : eCFieldElementA5.o();
                return new Fp(eCCurve, eCFieldElementJ4, eCFieldElementQ4, new ECFieldElement[]{eCFieldElementA7.a(eCFieldElementA7).j(eCFieldElementJ2)}, this.f77941e);
            }
            if (i2 != 2) {
                if (i2 != 4) {
                    md.k("unsupported coordinate system");
                    return null;
                }
                ECFieldElement eCFieldElement4 = eCFieldElementArr[0];
                ECFieldElement eCFieldElementO5 = eCFieldElementArr[1];
                if (eCFieldElementO5 == null) {
                    eCFieldElementO5 = o(eCFieldElementArr[0], null);
                    eCFieldElementArr[1] = eCFieldElementO5;
                }
                ECFieldElement eCFieldElementO6 = eCFieldElement2.o();
                ECFieldElement eCFieldElementA8 = eCFieldElementO6.a(eCFieldElementO6).a(eCFieldElementO6).a(eCFieldElementO5);
                ECFieldElement eCFieldElementA9 = eCFieldElement.a(eCFieldElement);
                ECFieldElement eCFieldElementJ6 = eCFieldElementA9.j(eCFieldElement);
                ECFieldElement eCFieldElementJ7 = eCFieldElement2.j(eCFieldElementJ6);
                ECFieldElement eCFieldElementA10 = eCFieldElementJ7.a(eCFieldElementJ7);
                ECFieldElement eCFieldElementQ5 = eCFieldElementA8.o().q(eCFieldElementA10.a(eCFieldElementA10));
                ECFieldElement eCFieldElementO7 = eCFieldElementJ6.o();
                ECFieldElement eCFieldElementA11 = eCFieldElementO7.a(eCFieldElementO7);
                ECFieldElement eCFieldElementQ6 = eCFieldElementA8.j(eCFieldElementA10.q(eCFieldElementQ5)).q(eCFieldElementA11);
                ECFieldElement eCFieldElementJ8 = eCFieldElementA11.j(eCFieldElementO5);
                ECFieldElement eCFieldElementA12 = eCFieldElementJ8.a(eCFieldElementJ8);
                if (!eCFieldElement4.h()) {
                    eCFieldElementA9 = eCFieldElementA9.j(eCFieldElement4);
                }
                return new Fp(this.f77938a, eCFieldElementQ5, eCFieldElementQ6, new ECFieldElement[]{eCFieldElementA9, eCFieldElementA12}, this.f77941e);
            }
            ECFieldElement eCFieldElement5 = eCFieldElementArr[0];
            boolean zH2 = eCFieldElement5.h();
            ECFieldElement eCFieldElementO8 = eCFieldElement.o();
            ECFieldElement eCFieldElementO9 = eCFieldElementO8.o();
            ECFieldElement eCFieldElement6 = eCCurve.f77919b;
            ECFieldElement eCFieldElementM = eCFieldElement6.m();
            if (eCFieldElementM.s().equals(BigInteger.valueOf(3L))) {
                ECFieldElement eCFieldElementO10 = zH2 ? eCFieldElement5 : eCFieldElement5.o();
                ECFieldElement eCFieldElementJ9 = eCFieldElement2.a(eCFieldElementO10).j(eCFieldElement2.q(eCFieldElementO10));
                eCFieldElementQ = eCFieldElementJ9.a(eCFieldElementJ9).a(eCFieldElementJ9);
                ECFieldElement eCFieldElementJ10 = eCFieldElementO8.j(eCFieldElement2);
                ECFieldElement eCFieldElementA13 = eCFieldElementJ10.a(eCFieldElementJ10);
                eCFieldElementA = eCFieldElementA13.a(eCFieldElementA13);
            } else {
                ECFieldElement eCFieldElementO11 = eCFieldElement2.o();
                ECFieldElement eCFieldElementA14 = eCFieldElementO11.a(eCFieldElementO11).a(eCFieldElementO11);
                if (zH2) {
                    eCFieldElementQ = eCFieldElementA14.a(eCFieldElement6);
                } else if (eCFieldElement6.i()) {
                    eCFieldElementQ = eCFieldElementA14;
                } else {
                    ECFieldElement eCFieldElementO12 = eCFieldElement5.o().o();
                    eCFieldElementQ = eCFieldElementM.c() < eCFieldElement6.c() ? eCFieldElementA14.q(eCFieldElementO12.j(eCFieldElementM)) : eCFieldElementA14.a(eCFieldElementO12.j(eCFieldElement6));
                }
                ECFieldElement eCFieldElementJ11 = eCFieldElement2.j(eCFieldElementO8);
                ECFieldElement eCFieldElementA15 = eCFieldElementJ11.a(eCFieldElementJ11);
                eCFieldElementA = eCFieldElementA15.a(eCFieldElementA15);
            }
            ECFieldElement eCFieldElementQ7 = eCFieldElementQ.o().q(eCFieldElementA.a(eCFieldElementA));
            ECFieldElement eCFieldElementJ12 = eCFieldElementA.q(eCFieldElementQ7).j(eCFieldElementQ);
            ECFieldElement eCFieldElementA16 = eCFieldElementO9.a(eCFieldElementO9);
            ECFieldElement eCFieldElementA17 = eCFieldElementA16.a(eCFieldElementA16);
            ECFieldElement eCFieldElementQ8 = eCFieldElementJ12.q(eCFieldElementA17.a(eCFieldElementA17));
            ECFieldElement eCFieldElementA18 = eCFieldElement.a(eCFieldElement);
            if (!zH2) {
                eCFieldElementA18 = eCFieldElementA18.j(eCFieldElement5);
            }
            return new Fp(eCCurve, eCFieldElementQ7, eCFieldElementQ8, new ECFieldElement[]{eCFieldElementA18}, this.f77941e);
        }

        public final ECFieldElement o(ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2) {
            ECFieldElement eCFieldElement3 = this.f77938a.f77919b;
            if (eCFieldElement3.i() || eCFieldElement.h()) {
                return eCFieldElement3;
            }
            if (eCFieldElement2 == null) {
                eCFieldElement2 = eCFieldElement.o();
            }
            ECFieldElement eCFieldElementO = eCFieldElement2.o();
            ECFieldElement eCFieldElementM = eCFieldElement3.m();
            return eCFieldElementM.c() < eCFieldElement3.c() ? eCFieldElementO.j(eCFieldElementM).m() : eCFieldElementO.j(eCFieldElement3);
        }

        public Fp(ECCurve eCCurve, ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, ECFieldElement[] eCFieldElementArr, boolean z) {
            super(eCCurve, eCFieldElement, eCFieldElement2, eCFieldElementArr);
            this.f77941e = z;
        }

        public Fp(ECCurve eCCurve, ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2) {
            this(eCCurve, eCFieldElement, eCFieldElement2, false);
        }
    }

    public static class F2m extends AbstractF2m {
        public F2m(ECCurve eCCurve, ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, boolean z) {
            super(eCCurve, eCFieldElement, eCFieldElement2);
            if ((eCFieldElement == null) != (eCFieldElement2 == null)) {
                md.n("Exactly one of the field elements is null");
                throw null;
            }
            if (eCFieldElement != null) {
                ECFieldElement.F2m.t(eCFieldElement, eCFieldElement2);
                if (eCCurve != null) {
                    ECFieldElement.F2m.t(eCFieldElement, eCCurve.f77919b);
                }
            }
            this.f77941e = z;
        }

        @Override // org.spongycastle.math.ec.ECPoint
        public final ECPoint a(ECPoint eCPoint) {
            ECFieldElement eCFieldElementJ;
            ECFieldElement eCFieldElementJ2;
            ECFieldElement eCFieldElementJ3;
            ECFieldElement eCFieldElementJ4;
            ECFieldElement eCFieldElement;
            ECFieldElement eCFieldElement2;
            if (g()) {
                return eCPoint;
            }
            boolean zG = eCPoint.g();
            ECFieldElement[] eCFieldElementArr = eCPoint.d;
            ECFieldElement eCFieldElement3 = eCPoint.f77940c;
            if (zG) {
                return this;
            }
            ECCurve eCCurve = this.f77938a;
            int i2 = eCCurve.f77922f;
            ECFieldElement eCFieldElement4 = eCPoint.f77939b;
            ECFieldElement eCFieldElement5 = this.f77940c;
            ECFieldElement eCFieldElementJ5 = this.f77939b;
            if (i2 == 0) {
                ECFieldElement eCFieldElementA = eCFieldElementJ5.a(eCFieldElement4);
                ECFieldElement eCFieldElementA2 = eCFieldElement5.a(eCFieldElement3);
                if (eCFieldElementA.i()) {
                    return eCFieldElementA2.i() ? n() : eCCurve.i();
                }
                ECFieldElement eCFieldElementD = eCFieldElementA2.d(eCFieldElementA);
                ECFieldElement eCFieldElementA3 = tr.u(eCFieldElementD, eCFieldElementD, eCFieldElementA).a(eCCurve.f77919b);
                return new F2m(eCCurve, eCFieldElementA3, eCFieldElementD.j(eCFieldElementJ5.a(eCFieldElementA3)).a(eCFieldElementA3).a(eCFieldElement5), this.f77941e);
            }
            ECFieldElement[] eCFieldElementArr2 = this.d;
            if (i2 == 1) {
                ECFieldElement eCFieldElementJ6 = eCFieldElementArr2[0];
                ECFieldElement eCFieldElement6 = eCFieldElementArr[0];
                boolean zH = eCFieldElement6.h();
                ECFieldElement eCFieldElementA4 = eCFieldElementJ6.j(eCFieldElement3).a(zH ? eCFieldElement5 : eCFieldElement5.j(eCFieldElement6));
                ECFieldElement eCFieldElementA5 = eCFieldElementJ6.j(eCFieldElement4).a(zH ? eCFieldElementJ5 : eCFieldElementJ5.j(eCFieldElement6));
                if (eCFieldElementA5.i()) {
                    return eCFieldElementA4.i() ? n() : eCCurve.i();
                }
                ECFieldElement eCFieldElementO = eCFieldElementA5.o();
                ECFieldElement eCFieldElementJ7 = eCFieldElementO.j(eCFieldElementA5);
                if (!zH) {
                    eCFieldElementJ6 = eCFieldElementJ6.j(eCFieldElement6);
                }
                ECFieldElement eCFieldElementA6 = eCFieldElementA4.a(eCFieldElementA5);
                ECFieldElement eCFieldElementA7 = eCFieldElementA6.l(eCFieldElementA4, eCFieldElementO, eCCurve.f77919b).j(eCFieldElementJ6).a(eCFieldElementJ7);
                ECFieldElement eCFieldElementJ8 = eCFieldElementA5.j(eCFieldElementA7);
                if (!zH) {
                    eCFieldElementO = eCFieldElementO.j(eCFieldElement6);
                }
                return new F2m(eCCurve, eCFieldElementJ8, eCFieldElementA4.l(eCFieldElementJ5, eCFieldElementA5, eCFieldElement5).l(eCFieldElementO, eCFieldElementA6, eCFieldElementA7), new ECFieldElement[]{eCFieldElementJ7.j(eCFieldElementJ6)}, this.f77941e);
            }
            if (i2 != 6) {
                md.k("unsupported coordinate system");
                return null;
            }
            if (eCFieldElementJ5.i()) {
                return eCFieldElement4.i() ? eCCurve.i() : eCPoint.a(this);
            }
            ECFieldElement eCFieldElement7 = eCFieldElementArr2[0];
            ECFieldElement eCFieldElement8 = eCFieldElementArr[0];
            boolean zH2 = eCFieldElement7.h();
            if (zH2) {
                eCFieldElementJ = eCFieldElement3;
                eCFieldElementJ2 = eCFieldElement4;
            } else {
                eCFieldElementJ2 = eCFieldElement4.j(eCFieldElement7);
                eCFieldElementJ = eCFieldElement3.j(eCFieldElement7);
            }
            boolean zH3 = eCFieldElement8.h();
            if (zH3) {
                eCFieldElementJ3 = eCFieldElement5;
            } else {
                eCFieldElementJ5 = eCFieldElementJ5.j(eCFieldElement8);
                eCFieldElementJ3 = eCFieldElement5.j(eCFieldElement8);
            }
            ECFieldElement eCFieldElementA8 = eCFieldElementJ3.a(eCFieldElementJ);
            ECFieldElement eCFieldElementA9 = eCFieldElementJ5.a(eCFieldElementJ2);
            if (eCFieldElementA9.i()) {
                return eCFieldElementA8.i() ? n() : eCCurve.i();
            }
            if (eCFieldElement4.i()) {
                ECPoint eCPointJ = j();
                ECFieldElement eCFieldElement9 = eCPointJ.f77939b;
                ECFieldElement eCFieldElementE = eCPointJ.e();
                ECFieldElement eCFieldElementD2 = eCFieldElementE.a(eCFieldElement3).d(eCFieldElement9);
                ECFieldElement eCFieldElementA10 = tr.u(eCFieldElementD2, eCFieldElementD2, eCFieldElement9).a(eCCurve.f77919b);
                if (eCFieldElementA10.i()) {
                    return new F2m(eCCurve, eCFieldElementA10, eCCurve.f77920c.n(), this.f77941e);
                }
                ECFieldElement eCFieldElementA11 = eCFieldElementD2.j(eCFieldElement9.a(eCFieldElementA10)).a(eCFieldElementA10).a(eCFieldElementE).d(eCFieldElementA10).a(eCFieldElementA10);
                eCFieldElementJ4 = eCCurve.g(ECConstants.f77916b);
                eCFieldElement = eCFieldElementA11;
                eCFieldElement2 = eCFieldElementA10;
            } else {
                ECFieldElement eCFieldElementO2 = eCFieldElementA9.o();
                ECFieldElement eCFieldElementJ9 = eCFieldElementA8.j(eCFieldElementJ5);
                ECFieldElement eCFieldElementJ10 = eCFieldElementA8.j(eCFieldElementJ2);
                ECFieldElement eCFieldElementJ11 = eCFieldElementJ9.j(eCFieldElementJ10);
                if (eCFieldElementJ11.i()) {
                    return new F2m(eCCurve, eCFieldElementJ11, eCCurve.f77920c.n(), this.f77941e);
                }
                ECFieldElement eCFieldElementJ12 = eCFieldElementA8.j(eCFieldElementO2);
                eCFieldElementJ4 = !zH3 ? eCFieldElementJ12.j(eCFieldElement8) : eCFieldElementJ12;
                ECFieldElement eCFieldElementP = eCFieldElementJ10.a(eCFieldElementO2).p(eCFieldElementJ4, eCFieldElement5.a(eCFieldElement7));
                if (!zH2) {
                    eCFieldElementJ4 = eCFieldElementJ4.j(eCFieldElement7);
                }
                eCFieldElement = eCFieldElementP;
                eCFieldElement2 = eCFieldElementJ11;
            }
            return new F2m(eCCurve, eCFieldElement2, eCFieldElement, new ECFieldElement[]{eCFieldElementJ4}, this.f77941e);
        }

        @Override // org.spongycastle.math.ec.ECPoint
        public final boolean c() {
            ECFieldElement eCFieldElement = this.f77939b;
            if (eCFieldElement.i()) {
                return false;
            }
            int iD = d();
            ECFieldElement eCFieldElement2 = this.f77940c;
            if (iD == 5 || iD == 6) {
                return eCFieldElement2.r() != eCFieldElement.r();
            }
            return eCFieldElement2.d(eCFieldElement).r();
        }

        @Override // org.spongycastle.math.ec.ECPoint
        public final ECFieldElement e() {
            int iD = d();
            ECFieldElement eCFieldElement = this.f77940c;
            if ((iD == 5 || iD == 6) && !g()) {
                ECFieldElement eCFieldElement2 = this.f77939b;
                if (!eCFieldElement2.i()) {
                    ECFieldElement eCFieldElementJ = eCFieldElement.a(eCFieldElement2).j(eCFieldElement2);
                    if (6 == iD) {
                        ECFieldElement eCFieldElement3 = this.d[0];
                        if (!eCFieldElement3.h()) {
                            return eCFieldElementJ.d(eCFieldElement3);
                        }
                    }
                    return eCFieldElementJ;
                }
            }
            return eCFieldElement;
        }

        @Override // org.spongycastle.math.ec.ECPoint
        public final ECPoint i() {
            if (!g()) {
                ECFieldElement eCFieldElement = this.f77939b;
                if (!eCFieldElement.i()) {
                    int iD = d();
                    ECCurve eCCurve = this.f77938a;
                    ECFieldElement eCFieldElement2 = this.f77940c;
                    if (iD == 0) {
                        return new F2m(eCCurve, eCFieldElement, eCFieldElement2.a(eCFieldElement), this.f77941e);
                    }
                    ECFieldElement[] eCFieldElementArr = this.d;
                    if (iD == 1) {
                        ECFieldElement eCFieldElement3 = eCFieldElementArr[0];
                        boolean z = this.f77941e;
                        return new F2m(this.f77938a, eCFieldElement, eCFieldElement2.a(eCFieldElement), new ECFieldElement[]{eCFieldElement3}, z);
                    }
                    if (iD == 5) {
                        return new F2m(eCCurve, eCFieldElement, eCFieldElement2.b(), this.f77941e);
                    }
                    if (iD != 6) {
                        md.k("unsupported coordinate system");
                        return null;
                    }
                    ECFieldElement eCFieldElement4 = eCFieldElementArr[0];
                    boolean z2 = this.f77941e;
                    return new F2m(this.f77938a, eCFieldElement, eCFieldElement2.a(eCFieldElement4), new ECFieldElement[]{eCFieldElement4}, z2);
                }
            }
            return this;
        }

        @Override // org.spongycastle.math.ec.ECPoint
        public final ECPoint n() {
            ECFieldElement eCFieldElementA;
            if (g()) {
                return this;
            }
            ECFieldElement eCFieldElementJ = this.f77939b;
            boolean zI = eCFieldElementJ.i();
            ECCurve eCCurve = this.f77938a;
            if (zI) {
                return eCCurve.i();
            }
            int i2 = eCCurve.f77922f;
            ECFieldElement eCFieldElementJ2 = this.f77940c;
            if (i2 == 0) {
                ECFieldElement eCFieldElementA2 = eCFieldElementJ2.d(eCFieldElementJ).a(eCFieldElementJ);
                ECFieldElement eCFieldElementA3 = eCFieldElementA2.o().a(eCFieldElementA2).a(eCCurve.f77919b);
                return new F2m(eCCurve, eCFieldElementA3, eCFieldElementJ.p(eCFieldElementA3, eCFieldElementA2.b()), this.f77941e);
            }
            ECFieldElement[] eCFieldElementArr = this.d;
            if (i2 == 1) {
                ECFieldElement eCFieldElement = eCFieldElementArr[0];
                boolean zH = eCFieldElement.h();
                ECFieldElement eCFieldElementJ3 = zH ? eCFieldElementJ : eCFieldElementJ.j(eCFieldElement);
                if (!zH) {
                    eCFieldElementJ2 = eCFieldElementJ2.j(eCFieldElement);
                }
                ECFieldElement eCFieldElementO = eCFieldElementJ.o();
                ECFieldElement eCFieldElementA4 = eCFieldElementO.a(eCFieldElementJ2);
                ECFieldElement eCFieldElementO2 = eCFieldElementJ3.o();
                ECFieldElement eCFieldElementA5 = eCFieldElementA4.a(eCFieldElementJ3);
                ECFieldElement eCFieldElementL = eCFieldElementA5.l(eCFieldElementA4, eCFieldElementO2, eCCurve.f77919b);
                return new F2m(eCCurve, eCFieldElementJ3.j(eCFieldElementL), eCFieldElementO.o().l(eCFieldElementJ3, eCFieldElementL, eCFieldElementA5), new ECFieldElement[]{eCFieldElementJ3.j(eCFieldElementO2)}, this.f77941e);
            }
            if (i2 != 6) {
                md.k("unsupported coordinate system");
                return null;
            }
            ECFieldElement eCFieldElement2 = eCFieldElementArr[0];
            boolean zH2 = eCFieldElement2.h();
            ECFieldElement eCFieldElementJ4 = zH2 ? eCFieldElementJ2 : eCFieldElementJ2.j(eCFieldElement2);
            ECFieldElement eCFieldElementO3 = zH2 ? eCFieldElement2 : eCFieldElement2.o();
            ECFieldElement eCFieldElement3 = eCCurve.f77919b;
            ECFieldElement eCFieldElementJ5 = zH2 ? eCFieldElement3 : eCFieldElement3.j(eCFieldElementO3);
            ECFieldElement eCFieldElementU = tr.u(eCFieldElementJ2, eCFieldElementJ4, eCFieldElementJ5);
            if (eCFieldElementU.i()) {
                return new F2m(eCCurve, eCFieldElementU, eCCurve.f77920c.n(), this.f77941e);
            }
            ECFieldElement eCFieldElementO4 = eCFieldElementU.o();
            ECFieldElement eCFieldElementJ6 = zH2 ? eCFieldElementU : eCFieldElementU.j(eCFieldElementO3);
            ECFieldElement eCFieldElement4 = eCCurve.f77920c;
            if (eCFieldElement4.c() < (eCCurve.h() >> 1)) {
                ECFieldElement eCFieldElementO5 = eCFieldElementJ2.a(eCFieldElementJ).o();
                eCFieldElementA = eCFieldElementO5.a(eCFieldElementU).a(eCFieldElementO3).j(eCFieldElementO5).a(eCFieldElement4.h() ? eCFieldElementJ5.a(eCFieldElementO3).o() : eCFieldElementJ5.p(eCFieldElement4, eCFieldElementO3.o())).a(eCFieldElementO4);
                if (eCFieldElement3.i()) {
                    eCFieldElementA = eCFieldElementA.a(eCFieldElementJ6);
                } else if (!eCFieldElement3.h()) {
                    eCFieldElementA = eCFieldElementA.a(eCFieldElement3.b().j(eCFieldElementJ6));
                }
            } else {
                if (!zH2) {
                    eCFieldElementJ = eCFieldElementJ.j(eCFieldElement2);
                }
                eCFieldElementA = eCFieldElementJ.p(eCFieldElementU, eCFieldElementJ4).a(eCFieldElementO4).a(eCFieldElementJ6);
            }
            return new F2m(eCCurve, eCFieldElementO4, eCFieldElementA, new ECFieldElement[]{eCFieldElementJ6}, this.f77941e);
        }

        public F2m(ECCurve eCCurve, ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, ECFieldElement[] eCFieldElementArr, boolean z) {
            super(eCCurve, eCFieldElement, eCFieldElement2, eCFieldElementArr);
            this.f77941e = z;
        }

        public F2m(ECCurve eCCurve, ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2) {
            this(eCCurve, eCFieldElement, eCFieldElement2, false);
        }
    }

    public ECPoint(ECCurve eCCurve, ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, ECFieldElement[] eCFieldElementArr) {
        this.f77938a = eCCurve;
        this.f77939b = eCFieldElement;
        this.f77940c = eCFieldElement2;
        this.d = eCFieldElementArr;
    }
}
