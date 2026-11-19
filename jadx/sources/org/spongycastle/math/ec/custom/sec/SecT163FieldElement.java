package org.spongycastle.math.ec.custom.sec;

import defpackage.md;
import defpackage.r81;
import java.math.BigInteger;
import org.bouncycastle.asn1.cmc.BodyPartID;
import org.spongycastle.math.ec.ECFieldElement;
import org.spongycastle.math.raw.Interleave;
import org.spongycastle.math.raw.Nat192;
import org.spongycastle.util.Arrays;

/* JADX INFO: loaded from: classes5.dex */
public class SecT163FieldElement extends ECFieldElement {
    public final long[] d;

    public SecT163FieldElement(BigInteger bigInteger) {
        if (bigInteger == null || bigInteger.signum() < 0 || bigInteger.bitLength() > 163) {
            md.n("x value invalid for SecT163FieldElement");
            throw null;
        }
        long[] jArrH = Nat192.h(bigInteger);
        long j2 = jArrH[2];
        long j3 = j2 >>> 35;
        jArrH[0] = ((j3 << 7) ^ (((j3 << 3) ^ j3) ^ (j3 << 6))) ^ jArrH[0];
        jArrH[2] = j2 & 34359738367L;
        this.d = jArrH;
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final ECFieldElement a(ECFieldElement eCFieldElement) {
        long[] jArr = ((SecT163FieldElement) eCFieldElement).d;
        long[] jArr2 = this.d;
        return new SecT163FieldElement(new long[]{jArr2[0] ^ jArr[0], jArr2[1] ^ jArr[1], jArr[2] ^ jArr2[2]});
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final ECFieldElement b() {
        long[] jArr = this.d;
        return new SecT163FieldElement(new long[]{jArr[0] ^ 1, jArr[1], jArr[2]});
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final ECFieldElement d(ECFieldElement eCFieldElement) {
        return j(eCFieldElement.g());
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof SecT163FieldElement)) {
            return false;
        }
        long[] jArr = ((SecT163FieldElement) obj).d;
        for (int i2 = 2; i2 >= 0; i2--) {
            if (this.d[i2] != jArr[i2]) {
                return false;
            }
        }
        return true;
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final int f() {
        return 163;
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final ECFieldElement g() {
        long[] jArr = new long[3];
        long[] jArr2 = this.d;
        if (Nat192.m(jArr2)) {
            r81.b();
            return null;
        }
        long[] jArr3 = new long[3];
        long[] jArr4 = new long[3];
        long[] jArr5 = new long[6];
        SecT163Field.d(jArr2, jArr5);
        SecT163Field.f(jArr5, jArr3);
        SecT163Field.g(jArr3, 1, jArr4);
        SecT163Field.e(jArr3, jArr4, jArr3);
        SecT163Field.g(jArr4, 1, jArr4);
        SecT163Field.e(jArr3, jArr4, jArr3);
        SecT163Field.g(jArr3, 3, jArr4);
        SecT163Field.e(jArr3, jArr4, jArr3);
        SecT163Field.g(jArr4, 3, jArr4);
        SecT163Field.e(jArr3, jArr4, jArr3);
        SecT163Field.g(jArr3, 9, jArr4);
        SecT163Field.e(jArr3, jArr4, jArr3);
        SecT163Field.g(jArr4, 9, jArr4);
        SecT163Field.e(jArr3, jArr4, jArr3);
        SecT163Field.g(jArr3, 27, jArr4);
        SecT163Field.e(jArr3, jArr4, jArr3);
        SecT163Field.g(jArr4, 27, jArr4);
        SecT163Field.e(jArr3, jArr4, jArr3);
        SecT163Field.g(jArr3, 81, jArr4);
        SecT163Field.e(jArr3, jArr4, jArr);
        return new SecT163FieldElement(jArr);
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final boolean h() {
        long[] jArr = this.d;
        if (jArr[0] == 1) {
            for (int i2 = 1; i2 < 3; i2++) {
                if (jArr[i2] == 0) {
                }
            }
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.i(this.d, 3) ^ 163763;
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final boolean i() {
        return Nat192.m(this.d);
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final ECFieldElement j(ECFieldElement eCFieldElement) {
        long[] jArr = new long[3];
        SecT163Field.e(this.d, ((SecT163FieldElement) eCFieldElement).d, jArr);
        return new SecT163FieldElement(jArr);
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final ECFieldElement k(ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, ECFieldElement eCFieldElement3) {
        return l(eCFieldElement, eCFieldElement2, eCFieldElement3);
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final ECFieldElement l(ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, ECFieldElement eCFieldElement3) {
        long[] jArr = ((SecT163FieldElement) eCFieldElement).d;
        long[] jArr2 = ((SecT163FieldElement) eCFieldElement2).d;
        long[] jArr3 = ((SecT163FieldElement) eCFieldElement3).d;
        long[] jArr4 = new long[6];
        long[] jArr5 = new long[6];
        SecT163Field.b(this.d, jArr, jArr5);
        SecT163Field.a(jArr4, jArr5, jArr4);
        long[] jArr6 = new long[6];
        SecT163Field.b(jArr2, jArr3, jArr6);
        SecT163Field.a(jArr4, jArr6, jArr4);
        long[] jArr7 = new long[3];
        SecT163Field.f(jArr4, jArr7);
        return new SecT163FieldElement(jArr7);
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final ECFieldElement m() {
        return this;
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final ECFieldElement n() {
        long[] jArr = new long[3];
        long[] jArr2 = this.d;
        long jE = Interleave.e(jArr2[0]);
        long jE2 = Interleave.e(jArr2[1]);
        long j2 = (jE & BodyPartID.bodyIdMax) | (jE2 << 32);
        long jE3 = Interleave.e(jArr2[2]);
        long j3 = jE3 & BodyPartID.bodyIdMax;
        SecT163Field.e(new long[]{(jE >>> 32) | (jE2 & (-4294967296L)), jE3 >>> 32, 0}, SecT163Field.f78026a, jArr);
        jArr[0] = jArr[0] ^ j2;
        jArr[1] = jArr[1] ^ j3;
        return new SecT163FieldElement(jArr);
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final ECFieldElement o() {
        long[] jArr = new long[3];
        long[] jArr2 = new long[6];
        SecT163Field.d(this.d, jArr2);
        SecT163Field.f(jArr2, jArr);
        return new SecT163FieldElement(jArr);
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final ECFieldElement p(ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2) {
        long[] jArr = ((SecT163FieldElement) eCFieldElement).d;
        long[] jArr2 = ((SecT163FieldElement) eCFieldElement2).d;
        long[] jArr3 = new long[6];
        long[] jArr4 = new long[6];
        SecT163Field.d(this.d, jArr4);
        SecT163Field.a(jArr3, jArr4, jArr3);
        long[] jArr5 = new long[6];
        SecT163Field.b(jArr, jArr2, jArr5);
        SecT163Field.a(jArr3, jArr5, jArr3);
        long[] jArr6 = new long[3];
        SecT163Field.f(jArr3, jArr6);
        return new SecT163FieldElement(jArr6);
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
        return Nat192.u(this.d);
    }

    public SecT163FieldElement() {
        this.d = new long[3];
    }

    public SecT163FieldElement(long[] jArr) {
        this.d = jArr;
    }
}
