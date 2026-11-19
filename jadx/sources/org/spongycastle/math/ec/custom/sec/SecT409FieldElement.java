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
public class SecT409FieldElement extends ECFieldElement {
    public final long[] d;

    public SecT409FieldElement(BigInteger bigInteger) {
        if (bigInteger == null || bigInteger.signum() < 0 || bigInteger.bitLength() > 409) {
            md.n("x value invalid for SecT409FieldElement");
            throw null;
        }
        if (bigInteger.signum() < 0 || bigInteger.bitLength() > 448) {
            ct0.c();
            throw null;
        }
        long[] jArr = new long[7];
        int i2 = 0;
        while (bigInteger.signum() != 0) {
            jArr[i2] = bigInteger.longValue();
            bigInteger = bigInteger.shiftRight(64);
            i2++;
        }
        long j2 = jArr[6];
        long j3 = j2 >>> 25;
        jArr[0] = jArr[0] ^ j3;
        jArr[1] = (j3 << 23) ^ jArr[1];
        jArr[6] = j2 & 33554431;
        this.d = jArr;
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final ECFieldElement a(ECFieldElement eCFieldElement) {
        long[] jArr = ((SecT409FieldElement) eCFieldElement).d;
        long[] jArr2 = this.d;
        return new SecT409FieldElement(new long[]{jArr2[0] ^ jArr[0], jArr2[1] ^ jArr[1], jArr2[2] ^ jArr[2], jArr2[3] ^ jArr[3], jArr2[4] ^ jArr[4], jArr2[5] ^ jArr[5], jArr2[6] ^ jArr[6]});
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final ECFieldElement b() {
        long[] jArr = this.d;
        return new SecT409FieldElement(new long[]{jArr[0] ^ 1, jArr[1], jArr[2], jArr[3], jArr[4], jArr[5], jArr[6]});
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final ECFieldElement d(ECFieldElement eCFieldElement) {
        return j(eCFieldElement.g());
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof SecT409FieldElement)) {
            return false;
        }
        long[] jArr = ((SecT409FieldElement) obj).d;
        for (int i2 = 6; i2 >= 0; i2--) {
            if (this.d[i2] != jArr[i2]) {
                return false;
            }
        }
        return true;
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final int f() {
        return 409;
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final ECFieldElement g() {
        long[] jArr = new long[7];
        for (int i2 = 0; i2 < 7; i2++) {
            long[] jArr2 = this.d;
            if (jArr2[i2] != 0) {
                long[] jArr3 = new long[7];
                long[] jArr4 = new long[7];
                long[] jArr5 = new long[7];
                long[] jArr6 = new long[13];
                SecT409Field.c(jArr2, jArr6);
                SecT409Field.e(jArr6, jArr3);
                SecT409Field.f(jArr3, 1, jArr4);
                SecT409Field.d(jArr3, jArr4, jArr3);
                SecT409Field.f(jArr4, 1, jArr4);
                SecT409Field.d(jArr3, jArr4, jArr3);
                SecT409Field.f(jArr3, 3, jArr4);
                SecT409Field.d(jArr3, jArr4, jArr3);
                SecT409Field.f(jArr3, 6, jArr4);
                SecT409Field.d(jArr3, jArr4, jArr3);
                SecT409Field.f(jArr3, 12, jArr4);
                SecT409Field.d(jArr3, jArr4, jArr5);
                SecT409Field.f(jArr5, 24, jArr3);
                SecT409Field.f(jArr3, 24, jArr4);
                SecT409Field.d(jArr3, jArr4, jArr3);
                SecT409Field.f(jArr3, 48, jArr4);
                SecT409Field.d(jArr3, jArr4, jArr3);
                SecT409Field.f(jArr3, 96, jArr4);
                SecT409Field.d(jArr3, jArr4, jArr3);
                SecT409Field.f(jArr3, 192, jArr4);
                SecT409Field.d(jArr3, jArr4, jArr3);
                SecT409Field.d(jArr3, jArr5, jArr);
                return new SecT409FieldElement(jArr);
            }
        }
        r81.b();
        return null;
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final boolean h() {
        long[] jArr = this.d;
        if (jArr[0] == 1) {
            for (int i2 = 1; i2 < 7; i2++) {
                if (jArr[i2] == 0) {
                }
            }
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.i(this.d, 7) ^ 4090087;
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final boolean i() {
        for (int i2 = 0; i2 < 7; i2++) {
            if (this.d[i2] != 0) {
                return false;
            }
        }
        return true;
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final ECFieldElement j(ECFieldElement eCFieldElement) {
        long[] jArr = new long[7];
        SecT409Field.d(this.d, ((SecT409FieldElement) eCFieldElement).d, jArr);
        return new SecT409FieldElement(jArr);
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final ECFieldElement k(ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, ECFieldElement eCFieldElement3) {
        return l(eCFieldElement, eCFieldElement2, eCFieldElement3);
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final ECFieldElement l(ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, ECFieldElement eCFieldElement3) {
        long[] jArr = ((SecT409FieldElement) eCFieldElement).d;
        long[] jArr2 = ((SecT409FieldElement) eCFieldElement2).d;
        long[] jArr3 = ((SecT409FieldElement) eCFieldElement3).d;
        long[] jArr4 = new long[13];
        long[] jArr5 = new long[14];
        SecT409Field.b(this.d, jArr, jArr5);
        for (int i2 = 0; i2 < 13; i2++) {
            jArr4[i2] = jArr4[i2] ^ jArr5[i2];
        }
        long[] jArr6 = new long[14];
        SecT409Field.b(jArr2, jArr3, jArr6);
        for (int i3 = 0; i3 < 13; i3++) {
            jArr4[i3] = jArr4[i3] ^ jArr6[i3];
        }
        long[] jArr7 = new long[7];
        SecT409Field.e(jArr4, jArr7);
        return new SecT409FieldElement(jArr7);
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
        long jE4 = Interleave.e(jArr[3]);
        long j4 = (jE3 & BodyPartID.bodyIdMax) | (jE4 << 32);
        long j5 = (jE3 >>> 32) | (jE4 & (-4294967296L));
        long jE5 = Interleave.e(jArr[4]);
        long jE6 = Interleave.e(jArr[5]);
        long j6 = (jE5 & BodyPartID.bodyIdMax) | (jE6 << 32);
        long j7 = (jE5 >>> 32) | (jE6 & (-4294967296L));
        long jE7 = Interleave.e(jArr[6]);
        long j8 = jE7 >>> 32;
        return new SecT409FieldElement(new long[]{j2 ^ (j3 << 44), (j4 ^ (j5 << 44)) ^ (j3 >>> 20), (j6 ^ (j7 << 44)) ^ (j5 >>> 20), (((jE7 & BodyPartID.bodyIdMax) ^ (j8 << 44)) ^ (j7 >>> 20)) ^ (j3 << 13), ((jE7 >>> 52) ^ (j5 << 13)) ^ (j3 >>> 51), (j7 << 13) ^ (j5 >>> 51), (j8 << 13) ^ (j7 >>> 51)});
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final ECFieldElement o() {
        long[] jArr = new long[7];
        long[] jArr2 = new long[13];
        SecT409Field.c(this.d, jArr2);
        SecT409Field.e(jArr2, jArr);
        return new SecT409FieldElement(jArr);
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final ECFieldElement p(ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2) {
        long[] jArr = ((SecT409FieldElement) eCFieldElement).d;
        long[] jArr2 = ((SecT409FieldElement) eCFieldElement2).d;
        long[] jArr3 = new long[13];
        long[] jArr4 = new long[13];
        SecT409Field.c(this.d, jArr4);
        for (int i2 = 0; i2 < 13; i2++) {
            jArr3[i2] = jArr3[i2] ^ jArr4[i2];
        }
        long[] jArr5 = new long[14];
        SecT409Field.b(jArr, jArr2, jArr5);
        for (int i3 = 0; i3 < 13; i3++) {
            jArr3[i3] = jArr3[i3] ^ jArr5[i3];
        }
        long[] jArr6 = new long[7];
        SecT409Field.e(jArr3, jArr6);
        return new SecT409FieldElement(jArr6);
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
        byte[] bArr = new byte[56];
        for (int i2 = 0; i2 < 7; i2++) {
            long j2 = this.d[i2];
            if (j2 != 0) {
                Pack.g(j2, bArr, (6 - i2) << 3);
            }
        }
        return new BigInteger(1, bArr);
    }

    public SecT409FieldElement() {
        this.d = new long[7];
    }

    public SecT409FieldElement(long[] jArr) {
        this.d = jArr;
    }
}
