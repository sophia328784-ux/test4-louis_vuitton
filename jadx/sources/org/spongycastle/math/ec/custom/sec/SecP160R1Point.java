package org.spongycastle.math.ec.custom.sec;

import defpackage.md;
import org.spongycastle.math.ec.ECCurve;
import org.spongycastle.math.ec.ECFieldElement;
import org.spongycastle.math.ec.ECPoint;
import org.spongycastle.math.raw.Nat;
import org.spongycastle.math.raw.Nat160;

/* JADX INFO: loaded from: classes5.dex */
public class SecP160R1Point extends ECPoint.AbstractFp {
    public SecP160R1Point(ECCurve eCCurve, ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, boolean z) {
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
        SecP160R1FieldElement secP160R1FieldElement = (SecP160R1FieldElement) this.f77939b;
        SecP160R1FieldElement secP160R1FieldElement2 = (SecP160R1FieldElement) this.f77940c;
        SecP160R1FieldElement secP160R1FieldElement3 = (SecP160R1FieldElement) eCPoint.f77939b;
        SecP160R1FieldElement secP160R1FieldElement4 = (SecP160R1FieldElement) eCPoint.e();
        SecP160R1FieldElement secP160R1FieldElement5 = (SecP160R1FieldElement) this.d[0];
        SecP160R1FieldElement secP160R1FieldElement6 = (SecP160R1FieldElement) eCPoint.f();
        int[] iArr5 = new int[10];
        int[] iArr6 = new int[5];
        int[] iArr7 = new int[5];
        int[] iArr8 = new int[5];
        int[] iArr9 = secP160R1FieldElement5.d;
        boolean zG = Nat160.g(iArr9);
        if (zG) {
            iArr = secP160R1FieldElement3.d;
            iArr2 = secP160R1FieldElement4.d;
        } else {
            SecP160R1Field.d(iArr9, iArr7);
            SecP160R1Field.a(iArr7, secP160R1FieldElement3.d, iArr6);
            SecP160R1Field.a(iArr7, iArr9, iArr7);
            SecP160R1Field.a(iArr7, secP160R1FieldElement4.d, iArr7);
            iArr = iArr6;
            iArr2 = iArr7;
        }
        int[] iArr10 = secP160R1FieldElement6.d;
        boolean zG2 = Nat160.g(iArr10);
        if (zG2) {
            iArr3 = secP160R1FieldElement.d;
            iArr4 = secP160R1FieldElement2.d;
        } else {
            SecP160R1Field.d(iArr10, iArr8);
            SecP160R1Field.a(iArr8, secP160R1FieldElement.d, iArr5);
            SecP160R1Field.a(iArr8, iArr10, iArr8);
            SecP160R1Field.a(iArr8, secP160R1FieldElement2.d, iArr8);
            iArr3 = iArr5;
            iArr4 = iArr8;
        }
        int[] iArr11 = new int[5];
        SecP160R1Field.f(iArr3, iArr, iArr11);
        SecP160R1Field.f(iArr4, iArr2, iArr6);
        boolean zH = Nat160.h(iArr11);
        ECCurve eCCurve = this.f77938a;
        if (zH) {
            return Nat160.h(iArr6) ? n() : eCCurve.i();
        }
        SecP160R1Field.d(iArr11, iArr7);
        int[] iArr12 = new int[5];
        SecP160R1Field.a(iArr7, iArr11, iArr12);
        SecP160R1Field.a(iArr7, iArr3, iArr7);
        if (Nat160.h(iArr12)) {
            iArr12[0] = 0;
            iArr12[1] = 0;
            iArr12[2] = 0;
            iArr12[3] = 0;
            iArr12[4] = 0;
        } else {
            Nat160.l(SecP160R1Field.f77965a, iArr12, iArr12);
        }
        Nat160.i(iArr4, iArr12, iArr5);
        SecP160R1Field.c(Nat160.b(iArr7, iArr7, iArr12), iArr12);
        SecP160R1FieldElement secP160R1FieldElement7 = new SecP160R1FieldElement(iArr8);
        int[] iArr13 = secP160R1FieldElement7.d;
        SecP160R1Field.d(iArr6, iArr13);
        SecP160R1Field.f(iArr13, iArr12, iArr13);
        SecP160R1FieldElement secP160R1FieldElement8 = new SecP160R1FieldElement(iArr12);
        int[] iArr14 = secP160R1FieldElement8.d;
        SecP160R1Field.f(iArr7, iArr13, iArr14);
        if ((Nat160.j(iArr14, iArr6, iArr5) != 0 || (iArr5[9] == -1 && Nat.l(10, iArr5, SecP160R1Field.f77966b))) && Nat.e(7, SecP160R1Field.f77967c, iArr5) != 0) {
            Nat.o(10, iArr5, 7);
        }
        SecP160R1Field.b(iArr5, iArr14);
        SecP160R1FieldElement secP160R1FieldElement9 = new SecP160R1FieldElement(iArr11);
        int[] iArr15 = secP160R1FieldElement9.d;
        if (!zG) {
            SecP160R1Field.a(iArr15, iArr9, iArr15);
        }
        if (!zG2) {
            SecP160R1Field.a(iArr15, iArr10, iArr15);
        }
        return new SecP160R1Point(eCCurve, secP160R1FieldElement7, secP160R1FieldElement8, new ECFieldElement[]{secP160R1FieldElement9}, this.f77941e);
    }

