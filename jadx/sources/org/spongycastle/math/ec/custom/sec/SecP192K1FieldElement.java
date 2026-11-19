package org.spongycastle.math.ec.custom.sec;

import defpackage.md;
import java.math.BigInteger;
import org.spongycastle.math.ec.ECFieldElement;
import org.spongycastle.math.raw.Mod;
import org.spongycastle.math.raw.Nat;
import org.spongycastle.math.raw.Nat192;
import org.spongycastle.util.Arrays;

/* JADX INFO: loaded from: classes5.dex */
public class SecP192K1FieldElement extends ECFieldElement {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final BigInteger f77980e = SecP192K1Curve.f77975i;
    public final int[] d;

    public SecP192K1FieldElement(BigInteger bigInteger) {
        if (bigInteger == null || bigInteger.signum() < 0 || bigInteger.compareTo(f77980e) >= 0) {
            md.n("x value invalid for SecP192K1FieldElement");
            throw null;
        }
        int[] iArrG = Nat192.g(bigInteger);
        if (iArrG[5] == -1) {
            int[] iArr = SecP192K1Field.f77977a;
            if (Nat192.j(iArrG, iArr)) {
                Nat192.s(iArr, iArrG);
            }
        }
        this.d = iArrG;
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final ECFieldElement a(ECFieldElement eCFieldElement) {
        int[] iArr = new int[6];
        if (Nat192.a(this.d, ((SecP192K1FieldElement) eCFieldElement).d, iArr) != 0 || (iArr[5] == -1 && Nat192.j(iArr, SecP192K1Field.f77977a))) {
            Nat.b(6, 4553, iArr);
        }
        return new SecP192K1FieldElement(iArr);
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final ECFieldElement b() {
        int[] iArr = new int[6];
        if (Nat.m(6, this.d, iArr) != 0 || (iArr[5] == -1 && Nat192.j(iArr, SecP192K1Field.f77977a))) {
            Nat.b(6, 4553, iArr);
        }
        return new SecP192K1FieldElement(iArr);
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final ECFieldElement d(ECFieldElement eCFieldElement) {
        int[] iArr = new int[6];
        Mod.b(SecP192K1Field.f77977a, ((SecP192K1FieldElement) eCFieldElement).d, iArr);
        SecP192K1Field.a(iArr, this.d, iArr);
        return new SecP192K1FieldElement(iArr);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof SecP192K1FieldElement) {
            return Nat192.f(this.d, ((SecP192K1FieldElement) obj).d);
        }
        return false;
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final int f() {
        return f77980e.bitLength();
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final ECFieldElement g() {
        int[] iArr = new int[6];
        Mod.b(SecP192K1Field.f77977a, this.d, iArr);
        return new SecP192K1FieldElement(iArr);
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final boolean h() {
        return Nat192.k(this.d);
    }

    public final int hashCode() {
        return Arrays.f(6, this.d) ^ f77980e.hashCode();
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final boolean i() {
        return Nat192.l(this.d);
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final ECFieldElement j(ECFieldElement eCFieldElement) {
        int[] iArr = new int[6];
        SecP192K1Field.a(this.d, ((SecP192K1FieldElement) eCFieldElement).d, iArr);
        return new SecP192K1FieldElement(iArr);
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
            Nat192.q(SecP192K1Field.f77977a, iArr2, iArr);
        }
        return new SecP192K1FieldElement(iArr);
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final ECFieldElement n() {
        int[] iArr = this.d;
        if (Nat192.l(iArr) || Nat192.k(iArr)) {
            return this;
        }
        int[] iArr2 = new int[6];
        SecP192K1Field.d(iArr, iArr2);
        SecP192K1Field.a(iArr2, iArr, iArr2);
        int[] iArr3 = new int[6];
        SecP192K1Field.d(iArr2, iArr3);
        SecP192K1Field.a(iArr3, iArr, iArr3);
        int[] iArr4 = new int[6];
        SecP192K1Field.e(iArr3, 3, iArr4);
        SecP192K1Field.a(iArr4, iArr3, iArr4);
        SecP192K1Field.e(iArr4, 2, iArr4);
        SecP192K1Field.a(iArr4, iArr2, iArr4);
        SecP192K1Field.e(iArr4, 8, iArr2);
        SecP192K1Field.a(iArr2, iArr4, iArr2);
        SecP192K1Field.e(iArr2, 3, iArr4);
        SecP192K1Field.a(iArr4, iArr3, iArr4);
        int[] iArr5 = new int[6];
        SecP192K1Field.e(iArr4, 16, iArr5);
        SecP192K1Field.a(iArr5, iArr2, iArr5);
        SecP192K1Field.e(iArr5, 35, iArr2);
        SecP192K1Field.a(iArr2, iArr5, iArr2);
        SecP192K1Field.e(iArr2, 70, iArr5);
        SecP192K1Field.a(iArr5, iArr2, iArr5);
        SecP192K1Field.e(iArr5, 19, iArr2);
        SecP192K1Field.a(iArr2, iArr4, iArr2);
        SecP192K1Field.e(iArr2, 20, iArr2);
        SecP192K1Field.a(iArr2, iArr4, iArr2);
        SecP192K1Field.e(iArr2, 4, iArr2);
        SecP192K1Field.a(iArr2, iArr3, iArr2);
        SecP192K1Field.e(iArr2, 6, iArr2);
        SecP192K1Field.a(iArr2, iArr3, iArr2);
        SecP192K1Field.d(iArr2, iArr2);
        SecP192K1Field.d(iArr2, iArr3);
        if (Nat192.f(iArr, iArr3)) {
            return new SecP192K1FieldElement(iArr2);
        }
        return null;
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final ECFieldElement o() {
        int[] iArr = new int[6];
        SecP192K1Field.d(this.d, iArr);
        return new SecP192K1FieldElement(iArr);
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final ECFieldElement q(ECFieldElement eCFieldElement) {
        int[] iArr = new int[6];
        SecP192K1Field.f(this.d, ((SecP192K1FieldElement) eCFieldElement).d, iArr);
        return new SecP192K1FieldElement(iArr);
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final boolean r() {
        return Nat192.i(this.d) == 1;
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final BigInteger s() {
        return Nat192.t(this.d);
    }

    public SecP192K1FieldElement() {
        this.d = new int[6];
    }

    public SecP192K1FieldElement(int[] iArr) {
        this.d = iArr;
    }
}
