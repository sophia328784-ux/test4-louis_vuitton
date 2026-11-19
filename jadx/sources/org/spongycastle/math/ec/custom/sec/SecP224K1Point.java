package org.spongycastle.math.ec.custom.sec;

import defpackage.md;
import org.spongycastle.math.ec.ECCurve;
import org.spongycastle.math.ec.ECFieldElement;
import org.spongycastle.math.ec.ECPoint;
import org.spongycastle.math.raw.Nat;
import org.spongycastle.math.raw.Nat224;

/* JADX INFO: loaded from: classes5.dex */
public class SecP224K1Point extends ECPoint.AbstractFp {
    public SecP224K1Point(ECCurve eCCurve, ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, boolean z) {
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
        int[] iArr;
        int[] iArr2;
        int[] iArr3;
        int[] iArr4;
        if (g()) {
            return eCPoint;
        }
        if (eCPoint.g()) {
            return this;
        }
        if (this == eCPoint) {
            return n();
        }
        SecP224K1FieldElement secP224K1FieldElement = (SecP224K1FieldElement) this.f77939b;
        SecP224K1FieldElement secP224K1FieldElement2 = (SecP224K1FieldElement) this.f77940c;
        SecP224K1FieldElement secP224K1FieldElement3 = (SecP224K1FieldElement) eCPoint.f77939b;
        SecP224K1FieldElement secP224K1FieldElement4 = (SecP224K1FieldElement) eCPoint.e();
        SecP224K1FieldElement secP224K1FieldElement5 = (SecP224K1FieldElement) this.d[0];
        SecP224K1FieldElement secP224K1FieldElement6 = (SecP224K1FieldElement) eCPoint.f();
        int[] iArr5 = new int[14];
        int[] iArr6 = new int[7];
        int[] iArr7 = new int[7];
        int[] iArr8 = new int[7];
        int[] iArr9 = secP224K1FieldElement5.d;
        boolean zH = Nat224.h(iArr9);
        if (zH) {
            iArr = secP224K1FieldElement3.d;
            iArr2 = secP224K1FieldElement4.d;
        } else {
            SecP224K1Field.d(iArr9, iArr7);
            SecP224K1Field.a(iArr7, secP224K1FieldElement3.d, iArr6);
            SecP224K1Field.a(iArr7, iArr9, iArr7);
            SecP224K1Field.a(iArr7, secP224K1FieldElement4.d, iArr7);
            iArr = iArr6;
            iArr2 = iArr7;
        }
        int[] iArr10 = secP224K1FieldElement6.d;
        boolean zH2 = Nat224.h(iArr10);
        if (zH2) {
            iArr3 = secP224K1FieldElement.d;
            iArr4 = secP224K1FieldElement2.d;
        } else {
            SecP224K1Field.d(iArr10, iArr8);
            SecP224K1Field.a(iArr8, secP224K1FieldElement.d, iArr5);
            SecP224K1Field.a(iArr8, iArr10, iArr8);
            SecP224K1Field.a(iArr8, secP224K1FieldElement2.d, iArr8);
            iArr3 = iArr5;
            iArr4 = iArr8;
        }
        int[] iArr11 = new int[7];
        SecP224K1Field.f(iArr3, iArr, iArr11);
        SecP224K1Field.f(iArr4, iArr2, iArr6);
        boolean zI = Nat224.i(iArr11);
        ECCurve eCCurve = this.f77938a;
        if (zI) {
            return Nat224.i(iArr6) ? n() : eCCurve.i();
        }
        SecP224K1Field.d(iArr11, iArr7);
        int[] iArr12 = new int[7];
        SecP224K1Field.a(iArr7, iArr11, iArr12);
        SecP224K1Field.a(iArr7, iArr3, iArr7);
        if (Nat224.i(iArr12)) {
            iArr12[0] = 0;
            iArr12[1] = 0;
            iArr12[2] = 0;
            iArr12[3] = 0;
            iArr12[4] = 0;
            iArr12[5] = 0;
            iArr12[6] = 0;
        } else {
            Nat224.m(SecP224K1Field.f77989a, iArr12, iArr12);
        }
        Nat224.j(iArr4, iArr12, iArr5);
        SecP224K1Field.c(Nat224.b(iArr7, iArr7, iArr12), iArr12);
        SecP224K1FieldElement secP224K1FieldElement7 = new SecP224K1FieldElement(iArr8);
        int[] iArr13 = secP224K1FieldElement7.d;
        SecP224K1Field.d(iArr6, iArr13);
        SecP224K1Field.f(iArr13, iArr12, iArr13);
        SecP224K1FieldElement secP224K1FieldElement8 = new SecP224K1FieldElement(iArr12);
        int[] iArr14 = secP224K1FieldElement8.d;
        SecP224K1Field.f(iArr7, iArr13, iArr14);
        if ((Nat224.k(iArr14, iArr6, iArr5) != 0 || (iArr5[13] == -1 && Nat.l(14, iArr5, SecP224K1Field.f77990b))) && Nat.e(9, SecP224K1Field.f77991c, iArr5) != 0) {
            Nat.o(14, iArr5, 9);
        }
        SecP224K1Field.b(iArr5, iArr14);
        SecP224K1FieldElement secP224K1FieldElement9 = new SecP224K1FieldElement(iArr11);
        int[] iArr15 = secP224K1FieldElement9.d;
        if (!zH) {
            SecP224K1Field.a(iArr15, iArr9, iArr15);
        }
        if (!zH2) {
            SecP224K1Field.a(iArr15, iArr10, iArr15);
        }
        return new SecP224K1Point(eCCurve, secP224K1FieldElement7, secP224K1FieldElement8, new ECFieldElement[]{secP224K1FieldElement9}, this.f77941e);
    }

