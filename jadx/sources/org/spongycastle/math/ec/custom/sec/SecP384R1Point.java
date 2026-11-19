package org.spongycastle.math.ec.custom.sec;

import defpackage.md;
import org.spongycastle.math.ec.ECCurve;
import org.spongycastle.math.ec.ECFieldElement;
import org.spongycastle.math.ec.ECPoint;
import org.spongycastle.math.raw.Nat;
import org.spongycastle.math.raw.Nat384;

/* JADX INFO: loaded from: classes5.dex */
public class SecP384R1Point extends ECPoint.AbstractFp {
    public SecP384R1Point(ECCurve eCCurve, ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, boolean z) {
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
        SecP384R1FieldElement secP384R1FieldElement = (SecP384R1FieldElement) this.f77939b;
        SecP384R1FieldElement secP384R1FieldElement2 = (SecP384R1FieldElement) this.f77940c;
        SecP384R1FieldElement secP384R1FieldElement3 = (SecP384R1FieldElement) eCPoint.f77939b;
        SecP384R1FieldElement secP384R1FieldElement4 = (SecP384R1FieldElement) eCPoint.e();
        SecP384R1FieldElement secP384R1FieldElement5 = (SecP384R1FieldElement) this.d[0];
        SecP384R1FieldElement secP384R1FieldElement6 = (SecP384R1FieldElement) eCPoint.f();
        int[] iArr5 = new int[24];
        int[] iArr6 = new int[24];
        int[] iArr7 = new int[12];
        int[] iArr8 = new int[12];
        boolean zH = secP384R1FieldElement5.h();
        int[] iArr9 = secP384R1FieldElement5.d;
        if (zH) {
            iArr = secP384R1FieldElement3.d;
            iArr2 = secP384R1FieldElement4.d;
        } else {
            SecP384R1Field.e(iArr9, iArr7);
            SecP384R1Field.b(iArr7, secP384R1FieldElement3.d, iArr6);
            SecP384R1Field.b(iArr7, iArr9, iArr7);
            SecP384R1Field.b(iArr7, secP384R1FieldElement4.d, iArr7);
            iArr = iArr6;
            iArr2 = iArr7;
        }
        boolean zH2 = secP384R1FieldElement6.h();
        int[] iArr10 = secP384R1FieldElement6.d;
        if (zH2) {
            iArr3 = secP384R1FieldElement.d;
            iArr4 = secP384R1FieldElement2.d;
        } else {
            SecP384R1Field.e(iArr10, iArr8);
            SecP384R1Field.b(iArr8, secP384R1FieldElement.d, iArr5);
            SecP384R1Field.b(iArr8, iArr10, iArr8);
            SecP384R1Field.b(iArr8, secP384R1FieldElement2.d, iArr8);
            iArr3 = iArr5;
            iArr4 = iArr8;
        }
        int[] iArr11 = new int[12];
        SecP384R1Field.g(iArr3, iArr, iArr11);
        int[] iArr12 = new int[12];
        SecP384R1Field.g(iArr4, iArr2, iArr12);
        boolean zR = Nat.r(12, iArr11);
        ECCurve eCCurve = this.f77938a;
        if (zR) {
            return Nat.r(12, iArr12) ? n() : eCCurve.i();
        }
        SecP384R1Field.e(iArr11, iArr7);
        int[] iArr13 = new int[12];
        SecP384R1Field.b(iArr7, iArr11, iArr13);
        SecP384R1Field.b(iArr7, iArr3, iArr7);
        if (Nat.r(12, iArr13)) {
            for (int i2 = 0; i2 < 12; i2++) {
                iArr13[i2] = 0;
            }
        } else {
            Nat.v(12, SecP384R1Field.f78013a, iArr13, iArr13);
        }
        Nat384.a(iArr4, iArr13, iArr5);
        SecP384R1Field.d(Nat.c(12, iArr7, iArr7, iArr13), iArr13);
        SecP384R1FieldElement secP384R1FieldElement7 = new SecP384R1FieldElement(iArr8);
        int[] iArr14 = secP384R1FieldElement7.d;
        SecP384R1Field.e(iArr12, iArr14);
        SecP384R1Field.g(iArr14, iArr13, iArr14);
        SecP384R1FieldElement secP384R1FieldElement8 = new SecP384R1FieldElement(iArr13);
        int[] iArr15 = secP384R1FieldElement8.d;
        SecP384R1Field.g(iArr7, iArr14, iArr15);
        Nat384.a(iArr15, iArr12, iArr6);
        if ((Nat.a(24, iArr5, iArr6, iArr5) != 0 || (iArr5[23] == -1 && Nat.l(24, iArr5, SecP384R1Field.f78014b))) && Nat.e(17, SecP384R1Field.f78015c, iArr5) != 0) {
            Nat.o(24, iArr5, 17);
        }
        SecP384R1Field.c(iArr5, iArr15);
        SecP384R1FieldElement secP384R1FieldElement9 = new SecP384R1FieldElement(iArr11);
        int[] iArr16 = secP384R1FieldElement9.d;
        if (!zH) {
            SecP384R1Field.b(iArr16, iArr9, iArr16);
        }
        if (!zH2) {
            SecP384R1Field.b(iArr16, iArr10, iArr16);
        }
        return new SecP384R1Point(eCCurve, secP384R1FieldElement7, secP384R1FieldElement8, new ECFieldElement[]{secP384R1FieldElement9}, this.f77941e);
    }

