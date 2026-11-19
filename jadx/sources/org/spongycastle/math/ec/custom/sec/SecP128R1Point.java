package org.spongycastle.math.ec.custom.sec;

import defpackage.md;
import org.bouncycastle.asn1.cmc.BodyPartID;
import org.spongycastle.math.ec.ECCurve;
import org.spongycastle.math.ec.ECFieldElement;
import org.spongycastle.math.ec.ECPoint;
import org.spongycastle.math.raw.Nat;
import org.spongycastle.math.raw.Nat128;
import org.spongycastle.math.raw.Nat256;

/* JADX INFO: loaded from: classes5.dex */
public class SecP128R1Point extends ECPoint.AbstractFp {
    public SecP128R1Point(ECCurve eCCurve, ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, boolean z) {
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
        SecP128R1FieldElement secP128R1FieldElement = (SecP128R1FieldElement) this.f77939b;
        SecP128R1FieldElement secP128R1FieldElement2 = (SecP128R1FieldElement) this.f77940c;
        SecP128R1FieldElement secP128R1FieldElement3 = (SecP128R1FieldElement) eCPoint.f77939b;
        SecP128R1FieldElement secP128R1FieldElement4 = (SecP128R1FieldElement) eCPoint.e();
        SecP128R1FieldElement secP128R1FieldElement5 = (SecP128R1FieldElement) this.d[0];
        SecP128R1FieldElement secP128R1FieldElement6 = (SecP128R1FieldElement) eCPoint.f();
        int[] iArr5 = new int[8];
        int[] iArr6 = new int[4];
        int[] iArr7 = new int[4];
        int[] iArr8 = new int[4];
        int[] iArr9 = secP128R1FieldElement5.d;
        boolean zC = Nat128.c(iArr9);
        if (zC) {
            iArr = secP128R1FieldElement3.d;
            iArr2 = secP128R1FieldElement4.d;
        } else {
            SecP128R1Field.f(iArr9, iArr7);
            SecP128R1Field.c(iArr7, secP128R1FieldElement3.d, iArr6);
            SecP128R1Field.c(iArr7, iArr9, iArr7);
            SecP128R1Field.c(iArr7, secP128R1FieldElement4.d, iArr7);
            iArr = iArr6;
            iArr2 = iArr7;
        }
        int[] iArr10 = secP128R1FieldElement6.d;
        boolean zC2 = Nat128.c(iArr10);
        if (zC2) {
            iArr3 = secP128R1FieldElement.d;
            iArr4 = secP128R1FieldElement2.d;
        } else {
            SecP128R1Field.f(iArr10, iArr8);
            SecP128R1Field.c(iArr8, secP128R1FieldElement.d, iArr5);
            SecP128R1Field.c(iArr8, iArr10, iArr8);
            SecP128R1Field.c(iArr8, secP128R1FieldElement2.d, iArr8);
            iArr3 = iArr5;
            iArr4 = iArr8;
        }
        int[] iArr11 = new int[4];
        SecP128R1Field.h(iArr3, iArr, iArr11);
        SecP128R1Field.h(iArr4, iArr2, iArr6);
        boolean zD = Nat128.d(iArr11);
        ECCurve eCCurve = this.f77938a;
        if (zD) {
            return Nat128.d(iArr6) ? n() : eCCurve.i();
        }
        SecP128R1Field.f(iArr11, iArr7);
        int[] iArr12 = new int[4];
        SecP128R1Field.c(iArr7, iArr11, iArr12);
        SecP128R1Field.c(iArr7, iArr3, iArr7);
        if (Nat128.d(iArr12)) {
            iArr12[0] = 0;
            iArr12[1] = 0;
            iArr12[2] = 0;
            iArr12[3] = 0;
        } else {
            Nat128.g(SecP128R1Field.f77957a, iArr12, iArr12);
        }
        Nat128.e(iArr4, iArr12, iArr5);
        SecP128R1Field.e(Nat128.a(iArr7, iArr7, iArr12), iArr12);
        SecP128R1FieldElement secP128R1FieldElement7 = new SecP128R1FieldElement(iArr8);
        int[] iArr13 = secP128R1FieldElement7.d;
        SecP128R1Field.f(iArr6, iArr13);
        SecP128R1Field.h(iArr13, iArr12, iArr13);
        SecP128R1FieldElement secP128R1FieldElement8 = new SecP128R1FieldElement(iArr12);
        int[] iArr14 = secP128R1FieldElement8.d;
        SecP128R1Field.h(iArr7, iArr13, iArr14);
        long j2 = ((long) iArr6[0]) & BodyPartID.bodyIdMax;
        long j3 = ((long) iArr6[1]) & BodyPartID.bodyIdMax;
        long j4 = ((long) iArr6[2]) & BodyPartID.bodyIdMax;
        long j5 = ((long) iArr6[3]) & BodyPartID.bodyIdMax;
        int i2 = 0;
        long j6 = 0;
        while (i2 < 4) {
            long j7 = ((long) iArr14[i2]) & BodyPartID.bodyIdMax;
            int i3 = i2;
            long j8 = (j7 * j2) + (((long) iArr5[i3]) & BodyPartID.bodyIdMax);
            iArr5[i3] = (int) j8;
            int i4 = i3 + 1;
            long j9 = (j7 * j3) + (((long) iArr5[i4]) & BodyPartID.bodyIdMax) + (j8 >>> 32);
            iArr5[i4] = (int) j9;
            int i5 = i3 + 2;
            long j10 = (j7 * j4) + (((long) iArr5[i5]) & BodyPartID.bodyIdMax) + (j9 >>> 32);
            iArr5[i5] = (int) j10;
            int i6 = i3 + 3;
            long j11 = (j7 * j5) + (((long) iArr5[i6]) & BodyPartID.bodyIdMax) + (j10 >>> 32);
            iArr5[i6] = (int) j11;
            int i7 = i3 + 4;
            long j12 = j6 + (((long) iArr5[i7]) & BodyPartID.bodyIdMax) + (j11 >>> 32);
            iArr5[i7] = (int) j12;
            j6 = j12 >>> 32;
            i2 = i4;
        }
        if (((int) j6) != 0 || ((iArr5[7] >>> 1) >= 2147483646 && Nat256.k(iArr5, SecP128R1Field.f77958b))) {
            Nat.e(8, SecP128R1Field.f77959c, iArr5);
        }
        SecP128R1Field.d(iArr5, iArr14);
        SecP128R1FieldElement secP128R1FieldElement9 = new SecP128R1FieldElement(iArr11);
        int[] iArr15 = secP128R1FieldElement9.d;
        if (!zC) {
            SecP128R1Field.c(iArr15, iArr9, iArr15);
        }
        if (!zC2) {
            SecP128R1Field.c(iArr15, iArr10, iArr15);
        }
        return new SecP128R1Point(eCCurve, secP128R1FieldElement7, secP128R1FieldElement8, new ECFieldElement[]{secP128R1FieldElement9}, this.f77941e);
    }

