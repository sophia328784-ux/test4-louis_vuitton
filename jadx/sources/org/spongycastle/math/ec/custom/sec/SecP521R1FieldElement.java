package org.spongycastle.math.ec.custom.sec;

import defpackage.md;
import java.math.BigInteger;
import org.spongycastle.math.ec.ECFieldElement;
import org.spongycastle.math.raw.Mod;
import org.spongycastle.math.raw.Nat;
import org.spongycastle.util.Arrays;

/* JADX INFO: loaded from: classes5.dex */
public class SecP521R1FieldElement extends ECFieldElement {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final BigInteger f78020e = SecP521R1Curve.f78017i;
    public final int[] d;

    public SecP521R1FieldElement(BigInteger bigInteger) {
        if (bigInteger == null || bigInteger.signum() < 0 || bigInteger.compareTo(f78020e) >= 0) {
            md.n("x value invalid for SecP521R1FieldElement");
            throw null;
        }
        int[] iArrJ = Nat.j(521, bigInteger);
        if (Nat.i(17, iArrJ, SecP521R1Field.f78019a)) {
            for (int i2 = 0; i2 < 17; i2++) {
                iArrJ[i2] = 0;
            }
        }
        this.d = iArrJ;
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final ECFieldElement a(ECFieldElement eCFieldElement) {
        int[] iArr = new int[17];
        SecP521R1Field.a(this.d, ((SecP521R1FieldElement) eCFieldElement).d, iArr);
        return new SecP521R1FieldElement(iArr);
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final ECFieldElement b() {
        int[] iArr = new int[17];
        int[] iArr2 = this.d;
        int iM = Nat.m(16, iArr2, iArr) + iArr2[16];
        if (iM > 511 || (iM == 511 && Nat.i(16, iArr, SecP521R1Field.f78019a))) {
            iM = (Nat.n(iArr) + iM) & 511;
        }
        iArr[16] = iM;
        return new SecP521R1FieldElement(iArr);
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final ECFieldElement d(ECFieldElement eCFieldElement) {
        int[] iArr = new int[17];
        Mod.b(SecP521R1Field.f78019a, ((SecP521R1FieldElement) eCFieldElement).d, iArr);
        SecP521R1Field.c(iArr, this.d, iArr);
        return new SecP521R1FieldElement(iArr);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof SecP521R1FieldElement) {
            return Nat.i(17, this.d, ((SecP521R1FieldElement) obj).d);
        }
        return false;
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final int f() {
        return f78020e.bitLength();
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final ECFieldElement g() {
        int[] iArr = new int[17];
        Mod.b(SecP521R1Field.f78019a, this.d, iArr);
        return new SecP521R1FieldElement(iArr);
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final boolean h() {
        return Nat.q(17, this.d);
    }

    public final int hashCode() {
        return Arrays.f(17, this.d) ^ f78020e.hashCode();
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final boolean i() {
        return Nat.r(17, this.d);
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final ECFieldElement j(ECFieldElement eCFieldElement) {
        int[] iArr = new int[17];
        SecP521R1Field.c(this.d, ((SecP521R1FieldElement) eCFieldElement).d, iArr);
        return new SecP521R1FieldElement(iArr);
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final ECFieldElement m() {
        int[] iArr = new int[17];
        int[] iArr2 = this.d;
        if (Nat.r(17, iArr2)) {
            for (int i2 = 0; i2 < 17; i2++) {
                iArr[i2] = 0;
            }
        } else {
            Nat.v(17, SecP521R1Field.f78019a, iArr2, iArr);
        }
        return new SecP521R1FieldElement(iArr);
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final ECFieldElement n() {
        int[] iArr = this.d;
        if (Nat.r(17, iArr) || Nat.q(17, iArr)) {
            return this;
        }
        int[] iArr2 = new int[17];
        int[] iArr3 = new int[17];
        int[] iArr4 = new int[33];
        SecP521R1Field.b(iArr, iArr4);
        SecP521R1Field.d(iArr4, iArr2);
        int i2 = 519;
        while (true) {
            i2--;
            if (i2 <= 0) {
                break;
            }
            SecP521R1Field.b(iArr2, iArr4);
            SecP521R1Field.d(iArr4, iArr2);
        }
        SecP521R1Field.f(iArr2, iArr3);
        if (Nat.i(17, iArr, iArr3)) {
            return new SecP521R1FieldElement(iArr2);
        }
        return null;
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final ECFieldElement o() {
        int[] iArr = new int[17];
        SecP521R1Field.f(this.d, iArr);
        return new SecP521R1FieldElement(iArr);
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final ECFieldElement q(ECFieldElement eCFieldElement) {
        int[] iArr = new int[17];
        SecP521R1Field.g(this.d, ((SecP521R1FieldElement) eCFieldElement).d, iArr);
        return new SecP521R1FieldElement(iArr);
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final boolean r() {
        return Nat.k(this.d) == 1;
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final BigInteger s() {
        return Nat.z(17, this.d);
    }

    public SecP521R1FieldElement() {
        this.d = new int[17];
    }

    public SecP521R1FieldElement(int[] iArr) {
        this.d = iArr;
    }
}
