package org.spongycastle.math.ec.custom.gm;

import defpackage.md;
import org.spongycastle.math.ec.ECCurve;
import org.spongycastle.math.ec.ECFieldElement;
import org.spongycastle.math.ec.ECPoint;
import org.spongycastle.math.raw.Nat;
import org.spongycastle.math.raw.Nat256;

/* JADX INFO: loaded from: classes5.dex */
public class SM2P256V1Point extends ECPoint.AbstractFp {
    public SM2P256V1Point(ECCurve eCCurve, ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, boolean z) {
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
        SM2P256V1FieldElement sM2P256V1FieldElement = (SM2P256V1FieldElement) this.f77939b;
        SM2P256V1FieldElement sM2P256V1FieldElement2 = (SM2P256V1FieldElement) this.f77940c;
        SM2P256V1FieldElement sM2P256V1FieldElement3 = (SM2P256V1FieldElement) eCPoint.f77939b;
        SM2P256V1FieldElement sM2P256V1FieldElement4 = (SM2P256V1FieldElement) eCPoint.e();
        SM2P256V1FieldElement sM2P256V1FieldElement5 = (SM2P256V1FieldElement) this.d[0];
        SM2P256V1FieldElement sM2P256V1FieldElement6 = (SM2P256V1FieldElement) eCPoint.f();
        int[] iArr5 = new int[16];
        int[] iArr6 = new int[8];
        int[] iArr7 = new int[8];
        int[] iArr8 = new int[8];
        int[] iArr9 = sM2P256V1FieldElement5.d;
        boolean zL = Nat256.l(iArr9);
        if (zL) {
            iArr = sM2P256V1FieldElement3.d;
            iArr2 = sM2P256V1FieldElement4.d;
        } else {
            SM2P256V1Field.f(iArr9, iArr7);
            SM2P256V1Field.c(iArr7, sM2P256V1FieldElement3.d, iArr6);
            SM2P256V1Field.c(iArr7, iArr9, iArr7);
            SM2P256V1Field.c(iArr7, sM2P256V1FieldElement4.d, iArr7);
            iArr = iArr6;
            iArr2 = iArr7;
        }
        int[] iArr10 = sM2P256V1FieldElement6.d;
        boolean zL2 = Nat256.l(iArr10);
        if (zL2) {
            iArr3 = sM2P256V1FieldElement.d;
            iArr4 = sM2P256V1FieldElement2.d;
        } else {
            SM2P256V1Field.f(iArr10, iArr8);
            SM2P256V1Field.c(iArr8, sM2P256V1FieldElement.d, iArr5);
            SM2P256V1Field.c(iArr8, iArr10, iArr8);
            SM2P256V1Field.c(iArr8, sM2P256V1FieldElement2.d, iArr8);
            iArr3 = iArr5;
            iArr4 = iArr8;
        }
        int[] iArr11 = new int[8];
        SM2P256V1Field.h(iArr3, iArr, iArr11);
        SM2P256V1Field.h(iArr4, iArr2, iArr6);
        boolean zN = Nat256.n(iArr11);
        ECCurve eCCurve = this.f77938a;
        if (zN) {
            return Nat256.n(iArr6) ? n() : eCCurve.i();
        }
        SM2P256V1Field.f(iArr11, iArr7);
        int[] iArr12 = new int[8];
        SM2P256V1Field.c(iArr7, iArr11, iArr12);
        SM2P256V1Field.c(iArr7, iArr3, iArr7);
        if (Nat256.n(iArr12)) {
            Nat256.x(iArr12);
        } else {
            Nat256.s(SM2P256V1Field.f77952a, iArr12, iArr12);
        }
        Nat256.p(iArr4, iArr12, iArr5);
        SM2P256V1Field.e(Nat256.b(iArr7, iArr7, iArr12), iArr12);
        SM2P256V1FieldElement sM2P256V1FieldElement7 = new SM2P256V1FieldElement(iArr8);
        int[] iArr13 = sM2P256V1FieldElement7.d;
        SM2P256V1Field.f(iArr6, iArr13);
        SM2P256V1Field.h(iArr13, iArr12, iArr13);
        SM2P256V1FieldElement sM2P256V1FieldElement8 = new SM2P256V1FieldElement(iArr12);
        int[] iArr14 = sM2P256V1FieldElement8.d;
        SM2P256V1Field.h(iArr7, iArr13, iArr14);
        int iQ = Nat256.q(iArr14, iArr6, iArr5);
        int[] iArr15 = SM2P256V1Field.f77953b;
        if (iQ != 0 || ((iArr5[15] >>> 1) >= Integer.MAX_VALUE && Nat.l(16, iArr5, iArr15))) {
            Nat.y(16, iArr15, iArr5);
        }
        SM2P256V1Field.d(iArr5, iArr14);
        SM2P256V1FieldElement sM2P256V1FieldElement9 = new SM2P256V1FieldElement(iArr11);
        int[] iArr16 = sM2P256V1FieldElement9.d;
        if (!zL) {
            SM2P256V1Field.c(iArr16, iArr9, iArr16);
        }
        if (!zL2) {
            SM2P256V1Field.c(iArr16, iArr10, iArr16);
        }
        return new SM2P256V1Point(eCCurve, sM2P256V1FieldElement7, sM2P256V1FieldElement8, new ECFieldElement[]{sM2P256V1FieldElement9}, this.f77941e);
    }

