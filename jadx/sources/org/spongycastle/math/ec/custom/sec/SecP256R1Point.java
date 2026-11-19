package org.spongycastle.math.ec.custom.sec;

import defpackage.md;
import org.spongycastle.math.ec.ECCurve;
import org.spongycastle.math.ec.ECFieldElement;
import org.spongycastle.math.ec.ECPoint;
import org.spongycastle.math.raw.Nat;
import org.spongycastle.math.raw.Nat256;

/* JADX INFO: loaded from: classes5.dex */
public class SecP256R1Point extends ECPoint.AbstractFp {
    public SecP256R1Point(ECCurve eCCurve, ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, boolean z) {
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
        SecP256R1FieldElement secP256R1FieldElement = (SecP256R1FieldElement) this.f77939b;
        SecP256R1FieldElement secP256R1FieldElement2 = (SecP256R1FieldElement) this.f77940c;
        SecP256R1FieldElement secP256R1FieldElement3 = (SecP256R1FieldElement) eCPoint.f77939b;
        SecP256R1FieldElement secP256R1FieldElement4 = (SecP256R1FieldElement) eCPoint.e();
        SecP256R1FieldElement secP256R1FieldElement5 = (SecP256R1FieldElement) this.d[0];
        SecP256R1FieldElement secP256R1FieldElement6 = (SecP256R1FieldElement) eCPoint.f();
        int[] iArr5 = new int[16];
        int[] iArr6 = new int[8];
        int[] iArr7 = new int[8];
        int[] iArr8 = new int[8];
        int[] iArr9 = secP256R1FieldElement5.d;
        boolean zL = Nat256.l(iArr9);
        if (zL) {
            iArr = secP256R1FieldElement3.d;
            iArr2 = secP256R1FieldElement4.d;
        } else {
            SecP256R1Field.e(iArr9, iArr7);
            SecP256R1Field.b(iArr7, secP256R1FieldElement3.d, iArr6);
            SecP256R1Field.b(iArr7, iArr9, iArr7);
            SecP256R1Field.b(iArr7, secP256R1FieldElement4.d, iArr7);
            iArr = iArr6;
            iArr2 = iArr7;
        }
        int[] iArr10 = secP256R1FieldElement6.d;
        boolean zL2 = Nat256.l(iArr10);
        if (zL2) {
            iArr3 = secP256R1FieldElement.d;
            iArr4 = secP256R1FieldElement2.d;
        } else {
            SecP256R1Field.e(iArr10, iArr8);
            SecP256R1Field.b(iArr8, secP256R1FieldElement.d, iArr5);
            SecP256R1Field.b(iArr8, iArr10, iArr8);
            SecP256R1Field.b(iArr8, secP256R1FieldElement2.d, iArr8);
            iArr3 = iArr5;
            iArr4 = iArr8;
        }
        int[] iArr11 = new int[8];
        SecP256R1Field.g(iArr3, iArr, iArr11);
        SecP256R1Field.g(iArr4, iArr2, iArr6);
        boolean zN = Nat256.n(iArr11);
        ECCurve eCCurve = this.f77938a;
        if (zN) {
            return Nat256.n(iArr6) ? n() : eCCurve.i();
        }
        SecP256R1Field.e(iArr11, iArr7);
        int[] iArr12 = new int[8];
        SecP256R1Field.b(iArr7, iArr11, iArr12);
        SecP256R1Field.b(iArr7, iArr3, iArr7);
        if (Nat256.n(iArr12)) {
            Nat256.x(iArr12);
        } else {
            Nat256.s(SecP256R1Field.f78008a, iArr12, iArr12);
        }
        Nat256.p(iArr4, iArr12, iArr5);
        SecP256R1Field.d(Nat256.b(iArr7, iArr7, iArr12), iArr12);
        SecP256R1FieldElement secP256R1FieldElement7 = new SecP256R1FieldElement(iArr8);
        int[] iArr13 = secP256R1FieldElement7.d;
        SecP256R1Field.e(iArr6, iArr13);
        SecP256R1Field.g(iArr13, iArr12, iArr13);
        SecP256R1FieldElement secP256R1FieldElement8 = new SecP256R1FieldElement(iArr12);
        int[] iArr14 = secP256R1FieldElement8.d;
        SecP256R1Field.g(iArr7, iArr13, iArr14);
        int iQ = Nat256.q(iArr14, iArr6, iArr5);
        int[] iArr15 = SecP256R1Field.f78009b;
        if (iQ != 0 || ((iArr5[15] >>> 1) >= Integer.MAX_VALUE && Nat.l(16, iArr5, iArr15))) {
            Nat.y(16, iArr15, iArr5);
        }
        SecP256R1Field.c(iArr5, iArr14);
        SecP256R1FieldElement secP256R1FieldElement9 = new SecP256R1FieldElement(iArr11);
        int[] iArr16 = secP256R1FieldElement9.d;
        if (!zL) {
            SecP256R1Field.b(iArr16, iArr9, iArr16);
        }
        if (!zL2) {
            SecP256R1Field.b(iArr16, iArr10, iArr16);
        }
        return new SecP256R1Point(eCCurve, secP256R1FieldElement7, secP256R1FieldElement8, new ECFieldElement[]{secP256R1FieldElement9}, this.f77941e);
    }