    @Override // org.spongycastle.math.ec.ECPoint
    public final ECPoint i() {
        if (g()) {
            return this;
        }
        return new SecP160R1Point(this.f77938a, this.f77939b, this.f77940c.m(), this.d, this.f77941e);
    }

    @Override // org.spongycastle.math.ec.ECPoint
    public final ECPoint n() {
        int[] iArr;
        if (g()) {
            return this;
        }
        int[] iArr2 = ((SecP160R1FieldElement) this.f77940c).d;
        boolean zH = Nat160.h(iArr2);
        ECCurve eCCurve = this.f77938a;
        if (zH) {
            return eCCurve.i();
        }
        SecP160R1FieldElement secP160R1FieldElement = (SecP160R1FieldElement) this.f77939b;
        SecP160R1FieldElement secP160R1FieldElement2 = (SecP160R1FieldElement) this.d[0];
        int[] iArr3 = new int[5];
        int[] iArr4 = new int[5];
        int[] iArr5 = new int[5];
        SecP160R1Field.d(iArr2, iArr5);
        int[] iArr6 = new int[5];
        SecP160R1Field.d(iArr5, iArr6);
        int[] iArr7 = secP160R1FieldElement2.d;
        boolean zG = Nat160.g(iArr7);
        if (zG) {
            iArr = iArr7;
        } else {
            SecP160R1Field.d(iArr7, iArr4);
            iArr = iArr4;
        }
        int[] iArr8 = secP160R1FieldElement.d;
        SecP160R1Field.f(iArr8, iArr, iArr3);
        int iA = Nat160.a(iArr8, iArr, iArr4);
        int[] iArr9 = SecP160R1Field.f77965a;
        if (iA != 0 || (iArr4[4] == -1 && Nat160.f(iArr4, iArr9))) {
            Nat.g(5, -2147483647, iArr4);
        }
        SecP160R1Field.a(iArr4, iArr3, iArr4);
        SecP160R1Field.c(Nat160.b(iArr4, iArr4, iArr4), iArr4);
        SecP160R1Field.a(iArr5, iArr8, iArr5);
        SecP160R1Field.c(Nat.t(5, iArr5), iArr5);
        SecP160R1Field.c(Nat.u(5, iArr6, iArr3), iArr3);
        SecP160R1FieldElement secP160R1FieldElement3 = new SecP160R1FieldElement(iArr6);
        int[] iArr10 = secP160R1FieldElement3.d;
        SecP160R1Field.d(iArr4, iArr10);
        SecP160R1Field.f(iArr10, iArr5, iArr10);
        SecP160R1Field.f(iArr10, iArr5, iArr10);
        SecP160R1FieldElement secP160R1FieldElement4 = new SecP160R1FieldElement(iArr5);
        int[] iArr11 = secP160R1FieldElement4.d;
        SecP160R1Field.f(iArr5, iArr10, iArr11);
        SecP160R1Field.a(iArr11, iArr4, iArr11);
        SecP160R1Field.f(iArr11, iArr3, iArr11);
        SecP160R1FieldElement secP160R1FieldElement5 = new SecP160R1FieldElement(iArr4);
        int[] iArr12 = secP160R1FieldElement5.d;
        if (Nat.s(5, iArr2, 0, iArr12) != 0 || (iArr12[4] == -1 && Nat160.f(iArr12, iArr9))) {
            Nat.g(5, -2147483647, iArr12);
        }
        if (!zG) {
            SecP160R1Field.a(iArr12, iArr7, iArr12);
        }
        return new SecP160R1Point(eCCurve, secP160R1FieldElement3, secP160R1FieldElement4, new ECFieldElement[]{secP160R1FieldElement5}, this.f77941e);
    }

    public SecP160R1Point(ECCurve eCCurve, ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2) {
        this(eCCurve, eCFieldElement, eCFieldElement2, false);
    }

    public SecP160R1Point(ECCurve eCCurve, ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, ECFieldElement[] eCFieldElementArr, boolean z) {
        super(eCCurve, eCFieldElement, eCFieldElement2, eCFieldElementArr);
        this.f77941e = z;
    }
}
