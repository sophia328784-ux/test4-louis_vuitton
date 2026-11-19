package org.spongycastle.math.ec.custom.sec;

import defpackage.md;
import org.spongycastle.math.ec.ECCurve;
import org.spongycastle.math.ec.ECFieldElement;
import org.spongycastle.math.ec.ECPoint;
import org.spongycastle.math.raw.Nat;
import org.spongycastle.math.raw.Nat192;

/* JADX INFO: loaded from: classes5.dex */
public class SecP192K1Point extends ECPoint.AbstractFp {
    public SecP192K1Point(ECCurve eCCurve, ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, boolean z) {
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
        SecP192K1FieldElement secP192K1FieldElement = (SecP192K1FieldElement) this.f77939b;
        SecP192K1FieldElement secP192K1FieldElement2 = (SecP192K1FieldElement) this.f77940c;
        SecP192K1FieldElement secP192K1FieldElement3 = (SecP192K1FieldElement) eCPoint.f77939b;
        SecP192K1FieldElement secP192K1FieldElement4 = (SecP192K1FieldElement) eCPoint.e();
        SecP192K1FieldElement secP192K1FieldElement5 = (SecP192K1FieldElement) this.d[0];
        SecP192K1FieldElement secP192K1FieldElement6 = (SecP192K1FieldElement) eCPoint.f();
        int[] iArr5 = new int[12];
        int[] iArr6 = new int[6];
        int[] iArr7 = new int[6];
        int[] iArr8 = new int[6];
        int[] iArr9 = secP192K1FieldElement5.d;
        boolean zK = Nat192.k(iArr9);
        if (zK) {
            iArr = secP192K1FieldElement3.d;
            iArr2 = secP192K1FieldElement4.d;
        } else {
            SecP192K1Field.d(iArr9, iArr7);
            SecP192K1Field.a(iArr7, secP192K1FieldElement3.d, iArr6);
            SecP192K1Field.a(iArr7, iArr9, iArr7);
            SecP192K1Field.a(iArr7, secP192K1FieldElement4.d, iArr7);
            iArr = iArr6;
            iArr2 = iArr7;
        }
        int[] iArr10 = secP192K1FieldElement6.d;
        boolean zK2 = Nat192.k(iArr10);
        if (zK2) {
            iArr3 = secP192K1FieldElement.d;
            iArr4 = secP192K1FieldElement2.d;
        } else {
            SecP192K1Field.d(iArr10, iArr8);
            SecP192K1Field.a(iArr8, secP192K1FieldElement.d, iArr5);
            SecP192K1Field.a(iArr8, iArr10, iArr8);
            SecP192K1Field.a(iArr8, secP192K1FieldElement2.d, iArr8);
            iArr3 = iArr5;
            iArr4 = iArr8;
        }
        int[] iArr11 = new int[6];
        SecP192K1Field.f(iArr3, iArr, iArr11);
        SecP192K1Field.f(iArr4, iArr2, iArr6);
        boolean zL = Nat192.l(iArr11);
        ECCurve eCCurve = this.f77938a;
        if (zL) {
            return Nat192.l(iArr6) ? n() : eCCurve.i();
        }
        SecP192K1Field.d(iArr11, iArr7);
        int[] iArr12 = new int[6];
        SecP192K1Field.a(iArr7, iArr11, iArr12);
        SecP192K1Field.a(iArr7, iArr3, iArr7);
        if (Nat192.l(iArr12)) {
            iArr12[0] = 0;
            iArr12[1] = 0;
            iArr12[2] = 0;
            iArr12[3] = 0;
            iArr12[4] = 0;
            iArr12[5] = 0;
        } else {
            Nat192.q(SecP192K1Field.f77977a, iArr12, iArr12);
        }
        Nat192.n(iArr4, iArr12, iArr5);
        SecP192K1Field.c(Nat192.b(iArr7, iArr7, iArr12), iArr12);
        SecP192K1FieldElement secP192K1FieldElement7 = new SecP192K1FieldElement(iArr8);
        int[] iArr13 = secP192K1FieldElement7.d;
        SecP192K1Field.d(iArr6, iArr13);
        SecP192K1Field.f(iArr13, iArr12, iArr13);
        SecP192K1FieldElement secP192K1FieldElement8 = new SecP192K1FieldElement(iArr12);
        int[] iArr14 = secP192K1FieldElement8.d;
        SecP192K1Field.f(iArr7, iArr13, iArr14);
        if ((Nat192.o(iArr14, iArr6, iArr5) != 0 || (iArr5[11] == -1 && Nat.l(12, iArr5, SecP192K1Field.f77978b))) && Nat.e(8, SecP192K1Field.f77979c, iArr5) != 0) {
            Nat.o(12, iArr5, 8);
        }
        SecP192K1Field.b(iArr5, iArr14);
        SecP192K1FieldElement secP192K1FieldElement9 = new SecP192K1FieldElement(iArr11);
        int[] iArr15 = secP192K1FieldElement9.d;
        if (!zK) {
            SecP192K1Field.a(iArr15, iArr9, iArr15);
        }
        if (!zK2) {
            SecP192K1Field.a(iArr15, iArr10, iArr15);
        }
        return new SecP192K1Point(eCCurve, secP192K1FieldElement7, secP192K1FieldElement8, new ECFieldElement[]{secP192K1FieldElement9}, this.f77941e);
    }

