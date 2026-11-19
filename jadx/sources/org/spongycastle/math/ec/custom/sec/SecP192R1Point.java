package org.spongycastle.math.ec.custom.sec;

import defpackage.md;
import org.spongycastle.math.ec.ECCurve;
import org.spongycastle.math.ec.ECFieldElement;
import org.spongycastle.math.ec.ECPoint;
import org.spongycastle.math.raw.Nat;
import org.spongycastle.math.raw.Nat192;

/* JADX INFO: loaded from: classes5.dex */
public class SecP192R1Point extends ECPoint.AbstractFp {
    public SecP192R1Point(ECCurve eCCurve, ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, boolean z) {
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
        SecP192R1FieldElement secP192R1FieldElement = (SecP192R1FieldElement) this.f77939b;
        SecP192R1FieldElement secP192R1FieldElement2 = (SecP192R1FieldElement) this.f77940c;
        SecP192R1FieldElement secP192R1FieldElement3 = (SecP192R1FieldElement) eCPoint.f77939b;
        SecP192R1FieldElement secP192R1FieldElement4 = (SecP192R1FieldElement) eCPoint.e();
        SecP192R1FieldElement secP192R1FieldElement5 = (SecP192R1FieldElement) this.d[0];
        SecP192R1FieldElement secP192R1FieldElement6 = (SecP192R1FieldElement) eCPoint.f();
        int[] iArr5 = new int[12];
        int[] iArr6 = new int[6];
        int[] iArr7 = new int[6];
        int[] iArr8 = new int[6];
        int[] iArr9 = secP192R1FieldElement5.d;
        boolean zK = Nat192.k(iArr9);
        if (zK) {
            iArr = secP192R1FieldElement3.d;
            iArr2 = secP192R1FieldElement4.d;
        } else {
            SecP192R1Field.e(iArr9, iArr7);
            SecP192R1Field.b(iArr7, secP192R1FieldElement3.d, iArr6);
            SecP192R1Field.b(iArr7, iArr9, iArr7);
            SecP192R1Field.b(iArr7, secP192R1FieldElement4.d, iArr7);
            iArr = iArr6;
            iArr2 = iArr7;
        }
        int[] iArr10 = secP192R1FieldElement6.d;
        boolean zK2 = Nat192.k(iArr10);
        if (zK2) {
            iArr3 = secP192R1FieldElement.d;
            iArr4 = secP192R1FieldElement2.d;
        } else {
            SecP192R1Field.e(iArr10, iArr8);
            SecP192R1Field.b(iArr8, secP192R1FieldElement.d, iArr5);
            SecP192R1Field.b(iArr8, iArr10, iArr8);
            SecP192R1Field.b(iArr8, secP192R1FieldElement2.d, iArr8);
            iArr3 = iArr5;
            iArr4 = iArr8;
        }
        int[] iArr11 = new int[6];
        SecP192R1Field.g(iArr3, iArr, iArr11);
        SecP192R1Field.g(iArr4, iArr2, iArr6);
        boolean zL = Nat192.l(iArr11);
        ECCurve eCCurve = this.f77938a;
        if (zL) {
            return Nat192.l(iArr6) ? n() : eCCurve.i();
        }
        SecP192R1Field.e(iArr11, iArr7);
        int[] iArr12 = new int[6];
        SecP192R1Field.b(iArr7, iArr11, iArr12);
        SecP192R1Field.b(iArr7, iArr3, iArr7);
        if (Nat192.l(iArr12)) {
            iArr12[0] = 0;
            iArr12[1] = 0;
            iArr12[2] = 0;
            iArr12[3] = 0;
            iArr12[4] = 0;
            iArr12[5] = 0;
        } else {
            Nat192.q(SecP192R1Field.f77983a, iArr12, iArr12);
        }
        Nat192.n(iArr4, iArr12, iArr5);
        SecP192R1Field.d(Nat192.b(iArr7, iArr7, iArr12), iArr12);
        SecP192R1FieldElement secP192R1FieldElement7 = new SecP192R1FieldElement(iArr8);
        int[] iArr13 = secP192R1FieldElement7.d;
        SecP192R1Field.e(iArr6, iArr13);
        SecP192R1Field.g(iArr13, iArr12, iArr13);
        SecP192R1FieldElement secP192R1FieldElement8 = new SecP192R1FieldElement(iArr12);
        int[] iArr14 = secP192R1FieldElement8.d;
        SecP192R1Field.g(iArr7, iArr13, iArr14);
        if ((Nat192.o(iArr14, iArr6, iArr5) != 0 || (iArr5[11] == -1 && Nat.l(12, iArr5, SecP192R1Field.f77984b))) && Nat.e(9, SecP192R1Field.f77985c, iArr5) != 0) {
            Nat.o(12, iArr5, 9);
        }
        SecP192R1Field.c(iArr5, iArr14);
        SecP192R1FieldElement secP192R1FieldElement9 = new SecP192R1FieldElement(iArr11);
        int[] iArr15 = secP192R1FieldElement9.d;
        if (!zK) {
            SecP192R1Field.b(iArr15, iArr9, iArr15);
        }
        if (!zK2) {
            SecP192R1Field.b(iArr15, iArr10, iArr15);
        }
        return new SecP192R1Point(eCCurve, secP192R1FieldElement7, secP192R1FieldElement8, new ECFieldElement[]{secP192R1FieldElement9}, this.f77941e);
    }

