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
public class SecT193FieldElement extends ECFieldElement {
    public final long[] d;

    public SecT193FieldElement(BigInteger bigInteger) {
        if (bigInteger == null || bigInteger.signum() < 0 || bigInteger.bitLength() > 193) {
            md.n("x value invalid for SecT193FieldElement");
            throw null;
        }
        long[] jArrI = Nat256.i(bigInteger);
        long j2 = jArrI[3];
        long j3 = j2 >>> 1;
        jArrI[0] = (j3 ^ (j3 << 15)) ^ jArrI[0];
        jArrI[1] = jArrI[1] ^ (j2 >>> 50);
        jArrI[3] = j2 & 1;
        this.d = jArrI;
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final ECFieldElement a(ECFieldElement eCFieldElement) {
        long[] jArr = ((SecT193FieldElement) eCFieldElement).d;
        long[] jArr2 = this.d;
        return new SecT193FieldElement(new long[]{jArr2[0] ^ jArr[0], jArr2[1] ^ jArr[1], jArr2[2] ^ jArr[2], jArr[3] ^ jArr2[3]});
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final ECFieldElement b() {
        long[] jArr = this.d;
        return new SecT193FieldElement(new long[]{jArr[0] ^ 1, jArr[1], jArr[2], jArr[3]});
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final ECFieldElement d(ECFieldElement eCFieldElement) {
        return j(eCFieldElement.g());
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof SecT193FieldElement) {
            return Nat256.g(this.d, ((SecT193FieldElement) obj).d);
        }
        return false;
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final int f() {
        return 193;
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
        long[] jArr5 = new long[8];
        SecT193Field.e(jArr2, jArr5);
        SecT193Field.g(jArr5, jArr3);
        SecT193Field.h(jArr3, 1, jArr4);
        SecT193Field.f(jArr3, jArr4, jArr3);
        SecT193Field.h(jArr4, 1, jArr4);
        SecT193Field.f(jArr3, jArr4, jArr3);
        SecT193Field.h(jArr3, 3, jArr4);
        SecT193Field.f(jArr3, jArr4, jArr3);
        SecT193Field.h(jArr3, 6, jArr4);
        SecT193Field.f(jArr3, jArr4, jArr3);
        SecT193Field.h(jArr3, 12, jArr4);
        SecT193Field.f(jArr3, jArr4, jArr3);
        SecT193Field.h(jArr3, 24, jArr4);
        SecT193Field.f(jArr3, jArr4, jArr3);
        SecT193Field.h(jArr3, 48, jArr4);
        SecT193Field.f(jArr3, jArr4, jArr3);
        SecT193Field.h(jArr3, 96, jArr4);
        SecT193Field.f(jArr3, jArr4, jArr);
        return new SecT193FieldElement(jArr);
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final boolean h() {
        return Nat256.m(this.d);
    }

    public final int hashCode() {
        return Arrays.i(this.d, 4) ^ 1930015;
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final boolean i() {
        return Nat256.o(this.d);
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final ECFieldElement j(ECFieldElement eCFieldElement) {
        long[] jArr = new long[4];
        SecT193Field.f(this.d, ((SecT193FieldElement) eCFieldElement).d, jArr);
        return new SecT193FieldElement(jArr);
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final ECFieldElement k(ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, ECFieldElement eCFieldElement3) {
        return l(eCFieldElement, eCFieldElement2, eCFieldElement3);
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final ECFieldElement l(ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, ECFieldElement eCFieldElement3) {
        long[] jArr = ((SecT193FieldElement) eCFieldElement).d;
        long[] jArr2 = ((SecT193FieldElement) eCFieldElement2).d;
        long[] jArr3 = ((SecT193FieldElement) eCFieldElement3).d;
        long[] jArr4 = new long[8];
        long[] jArr5 = new long[8];
        SecT193Field.c(this.d, jArr, jArr5);
        SecT193Field.a(jArr4, jArr5, jArr4);
        long[] jArr6 = new long[8];
        SecT193Field.c(jArr2, jArr3, jArr6);
        SecT193Field.a(jArr4, jArr6, jArr4);
        long[] jArr7 = new long[4];
        SecT193Field.g(jArr4, jArr7);
        return new SecT193FieldElement(jArr7);
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final ECFieldElement m() {
        return this;
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final ECFieldElement n() {
        long[] jArr = this.d;
        long jE = Interleave.e(jArr[0]);
        long jE2 = Interleave.e(jArr[1]);
        long j2 = (jE & BodyPartID.bodyIdMax) | (jE2 << 32);
        long j3 = (jE >>> 32) | (jE2 & (-4294967296L));
        long jE3 = Interleave.e(jArr[2]);
        long j4 = jE3 >>> 32;
        return new SecT193FieldElement(new long[]{j2 ^ (j3 << 8), ((((jE3 & BodyPartID.bodyIdMax) ^ (jArr[3] << 32)) ^ (j4 << 8)) ^ (j3 >>> 56)) ^ (j3 << 33), (j3 >>> 31) ^ (j4 << 33), jE3 >>> 63});
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final ECFieldElement o() {
        long[] jArr = new long[4];
        long[] jArr2 = new long[8];
        SecT193Field.e(this.d, jArr2);
        SecT193Field.g(jArr2, jArr);
        return new SecT193FieldElement(jArr);
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final ECFieldElement p(ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2) {
        long[] jArr = ((SecT193FieldElement) eCFieldElement).d;
        long[] jArr2 = ((SecT193FieldElement) eCFieldElement2).d;
        long[] jArr3 = new long[8];
        long[] jArr4 = new long[8];
        SecT193Field.e(this.d, jArr4);
        SecT193Field.a(jArr3, jArr4, jArr3);
        long[] jArr5 = new long[8];
        SecT193Field.c(jArr, jArr2, jArr5);
        SecT193Field.a(jArr3, jArr5, jArr3);
        long[] jArr6 = new long[4];
        SecT193Field.g(jArr3, jArr6);
        return new SecT193FieldElement(jArr6);
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

    public SecT193FieldElement() {
        this.d = new long[4];
    }

    public SecT193FieldElement(long[] jArr) {
        this.d = jArr;
    }
}
