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
public class SecT233FieldElement extends ECFieldElement {
    public final long[] d;

    public SecT233FieldElement(BigInteger bigInteger) {
        if (bigInteger == null || bigInteger.signum() < 0 || bigInteger.bitLength() > 233) {
            md.n("x value invalid for SecT233FieldElement");
            throw null;
        }
        long[] jArrI = Nat256.i(bigInteger);
        long j2 = jArrI[3];
        long j3 = j2 >>> 41;
        jArrI[0] = jArrI[0] ^ j3;
        jArrI[1] = (j3 << 10) ^ jArrI[1];
        jArrI[3] = j2 & 2199023255551L;
        this.d = jArrI;
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final ECFieldElement a(ECFieldElement eCFieldElement) {
        long[] jArr = ((SecT233FieldElement) eCFieldElement).d;
        long[] jArr2 = this.d;
        return new SecT233FieldElement(new long[]{jArr2[0] ^ jArr[0], jArr2[1] ^ jArr[1], jArr2[2] ^ jArr[2], jArr[3] ^ jArr2[3]});
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final ECFieldElement b() {
        long[] jArr = this.d;
        return new SecT233FieldElement(new long[]{jArr[0] ^ 1, jArr[1], jArr[2], jArr[3]});
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final ECFieldElement d(ECFieldElement eCFieldElement) {
        return j(eCFieldElement.g());
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof SecT233FieldElement) {
            return Nat256.g(this.d, ((SecT233FieldElement) obj).d);
        }
        return false;
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final int f() {
        return 233;
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
        SecT233Field.h(jArr2, jArr3);
        SecT233Field.f(jArr3, jArr2, jArr3);
        SecT233Field.h(jArr3, jArr3);
        SecT233Field.f(jArr3, jArr2, jArr3);
        SecT233Field.i(jArr3, 3, jArr4);
        SecT233Field.f(jArr4, jArr3, jArr4);
        SecT233Field.h(jArr4, jArr4);
        SecT233Field.f(jArr4, jArr2, jArr4);
        SecT233Field.i(jArr4, 7, jArr3);
        SecT233Field.f(jArr3, jArr4, jArr3);
        SecT233Field.i(jArr3, 14, jArr4);
        SecT233Field.f(jArr4, jArr3, jArr4);
        SecT233Field.h(jArr4, jArr4);
        SecT233Field.f(jArr4, jArr2, jArr4);
        SecT233Field.i(jArr4, 29, jArr3);
        SecT233Field.f(jArr3, jArr4, jArr3);
        SecT233Field.i(jArr3, 58, jArr4);
        SecT233Field.f(jArr4, jArr3, jArr4);
        SecT233Field.i(jArr4, 116, jArr3);
        SecT233Field.f(jArr3, jArr4, jArr3);
        SecT233Field.h(jArr3, jArr);
        return new SecT233FieldElement(jArr);
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final boolean h() {
        return Nat256.m(this.d);
    }

    public final int hashCode() {
        return Arrays.i(this.d, 4) ^ 2330074;
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final boolean i() {
        return Nat256.o(this.d);
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final ECFieldElement j(ECFieldElement eCFieldElement) {
        long[] jArr = new long[4];
        SecT233Field.f(this.d, ((SecT233FieldElement) eCFieldElement).d, jArr);
        return new SecT233FieldElement(jArr);
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final ECFieldElement k(ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, ECFieldElement eCFieldElement3) {
        return l(eCFieldElement, eCFieldElement2, eCFieldElement3);
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final ECFieldElement l(ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, ECFieldElement eCFieldElement3) {
        long[] jArr = ((SecT233FieldElement) eCFieldElement).d;
        long[] jArr2 = ((SecT233FieldElement) eCFieldElement2).d;
        long[] jArr3 = ((SecT233FieldElement) eCFieldElement3).d;
        long[] jArr4 = new long[8];
        long[] jArr5 = new long[8];
        SecT233Field.c(this.d, jArr, jArr5);
        SecT233Field.a(jArr4, jArr5, jArr4);
        long[] jArr6 = new long[8];
        SecT233Field.c(jArr2, jArr3, jArr6);
        SecT233Field.a(jArr4, jArr6, jArr4);
        long[] jArr7 = new long[4];
        SecT233Field.g(jArr4, jArr7);
        return new SecT233FieldElement(jArr7);
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final ECFieldElement m() {
        return this;
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final ECFieldElement n() {
        long[] jArr = new long[4];
        long[] jArr2 = this.d;
        long jE = Interleave.e(jArr2[0]);
        long jE2 = Interleave.e(jArr2[1]);
        long j2 = (jE & BodyPartID.bodyIdMax) | (jE2 << 32);
        long j3 = (jE >>> 32) | (jE2 & (-4294967296L));
        long jE3 = Interleave.e(jArr2[2]);
        int i2 = 3;
        long jE4 = Interleave.e(jArr2[3]);
        long j4 = (BodyPartID.bodyIdMax & jE3) | (jE4 << 32);
        long j5 = (jE3 >>> 32) | (jE4 & (-4294967296L));
        long j6 = j5 >>> 27;
        long j7 = j5 ^ ((j3 >>> 27) | (j5 << 37));
        long j8 = j3 ^ (j3 << 37);
        long[] jArr3 = new long[8];
        int[] iArr = {32, 117, 191};
        int i3 = 0;
        while (i3 < i2) {
            int i4 = iArr[i3];
            int i5 = i4 >>> 6;
            int i6 = i4 & 63;
            jArr3[i5] = jArr3[i5] ^ (j8 << i6);
            int i7 = i5 + 1;
            int i8 = i2;
            int i9 = -i6;
            jArr3[i7] = jArr3[i7] ^ ((j7 << i6) | (j8 >>> i9));
            int i10 = i5 + 2;
            jArr3[i10] = jArr3[i10] ^ ((j6 << i6) | (j7 >>> i9));
            int i11 = i5 + 3;
            jArr3[i11] = jArr3[i11] ^ (j6 >>> i9);
            i3++;
            i2 = i8;
        }
        SecT233Field.g(jArr3, jArr);
        jArr[0] = jArr[0] ^ j2;
        jArr[1] = jArr[1] ^ j4;
        return new SecT233FieldElement(jArr);
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final ECFieldElement o() {
        long[] jArr = new long[4];
        SecT233Field.h(this.d, jArr);
        return new SecT233FieldElement(jArr);
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final ECFieldElement p(ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2) {
        long[] jArr = ((SecT233FieldElement) eCFieldElement).d;
        long[] jArr2 = ((SecT233FieldElement) eCFieldElement2).d;
        long[] jArr3 = new long[8];
        long[] jArr4 = new long[8];
        SecT233Field.e(this.d, jArr4);
        SecT233Field.a(jArr3, jArr4, jArr3);
        long[] jArr5 = new long[8];
        SecT233Field.c(jArr, jArr2, jArr5);
        SecT233Field.a(jArr3, jArr5, jArr3);
        long[] jArr6 = new long[4];
        SecT233Field.g(jArr3, jArr6);
        return new SecT233FieldElement(jArr6);
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

    public SecT233FieldElement() {
        this.d = new long[4];
    }

    public SecT233FieldElement(long[] jArr) {
        this.d = jArr;
    }
}
