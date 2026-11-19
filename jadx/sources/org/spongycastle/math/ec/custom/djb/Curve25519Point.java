package org.spongycastle.math.ec.custom.djb;

import defpackage.md;
import org.bouncycastle.asn1.cmc.BodyPartID;
import org.spongycastle.math.ec.ECCurve;
import org.spongycastle.math.ec.ECFieldElement;
import org.spongycastle.math.ec.ECPoint;
import org.spongycastle.math.raw.Nat;
import org.spongycastle.math.raw.Nat256;

/* JADX INFO: loaded from: classes5.dex */
public class Curve25519Point extends ECPoint.AbstractFp {
    public Curve25519Point(ECCurve eCCurve, ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, boolean z) {
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
        char c2;
        if (g()) {
            return eCPoint;
        }
        if (eCPoint.g()) {
            return this;
        }
        if (this == eCPoint) {
            return n();
        }
        Curve25519FieldElement curve25519FieldElement = (Curve25519FieldElement) this.f77939b;
        Curve25519FieldElement curve25519FieldElement2 = (Curve25519FieldElement) this.f77940c;
        Curve25519FieldElement curve25519FieldElement3 = (Curve25519FieldElement) this.d[0];
        Curve25519FieldElement curve25519FieldElement4 = (Curve25519FieldElement) eCPoint.f77939b;
        Curve25519FieldElement curve25519FieldElement5 = (Curve25519FieldElement) eCPoint.e();
        Curve25519FieldElement curve25519FieldElement6 = (Curve25519FieldElement) eCPoint.f();
        int[] iArr5 = new int[16];
        int[] iArr6 = new int[8];
        int[] iArr7 = new int[8];
        int[] iArr8 = new int[8];
        int[] iArr9 = curve25519FieldElement3.d;
        boolean zL = Nat256.l(iArr9);
        if (zL) {
            iArr = curve25519FieldElement4.d;
            iArr2 = curve25519FieldElement5.d;
        } else {
            Curve25519Field.d(iArr9, iArr7);
            Curve25519Field.a(iArr7, curve25519FieldElement4.d, iArr6);
            Curve25519Field.a(iArr7, iArr9, iArr7);
            Curve25519Field.a(iArr7, curve25519FieldElement5.d, iArr7);
            iArr = iArr6;
            iArr2 = iArr7;
        }
        int[] iArr10 = curve25519FieldElement6.d;
        boolean zL2 = Nat256.l(iArr10);
        if (zL2) {
            iArr3 = curve25519FieldElement.d;
            iArr4 = curve25519FieldElement2.d;
        } else {
            Curve25519Field.d(iArr10, iArr8);
            Curve25519Field.a(iArr8, curve25519FieldElement.d, iArr5);
            Curve25519Field.a(iArr8, iArr10, iArr8);
            Curve25519Field.a(iArr8, curve25519FieldElement2.d, iArr8);
            iArr3 = iArr5;
            iArr4 = iArr8;
        }
        int[] iArr11 = new int[8];
        Curve25519Field.g(iArr3, iArr, iArr11);
        Curve25519Field.g(iArr4, iArr2, iArr6);
        boolean zN = Nat256.n(iArr11);
        ECCurve eCCurve = this.f77938a;
        if (zN) {
            return Nat256.n(iArr6) ? n() : eCCurve.i();
        }
        int[] iArr12 = new int[8];
        Curve25519Field.d(iArr11, iArr12);
        int[] iArr13 = new int[8];
        Curve25519Field.a(iArr12, iArr11, iArr13);
        Curve25519Field.a(iArr12, iArr3, iArr7);
        if (Nat256.n(iArr13)) {
            Nat256.x(iArr13);
        } else {
            Nat256.s(Curve25519Field.f77946a, iArr13, iArr13);
        }
        Nat256.p(iArr4, iArr13, iArr5);
        Curve25519Field.c(Nat256.b(iArr7, iArr7, iArr13), iArr13);
        Curve25519FieldElement curve25519FieldElement7 = new Curve25519FieldElement(iArr8);
        int[] iArr14 = curve25519FieldElement7.d;
        Curve25519Field.d(iArr6, iArr14);
        Curve25519Field.g(iArr14, iArr13, iArr14);
        Curve25519FieldElement curve25519FieldElement8 = new Curve25519FieldElement(iArr13);
        int[] iArr15 = curve25519FieldElement8.d;
        Curve25519Field.g(iArr7, iArr14, iArr15);
        Nat256.q(iArr15, iArr6, iArr5);
        int[] iArr16 = Curve25519Field.f77947b;
        if (Nat.l(16, iArr5, iArr16)) {
            long j2 = (((long) iArr5[0]) & BodyPartID.bodyIdMax) - (((long) iArr16[0]) & BodyPartID.bodyIdMax);
            iArr5[0] = (int) j2;
            long jH = j2 >> 32;
            if (jH != 0) {
                c2 = '\b';
                jH = Nat.h(8, iArr5, 1);
            } else {
                c2 = '\b';
            }
            long j3 = (((long) iArr5[c2]) & BodyPartID.bodyIdMax) + 19 + jH;
            iArr5[c2] = (int) j3;
            long jO = j3 >> 32;
            if (jO != 0) {
                jO = Nat.o(15, iArr5, 9);
            }
            iArr5[15] = (int) (((((long) iArr5[15]) & BodyPartID.bodyIdMax) - (((long) (iArr16[15] + 1)) & BodyPartID.bodyIdMax)) + jO);
        }
        Curve25519Field.b(iArr5, iArr15);
        Curve25519FieldElement curve25519FieldElement9 = new Curve25519FieldElement(iArr11);
        int[] iArr17 = curve25519FieldElement9.d;
        if (!zL) {
            Curve25519Field.a(iArr17, iArr9, iArr17);
        }
        if (!zL2) {
            Curve25519Field.a(iArr17, iArr10, iArr17);
        }
        if (!zL || !zL2) {
            iArr12 = null;
        }
        return new Curve25519Point(eCCurve, curve25519FieldElement7, curve25519FieldElement8, new ECFieldElement[]{curve25519FieldElement9, o(curve25519FieldElement9, iArr12)}, this.f77941e);
    }

