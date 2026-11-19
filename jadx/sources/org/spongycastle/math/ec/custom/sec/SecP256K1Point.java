package org.spongycastle.math.ec.custom.sec;

import defpackage.md;
import org.spongycastle.math.ec.ECCurve;
import org.spongycastle.math.ec.ECFieldElement;
import org.spongycastle.math.ec.ECPoint;
import org.spongycastle.math.raw.Nat;
import org.spongycastle.math.raw.Nat256;

/* JADX INFO: loaded from: classes5.dex */
public class SecP256K1Point extends ECPoint.AbstractFp {
    public SecP256K1Point(ECCurve eCCurve, ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, boolean z) {
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
        SecP256K1FieldElement secP256K1FieldElement = (SecP256K1FieldElement) this.f77939b;
        SecP256K1FieldElement secP256K1FieldElement2 = (SecP256K1FieldElement) this.f77940c;
        SecP256K1FieldElement secP256K1FieldElement3 = (SecP256K1FieldElement) eCPoint.f77939b;
        SecP256K1FieldElement secP256K1FieldElement4 = (SecP256K1FieldElement) eCPoint.e();
        SecP256K1FieldElement secP256K1FieldElement5 = (SecP256K1FieldElement) this.d[0];
        SecP256K1FieldElement secP256K1FieldElement6 = (SecP256K1FieldElement) eCPoint.f();
        int[] iArr5 = new int[16];
        int[] iArr6 = new int[8];
        int[] iArr7 = new int[8];
        int[] iArr8 = new int[8];
        int[] iArr9 = secP256K1FieldElement5.d;
        boolean zL = Nat256.l(iArr9);
        if (zL) {
            iArr = secP256K1FieldElement3.d;
            iArr2 = secP256K1FieldElement4.d;
        } else {
            SecP256K1Field.d(iArr9, iArr7);
            SecP256K1Field.a(iArr7, secP256K1FieldElement3.d, iArr6);
            SecP256K1Field.a(iArr7, iArr9, iArr7);
            SecP256K1Field.a(iArr7, secP256K1FieldElement4.d, iArr7);
            iArr = iArr6;
            iArr2 = iArr7;
        }
        int[] iArr10 = secP256K1FieldElement6.d;
        boolean zL2 = Nat256.l(iArr10);
        if (zL2) {
            iArr3 = secP256K1FieldElement.d;
            iArr4 = secP256K1FieldElement2.d;
        } else {
            SecP256K1Field.d(iArr10, iArr8);
            SecP256K1Field.a(iArr8, secP256K1FieldElement.d, iArr5);
            SecP256K1Field.a(iArr8, iArr10, iArr8);
            SecP256K1Field.a(iArr8, secP256K1FieldElement2.d, iArr8);
            iArr3 = iArr5;
            iArr4 = iArr8;
        }
        int[] iArr11 = new int[8];
        SecP256K1Field.f(iArr3, iArr, iArr11);
        SecP256K1Field.f(iArr4, iArr2, iArr6);
        boolean zN = Nat256.n(iArr11);
        ECCurve eCCurve = this.f77938a;
        if (zN) {
            return Nat256.n(iArr6) ? n() : eCCurve.i();
        }
        SecP256K1Field.d(iArr11, iArr7);
        int[] iArr12 = new int[8];
        SecP256K1Field.a(iArr7, iArr11, iArr12);
        SecP256K1Field.a(iArr7, iArr3, iArr7);
        if (Nat256.n(iArr12)) {
            Nat256.x(iArr12);
        } else {
            Nat256.s(SecP256K1Field.f78002a, iArr12, iArr12);
        }
        Nat256.p(iArr4, iArr12, iArr5);
        SecP256K1Field.c(Nat256.b(iArr7, iArr7, iArr12), iArr12);
        SecP256K1FieldElement secP256K1FieldElement7 = new SecP256K1FieldElement(iArr8);
        int[] iArr13 = secP256K1FieldElement7.d;
        SecP256K1Field.d(iArr6, iArr13);
        SecP256K1Field.f(iArr13, iArr12, iArr13);
        SecP256K1FieldElement secP256K1FieldElement8 = new SecP256K1FieldElement(iArr12);
        int[] iArr14 = secP256K1FieldElement8.d;
        SecP256K1Field.f(iArr7, iArr13, iArr14);
        if ((Nat256.q(iArr14, iArr6, iArr5) != 0 || (iArr5[15] == -1 && Nat.l(16, iArr5, SecP256K1Field.f78003b))) && Nat.e(10, SecP256K1Field.f78004c, iArr5) != 0) {
            Nat.o(16, iArr5, 10);
        }
        SecP256K1Field.b(iArr5, iArr14);
        SecP256K1FieldElement secP256K1FieldElement9 = new SecP256K1FieldElement(iArr11);
        int[] iArr15 = secP256K1FieldElement9.d;
        if (!zL) {
            SecP256K1Field.a(iArr15, iArr9, iArr15);
        }
        if (!zL2) {
            SecP256K1Field.a(iArr15, iArr10, iArr15);
        }
        return new SecP256K1Point(eCCurve, secP256K1FieldElement7, secP256K1FieldElement8, new ECFieldElement[]{secP256K1FieldElement9}, this.f77941e);
    }

