package org.spongycastle.math.ec.custom.sec;

import defpackage.md;
import org.spongycastle.math.ec.ECCurve;
import org.spongycastle.math.ec.ECFieldElement;
import org.spongycastle.math.ec.ECPoint;
import org.spongycastle.math.raw.Nat;

/* JADX INFO: loaded from: classes5.dex */
public class SecP521R1Point extends ECPoint.AbstractFp {
    public SecP521R1Point(ECCurve eCCurve, ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, boolean z) {
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
        SecP521R1FieldElement secP521R1FieldElement = (SecP521R1FieldElement) this.f77939b;
        SecP521R1FieldElement secP521R1FieldElement2 = (SecP521R1FieldElement) this.f77940c;
        SecP521R1FieldElement secP521R1FieldElement3 = (SecP521R1FieldElement) eCPoint.f77939b;
        SecP521R1FieldElement secP521R1FieldElement4 = (SecP521R1FieldElement) eCPoint.e();
        SecP521R1FieldElement secP521R1FieldElement5 = (SecP521R1FieldElement) this.d[0];
        SecP521R1FieldElement secP521R1FieldElement6 = (SecP521R1FieldElement) eCPoint.f();
        int[] iArr5 = new int[17];
        int[] iArr6 = new int[17];
        int[] iArr7 = new int[17];
        int[] iArr8 = new int[17];
        boolean zH = secP521R1FieldElement5.h();
        int[] iArr9 = secP521R1FieldElement5.d;
        if (zH) {
            iArr = secP521R1FieldElement3.d;
            iArr2 = secP521R1FieldElement4.d;
        } else {
            SecP521R1Field.f(iArr9, iArr7);
            SecP521R1Field.c(iArr7, secP521R1FieldElement3.d, iArr6);
            SecP521R1Field.c(iArr7, iArr9, iArr7);
            SecP521R1Field.c(iArr7, secP521R1FieldElement4.d, iArr7);
            iArr = iArr6;
            iArr2 = iArr7;
        }
        boolean zH2 = secP521R1FieldElement6.h();
        int[] iArr10 = secP521R1FieldElement6.d;
        if (zH2) {
            iArr3 = secP521R1FieldElement.d;
            iArr4 = secP521R1FieldElement2.d;
        } else {
            SecP521R1Field.f(iArr10, iArr8);
            SecP521R1Field.c(iArr8, secP521R1FieldElement.d, iArr5);
            SecP521R1Field.c(iArr8, iArr10, iArr8);
            SecP521R1Field.c(iArr8, secP521R1FieldElement2.d, iArr8);
            iArr3 = iArr5;
            iArr4 = iArr8;
        }
        int[] iArr11 = new int[17];
        SecP521R1Field.g(iArr3, iArr, iArr11);
        SecP521R1Field.g(iArr4, iArr2, iArr6);
        boolean zR = Nat.r(17, iArr11);
        ECCurve eCCurve = this.f77938a;
        if (zR) {
            return Nat.r(17, iArr6) ? n() : eCCurve.i();
        }
        SecP521R1Field.f(iArr11, iArr7);
        int[] iArr12 = new int[17];
        SecP521R1Field.c(iArr7, iArr11, iArr12);
        SecP521R1Field.c(iArr7, iArr3, iArr7);
        SecP521R1Field.c(iArr4, iArr12, iArr5);
        SecP521R1FieldElement secP521R1FieldElement7 = new SecP521R1FieldElement(iArr8);
        int[] iArr13 = secP521R1FieldElement7.d;
        SecP521R1Field.f(iArr6, iArr13);
        SecP521R1Field.a(iArr13, iArr12, iArr13);
        SecP521R1Field.g(iArr13, iArr7, iArr13);
        SecP521R1Field.g(iArr13, iArr7, iArr13);
        SecP521R1FieldElement secP521R1FieldElement8 = new SecP521R1FieldElement(iArr12);
        int[] iArr14 = secP521R1FieldElement8.d;
        SecP521R1Field.g(iArr7, iArr13, iArr14);
        SecP521R1Field.c(iArr14, iArr6, iArr6);
        SecP521R1Field.g(iArr6, iArr5, iArr14);
        SecP521R1FieldElement secP521R1FieldElement9 = new SecP521R1FieldElement(iArr11);
        int[] iArr15 = secP521R1FieldElement9.d;
        if (!zH) {
            SecP521R1Field.c(iArr15, iArr9, iArr15);
        }
        if (!zH2) {
            SecP521R1Field.c(iArr15, iArr10, iArr15);
        }
        return new SecP521R1Point(eCCurve, secP521R1FieldElement7, secP521R1FieldElement8, new ECFieldElement[]{secP521R1FieldElement9}, this.f77941e);
    }