    @Override // org.spongycastle.math.ec.ECPoint
    public final ECPoint i() {
        if (g()) {
            return this;
        }
        return new Curve25519Point(this.f77938a, this.f77939b, this.f77940c.m(), this.d, this.f77941e);
    }

    @Override // org.spongycastle.math.ec.ECPoint
    public final ECPoint n() {
        if (g()) {
            return this;
        }
        ECFieldElement eCFieldElement = this.f77940c;
        if (eCFieldElement.i()) {
            return this.f77938a.i();
        }
        Curve25519FieldElement curve25519FieldElement = (Curve25519FieldElement) this.f77939b;
        int[] iArr = ((Curve25519FieldElement) eCFieldElement).d;
        ECFieldElement[] eCFieldElementArr = this.d;
        ECFieldElement eCFieldElement2 = eCFieldElementArr[0];
        Curve25519FieldElement curve25519FieldElement2 = (Curve25519FieldElement) eCFieldElement2;
        Curve25519FieldElement curve25519FieldElementO = (Curve25519FieldElement) eCFieldElementArr[1];
        if (curve25519FieldElementO == null) {
            curve25519FieldElementO = o((Curve25519FieldElement) eCFieldElement2, null);
            eCFieldElementArr[1] = curve25519FieldElementO;
        }
        int[] iArr2 = {(int) j, (int) j, (int) j, (int) j, (int) j, (int) j, (int) j, (int) j};
        Curve25519Field.d(curve25519FieldElement.d, iArr2);
        int iB = Nat256.b(iArr2, iArr2, iArr2);
        int[] iArr3 = curve25519FieldElementO.d;
        long j2 = (((long) iArr3[0]) & BodyPartID.bodyIdMax) + (((long) iArr2[0]) & BodyPartID.bodyIdMax);
        long j3 = (((long) iArr3[1]) & BodyPartID.bodyIdMax) + (((long) iArr2[1]) & BodyPartID.bodyIdMax) + (j2 >>> 32);
        Curve25519FieldElement curve25519FieldElement3 = curve25519FieldElementO;
        long j4 = (((long) iArr3[2]) & BodyPartID.bodyIdMax) + (((long) iArr2[2]) & BodyPartID.bodyIdMax) + (j3 >>> 32);
        long j5 = (((long) iArr3[3]) & BodyPartID.bodyIdMax) + (((long) iArr2[3]) & BodyPartID.bodyIdMax) + (j4 >>> 32);
        long j6 = (((long) iArr3[4]) & BodyPartID.bodyIdMax) + (((long) iArr2[4]) & BodyPartID.bodyIdMax) + (j5 >>> 32);
        long j7 = (((long) iArr3[5]) & BodyPartID.bodyIdMax) + (((long) iArr2[5]) & BodyPartID.bodyIdMax) + (j6 >>> 32);
        long j8 = (((long) iArr3[6]) & BodyPartID.bodyIdMax) + (((long) iArr2[6]) & BodyPartID.bodyIdMax) + (j7 >>> 32);
        long j9 = (((long) iArr3[7]) & BodyPartID.bodyIdMax) + (((long) iArr2[7]) & BodyPartID.bodyIdMax) + (j8 >>> 32);
        Curve25519Field.c(iB + ((int) (j9 >>> 32)), iArr2);
        int[] iArr4 = new int[8];
        Curve25519Field.h(iArr, iArr4);
        int[] iArr5 = new int[8];
        Curve25519Field.a(iArr4, iArr, iArr5);
        int[] iArr6 = new int[8];
        Curve25519Field.a(iArr5, curve25519FieldElement.d, iArr6);
        Curve25519Field.h(iArr6, iArr6);
        int[] iArr7 = new int[8];
        Curve25519Field.d(iArr5, iArr7);
        Curve25519Field.h(iArr7, iArr7);
        Curve25519FieldElement curve25519FieldElement4 = new Curve25519FieldElement(iArr5);
        int[] iArr8 = curve25519FieldElement4.d;
        Curve25519Field.d(iArr2, iArr8);
        Curve25519Field.g(iArr8, iArr6, iArr8);
        Curve25519Field.g(iArr8, iArr6, iArr8);
        Curve25519FieldElement curve25519FieldElement5 = new Curve25519FieldElement(iArr6);
        int[] iArr9 = curve25519FieldElement5.d;
        Curve25519Field.g(iArr6, iArr8, iArr9);
        Curve25519Field.a(iArr9, iArr2, iArr9);
        Curve25519Field.g(iArr9, iArr7, iArr9);
        Curve25519FieldElement curve25519FieldElement6 = new Curve25519FieldElement(iArr4);
        if (!Nat256.l(curve25519FieldElement2.d)) {
            int[] iArr10 = curve25519FieldElement6.d;
            Curve25519Field.a(iArr10, curve25519FieldElement2.d, iArr10);
        }
        Curve25519FieldElement curve25519FieldElement7 = new Curve25519FieldElement(iArr7);
        int[] iArr11 = curve25519FieldElement3.d;
        int[] iArr12 = curve25519FieldElement7.d;
        Curve25519Field.a(iArr12, iArr11, iArr12);
        Curve25519Field.h(iArr12, iArr12);
        return new Curve25519Point(this.f77938a, curve25519FieldElement4, curve25519FieldElement5, new ECFieldElement[]{curve25519FieldElement6, curve25519FieldElement7}, this.f77941e);
    }

    public final Curve25519FieldElement o(Curve25519FieldElement curve25519FieldElement, int[] iArr) {
        Curve25519FieldElement curve25519FieldElement2 = (Curve25519FieldElement) this.f77938a.f77919b;
        if (Nat256.l(curve25519FieldElement.d)) {
            return curve25519FieldElement2;
        }
        Curve25519FieldElement curve25519FieldElement3 = new Curve25519FieldElement();
        int[] iArr2 = curve25519FieldElement3.d;
        if (iArr == null) {
            Curve25519Field.d(curve25519FieldElement.d, iArr2);
            iArr = iArr2;
        }
        Curve25519Field.d(iArr, iArr2);
        Curve25519Field.a(iArr2, curve25519FieldElement2.d, iArr2);
        return curve25519FieldElement3;
    }

    public Curve25519Point(ECCurve eCCurve, ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2) {
        this(eCCurve, eCFieldElement, eCFieldElement2, false);
    }

    public Curve25519Point(ECCurve eCCurve, ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, ECFieldElement[] eCFieldElementArr, boolean z) {
        super(eCCurve, eCFieldElement, eCFieldElement2, eCFieldElementArr);
        this.f77941e = z;
    }
}