    @Override // org.spongycastle.math.ec.ECPoint
    public final ECPoint i() {
        if (g()) {
            return this;
        }
        return new SecP192R1Point(this.f77938a, this.f77939b, this.f77940c.m(), this.d, this.f77941e);
    }

    @Override // org.spongycastle.math.ec.ECPoint
    public final ECPoint n() {
        int[] iArr;
        if (g()) {
            return this;
        }
        int[] iArr2 = ((SecP192R1FieldElement) this.f77940c).d;
        boolean zL = Nat192.l(iArr2);
        ECCurve eCCurve = this.f77938a;
        if (zL) {
            return eCCurve.i();
        }
        SecP192R1FieldElement secP192R1FieldElement = (SecP192R1FieldElement) this.f77939b;
        SecP192R1FieldElement secP192R1FieldElement2 = (SecP192R1FieldElement) this.d[0];
        int[] iArr3 = new int[6];
        int[] iArr4 = new int[6];
        int[] iArr5 = new int[6];
        SecP192R1Field.e(iArr2, iArr5);
        int[] iArr6 = new int[6];
        SecP192R1Field.e(iArr5, iArr6);
        int[] iArr7 = secP192R1FieldElement2.d;
        boolean zK = Nat192.k(iArr7);
        if (zK) {
            iArr = iArr7;
        } else {
            SecP192R1Field.e(iArr7, iArr4);
            iArr = iArr4;
        }
        int[] iArr8 = secP192R1FieldElement.d;
        SecP192R1Field.g(iArr8, iArr, iArr3);
        int iA = Nat192.a(iArr8, iArr, iArr4);
        int[] iArr9 = SecP192R1Field.f77983a;
        if (iA != 0 || (iArr4[5] == -1 && Nat192.j(iArr4, iArr9))) {
            SecP192R1Field.a(iArr4);
        }
        SecP192R1Field.b(iArr4, iArr3, iArr4);
        SecP192R1Field.d(Nat192.b(iArr4, iArr4, iArr4), iArr4);
        SecP192R1Field.b(iArr5, iArr8, iArr5);
        SecP192R1Field.d(Nat.t(6, iArr5), iArr5);
        SecP192R1Field.d(Nat.u(6, iArr6, iArr3), iArr3);
        SecP192R1FieldElement secP192R1FieldElement3 = new SecP192R1FieldElement(iArr6);
        int[] iArr10 = secP192R1FieldElement3.d;
        SecP192R1Field.e(iArr4, iArr10);
        SecP192R1Field.g(iArr10, iArr5, iArr10);
        SecP192R1Field.g(iArr10, iArr5, iArr10);
        SecP192R1FieldElement secP192R1FieldElement4 = new SecP192R1FieldElement(iArr5);
        int[] iArr11 = secP192R1FieldElement4.d;
        SecP192R1Field.g(iArr5, iArr10, iArr11);
        SecP192R1Field.b(iArr11, iArr4, iArr11);
        SecP192R1Field.g(iArr11, iArr3, iArr11);
        SecP192R1FieldElement secP192R1FieldElement5 = new SecP192R1FieldElement(iArr4);
        int[] iArr12 = secP192R1FieldElement5.d;
        if (Nat.s(6, iArr2, 0, iArr12) != 0 || (iArr12[5] == -1 && Nat192.j(iArr12, iArr9))) {
            SecP192R1Field.a(iArr12);
        }
        if (!zK) {
            SecP192R1Field.b(iArr12, iArr7, iArr12);
        }
        return new SecP192R1Point(eCCurve, secP192R1FieldElement3, secP192R1FieldElement4, new ECFieldElement[]{secP192R1FieldElement5}, this.f77941e);
    }

    public SecP192R1Point(ECCurve eCCurve, ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2) {
        this(eCCurve, eCFieldElement, eCFieldElement2, false);
    }

    public SecP192R1Point(ECCurve eCCurve, ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, ECFieldElement[] eCFieldElementArr, boolean z) {
        super(eCCurve, eCFieldElement, eCFieldElement2, eCFieldElementArr);
        this.f77941e = z;
    }
}
