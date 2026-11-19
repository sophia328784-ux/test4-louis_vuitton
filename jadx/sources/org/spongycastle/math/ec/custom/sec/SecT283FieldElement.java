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
public class SecT283FieldElement extends ECFieldElement {
    public final long[] d;

    public SecT283FieldElement(BigInteger bigInteger) {
        if (bigInteger == null || bigInteger.signum() < 0 || bigInteger.bitLength() > 283) {
            md.n("x value invalid for SecT283FieldElement");
            throw null;
        }
        if (bigInteger.signum() < 0 || bigInteger.bitLength() > 320) {
            ct0.c();
            throw null;
        }
        long[] jArr = new long[5];
        int i2 = 0;
        while (bigInteger.signum() != 0) {
            jArr[i2] = bigInteger.longValue();
            bigInteger = bigInteger.shiftRight(64);
            i2++;
        }
        long j2 = jArr[4];
        long j3 = j2 >>> 27;
        jArr[0] = ((j3 << 12) ^ (((j3 << 5) ^ j3) ^ (j3 << 7))) ^ jArr[0];
        jArr[4] = j2 & 134217727;
        this.d = jArr;
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final ECFieldElement a(ECFieldElement eCFieldElement) {
        long[] jArr = ((SecT283FieldElement) eCFieldElement).d;
        long[] jArr2 = this.d;
        return new SecT283FieldElement(new long[]{jArr2[0] ^ jArr[0], jArr2[1] ^ jArr[1], jArr2[2] ^ jArr[2], jArr2[3] ^ jArr[3], jArr[4] ^ jArr2[4]});
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final ECFieldElement b() {
        long[] jArr = this.d;
        return new SecT283FieldElement(new long[]{jArr[0] ^ 1, jArr[1], jArr[2], jArr[3], jArr[4]});
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final ECFieldElement d(ECFieldElement eCFieldElement) {
        return j(eCFieldElement.g());
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof SecT283FieldElement)) {
            return false;
        }
        long[] jArr = ((SecT283FieldElement) obj).d;
        for (int i2 = 4; i2 >= 0; i2--) {
            if (this.d[i2] != jArr[i2]) {
                return false;
            }
        }
        return true;
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final int f() {
        return 283;
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final ECFieldElement g() {
        long[] jArr = new long[5];
        for (int i2 = 0; i2 < 5; i2++) {
            long[] jArr2 = this.d;
            if (jArr2[i2] != 0) {
                long[] jArr3 = new long[5];
                long[] jArr4 = new long[5];
                SecT283Field.h(jArr2, jArr3);
                SecT283Field.f(jArr3, jArr2, jArr3);
                SecT283Field.i(jArr3, 2, jArr4);
                SecT283Field.f(jArr4, jArr3, jArr4);
                SecT283Field.i(jArr4, 4, jArr3);
                SecT283Field.f(jArr3, jArr4, jArr3);
                SecT283Field.i(jArr3, 8, jArr4);
                SecT283Field.f(jArr4, jArr3, jArr4);
                SecT283Field.h(jArr4, jArr4);
                SecT283Field.f(jArr4, jArr2, jArr4);
                SecT283Field.i(jArr4, 17, jArr3);
                SecT283Field.f(jArr3, jArr4, jArr3);
                SecT283Field.h(jArr3, jArr3);
                SecT283Field.f(jArr3, jArr2, jArr3);
                SecT283Field.i(jArr3, 35, jArr4);
                SecT283Field.f(jArr4, jArr3, jArr4);
                SecT283Field.i(jArr4, 70, jArr3);
                SecT283Field.f(jArr3, jArr4, jArr3);
                SecT283Field.h(jArr3, jArr3);
                SecT283Field.f(jArr3, jArr2, jArr3);
                SecT283Field.i(jArr3, 141, jArr4);
                SecT283Field.f(jArr4, jArr3, jArr4);
                SecT283Field.h(jArr4, jArr);
                return new SecT283FieldElement(jArr);
            }
        }
        r81.b();
        return null;
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final boolean h() {
        long[] jArr = this.d;
        if (jArr[0] == 1) {
            for (int i2 = 1; i2 < 5; i2++) {
                if (jArr[i2] == 0) {
                }
            }
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.i(this.d, 5) ^ 2831275;
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final boolean i() {
        for (int i2 = 0; i2 < 5; i2++) {
            if (this.d[i2] != 0) {
                return false;
            }
        }
        return true;
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final ECFieldElement j(ECFieldElement eCFieldElement) {
        long[] jArr = new long[5];
        SecT283Field.f(this.d, ((SecT283FieldElement) eCFieldElement).d, jArr);
        return new SecT283FieldElement(jArr);
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final ECFieldElement k(ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, ECFieldElement eCFieldElement3) {
        return l(eCFieldElement, eCFieldElement2, eCFieldElement3);
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final ECFieldElement l(ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, ECFieldElement eCFieldElement3) {
        long[] jArr = ((SecT283FieldElement) eCFieldElement).d;
        long[] jArr2 = ((SecT283FieldElement) eCFieldElement2).d;
        long[] jArr3 = ((SecT283FieldElement) eCFieldElement3).d;
        long[] jArr4 = new long[9];
        long[] jArr5 = new long[10];
        SecT283Field.c(this.d, jArr, jArr5);
        SecT283Field.a(jArr4, jArr5, jArr4);
        long[] jArr6 = new long[10];
        SecT283Field.c(jArr2, jArr3, jArr6);
        SecT283Field.a(jArr4, jArr6, jArr4);
        long[] jArr7 = new long[5];
        SecT283Field.g(jArr4, jArr7);
        return new SecT283FieldElement(jArr7);
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final ECFieldElement m() {
        return this;
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final ECFieldElement n() {
        long[] jArr = new long[5];
        long[] jArr2 = this.d;
        long jE = Interleave.e(jArr2[0]);
        long jE2 = Interleave.e(jArr2[1]);
        long j2 = (jE & BodyPartID.bodyIdMax) | (jE2 << 32);
        long jE3 = Interleave.e(jArr2[2]);
        long jE4 = Interleave.e(jArr2[3]);
        long j3 = (jE3 & BodyPartID.bodyIdMax) | (jE4 << 32);
        long jE5 = Interleave.e(jArr2[4]);
        long j4 = BodyPartID.bodyIdMax & jE5;
        SecT283Field.f(new long[]{(jE >>> 32) | (jE2 & (-4294967296L)), (jE3 >>> 32) | (jE4 & (-4294967296L)), jE5 >>> 32, 0, 0}, SecT283Field.f78035a, jArr);
        jArr[0] = jArr[0] ^ j2;
        jArr[1] = jArr[1] ^ j3;
        jArr[2] = jArr[2] ^ j4;
        return new SecT283FieldElement(jArr);
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final ECFieldElement o() {
        long[] jArr = new long[5];
        SecT283Field.h(this.d, jArr);
        return new SecT283FieldElement(jArr);
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final ECFieldElement p(ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2) {
        long[] jArr = ((SecT283FieldElement) eCFieldElement).d;
        long[] jArr2 = ((SecT283FieldElement) eCFieldElement2).d;
        long[] jArr3 = new long[9];
        long[] jArr4 = new long[9];
        SecT283Field.e(this.d, jArr4);
        SecT283Field.a(jArr3, jArr4, jArr3);
        long[] jArr5 = new long[10];
        SecT283Field.c(jArr, jArr2, jArr5);
        SecT283Field.a(jArr3, jArr5, jArr3);
        long[] jArr6 = new long[5];
        SecT283Field.g(jArr3, jArr6);
        return new SecT283FieldElement(jArr6);
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
        byte[] bArr = new byte[40];
        for (int i2 = 0; i2 < 5; i2++) {
            long j2 = this.d[i2];
            if (j2 != 0) {
                Pack.g(j2, bArr, (4 - i2) << 3);
            }
        }
        return new BigInteger(1, bArr);
    }

    public SecT283FieldElement() {
        this.d = new long[5];
    }

    public SecT283FieldElement(long[] jArr) {
        this.d = jArr;
    }
}
