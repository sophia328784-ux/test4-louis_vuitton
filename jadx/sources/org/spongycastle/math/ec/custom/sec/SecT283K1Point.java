package org.spongycastle.math.ec.custom.sec;

import defpackage.md;
import defpackage.tr;
import org.spongycastle.math.ec.ECConstants;
import org.spongycastle.math.ec.ECCurve;
import org.spongycastle.math.ec.ECFieldElement;
import org.spongycastle.math.ec.ECPoint;

/* JADX INFO: loaded from: classes5.dex */
public class SecT283K1Point extends ECPoint.AbstractF2m {
    public SecT283K1Point(ECCurve eCCurve, ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, boolean z) {
        super(eCCurve, eCFieldElement, eCFieldElement2);
        if ((eCFieldElement == null) == (eCFieldElement2 == null)) {
            this.f77941e = z;
        } else {
            md.n("Exactly one of the field elements is null");
            throw null;
        }
    }

    @Override // org.spongycastle.math.ec.ECPoint
    public final ECPoint a(ECPoint eCPoint) {
        ECFieldElement eCFieldElementJ;
        ECFieldElement eCFieldElementJ2;
        ECFieldElement eCFieldElementJ3;
        ECFieldElement eCFieldElement;
        ECFieldElement eCFieldElement2;
        ECFieldElement eCFieldElementG;
        if (g()) {
            return eCPoint;
        }
        if (eCPoint.g()) {
            return this;
        }
        ECFieldElement eCFieldElement3 = eCPoint.f77939b;
        ECFieldElement eCFieldElementJ4 = this.f77939b;
        boolean zI = eCFieldElementJ4.i();
        ECCurve eCCurve = this.f77938a;
        if (zI) {
            return eCFieldElement3.i() ? eCCurve.i() : eCPoint.a(this);
        }
        ECFieldElement eCFieldElement4 = this.d[0];
        ECFieldElement eCFieldElement5 = eCPoint.f77940c;
        ECFieldElement eCFieldElementF = eCPoint.f();
        boolean zH = eCFieldElement4.h();
        if (zH) {
            eCFieldElementJ = eCFieldElement3;
            eCFieldElementJ2 = eCFieldElement5;
        } else {
            eCFieldElementJ = eCFieldElement3.j(eCFieldElement4);
            eCFieldElementJ2 = eCFieldElement5.j(eCFieldElement4);
        }
        boolean zH2 = eCFieldElementF.h();
        ECFieldElement eCFieldElement6 = this.f77940c;
        if (zH2) {
            eCFieldElementJ3 = eCFieldElement6;
        } else {
            eCFieldElementJ4 = eCFieldElementJ4.j(eCFieldElementF);
            eCFieldElementJ3 = eCFieldElement6.j(eCFieldElementF);
        }
        ECFieldElement eCFieldElementA = eCFieldElementJ3.a(eCFieldElementJ2);
        ECFieldElement eCFieldElementA2 = eCFieldElementJ4.a(eCFieldElementJ);
        if (eCFieldElementA2.i()) {
            return eCFieldElementA.i() ? n() : eCCurve.i();
        }
        if (eCFieldElement3.i()) {
            ECPoint eCPointJ = j();
            ECFieldElement eCFieldElement7 = eCPointJ.f77939b;
            ECFieldElement eCFieldElementE = eCPointJ.e();
            ECFieldElement eCFieldElementD = eCFieldElementE.a(eCFieldElement5).d(eCFieldElement7);
            ECFieldElement eCFieldElementU = tr.u(eCFieldElementD, eCFieldElementD, eCFieldElement7);
            if (eCFieldElementU.i()) {
                return new SecT283K1Point(eCCurve, eCFieldElementU, eCCurve.f77920c, this.f77941e);
            }
            ECFieldElement eCFieldElementA3 = eCFieldElementD.j(eCFieldElement7.a(eCFieldElementU)).a(eCFieldElementU).a(eCFieldElementE).d(eCFieldElementU).a(eCFieldElementU);
            eCFieldElementG = eCCurve.g(ECConstants.f77916b);
            eCFieldElement = eCFieldElementA3;
            eCFieldElement2 = eCFieldElementU;
        } else {
            ECFieldElement eCFieldElementO = eCFieldElementA2.o();
            ECFieldElement eCFieldElementJ5 = eCFieldElementA.j(eCFieldElementJ4);
            ECFieldElement eCFieldElementJ6 = eCFieldElementA.j(eCFieldElementJ);
            ECFieldElement eCFieldElementJ7 = eCFieldElementJ5.j(eCFieldElementJ6);
            if (eCFieldElementJ7.i()) {
                return new SecT283K1Point(eCCurve, eCFieldElementJ7, eCCurve.f77920c, this.f77941e);
            }
            ECFieldElement eCFieldElementJ8 = eCFieldElementA.j(eCFieldElementO);
            ECFieldElement eCFieldElementJ9 = !zH2 ? eCFieldElementJ8.j(eCFieldElementF) : eCFieldElementJ8;
            ECFieldElement eCFieldElementP = eCFieldElementJ6.a(eCFieldElementO).p(eCFieldElementJ9, eCFieldElement6.a(eCFieldElement4));
            if (!zH) {
                eCFieldElementJ9 = eCFieldElementJ9.j(eCFieldElement4);
            }
            eCFieldElement = eCFieldElementP;
            eCFieldElement2 = eCFieldElementJ7;
            eCFieldElementG = eCFieldElementJ9;
        }
        return new SecT283K1Point(eCCurve, eCFieldElement2, eCFieldElement, new ECFieldElement[]{eCFieldElementG}, this.f77941e);
    }

