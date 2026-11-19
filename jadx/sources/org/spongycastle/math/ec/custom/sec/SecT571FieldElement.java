package org.spongycastle.math.ec.custom.sec;

import defpackage.ct0;
import defpackage.md;
import defpackage.r81;
import java.math.BigInteger;
import net.rtccloud.sdk.Sink;
import org.bouncycastle.asn1.cmc.BodyPartID;
import org.spongycastle.math.ec.ECFieldElement;
import org.spongycastle.math.raw.Interleave;
import org.spongycastle.math.raw.Nat576;
import org.spongycastle.util.Arrays;
import org.spongycastle.util.Pack;

/* JADX INFO: loaded from: classes5.dex */
public class SecT571FieldElement extends ECFieldElement {
    public final long[] d;

    public SecT571FieldElement(BigInteger bigInteger) {
        if (bigInteger == null || bigInteger.signum() < 0 || bigInteger.bitLength() > 571) {
            md.n("x value invalid for SecT571FieldElement");
            throw null;
        }
        if (bigInteger.signum() < 0 || bigInteger.bitLength() > 576) {
            ct0.c();
            throw null;
        }
        long[] jArr = new long[9];
        int i2 = 0;
        while (bigInteger.signum() != 0) {
            jArr[i2] = bigInteger.longValue();
            bigInteger = bigInteger.shiftRight(64);
            i2++;
        }
        SecT571Field.j(jArr, 0);
        this.d = jArr;
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final ECFieldElement a(ECFieldElement eCFieldElement) {
        long[] jArr = new long[9];
        SecT571Field.a(this.d, ((SecT571FieldElement) eCFieldElement).d, jArr);
        return new SecT571FieldElement(jArr);
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final ECFieldElement b() {
        long[] jArr = new long[9];
        long[] jArr2 = this.d;
        jArr[0] = jArr2[0] ^ 1;
        for (int i2 = 1; i2 < 9; i2++) {
            jArr[i2] = jArr2[i2];
        }
        return new SecT571FieldElement(jArr);
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final ECFieldElement d(ECFieldElement eCFieldElement) {
        return j(eCFieldElement.g());
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof SecT571FieldElement)) {
            return false;
        }
        long[] jArr = ((SecT571FieldElement) obj).d;
        for (int i2 = 8; i2 >= 0; i2--) {
            if (this.d[i2] != jArr[i2]) {
                return false;
            }
        }
        return true;
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final int f() {
        return 571;
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final ECFieldElement g() {
        long[] jArr = new long[9];
        long[] jArr2 = this.d;
        if (Nat576.a(jArr2)) {
            r81.b();
            return null;
        }
        long[] jArr3 = new long[9];
        long[] jArr4 = new long[9];
        long[] jArr5 = new long[9];
        SecT571Field.k(jArr2, jArr5);
        SecT571Field.k(jArr5, jArr3);
        SecT571Field.k(jArr3, jArr4);
        SecT571Field.e(jArr3, jArr4, jArr3);
        SecT571Field.l(jArr3, 2, jArr4);
        SecT571Field.e(jArr3, jArr4, jArr3);
        SecT571Field.e(jArr3, jArr5, jArr3);
        SecT571Field.l(jArr3, 5, jArr4);
        SecT571Field.e(jArr3, jArr4, jArr3);
        SecT571Field.l(jArr4, 5, jArr4);
        SecT571Field.e(jArr3, jArr4, jArr3);
        SecT571Field.l(jArr3, 15, jArr4);
        SecT571Field.e(jArr3, jArr4, jArr5);
        SecT571Field.l(jArr5, 30, jArr3);
        SecT571Field.l(jArr3, 30, jArr4);
        SecT571Field.e(jArr3, jArr4, jArr3);
        SecT571Field.l(jArr3, 60, jArr4);
        SecT571Field.e(jArr3, jArr4, jArr3);
        SecT571Field.l(jArr4, 60, jArr4);
        SecT571Field.e(jArr3, jArr4, jArr3);
        SecT571Field.l(jArr3, Sink.ORIENTATION_180, jArr4);
        SecT571Field.e(jArr3, jArr4, jArr3);
        SecT571Field.l(jArr4, Sink.ORIENTATION_180, jArr4);
        SecT571Field.e(jArr3, jArr4, jArr3);
        SecT571Field.e(jArr3, jArr5, jArr);
        return new SecT571FieldElement(jArr);
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final boolean h() {
        long[] jArr = this.d;
        if (jArr[0] == 1) {
            for (int i2 = 1; i2 < 9; i2++) {
                if (jArr[i2] == 0) {
                }
            }
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.i(this.d, 9) ^ 5711052;
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final boolean i() {
        return Nat576.a(this.d);
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final ECFieldElement j(ECFieldElement eCFieldElement) {
        long[] jArr = new long[9];
        SecT571Field.e(this.d, ((SecT571FieldElement) eCFieldElement).d, jArr);
        return new SecT571FieldElement(jArr);
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final ECFieldElement k(ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, ECFieldElement eCFieldElement3) {
        return l(eCFieldElement, eCFieldElement2, eCFieldElement3);
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final ECFieldElement l(ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, ECFieldElement eCFieldElement3) {
        long[] jArr = ((SecT571FieldElement) eCFieldElement).d;
        long[] jArr2 = ((SecT571FieldElement) eCFieldElement2).d;
        long[] jArr3 = ((SecT571FieldElement) eCFieldElement3).d;
        long[] jArr4 = new long[18];
        SecT571Field.f(this.d, jArr, jArr4);
        SecT571Field.f(jArr2, jArr3, jArr4);
        long[] jArr5 = new long[9];
        SecT571Field.i(jArr4, jArr5);
        return new SecT571FieldElement(jArr5);
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final ECFieldElement m() {
        return this;
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final ECFieldElement n() {
        long[] jArr = new long[9];
        long[] jArr2 = new long[9];
        long[] jArr3 = new long[9];
        int i2 = 0;
        int i3 = 0;
        while (true) {
            long[] jArr4 = this.d;
            if (i2 >= 4) {
                long jE = Interleave.e(jArr4[i3]);
                jArr2[4] = jE & BodyPartID.bodyIdMax;
                jArr3[4] = jE >>> 32;
                SecT571Field.e(jArr3, SecT571Field.f78040a, jArr);
                SecT571Field.a(jArr, jArr2, jArr);
                return new SecT571FieldElement(jArr);
            }
            int i4 = i3 + 1;
            long jE2 = Interleave.e(jArr4[i3]);
            i3 += 2;
            long jE3 = Interleave.e(jArr4[i4]);
            jArr2[i2] = (jE2 & BodyPartID.bodyIdMax) | (jE3 << 32);
            jArr3[i2] = (jE2 >>> 32) | ((-4294967296L) & jE3);
            i2++;
        }
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final ECFieldElement o() {
        long[] jArr = new long[9];
        SecT571Field.k(this.d, jArr);
        return new SecT571FieldElement(jArr);
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final ECFieldElement p(ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2) {
        long[] jArr = ((SecT571FieldElement) eCFieldElement).d;
        long[] jArr2 = ((SecT571FieldElement) eCFieldElement2).d;
        long[] jArr3 = new long[18];
        long[] jArr4 = new long[18];
        SecT571Field.d(this.d, jArr4);
        for (int i2 = 0; i2 < 18; i2++) {
            jArr3[i2] = jArr3[i2] ^ jArr4[i2];
        }
        SecT571Field.f(jArr, jArr2, jArr3);
        long[] jArr5 = new long[9];
        SecT571Field.i(jArr3, jArr5);
        return new SecT571FieldElement(jArr5);
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
        byte[] bArr = new byte[72];
        for (int i2 = 0; i2 < 9; i2++) {
            long j2 = this.d[i2];
            if (j2 != 0) {
                Pack.g(j2, bArr, (8 - i2) << 3);
            }
        }
        return new BigInteger(1, bArr);
    }

    public SecT571FieldElement() {
        this.d = new long[9];
    }

    public SecT571FieldElement(long[] jArr) {
        this.d = jArr;
    }
}