    @Override // org.spongycastle.math.ec.ECPoint
    public final ECPoint i() {
        if (g()) {
            return this;
        }
        return new SecP256R1Point(this.f77938a, this.f77939b, this.f77940c.m(), this.d, this.f77941e);
    }

    @Override // org.spongycastle.math.ec.ECPoint
    public final ECPoint n() {
        int[] iArr;
        if (g()) {
            return this;
        }
        int[] iArr2 = ((SecP256R1FieldElement) this.f77940c).d;
        boolean zN = Nat256.n(iArr2);
        ECCurve eCCurve = this.f77938a;
        if (zN) {
            return eCCurve.i();
        }
        SecP256R1FieldElement secP256R1FieldElement = (SecP256R1FieldElement) this.f77939b;
        SecP256R1FieldElement secP256R1FieldElement2 = (SecP256R1FieldElement) this.d[0];
        int[] iArr3 = new int[8];
        int[] iArr4 = new int[8];
        int[] iArr5 = new int[8];
        SecP256R1Field.e(iArr2, iArr5);
        int[] iArr6 = new int[8];
        SecP256R1Field.e(iArr5, iArr6);
        int[] iArr7 = secP256R1FieldElement2.d;
        boolean zL = Nat256.l(iArr7);
        if (zL) {
            iArr = iArr7;
        } else {
            SecP256R1Field.e(iArr7, iArr4);
            iArr = iArr4;
        }
        int[] iArr8 = secP256R1FieldElement.d;
        SecP256R1Field.g(iArr8, iArr, iArr3);
        int iA = Nat256.a(iArr8, iArr, iArr4);
        int[] iArr9 = SecP256R1Field.f78008a;
        if (iA != 0 || (iArr4[7] == -1 && Nat256.k(iArr4, iArr9))) {
            SecP256R1Field.a(iArr4);
        }
        SecP256R1Field.b(iArr4, iArr3, iArr4);
        SecP256R1Field.d(Nat256.b(iArr4, iArr4, iArr4), iArr4);
        SecP256R1Field.b(iArr5, iArr8, iArr5);
        SecP256R1Field.d(Nat.t(8, iArr5), iArr5);
        SecP256R1Field.d(Nat.u(8, iArr6, iArr3), iArr3);
        SecP256R1FieldElement secP256R1FieldElement3 = new SecP256R1FieldElement(iArr6);
        int[] iArr10 = secP256R1FieldElement3.d;
        SecP256R1Field.e(iArr4, iArr10);
        SecP256R1Field.g(iArr10, iArr5, iArr10);
        SecP256R1Field.g(iArr10, iArr5, iArr10);
        SecP256R1FieldElement secP256R1FieldElement4 = new SecP256R1FieldElement(iArr5);
        int[] iArr11 = secP256R1FieldElement4.d;
        SecP256R1Field.g(iArr5, iArr10, iArr11);
        SecP256R1Field.b(iArr11, iArr4, iArr11);
        SecP256R1Field.g(iArr11, iArr3, iArr11);
        SecP256R1FieldElement secP256R1FieldElement5 = new SecP256R1FieldElement(iArr4);
        int[] iArr12 = secP256R1FieldElement5.d;
        if (Nat.s(8, iArr2, 0, iArr12) != 0 || (iArr12[7] == -1 && Nat256.k(iArr12, iArr9))) {
            SecP256R1Field.a(iArr12);
        }
        if (!zL) {
            SecP256R1Field.b(iArr12, iArr7, iArr12);
        }
        return new SecP256R1Point(eCCurve, secP256R1FieldElement3, secP256R1FieldElement4, new ECFieldElement[]{secP256R1FieldElement5}, this.f77941e);
    }

    public SecP256R1Point(ECCurve eCCurve, ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2) {
        this(eCCurve, eCFieldElement, eCFieldElement2, false);
    }

    public SecP256R1Point(ECCurve eCCurve, ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, ECFieldElement[] eCFieldElementArr, boolean z) {
        super(eCCurve, eCFieldElement, eCFieldElement2, eCFieldElementArr);
        this.f77941e = z;
    }
}