    @Override // org.spongycastle.math.ec.ECPoint
    public final ECPoint i() {
        if (g()) {
            return this;
        }
        return new SecP128R1Point(this.f77938a, this.f77939b, this.f77940c.m(), this.d, this.f77941e);
    }

    @Override // org.spongycastle.math.ec.ECPoint
    public final ECPoint n() {
        int[] iArr;
        if (g()) {
            return this;
        }
        int[] iArr2 = ((SecP128R1FieldElement) this.f77940c).d;
        boolean zD = Nat128.d(iArr2);
        ECCurve eCCurve = this.f77938a;
        if (zD) {
            return eCCurve.i();
        }
        SecP128R1FieldElement secP128R1FieldElement = (SecP128R1FieldElement) this.f77939b;
        SecP128R1FieldElement secP128R1FieldElement2 = (SecP128R1FieldElement) this.d[0];
        int[] iArr3 = new int[4];
        int[] iArr4 = new int[4];
        int[] iArr5 = new int[4];
        SecP128R1Field.f(iArr2, iArr5);
        int[] iArr6 = new int[4];
        SecP128R1Field.f(iArr5, iArr6);
        int[] iArr7 = secP128R1FieldElement2.d;
        boolean zC = Nat128.c(iArr7);
        if (zC) {
            iArr = iArr7;
        } else {
            SecP128R1Field.f(iArr7, iArr4);
            iArr = iArr4;
        }
        int[] iArr8 = secP128R1FieldElement.d;
        SecP128R1Field.h(iArr8, iArr, iArr3);
        SecP128R1Field.a(iArr8, iArr, iArr4);
        SecP128R1Field.c(iArr4, iArr3, iArr4);
        SecP128R1Field.e(Nat128.a(iArr4, iArr4, iArr4), iArr4);
        SecP128R1Field.c(iArr5, iArr8, iArr5);
        SecP128R1Field.e(Nat.t(4, iArr5), iArr5);
        SecP128R1Field.e(Nat.u(4, iArr6, iArr3), iArr3);
        SecP128R1FieldElement secP128R1FieldElement3 = new SecP128R1FieldElement(iArr6);
        int[] iArr9 = secP128R1FieldElement3.d;
        SecP128R1Field.f(iArr4, iArr9);
        SecP128R1Field.h(iArr9, iArr5, iArr9);
        SecP128R1Field.h(iArr9, iArr5, iArr9);
        SecP128R1FieldElement secP128R1FieldElement4 = new SecP128R1FieldElement(iArr5);
        int[] iArr10 = secP128R1FieldElement4.d;
        SecP128R1Field.h(iArr5, iArr9, iArr10);
        SecP128R1Field.c(iArr10, iArr4, iArr10);
        SecP128R1Field.h(iArr10, iArr3, iArr10);
        SecP128R1FieldElement secP128R1FieldElement5 = new SecP128R1FieldElement(iArr4);
        int[] iArr11 = secP128R1FieldElement5.d;
        if (Nat.s(4, iArr2, 0, iArr11) != 0 || ((iArr11[3] >>> 1) >= 2147483646 && Nat128.b(iArr11, SecP128R1Field.f77957a))) {
            SecP128R1Field.b(iArr11);
        }
        if (!zC) {
            SecP128R1Field.c(iArr11, iArr7, iArr11);
        }
        return new SecP128R1Point(eCCurve, secP128R1FieldElement3, secP128R1FieldElement4, new ECFieldElement[]{secP128R1FieldElement5}, this.f77941e);
    }

    public SecP128R1Point(ECCurve eCCurve, ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2) {
        this(eCCurve, eCFieldElement, eCFieldElement2, false);
    }

    public SecP128R1Point(ECCurve eCCurve, ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, ECFieldElement[] eCFieldElementArr, boolean z) {
        super(eCCurve, eCFieldElement, eCFieldElement2, eCFieldElementArr);
        this.f77941e = z;
    }
}
