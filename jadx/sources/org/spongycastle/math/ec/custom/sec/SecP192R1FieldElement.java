package org.spongycastle.math.ec.custom.sec;

import defpackage.md;
import java.math.BigInteger;
import org.spongycastle.math.ec.ECFieldElement;
import org.spongycastle.math.raw.Mod;
import org.spongycastle.math.raw.Nat;
import org.spongycastle.math.raw.Nat192;
import org.spongycastle.util.Arrays;

/* JADX INFO: loaded from: classes5.dex */
public class SecP192R1FieldElement extends ECFieldElement {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final BigInteger f77986e = SecP192R1Curve.f77981i;
    public final int[] d;

    public SecP192R1FieldElement(BigInteger bigInteger) {
        if (bigInteger == null || bigInteger.signum() < 0 || bigInteger.compareTo(f77986e) >= 0) {
            md.n("x value invalid for SecP192R1FieldElement");
            throw null;
        }
        int[] iArrG = Nat192.g(bigInteger);
        if (iArrG[5] == -1) {
            int[] iArr = SecP192R1Field.f77983a;
            if (Nat192.j(iArrG, iArr)) {
                Nat192.s(iArr, iArrG);
            }
        }
        this.d = iArrG;
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final ECFieldElement a(ECFieldElement eCFieldElement) {
        int[] iArr = new int[6];
        if (Nat192.a(this.d, ((SecP192R1FieldElement) eCFieldElement).d, iArr) != 0 || (iArr[5] == -1 && Nat192.j(iArr, SecP192R1Field.f77983a))) {
            SecP192R1Field.a(iArr);
        }
        return new SecP192R1FieldElement(iArr);
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final ECFieldElement b() {
        int[] iArr = new int[6];
        if (Nat.m(6, this.d, iArr) != 0 || (iArr[5] == -1 && Nat192.j(iArr, SecP192R1Field.f77983a))) {
            SecP192R1Field.a(iArr);
        }
        return new SecP192R1FieldElement(iArr);
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final ECFieldElement d(ECFieldElement eCFieldElement) {
        int[] iArr = new int[6];
        Mod.b(SecP192R1Field.f77983a, ((SecP192R1FieldElement) eCFieldElement).d, iArr);
        SecP192R1Field.b(iArr, this.d, iArr);
        return new SecP192R1FieldElement(iArr);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof SecP192R1FieldElement) {
            return Nat192.f(this.d, ((SecP192R1FieldElement) obj).d);
        }
        return false;
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final int f() {
        return f77986e.bitLength();
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final ECFieldElement g() {
        int[] iArr = new int[6];
        Mod.b(SecP192R1Field.f77983a, this.d, iArr);
        return new SecP192R1FieldElement(iArr);
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final boolean h() {
        return Nat192.k(this.d);
    }

    public final int hashCode() {
        return Arrays.f(6, this.d) ^ f77986e.hashCode();
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final boolean i() {
        return Nat192.l(this.d);
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final ECFieldElement j(ECFieldElement eCFieldElement) {
        int[] iArr = new int[6];
        SecP192R1Field.b(this.d, ((SecP192R1FieldElement) eCFieldElement).d, iArr);
        return new SecP192R1FieldElement(iArr);
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final ECFieldElement m() {
        int[] iArr = new int[6];
        int[] iArr2 = this.d;
        if (Nat192.l(iArr2)) {
            iArr[0] = 0;
            iArr[1] = 0;
            iArr[2] = 0;
            iArr[3] = 0;
            iArr[4] = 0;
            iArr[5] = 0;
        } else {
            Nat192.q(SecP192R1Field.f77983a, iArr2, iArr);
        }
        return new SecP192R1FieldElement(iArr);
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final ECFieldElement n() {
        int[] iArr = this.d;
        if (Nat192.l(iArr) || Nat192.k(iArr)) {
            return this;
        }
        int[] iArr2 = new int[6];
        int[] iArr3 = new int[6];
        SecP192R1Field.e(iArr, iArr2);
        SecP192R1Field.b(iArr2, iArr, iArr2);
        SecP192R1Field.f(iArr2, 2, iArr3);
        SecP192R1Field.b(iArr3, iArr2, iArr3);
        SecP192R1Field.f(iArr3, 4, iArr2);
        SecP192R1Field.b(iArr2, iArr3, iArr2);
        SecP192R1Field.f(iArr2, 8, iArr3);
        SecP192R1Field.b(iArr3, iArr2, iArr3);
        SecP192R1Field.f(iArr3, 16, iArr2);
        SecP192R1Field.b(iArr2, iArr3, iArr2);
        SecP192R1Field.f(iArr2, 32, iArr3);
        SecP192R1Field.b(iArr3, iArr2, iArr3);
        SecP192R1Field.f(iArr3, 64, iArr2);
        SecP192R1Field.b(iArr2, iArr3, iArr2);
        SecP192R1Field.f(iArr2, 62, iArr2);
        SecP192R1Field.e(iArr2, iArr3);
        if (Nat192.f(iArr, iArr3)) {
            return new SecP192R1FieldElement(iArr2);
        }
        return null;
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final ECFieldElement o() {
        int[] iArr = new int[6];
        SecP192R1Field.e(this.d, iArr);
        return new SecP192R1FieldElement(iArr);
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final ECFieldElement q(ECFieldElement eCFieldElement) {
        int[] iArr = new int[6];
        SecP192R1Field.g(this.d, ((SecP192R1FieldElement) eCFieldElement).d, iArr);
        return new SecP192R1FieldElement(iArr);
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final boolean r() {
        return Nat192.i(this.d) == 1;
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final BigInteger s() {
        return Nat192.t(this.d);
    }

    public SecP192R1FieldElement() {
        this.d = new int[6];
    }

    public SecP192R1FieldElement(int[] iArr) {
        this.d = iArr;
    }
}
