package org.spongycastle.math.ec.custom.sec;

import defpackage.md;
import java.math.BigInteger;
import org.spongycastle.math.ec.ECFieldElement;
import org.spongycastle.math.raw.Mod;
import org.spongycastle.math.raw.Nat;
import org.spongycastle.math.raw.Nat256;
import org.spongycastle.util.Arrays;

/* JADX INFO: loaded from: classes5.dex */
public class SecP256R1FieldElement extends ECFieldElement {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final BigInteger f78010e = SecP256R1Curve.f78006i;
    public final int[] d;

    public SecP256R1FieldElement(BigInteger bigInteger) {
        if (bigInteger == null || bigInteger.signum() < 0 || bigInteger.compareTo(f78010e) >= 0) {
            md.n("x value invalid for SecP256R1FieldElement");
            throw null;
        }
        int[] iArrH = Nat256.h(bigInteger);
        if (iArrH[7] == -1) {
            int[] iArr = SecP256R1Field.f78008a;
            if (Nat256.k(iArrH, iArr)) {
                Nat256.u(iArr, iArrH);
            }
        }
        this.d = iArrH;
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final ECFieldElement a(ECFieldElement eCFieldElement) {
        int[] iArr = new int[8];
        if (Nat256.a(this.d, ((SecP256R1FieldElement) eCFieldElement).d, iArr) != 0 || (iArr[7] == -1 && Nat256.k(iArr, SecP256R1Field.f78008a))) {
            SecP256R1Field.a(iArr);
        }
        return new SecP256R1FieldElement(iArr);
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final ECFieldElement b() {
        int[] iArr = new int[8];
        if (Nat.m(8, this.d, iArr) != 0 || (iArr[7] == -1 && Nat256.k(iArr, SecP256R1Field.f78008a))) {
            SecP256R1Field.a(iArr);
        }
        return new SecP256R1FieldElement(iArr);
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final ECFieldElement d(ECFieldElement eCFieldElement) {
        int[] iArr = new int[8];
        Mod.b(SecP256R1Field.f78008a, ((SecP256R1FieldElement) eCFieldElement).d, iArr);
        SecP256R1Field.b(iArr, this.d, iArr);
        return new SecP256R1FieldElement(iArr);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof SecP256R1FieldElement) {
            return Nat256.f(this.d, ((SecP256R1FieldElement) obj).d);
        }
        return false;
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final int f() {
        return f78010e.bitLength();
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final ECFieldElement g() {
        int[] iArr = new int[8];
        Mod.b(SecP256R1Field.f78008a, this.d, iArr);
        return new SecP256R1FieldElement(iArr);
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final boolean h() {
        return Nat256.l(this.d);
    }

    public final int hashCode() {
        return Arrays.f(8, this.d) ^ f78010e.hashCode();
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final boolean i() {
        return Nat256.n(this.d);
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final ECFieldElement j(ECFieldElement eCFieldElement) {
        int[] iArr = new int[8];
        SecP256R1Field.b(this.d, ((SecP256R1FieldElement) eCFieldElement).d, iArr);
        return new SecP256R1FieldElement(iArr);
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final ECFieldElement m() {
        int[] iArr = new int[8];
        int[] iArr2 = this.d;
        if (Nat256.n(iArr2)) {
            Nat256.x(iArr);
        } else {
            Nat256.s(SecP256R1Field.f78008a, iArr2, iArr);
        }
        return new SecP256R1FieldElement(iArr);
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final ECFieldElement n() {
        int[] iArr = this.d;
        if (Nat256.n(iArr) || Nat256.l(iArr)) {
            return this;
        }
        int[] iArr2 = new int[8];
        int[] iArr3 = new int[8];
        SecP256R1Field.e(iArr, iArr2);
        SecP256R1Field.b(iArr2, iArr, iArr2);
        SecP256R1Field.f(iArr2, 2, iArr3);
        SecP256R1Field.b(iArr3, iArr2, iArr3);
        SecP256R1Field.f(iArr3, 4, iArr2);
        SecP256R1Field.b(iArr2, iArr3, iArr2);
        SecP256R1Field.f(iArr2, 8, iArr3);
        SecP256R1Field.b(iArr3, iArr2, iArr3);
        SecP256R1Field.f(iArr3, 16, iArr2);
        SecP256R1Field.b(iArr2, iArr3, iArr2);
        SecP256R1Field.f(iArr2, 32, iArr2);
        SecP256R1Field.b(iArr2, iArr, iArr2);
        SecP256R1Field.f(iArr2, 96, iArr2);
        SecP256R1Field.b(iArr2, iArr, iArr2);
        SecP256R1Field.f(iArr2, 94, iArr2);
        SecP256R1Field.e(iArr2, iArr3);
        if (Nat256.f(iArr, iArr3)) {
            return new SecP256R1FieldElement(iArr2);
        }
        return null;
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final ECFieldElement o() {
        int[] iArr = new int[8];
        SecP256R1Field.e(this.d, iArr);
        return new SecP256R1FieldElement(iArr);
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final ECFieldElement q(ECFieldElement eCFieldElement) {
        int[] iArr = new int[8];
        SecP256R1Field.g(this.d, ((SecP256R1FieldElement) eCFieldElement).d, iArr);
        return new SecP256R1FieldElement(iArr);
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final boolean r() {
        return Nat256.j(this.d) == 1;
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final BigInteger s() {
        return Nat256.v(this.d);
    }

    public SecP256R1FieldElement() {
        this.d = new int[8];
    }

    public SecP256R1FieldElement(int[] iArr) {
        this.d = iArr;
    }
}