    @Override // org.spongycastle.math.ec.ECPoint
    public final ECPoint i() {
        if (g()) {
            return this;
        }
        return new SecP384R1Point(this.f77938a, this.f77939b, this.f77940c.m(), this.d, this.f77941e);
    }

    @Override // org.spongycastle.math.ec.ECPoint
    public final ECPoint n() {
        int[] iArr;
        if (g()) {
            return this;
        }
        SecP384R1FieldElement secP384R1FieldElement = (SecP384R1FieldElement) this.f77940c;
        boolean zI = secP384R1FieldElement.i();
        int[] iArr2 = secP384R1FieldElement.d;
        ECCurve eCCurve = this.f77938a;
        if (zI) {
            return eCCurve.i();
        }
        SecP384R1FieldElement secP384R1FieldElement2 = (SecP384R1FieldElement) this.f77939b;
        SecP384R1FieldElement secP384R1FieldElement3 = (SecP384R1FieldElement) this.d[0];
        int[] iArr3 = new int[12];
        int[] iArr4 = new int[12];
        int[] iArr5 = new int[12];
        SecP384R1Field.e(iArr2, iArr5);
        int[] iArr6 = new int[12];
        SecP384R1Field.e(iArr5, iArr6);
        boolean zH = secP384R1FieldElement3.h();
        int[] iArr7 = secP384R1FieldElement3.d;
        if (zH) {
            iArr = iArr7;
        } else {
            SecP384R1Field.e(iArr7, iArr4);
            iArr = iArr4;
        }
        int[] iArr8 = secP384R1FieldElement2.d;
        SecP384R1Field.g(iArr8, iArr, iArr3);
        int iA = Nat.a(12, iArr8, iArr, iArr4);
        int[] iArr9 = SecP384R1Field.f78013a;
        if (iA != 0 || (iArr4[11] == -1 && Nat.l(12, iArr4, iArr9))) {
            SecP384R1Field.a(iArr4);
        }
        SecP384R1Field.b(iArr4, iArr3, iArr4);
        SecP384R1Field.d(Nat.c(12, iArr4, iArr4, iArr4), iArr4);
        SecP384R1Field.b(iArr5, iArr8, iArr5);
        SecP384R1Field.d(Nat.t(12, iArr5), iArr5);
        SecP384R1Field.d(Nat.u(12, iArr6, iArr3), iArr3);
        SecP384R1FieldElement secP384R1FieldElement4 = new SecP384R1FieldElement(iArr6);
        int[] iArr10 = secP384R1FieldElement4.d;
        SecP384R1Field.e(iArr4, iArr10);
        SecP384R1Field.g(iArr10, iArr5, iArr10);
        SecP384R1Field.g(iArr10, iArr5, iArr10);
        SecP384R1FieldElement secP384R1FieldElement5 = new SecP384R1FieldElement(iArr5);
        int[] iArr11 = secP384R1FieldElement5.d;
        SecP384R1Field.g(iArr5, iArr10, iArr11);
        SecP384R1Field.b(iArr11, iArr4, iArr11);
        SecP384R1Field.g(iArr11, iArr3, iArr11);
        SecP384R1FieldElement secP384R1FieldElement6 = new SecP384R1FieldElement(iArr4);
        int[] iArr12 = secP384R1FieldElement6.d;
        if (Nat.s(12, iArr2, 0, iArr12) != 0 || (iArr12[11] == -1 && Nat.l(12, iArr12, iArr9))) {
            SecP384R1Field.a(iArr12);
        }
        if (!zH) {
            SecP384R1Field.b(iArr12, iArr7, iArr12);
        }
        return new SecP384R1Point(eCCurve, secP384R1FieldElement4, secP384R1FieldElement5, new ECFieldElement[]{secP384R1FieldElement6}, this.f77941e);
    }

    public SecP384R1Point(ECCurve eCCurve, ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2) {
        this(eCCurve, eCFieldElement, eCFieldElement2, false);
    }

    public SecP384R1Point(ECCurve eCCurve, ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, ECFieldElement[] eCFieldElementArr, boolean z) {
        super(eCCurve, eCFieldElement, eCFieldElement2, eCFieldElementArr);
        this.f77941e = z;
    }
}
