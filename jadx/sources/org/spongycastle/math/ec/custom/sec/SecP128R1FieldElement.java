package org.spongycastle.math.ec.custom.sec;

import defpackage.ct0;
import defpackage.md;
import java.math.BigInteger;
import org.bouncycastle.asn1.cmc.BodyPartID;
import org.spongycastle.math.ec.ECFieldElement;
import org.spongycastle.math.raw.Mod;
import org.spongycastle.math.raw.Nat;
import org.spongycastle.math.raw.Nat128;
import org.spongycastle.util.Arrays;
import org.spongycastle.util.Pack;

/* JADX INFO: loaded from: classes5.dex */
public class SecP128R1FieldElement extends ECFieldElement {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final BigInteger f77960e = SecP128R1Curve.f77955i;
    public final int[] d;

    public SecP128R1FieldElement(BigInteger bigInteger) {
        if (bigInteger == null || bigInteger.signum() < 0 || bigInteger.compareTo(f77960e) >= 0) {
            md.n("x value invalid for SecP128R1FieldElement");
            throw null;
        }
        if (bigInteger.signum() < 0 || bigInteger.bitLength() > 128) {
            ct0.c();
            throw null;
        }
        int[] iArr = new int[4];
        int i2 = 0;
        while (bigInteger.signum() != 0) {
            iArr[i2] = bigInteger.intValue();
            bigInteger = bigInteger.shiftRight(32);
            i2++;
        }
        if ((iArr[3] >>> 1) >= 2147483646) {
            int[] iArr2 = SecP128R1Field.f77957a;
            if (Nat128.b(iArr, iArr2)) {
                long j2 = (((long) iArr[0]) & BodyPartID.bodyIdMax) - (((long) iArr2[0]) & BodyPartID.bodyIdMax);
                iArr[0] = (int) j2;
                long j3 = ((((long) iArr[1]) & BodyPartID.bodyIdMax) - (((long) iArr2[1]) & BodyPartID.bodyIdMax)) + (j2 >> 32);
                iArr[1] = (int) j3;
                long j4 = ((((long) iArr[2]) & BodyPartID.bodyIdMax) - (((long) iArr2[2]) & BodyPartID.bodyIdMax)) + (j3 >> 32);
                iArr[2] = (int) j4;
                iArr[3] = (int) (((((long) iArr[3]) & BodyPartID.bodyIdMax) - (((long) iArr2[3]) & BodyPartID.bodyIdMax)) + (j4 >> 32));
            }
        }
        this.d = iArr;
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final ECFieldElement a(ECFieldElement eCFieldElement) {
        int[] iArr = new int[4];
        SecP128R1Field.a(this.d, ((SecP128R1FieldElement) eCFieldElement).d, iArr);
        return new SecP128R1FieldElement(iArr);
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final ECFieldElement b() {
        int[] iArr = new int[4];
        if (Nat.m(4, this.d, iArr) != 0 || ((iArr[3] >>> 1) >= 2147483646 && Nat128.b(iArr, SecP128R1Field.f77957a))) {
            SecP128R1Field.b(iArr);
        }
        return new SecP128R1FieldElement(iArr);
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final ECFieldElement d(ECFieldElement eCFieldElement) {
        int[] iArr = new int[4];
        Mod.b(SecP128R1Field.f77957a, ((SecP128R1FieldElement) eCFieldElement).d, iArr);
        SecP128R1Field.c(iArr, this.d, iArr);
        return new SecP128R1FieldElement(iArr);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof SecP128R1FieldElement)) {
            return false;
        }
        int[] iArr = ((SecP128R1FieldElement) obj).d;
        for (int i2 = 3; i2 >= 0; i2--) {
            if (this.d[i2] != iArr[i2]) {
                return false;
            }
        }
        return true;
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final int f() {
        return f77960e.bitLength();
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final ECFieldElement g() {
        int[] iArr = new int[4];
        Mod.b(SecP128R1Field.f77957a, this.d, iArr);
        return new SecP128R1FieldElement(iArr);
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final boolean h() {
        return Nat128.c(this.d);
    }

    public final int hashCode() {
        return Arrays.f(4, this.d) ^ f77960e.hashCode();
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final boolean i() {
        return Nat128.d(this.d);
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final ECFieldElement j(ECFieldElement eCFieldElement) {
        int[] iArr = new int[4];
        SecP128R1Field.c(this.d, ((SecP128R1FieldElement) eCFieldElement).d, iArr);
        return new SecP128R1FieldElement(iArr);
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final ECFieldElement m() {
        int[] iArr = new int[4];
        int[] iArr2 = this.d;
        if (Nat128.d(iArr2)) {
            iArr[0] = 0;
            iArr[1] = 0;
            iArr[2] = 0;
            iArr[3] = 0;
        } else {
            Nat128.g(SecP128R1Field.f77957a, iArr2, iArr);
        }
        return new SecP128R1FieldElement(iArr);
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final ECFieldElement n() {
        int[] iArr = this.d;
        if (Nat128.d(iArr) || Nat128.c(iArr)) {
            return this;
        }
        int[] iArr2 = new int[4];
        SecP128R1Field.f(iArr, iArr2);
        SecP128R1Field.c(iArr2, iArr, iArr2);
        int[] iArr3 = new int[4];
        SecP128R1Field.g(iArr2, 2, iArr3);
        SecP128R1Field.c(iArr3, iArr2, iArr3);
        int[] iArr4 = new int[4];
        SecP128R1Field.g(iArr3, 4, iArr4);
        SecP128R1Field.c(iArr4, iArr3, iArr4);
        SecP128R1Field.g(iArr4, 2, iArr3);
        SecP128R1Field.c(iArr3, iArr2, iArr3);
        SecP128R1Field.g(iArr3, 10, iArr2);
        SecP128R1Field.c(iArr2, iArr3, iArr2);
        SecP128R1Field.g(iArr2, 10, iArr4);
        SecP128R1Field.c(iArr4, iArr3, iArr4);
        SecP128R1Field.f(iArr4, iArr3);
        SecP128R1Field.c(iArr3, iArr, iArr3);
        SecP128R1Field.g(iArr3, 95, iArr3);
        SecP128R1Field.f(iArr3, iArr4);
        for (int i2 = 3; i2 >= 0; i2--) {
            if (iArr[i2] != iArr4[i2]) {
                return null;
            }
        }
        return new SecP128R1FieldElement(iArr3);
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final ECFieldElement o() {
        int[] iArr = new int[4];
        SecP128R1Field.f(this.d, iArr);
        return new SecP128R1FieldElement(iArr);
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final ECFieldElement q(ECFieldElement eCFieldElement) {
        int[] iArr = new int[4];
        SecP128R1Field.h(this.d, ((SecP128R1FieldElement) eCFieldElement).d, iArr);
        return new SecP128R1FieldElement(iArr);
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final boolean r() {
        return (this.d[0] & 1) == 1;
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final BigInteger s() {
        byte[] bArr = new byte[16];
        for (int i2 = 0; i2 < 4; i2++) {
            int i3 = this.d[i2];
            if (i3 != 0) {
                Pack.c(i3, bArr, (3 - i2) << 2);
            }
        }
        return new BigInteger(1, bArr);
    }

    public SecP128R1FieldElement() {
        this.d = new int[4];
    }

    public SecP128R1FieldElement(int[] iArr) {
        this.d = iArr;
    }
}
