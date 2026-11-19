package org.spongycastle.math.ec.custom.sec;

import defpackage.md;
import defpackage.r81;
import java.math.BigInteger;
import org.bouncycastle.asn1.cmc.BodyPartID;
import org.spongycastle.math.ec.ECFieldElement;
import org.spongycastle.math.raw.Interleave;
import org.spongycastle.math.raw.Nat256;
import org.spongycastle.util.Arrays;

/* JADX INFO: loaded from: classes5.dex */
public class SecT239FieldElement extends ECFieldElement {
    public final long[] d;

    public SecT239FieldElement(BigInteger bigInteger) {
        if (bigInteger == null || bigInteger.signum() < 0 || bigInteger.bitLength() > 239) {
            md.n("x value invalid for SecT239FieldElement");
            throw null;
        }
        long[] jArrI = Nat256.i(bigInteger);
        long j2 = jArrI[3];
        long j3 = j2 >>> 47;
        jArrI[0] = jArrI[0] ^ j3;
        jArrI[2] = (j3 << 30) ^ jArrI[2];
        jArrI[3] = j2 & 140737488355327L;
        this.d = jArrI;
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final ECFieldElement a(ECFieldElement eCFieldElement) {
        long[] jArr = ((SecT239FieldElement) eCFieldElement).d;
        long[] jArr2 = this.d;
        return new SecT239FieldElement(new long[]{jArr2[0] ^ jArr[0], jArr2[1] ^ jArr[1], jArr2[2] ^ jArr[2], jArr[3] ^ jArr2[3]});
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final ECFieldElement b() {
        long[] jArr = this.d;
        return new SecT239FieldElement(new long[]{jArr[0] ^ 1, jArr[1], jArr[2], jArr[3]});
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final ECFieldElement d(ECFieldElement eCFieldElement) {
        return j(eCFieldElement.g());
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof SecT239FieldElement) {
            return Nat256.g(this.d, ((SecT239FieldElement) obj).d);
        }
        return false;
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final int f() {
        return 239;
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final ECFieldElement g() {
        long[] jArr = new long[4];
        long[] jArr2 = this.d;
        if (Nat256.o(jArr2)) {
            r81.b();
            return null;
        }
        long[] jArr3 = new long[4];
        long[] jArr4 = new long[4];
        SecT239Field.h(jArr2, jArr3);
        SecT239Field.f(jArr3, jArr2, jArr3);
        SecT239Field.h(jArr3, jArr3);
        SecT239Field.f(jArr3, jArr2, jArr3);
        SecT239Field.i(jArr3, 3, jArr4);
        SecT239Field.f(jArr4, jArr3, jArr4);
        SecT239Field.h(jArr4, jArr4);
        SecT239Field.f(jArr4, jArr2, jArr4);
        SecT239Field.i(jArr4, 7, jArr3);
        SecT239Field.f(jArr3, jArr4, jArr3);
        SecT239Field.i(jArr3, 14, jArr4);
        SecT239Field.f(jArr4, jArr3, jArr4);
        SecT239Field.h(jArr4, jArr4);
        SecT239Field.f(jArr4, jArr2, jArr4);
        SecT239Field.i(jArr4, 29, jArr3);
        SecT239Field.f(jArr3, jArr4, jArr3);
        SecT239Field.h(jArr3, jArr3);
        SecT239Field.f(jArr3, jArr2, jArr3);
        SecT239Field.i(jArr3, 59, jArr4);
        SecT239Field.f(jArr4, jArr3, jArr4);
        SecT239Field.h(jArr4, jArr4);
        SecT239Field.f(jArr4, jArr2, jArr4);
        SecT239Field.i(jArr4, 119, jArr3);
        SecT239Field.f(jArr3, jArr4, jArr3);
        SecT239Field.h(jArr3, jArr);
        return new SecT239FieldElement(jArr);
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final boolean h() {
        return Nat256.m(this.d);
    }

    public final int hashCode() {
        return Arrays.i(this.d, 4) ^ 23900158;
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final boolean i() {
        return Nat256.o(this.d);
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final ECFieldElement j(ECFieldElement eCFieldElement) {
        long[] jArr = new long[4];
        SecT239Field.f(this.d, ((SecT239FieldElement) eCFieldElement).d, jArr);
        return new SecT239FieldElement(jArr);
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final ECFieldElement k(ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, ECFieldElement eCFieldElement3) {
        return l(eCFieldElement, eCFieldElement2, eCFieldElement3);
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final ECFieldElement l(ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, ECFieldElement eCFieldElement3) {
        long[] jArr = ((SecT239FieldElement) eCFieldElement).d;
        long[] jArr2 = ((SecT239FieldElement) eCFieldElement2).d;
        long[] jArr3 = ((SecT239FieldElement) eCFieldElement3).d;
        long[] jArr4 = new long[8];
        long[] jArr5 = new long[8];
        SecT239Field.c(this.d, jArr, jArr5);
        SecT239Field.a(jArr4, jArr5, jArr4);
        long[] jArr6 = new long[8];
        SecT239Field.c(jArr2, jArr3, jArr6);
        SecT239Field.a(jArr4, jArr6, jArr4);
        long[] jArr7 = new long[4];
        SecT239Field.g(jArr4, jArr7);
        return new SecT239FieldElement(jArr7);
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final ECFieldElement m() {
        return this;
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final ECFieldElement n() {
        long[] jArr = new long[4];
        long[] jArr2 = this.d;
        boolean z = false;
        long jE = Interleave.e(jArr2[0]);
        boolean z2 = true;
        long jE2 = Interleave.e(jArr2[1]);
        long j2 = (jE & BodyPartID.bodyIdMax) | (jE2 << 32);
        long j3 = (jE >>> 32) | (jE2 & (-4294967296L));
        long jE3 = Interleave.e(jArr2[2]);
        long jE4 = Interleave.e(jArr2[3]);
        long j4 = (jE3 & BodyPartID.bodyIdMax) | (jE4 << 32);
        long j5 = (jE3 >>> 32) | (jE4 & (-4294967296L));
        long j6 = j5 >>> 49;
        long j7 = (j3 >>> 49) | (j5 << 15);
        long j8 = j5 ^ (j3 << 15);
        long[] jArr3 = new long[8];
        int[] iArr = {39, 120};
        int i2 = 0;
        while (i2 < 2) {
            int i3 = iArr[i2];
            int i4 = i3 >>> 6;
            boolean z3 = z;
            int i5 = i3 & 63;
            jArr3[i4] = jArr3[i4] ^ (j3 << i5);
            int i6 = i4 + 1;
            boolean z4 = z2;
            int i7 = -i5;
            jArr3[i6] = jArr3[i6] ^ ((j8 << i5) | (j3 >>> i7));
            int i8 = i4 + 2;
            jArr3[i8] = jArr3[i8] ^ ((j7 << i5) | (j8 >>> i7));
            int i9 = i4 + 3;
            jArr3[i9] = jArr3[i9] ^ ((j6 << i5) | (j7 >>> i7));
            int i10 = i4 + 4;
            jArr3[i10] = jArr3[i10] ^ (j6 >>> i7);
            i2++;
            z = z3;
            z2 = z4;
        }
        boolean z5 = z;
        boolean z6 = z2;
        SecT239Field.g(jArr3, jArr);
        jArr[z5 ? 1 : 0] = jArr[z5 ? 1 : 0] ^ j2;
        jArr[z6 ? 1 : 0] = jArr[z6 ? 1 : 0] ^ j4;
        return new SecT239FieldElement(jArr);
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final ECFieldElement o() {
        long[] jArr = new long[4];
        SecT239Field.h(this.d, jArr);
        return new SecT239FieldElement(jArr);
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final ECFieldElement p(ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2) {
        long[] jArr = ((SecT239FieldElement) eCFieldElement).d;
        long[] jArr2 = ((SecT239FieldElement) eCFieldElement2).d;
        long[] jArr3 = new long[8];
        long[] jArr4 = new long[8];
        SecT239Field.e(this.d, jArr4);
        SecT239Field.a(jArr3, jArr4, jArr3);
        long[] jArr5 = new long[8];
        SecT239Field.c(jArr, jArr2, jArr5);
        SecT239Field.a(jArr3, jArr5, jArr3);
        long[] jArr6 = new long[4];
        SecT239Field.g(jArr3, jArr6);
        return new SecT239FieldElement(jArr6);
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final ECFieldElement q(ECFieldElement eCFieldElement) {
        return a(eCFieldElement);
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final boolean r() {
        return (this.d[0] & 1) != 0;
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final BigInteger s() {
        return Nat256.w(this.d);
    }

    public SecT239FieldElement() {
        this.d = new long[4];
    }

    public SecT239FieldElement(long[] jArr) {
        this.d = jArr;
    }
}