    @Override // org.spongycastle.math.ec.ECPoint
    public final ECPoint i() {
        if (g()) {
            return this;
        }
        return new SM2P256V1Point(this.f77938a, this.f77939b, this.f77940c.m(), this.d, this.f77941e);
    }

    @Override // org.spongycastle.math.ec.ECPoint
    public final ECPoint n() {
        int[] iArr;
        if (g()) {
            return this;
        }
        int[] iArr2 = ((SM2P256V1FieldElement) this.f77940c).d;
        boolean zN = Nat256.n(iArr2);
        ECCurve eCCurve = this.f77938a;
        if (zN) {
            return eCCurve.i();
        }
        SM2P256V1FieldElement sM2P256V1FieldElement = (SM2P256V1FieldElement) this.f77939b;
        SM2P256V1FieldElement sM2P256V1FieldElement2 = (SM2P256V1FieldElement) this.d[0];
        int[] iArr3 = new int[8];
        int[] iArr4 = new int[8];
        int[] iArr5 = new int[8];
        SM2P256V1Field.f(iArr2, iArr5);
        int[] iArr6 = new int[8];
        SM2P256V1Field.f(iArr5, iArr6);
        int[] iArr7 = sM2P256V1FieldElement2.d;
        boolean zL = Nat256.l(iArr7);
        if (zL) {
            iArr = iArr7;
        } else {
            SM2P256V1Field.f(iArr7, iArr4);
            iArr = iArr4;
        }
        int[] iArr8 = sM2P256V1FieldElement.d;
        SM2P256V1Field.h(iArr8, iArr, iArr3);
        SM2P256V1Field.a(iArr8, iArr, iArr4);
        SM2P256V1Field.c(iArr4, iArr3, iArr4);
        SM2P256V1Field.e(Nat256.b(iArr4, iArr4, iArr4), iArr4);
        SM2P256V1Field.c(iArr5, iArr8, iArr5);
        SM2P256V1Field.e(Nat.t(8, iArr5), iArr5);
        SM2P256V1Field.e(Nat.u(8, iArr6, iArr3), iArr3);
        SM2P256V1FieldElement sM2P256V1FieldElement3 = new SM2P256V1FieldElement(iArr6);
        int[] iArr9 = sM2P256V1FieldElement3.d;
        SM2P256V1Field.f(iArr4, iArr9);
        SM2P256V1Field.h(iArr9, iArr5, iArr9);
        SM2P256V1Field.h(iArr9, iArr5, iArr9);
        SM2P256V1FieldElement sM2P256V1FieldElement4 = new SM2P256V1FieldElement(iArr5);
        int[] iArr10 = sM2P256V1FieldElement4.d;
        SM2P256V1Field.h(iArr5, iArr9, iArr10);
        SM2P256V1Field.c(iArr10, iArr4, iArr10);
        SM2P256V1Field.h(iArr10, iArr3, iArr10);
        SM2P256V1FieldElement sM2P256V1FieldElement5 = new SM2P256V1FieldElement(iArr4);
        int[] iArr11 = sM2P256V1FieldElement5.d;
        if (Nat.s(8, iArr2, 0, iArr11) != 0 || ((iArr11[7] >>> 1) >= Integer.MAX_VALUE && Nat256.k(iArr11, SM2P256V1Field.f77952a))) {
            SM2P256V1Field.b(iArr11);
        }
        if (!zL) {
            SM2P256V1Field.c(iArr11, iArr7, iArr11);
        }
        return new SM2P256V1Point(eCCurve, sM2P256V1FieldElement3, sM2P256V1FieldElement4, new ECFieldElement[]{sM2P256V1FieldElement5}, this.f77941e);
    }

    public SM2P256V1Point(ECCurve eCCurve, ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2) {
        this(eCCurve, eCFieldElement, eCFieldElement2, false);
    }

    public SM2P256V1Point(ECCurve eCCurve, ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, ECFieldElement[] eCFieldElementArr, boolean z) {
        super(eCCurve, eCFieldElement, eCFieldElement2, eCFieldElementArr);
        this.f77941e = z;
    }
}