    @Override // org.spongycastle.math.ec.ECPoint
    public final ECPoint i() {
        if (g()) {
            return this;
        }
        return new SecP521R1Point(this.f77938a, this.f77939b, this.f77940c.m(), this.d, this.f77941e);
    }

    @Override // org.spongycastle.math.ec.ECPoint
    public final ECPoint n() {
        int[] iArr;
        if (g()) {
            return this;
        }
        SecP521R1FieldElement secP521R1FieldElement = (SecP521R1FieldElement) this.f77940c;
        boolean zI = secP521R1FieldElement.i();
        int[] iArr2 = secP521R1FieldElement.d;
        ECCurve eCCurve = this.f77938a;
        if (zI) {
            return eCCurve.i();
        }
        SecP521R1FieldElement secP521R1FieldElement2 = (SecP521R1FieldElement) this.f77939b;
        SecP521R1FieldElement secP521R1FieldElement3 = (SecP521R1FieldElement) this.d[0];
        int[] iArr3 = new int[17];
        int[] iArr4 = new int[17];
        int[] iArr5 = new int[17];
        SecP521R1Field.f(iArr2, iArr5);
        int[] iArr6 = new int[17];
        SecP521R1Field.f(iArr5, iArr6);
        boolean zH = secP521R1FieldElement3.h();
        int[] iArr7 = secP521R1FieldElement3.d;
        if (zH) {
            iArr = iArr7;
        } else {
            SecP521R1Field.f(iArr7, iArr4);
            iArr = iArr4;
        }
        int[] iArr8 = secP521R1FieldElement2.d;
        SecP521R1Field.g(iArr8, iArr, iArr3);
        SecP521R1Field.a(iArr8, iArr, iArr4);
        SecP521R1Field.c(iArr4, iArr3, iArr4);
        Nat.c(17, iArr4, iArr4, iArr4);
        SecP521R1Field.e(iArr4);
        SecP521R1Field.c(iArr5, iArr8, iArr5);
        Nat.t(17, iArr5);
        SecP521R1Field.e(iArr5);
        Nat.u(17, iArr6, iArr3);
        SecP521R1Field.e(iArr3);
        SecP521R1FieldElement secP521R1FieldElement4 = new SecP521R1FieldElement(iArr6);
        int[] iArr9 = secP521R1FieldElement4.d;
        SecP521R1Field.f(iArr4, iArr9);
        SecP521R1Field.g(iArr9, iArr5, iArr9);
        SecP521R1Field.g(iArr9, iArr5, iArr9);
        SecP521R1FieldElement secP521R1FieldElement5 = new SecP521R1FieldElement(iArr5);
        int[] iArr10 = secP521R1FieldElement5.d;
        SecP521R1Field.g(iArr5, iArr9, iArr10);
        SecP521R1Field.c(iArr10, iArr4, iArr10);
        SecP521R1Field.g(iArr10, iArr3, iArr10);
        SecP521R1FieldElement secP521R1FieldElement6 = new SecP521R1FieldElement(iArr4);
        int i2 = iArr2[16];
        int[] iArr11 = secP521R1FieldElement6.d;
        iArr11[16] = (Nat.s(16, iArr2, i2 << 23, iArr11) | (i2 << 1)) & 511;
        if (!zH) {
            SecP521R1Field.c(iArr11, iArr7, iArr11);
        }
        return new SecP521R1Point(eCCurve, secP521R1FieldElement4, secP521R1FieldElement5, new ECFieldElement[]{secP521R1FieldElement6}, this.f77941e);
    }

    public SecP521R1Point(ECCurve eCCurve, ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2) {
        this(eCCurve, eCFieldElement, eCFieldElement2, false);
    }

    public SecP521R1Point(ECCurve eCCurve, ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, ECFieldElement[] eCFieldElementArr, boolean z) {
        super(eCCurve, eCFieldElement, eCFieldElement2, eCFieldElementArr);
        this.f77941e = z;
    }
}