    @Override // org.spongycastle.math.ec.ECPoint
    public final boolean c() {
        ECFieldElement eCFieldElement = this.f77939b;
        return (eCFieldElement.i() || this.f77940c.r() == eCFieldElement.r()) ? false : true;
    }

    @Override // org.spongycastle.math.ec.ECPoint
    public final ECFieldElement e() {
        boolean zG = g();
        ECFieldElement eCFieldElement = this.f77940c;
        if (!zG) {
            ECFieldElement eCFieldElement2 = this.f77939b;
            if (!eCFieldElement2.i()) {
                ECFieldElement eCFieldElementJ = eCFieldElement.a(eCFieldElement2).j(eCFieldElement2);
                ECFieldElement eCFieldElement3 = this.d[0];
                return !eCFieldElement3.h() ? eCFieldElementJ.d(eCFieldElement3) : eCFieldElementJ;
            }
        }
        return eCFieldElement;
    }

    @Override // org.spongycastle.math.ec.ECPoint
    public final ECPoint i() {
        if (!g()) {
            ECFieldElement eCFieldElement = this.f77939b;
            if (!eCFieldElement.i()) {
                ECFieldElement eCFieldElement2 = this.d[0];
                boolean z = this.f77941e;
                return new SecT283K1Point(this.f77938a, eCFieldElement, this.f77940c.a(eCFieldElement2), new ECFieldElement[]{eCFieldElement2}, z);
            }
        }
        return this;
    }

    @Override // org.spongycastle.math.ec.ECPoint
    public final ECPoint n() {
        if (g()) {
            return this;
        }
        ECFieldElement eCFieldElement = this.f77939b;
        boolean zI = eCFieldElement.i();
        ECCurve eCCurve = this.f77938a;
        if (zI) {
            return eCCurve.i();
        }
        ECFieldElement eCFieldElementO = this.d[0];
        boolean zH = eCFieldElementO.h();
        ECFieldElement eCFieldElementO2 = zH ? eCFieldElementO : eCFieldElementO.o();
        ECFieldElement eCFieldElement2 = this.f77940c;
        ECFieldElement eCFieldElementA = zH ? eCFieldElement2.o().a(eCFieldElement2) : eCFieldElement2.a(eCFieldElementO).j(eCFieldElement2);
        if (eCFieldElementA.i()) {
            return new SecT283K1Point(eCCurve, eCFieldElementA, eCCurve.f77920c, this.f77941e);
        }
        ECFieldElement eCFieldElement3 = eCFieldElementO2;
        ECFieldElement eCFieldElementO3 = eCFieldElementA.o();
        ECFieldElement eCFieldElementJ = zH ? eCFieldElementA : eCFieldElementA.j(eCFieldElement3);
        ECFieldElement eCFieldElementO4 = eCFieldElement2.a(eCFieldElement).o();
        if (!zH) {
            eCFieldElementO = eCFieldElement3.o();
        }
        return new SecT283K1Point(eCCurve, eCFieldElementO3, eCFieldElementO4.a(eCFieldElementA).a(eCFieldElement3).j(eCFieldElementO4).a(eCFieldElementO).a(eCFieldElementO3).a(eCFieldElementJ), new ECFieldElement[]{eCFieldElementJ}, this.f77941e);
    }

    public SecT283K1Point(ECCurve eCCurve, ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2) {
        this(eCCurve, eCFieldElement, eCFieldElement2, false);
    }

    public SecT283K1Point(ECCurve eCCurve, ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, ECFieldElement[] eCFieldElementArr, boolean z) {
        super(eCCurve, eCFieldElement, eCFieldElement2, eCFieldElementArr);
        this.f77941e = z;
    }
}
