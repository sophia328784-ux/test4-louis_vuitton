package org.spongycastle.math.ec.custom.sec;

import defpackage.md;
import java.math.BigInteger;
import org.spongycastle.math.ec.ECFieldElement;
import org.spongycastle.math.raw.Mod;
import org.spongycastle.math.raw.Nat;
import org.spongycastle.math.raw.Nat256;
import org.spongycastle.util.Arrays;

/* JADX INFO: loaded from: classes5.dex */
public class SecP256K1FieldElement extends ECFieldElement {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final BigInteger f78005e = SecP256K1Curve.f78000i;
    public final int[] d;

    public SecP256K1FieldElement(BigInteger bigInteger) {
        if (bigInteger == null || bigInteger.signum() < 0 || bigInteger.compareTo(f78005e) >= 0) {
            md.n("x value invalid for SecP256K1FieldElement");
            throw null;
        }
        int[] iArrH = Nat256.h(bigInteger);
        if (iArrH[7] == -1) {
            int[] iArr = SecP256K1Field.f78002a;
            if (Nat256.k(iArrH, iArr)) {
                Nat256.u(iArr, iArrH);
            }
        }
        this.d = iArrH;
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final ECFieldElement a(ECFieldElement eCFieldElement) {
        int[] iArr = new int[8];
        if (Nat256.a(this.d, ((SecP256K1FieldElement) eCFieldElement).d, iArr) != 0 || (iArr[7] == -1 && Nat256.k(iArr, SecP256K1Field.f78002a))) {
            Nat.b(8, 977, iArr);
        }
        return new SecP256K1FieldElement(iArr);
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final ECFieldElement b() {
        int[] iArr = new int[8];
        if (Nat.m(8, this.d, iArr) != 0 || (iArr[7] == -1 && Nat256.k(iArr, SecP256K1Field.f78002a))) {
            Nat.b(8, 977, iArr);
        }
        return new SecP256K1FieldElement(iArr);
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final ECFieldElement d(ECFieldElement eCFieldElement) {
        int[] iArr = new int[8];
        Mod.b(SecP256K1Field.f78002a, ((SecP256K1FieldElement) eCFieldElement).d, iArr);
        SecP256K1Field.a(iArr, this.d, iArr);
        return new SecP256K1FieldElement(iArr);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof SecP256K1FieldElement) {
            return Nat256.f(this.d, ((SecP256K1FieldElement) obj).d);
        }
        return false;
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final int f() {
        return f78005e.bitLength();
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final ECFieldElement g() {
        int[] iArr = new int[8];
        Mod.b(SecP256K1Field.f78002a, this.d, iArr);
        return new SecP256K1FieldElement(iArr);
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final boolean h() {
        return Nat256.l(this.d);
    }

    public final int hashCode() {
        return Arrays.f(8, this.d) ^ f78005e.hashCode();
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final boolean i() {
        return Nat256.n(this.d);
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final ECFieldElement j(ECFieldElement eCFieldElement) {
        int[] iArr = new int[8];
        SecP256K1Field.a(this.d, ((SecP256K1FieldElement) eCFieldElement).d, iArr);
        return new SecP256K1FieldElement(iArr);
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final ECFieldElement m() {
        int[] iArr = new int[8];
        int[] iArr2 = this.d;
        if (Nat256.n(iArr2)) {
            Nat256.x(iArr);
        } else {
            Nat256.s(SecP256K1Field.f78002a, iArr2, iArr);
        }
        return new SecP256K1FieldElement(iArr);
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final ECFieldElement n() {
        int[] iArr = this.d;
        if (Nat256.n(iArr) || Nat256.l(iArr)) {
            return this;
        }
        int[] iArr2 = new int[8];
        SecP256K1Field.d(iArr, iArr2);
        SecP256K1Field.a(iArr2, iArr, iArr2);
        int[] iArr3 = new int[8];
        SecP256K1Field.d(iArr2, iArr3);
        SecP256K1Field.a(iArr3, iArr, iArr3);
        int[] iArr4 = new int[8];
        SecP256K1Field.e(iArr3, 3, iArr4);
        SecP256K1Field.a(iArr4, iArr3, iArr4);
        SecP256K1Field.e(iArr4, 3, iArr4);
        SecP256K1Field.a(iArr4, iArr3, iArr4);
        SecP256K1Field.e(iArr4, 2, iArr4);
        SecP256K1Field.a(iArr4, iArr2, iArr4);
        int[] iArr5 = new int[8];
        SecP256K1Field.e(iArr4, 11, iArr5);
        SecP256K1Field.a(iArr5, iArr4, iArr5);
        SecP256K1Field.e(iArr5, 22, iArr4);
        SecP256K1Field.a(iArr4, iArr5, iArr4);
        int[] iArr6 = new int[8];
        SecP256K1Field.e(iArr4, 44, iArr6);
        SecP256K1Field.a(iArr6, iArr4, iArr6);
        int[] iArr7 = new int[8];
        SecP256K1Field.e(iArr6, 88, iArr7);
        SecP256K1Field.a(iArr7, iArr6, iArr7);
        SecP256K1Field.e(iArr7, 44, iArr6);
        SecP256K1Field.a(iArr6, iArr4, iArr6);
        SecP256K1Field.e(iArr6, 3, iArr4);
        SecP256K1Field.a(iArr4, iArr3, iArr4);
        SecP256K1Field.e(iArr4, 23, iArr4);
        SecP256K1Field.a(iArr4, iArr5, iArr4);
        SecP256K1Field.e(iArr4, 6, iArr4);
        SecP256K1Field.a(iArr4, iArr2, iArr4);
        SecP256K1Field.e(iArr4, 2, iArr4);
        SecP256K1Field.d(iArr4, iArr2);
        if (Nat256.f(iArr, iArr2)) {
            return new SecP256K1FieldElement(iArr4);
        }
        return null;
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final ECFieldElement o() {
        int[] iArr = new int[8];
        SecP256K1Field.d(this.d, iArr);
        return new SecP256K1FieldElement(iArr);
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final ECFieldElement q(ECFieldElement eCFieldElement) {
        int[] iArr = new int[8];
        SecP256K1Field.f(this.d, ((SecP256K1FieldElement) eCFieldElement).d, iArr);
        return new SecP256K1FieldElement(iArr);
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final boolean r() {
        return Nat256.j(this.d) == 1;
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final BigInteger s() {
        return Nat256.v(this.d);
    }

    public SecP256K1FieldElement() {
        this.d = new int[8];
    }

    public SecP256K1FieldElement(int[] iArr) {
        this.d = iArr;
    }
}
