package org.spongycastle.math.ec.custom.sec;

import defpackage.ct0;
import defpackage.md;
import defpackage.r81;
import java.math.BigInteger;
import org.bouncycastle.asn1.cmc.BodyPartID;
import org.spongycastle.math.ec.ECFieldElement;
import org.spongycastle.math.raw.Interleave;
import org.spongycastle.util.Arrays;
import org.spongycastle.util.Pack;

/* JADX INFO: loaded from: classes5.dex */
public class SecT113FieldElement extends ECFieldElement {
    public final long[] d;

    public SecT113FieldElement(BigInteger bigInteger) {
        if (bigInteger == null || bigInteger.signum() < 0 || bigInteger.bitLength() > 113) {
            md.n("x value invalid for SecT113FieldElement");
            throw null;
        }
        if (bigInteger.signum() < 0 || bigInteger.bitLength() > 128) {
            ct0.c();
            throw null;
        }
        long[] jArr = new long[2];
        int i2 = 0;
        while (bigInteger.signum() != 0) {
            jArr[i2] = bigInteger.longValue();
            bigInteger = bigInteger.shiftRight(64);
            i2++;
        }
        long j2 = jArr[1];
        long j3 = j2 >>> 49;
        jArr[0] = (j3 ^ (j3 << 9)) ^ jArr[0];
        jArr[1] = j2 & 562949953421311L;
        this.d = jArr;
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final ECFieldElement a(ECFieldElement eCFieldElement) {
        long[] jArr = ((SecT113FieldElement) eCFieldElement).d;
        long[] jArr2 = this.d;
        return new SecT113FieldElement(new long[]{jArr2[0] ^ jArr[0], jArr[1] ^ jArr2[1]});
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final ECFieldElement b() {
        long[] jArr = this.d;
        return new SecT113FieldElement(new long[]{jArr[0] ^ 1, jArr[1]});
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final ECFieldElement d(ECFieldElement eCFieldElement) {
        return j(eCFieldElement.g());
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof SecT113FieldElement)) {
            return false;
        }
        long[] jArr = ((SecT113FieldElement) obj).d;
        for (int i2 = 1; i2 >= 0; i2--) {
            if (this.d[i2] != jArr[i2]) {
                return false;
            }
        }
        return true;
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final int f() {
        return 113;
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final ECFieldElement g() {
        long[] jArr = new long[2];
        for (int i2 = 0; i2 < 2; i2++) {
            long[] jArr2 = this.d;
            if (jArr2[i2] != 0) {
                long[] jArr3 = new long[2];
                long[] jArr4 = new long[2];
                long[] jArr5 = new long[4];
                SecT113Field.d(jArr2, jArr5);
                SecT113Field.f(jArr5, jArr3);
                SecT113Field.e(jArr3, jArr2, jArr3);
                long[] jArr6 = new long[4];
                SecT113Field.d(jArr3, jArr6);
                SecT113Field.f(jArr6, jArr3);
                SecT113Field.e(jArr3, jArr2, jArr3);
                SecT113Field.g(jArr3, 3, jArr4);
                SecT113Field.e(jArr4, jArr3, jArr4);
                long[] jArr7 = new long[4];
                SecT113Field.d(jArr4, jArr7);
                SecT113Field.f(jArr7, jArr4);
                SecT113Field.e(jArr4, jArr2, jArr4);
                SecT113Field.g(jArr4, 7, jArr3);
                SecT113Field.e(jArr3, jArr4, jArr3);
                SecT113Field.g(jArr3, 14, jArr4);
                SecT113Field.e(jArr4, jArr3, jArr4);
                SecT113Field.g(jArr4, 28, jArr3);
                SecT113Field.e(jArr3, jArr4, jArr3);
                SecT113Field.g(jArr3, 56, jArr4);
                SecT113Field.e(jArr4, jArr3, jArr4);
                long[] jArr8 = new long[4];
                SecT113Field.d(jArr4, jArr8);
                SecT113Field.f(jArr8, jArr);
                return new SecT113FieldElement(jArr);
            }
        }
        r81.b();
        return null;
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final boolean h() {
        long[] jArr = this.d;
        return jArr[0] == 1 && jArr[1] == 0;
    }

    public final int hashCode() {
        return Arrays.i(this.d, 2) ^ 113009;
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final boolean i() {
        for (int i2 = 0; i2 < 2; i2++) {
            if (this.d[i2] != 0) {
                return false;
            }
        }
        return true;
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final ECFieldElement j(ECFieldElement eCFieldElement) {
        long[] jArr = new long[2];
        SecT113Field.e(this.d, ((SecT113FieldElement) eCFieldElement).d, jArr);
        return new SecT113FieldElement(jArr);
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final ECFieldElement k(ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, ECFieldElement eCFieldElement3) {
        return l(eCFieldElement, eCFieldElement2, eCFieldElement3);
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final ECFieldElement l(ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, ECFieldElement eCFieldElement3) {
        long[] jArr = ((SecT113FieldElement) eCFieldElement).d;
        long[] jArr2 = ((SecT113FieldElement) eCFieldElement2).d;
        long[] jArr3 = ((SecT113FieldElement) eCFieldElement3).d;
        long[] jArr4 = new long[4];
        long[] jArr5 = new long[4];
        SecT113Field.b(this.d, jArr, jArr5);
        SecT113Field.a(jArr4, jArr5, jArr4);
        long[] jArr6 = new long[4];
        SecT113Field.b(jArr2, jArr3, jArr6);
        SecT113Field.a(jArr4, jArr6, jArr4);
        long[] jArr7 = new long[2];
        SecT113Field.f(jArr4, jArr7);
        return new SecT113FieldElement(jArr7);
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
        long j2 = (BodyPartID.bodyIdMax & jE) | (jE2 << 32);
        long j3 = (jE >>> 32) | (jE2 & (-4294967296L));
        return new SecT113FieldElement(new long[]{((j3 << 57) ^ j2) ^ (j3 << 5), (j3 >>> 59) ^ (j3 >>> 7)});
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final ECFieldElement o() {
        long[] jArr = new long[2];
        long[] jArr2 = new long[4];
        SecT113Field.d(this.d, jArr2);
        SecT113Field.f(jArr2, jArr);
        return new SecT113FieldElement(jArr);
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final ECFieldElement p(ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2) {
        long[] jArr = ((SecT113FieldElement) eCFieldElement).d;
        long[] jArr2 = ((SecT113FieldElement) eCFieldElement2).d;
        long[] jArr3 = new long[4];
        long[] jArr4 = new long[4];
        SecT113Field.d(this.d, jArr4);
        SecT113Field.a(jArr3, jArr4, jArr3);
        long[] jArr5 = new long[4];
        SecT113Field.b(jArr, jArr2, jArr5);
        SecT113Field.a(jArr3, jArr5, jArr3);
        long[] jArr6 = new long[2];
        SecT113Field.f(jArr3, jArr6);
        return new SecT113FieldElement(jArr6);
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
        byte[] bArr = new byte[16];
        for (int i2 = 0; i2 < 2; i2++) {
            long j2 = this.d[i2];
            if (j2 != 0) {
                Pack.g(j2, bArr, (1 - i2) << 3);
            }
        }
        return new BigInteger(1, bArr);
    }

    public SecT113FieldElement() {
        this.d = new long[2];
    }

    public SecT113FieldElement(long[] jArr) {
        this.d = jArr;
    }
}