    @Override // org.spongycastle.math.ec.ECPoint
    public final ECPoint i() {
        if (g()) {
            return this;
        }
        return new SecP224K1Point(this.f77938a, this.f77939b, this.f77940c.m(), this.d, this.f77941e);
    }

    @Override // org.spongycastle.math.ec.ECPoint
    public final ECPoint n() {
        if (g()) {
            return this;
        }
        int[] iArr = ((SecP224K1FieldElement) this.f77940c).d;
        boolean zI = Nat224.i(iArr);
        ECCurve eCCurve = this.f77938a;
        if (zI) {
            return eCCurve.i();
        }
        SecP224K1FieldElement secP224K1FieldElement = (SecP224K1FieldElement) this.f77939b;
        SecP224K1FieldElement secP224K1FieldElement2 = (SecP224K1FieldElement) this.d[0];
        int[] iArr2 = new int[7];
        SecP224K1Field.d(iArr, iArr2);
        int[] iArr3 = new int[7];
        SecP224K1Field.d(iArr2, iArr3);
        int[] iArr4 = new int[7];
        SecP224K1Field.d(secP224K1FieldElement.d, iArr4);
        SecP224K1Field.c(Nat224.b(iArr4, iArr4, iArr4), iArr4);
        SecP224K1Field.a(iArr2, secP224K1FieldElement.d, iArr2);
        SecP224K1Field.c(Nat.t(7, iArr2), iArr2);
        int[] iArr5 = new int[7];
        SecP224K1Field.c(Nat.u(7, iArr3, iArr5), iArr5);
        SecP224K1FieldElement secP224K1FieldElement3 = new SecP224K1FieldElement(iArr3);
        int[] iArr6 = secP224K1FieldElement3.d;
        SecP224K1Field.d(iArr4, iArr6);
        SecP224K1Field.f(iArr6, iArr2, iArr6);
        SecP224K1Field.f(iArr6, iArr2, iArr6);
        SecP224K1FieldElement secP224K1FieldElement4 = new SecP224K1FieldElement(iArr2);
        int[] iArr7 = secP224K1FieldElement4.d;
        SecP224K1Field.f(iArr2, iArr6, iArr7);
        SecP224K1Field.a(iArr7, iArr4, iArr7);
        SecP224K1Field.f(iArr7, iArr5, iArr7);
        SecP224K1FieldElement secP224K1FieldElement5 = new SecP224K1FieldElement(iArr4);
        int[] iArr8 = secP224K1FieldElement5.d;
        if (Nat.s(7, iArr, 0, iArr8) != 0 || (iArr8[6] == -1 && Nat224.g(iArr8, SecP224K1Field.f77989a))) {
            Nat.b(7, 6803, iArr8);
        }
        if (!Nat224.h(secP224K1FieldElement2.d)) {
            SecP224K1Field.a(iArr8, secP224K1FieldElement2.d, iArr8);
        }
        return new SecP224K1Point(eCCurve, secP224K1FieldElement3, secP224K1FieldElement4, new ECFieldElement[]{secP224K1FieldElement5}, this.f77941e);
    }

    public SecP224K1Point(ECCurve eCCurve, ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2) {
        this(eCCurve, eCFieldElement, eCFieldElement2, false);
    }

    public SecP224K1Point(ECCurve eCCurve, ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, ECFieldElement[] eCFieldElementArr, boolean z) {
        super(eCCurve, eCFieldElement, eCFieldElement2, eCFieldElementArr);
        this.f77941e = z;
    }
}