    @Override // org.spongycastle.math.ec.ECPoint
    public final ECPoint i() {
        if (g()) {
            return this;
        }
        return new SecP192K1Point(this.f77938a, this.f77939b, this.f77940c.m(), this.d, this.f77941e);
    }

    @Override // org.spongycastle.math.ec.ECPoint
    public final ECPoint n() {
        if (g()) {
            return this;
        }
        int[] iArr = ((SecP192K1FieldElement) this.f77940c).d;
        boolean zL = Nat192.l(iArr);
        ECCurve eCCurve = this.f77938a;
        if (zL) {
            return eCCurve.i();
        }
        SecP192K1FieldElement secP192K1FieldElement = (SecP192K1FieldElement) this.f77939b;
        SecP192K1FieldElement secP192K1FieldElement2 = (SecP192K1FieldElement) this.d[0];
        int[] iArr2 = new int[6];
        SecP192K1Field.d(iArr, iArr2);
        int[] iArr3 = new int[6];
        SecP192K1Field.d(iArr2, iArr3);
        int[] iArr4 = new int[6];
        SecP192K1Field.d(secP192K1FieldElement.d, iArr4);
        SecP192K1Field.c(Nat192.b(iArr4, iArr4, iArr4), iArr4);
        SecP192K1Field.a(iArr2, secP192K1FieldElement.d, iArr2);
        SecP192K1Field.c(Nat.t(6, iArr2), iArr2);
        int[] iArr5 = new int[6];
        SecP192K1Field.c(Nat.u(6, iArr3, iArr5), iArr5);
        SecP192K1FieldElement secP192K1FieldElement3 = new SecP192K1FieldElement(iArr3);
        int[] iArr6 = secP192K1FieldElement3.d;
        SecP192K1Field.d(iArr4, iArr6);
        SecP192K1Field.f(iArr6, iArr2, iArr6);
        SecP192K1Field.f(iArr6, iArr2, iArr6);
        SecP192K1FieldElement secP192K1FieldElement4 = new SecP192K1FieldElement(iArr2);
        int[] iArr7 = secP192K1FieldElement4.d;
        SecP192K1Field.f(iArr2, iArr6, iArr7);
        SecP192K1Field.a(iArr7, iArr4, iArr7);
        SecP192K1Field.f(iArr7, iArr5, iArr7);
        SecP192K1FieldElement secP192K1FieldElement5 = new SecP192K1FieldElement(iArr4);
        int[] iArr8 = secP192K1FieldElement5.d;
        if (Nat.s(6, iArr, 0, iArr8) != 0 || (iArr8[5] == -1 && Nat192.j(iArr8, SecP192K1Field.f77977a))) {
            Nat.b(6, 4553, iArr8);
        }
        if (!Nat192.k(secP192K1FieldElement2.d)) {
            SecP192K1Field.a(iArr8, secP192K1FieldElement2.d, iArr8);
        }
        return new SecP192K1Point(eCCurve, secP192K1FieldElement3, secP192K1FieldElement4, new ECFieldElement[]{secP192K1FieldElement5}, this.f77941e);
    }

    public SecP192K1Point(ECCurve eCCurve, ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2) {
        this(eCCurve, eCFieldElement, eCFieldElement2, false);
    }

    public SecP192K1Point(ECCurve eCCurve, ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, ECFieldElement[] eCFieldElementArr, boolean z) {
        super(eCCurve, eCFieldElement, eCFieldElement2, eCFieldElementArr);
        this.f77941e = z;
    }
}