    @Override // org.spongycastle.math.ec.ECPoint
    public final ECPoint i() {
        if (g()) {
            return this;
        }
        return new SecP256K1Point(this.f77938a, this.f77939b, this.f77940c.m(), this.d, this.f77941e);
    }

    @Override // org.spongycastle.math.ec.ECPoint
    public final ECPoint n() {
        if (g()) {
            return this;
        }
        int[] iArr = ((SecP256K1FieldElement) this.f77940c).d;
        boolean zN = Nat256.n(iArr);
        ECCurve eCCurve = this.f77938a;
        if (zN) {
            return eCCurve.i();
        }
        SecP256K1FieldElement secP256K1FieldElement = (SecP256K1FieldElement) this.f77939b;
        SecP256K1FieldElement secP256K1FieldElement2 = (SecP256K1FieldElement) this.d[0];
        int[] iArr2 = new int[8];
        SecP256K1Field.d(iArr, iArr2);
        int[] iArr3 = new int[8];
        SecP256K1Field.d(iArr2, iArr3);
        int[] iArr4 = new int[8];
        SecP256K1Field.d(secP256K1FieldElement.d, iArr4);
        SecP256K1Field.c(Nat256.b(iArr4, iArr4, iArr4), iArr4);
        SecP256K1Field.a(iArr2, secP256K1FieldElement.d, iArr2);
        SecP256K1Field.c(Nat.t(8, iArr2), iArr2);
        int[] iArr5 = new int[8];
        SecP256K1Field.c(Nat.u(8, iArr3, iArr5), iArr5);
        SecP256K1FieldElement secP256K1FieldElement3 = new SecP256K1FieldElement(iArr3);
        int[] iArr6 = secP256K1FieldElement3.d;
        SecP256K1Field.d(iArr4, iArr6);
        SecP256K1Field.f(iArr6, iArr2, iArr6);
        SecP256K1Field.f(iArr6, iArr2, iArr6);
        SecP256K1FieldElement secP256K1FieldElement4 = new SecP256K1FieldElement(iArr2);
        int[] iArr7 = secP256K1FieldElement4.d;
        SecP256K1Field.f(iArr2, iArr6, iArr7);
        SecP256K1Field.a(iArr7, iArr4, iArr7);
        SecP256K1Field.f(iArr7, iArr5, iArr7);
        SecP256K1FieldElement secP256K1FieldElement5 = new SecP256K1FieldElement(iArr4);
        int[] iArr8 = secP256K1FieldElement5.d;
        if (Nat.s(8, iArr, 0, iArr8) != 0 || (iArr8[7] == -1 && Nat256.k(iArr8, SecP256K1Field.f78002a))) {
            Nat.b(8, 977, iArr8);
        }
        if (!Nat256.l(secP256K1FieldElement2.d)) {
            SecP256K1Field.a(iArr8, secP256K1FieldElement2.d, iArr8);
        }
        return new SecP256K1Point(eCCurve, secP256K1FieldElement3, secP256K1FieldElement4, new ECFieldElement[]{secP256K1FieldElement5}, this.f77941e);
    }

    public SecP256K1Point(ECCurve eCCurve, ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2) {
        this(eCCurve, eCFieldElement, eCFieldElement2, false);
    }

    public SecP256K1Point(ECCurve eCCurve, ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, ECFieldElement[] eCFieldElementArr, boolean z) {
        super(eCCurve, eCFieldElement, eCFieldElement2, eCFieldElementArr);
        this.f77941e = z;
    }
}
