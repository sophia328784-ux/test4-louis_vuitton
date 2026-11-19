package org.spongycastle.math.ec.custom.sec;

import defpackage.md;
import java.math.BigInteger;
import org.spongycastle.math.ec.ECFieldElement;
import org.spongycastle.math.raw.Mod;
import org.spongycastle.math.raw.Nat;
import org.spongycastle.math.raw.Nat160;
import org.spongycastle.util.Arrays;

/* JADX INFO: loaded from: classes5.dex */
public class SecP160R1FieldElement extends ECFieldElement {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final BigInteger f77968e = SecP160R1Curve.f77963i;
    public final int[] d;

    public SecP160R1FieldElement(BigInteger bigInteger) {
        if (bigInteger == null || bigInteger.signum() < 0 || bigInteger.compareTo(f77968e) >= 0) {
            md.n("x value invalid for SecP160R1FieldElement");
            throw null;
        }
        int[] iArrD = Nat160.d(bigInteger);
        if (iArrD[4] == -1) {
            int[] iArr = SecP160R1Field.f77965a;
            if (Nat160.f(iArrD, iArr)) {
                Nat160.m(iArr, iArrD);
            }
        }
        this.d = iArrD;
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final ECFieldElement a(ECFieldElement eCFieldElement) {
        int[] iArr = new int[5];
        if (Nat160.a(this.d, ((SecP160R1FieldElement) eCFieldElement).d, iArr) != 0 || (iArr[4] == -1 && Nat160.f(iArr, SecP160R1Field.f77965a))) {
            Nat.g(5, -2147483647, iArr);
        }
        return new SecP160R1FieldElement(iArr);
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final ECFieldElement b() {
        int[] iArr = new int[5];
        if (Nat.m(5, this.d, iArr) != 0 || (iArr[4] == -1 && Nat160.f(iArr, SecP160R1Field.f77965a))) {
            Nat.g(5, -2147483647, iArr);
        }
        return new SecP160R1FieldElement(iArr);
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final ECFieldElement d(ECFieldElement eCFieldElement) {
        int[] iArr = new int[5];
        Mod.b(SecP160R1Field.f77965a, ((SecP160R1FieldElement) eCFieldElement).d, iArr);
        SecP160R1Field.a(iArr, this.d, iArr);
        return new SecP160R1FieldElement(iArr);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof SecP160R1FieldElement) {
            return Nat160.c(this.d, ((SecP160R1FieldElement) obj).d);
        }
        return false;
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final int f() {
        return f77968e.bitLength();
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final ECFieldElement g() {
        int[] iArr = new int[5];
        Mod.b(SecP160R1Field.f77965a, this.d, iArr);
        return new SecP160R1FieldElement(iArr);
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final boolean h() {
        return Nat160.g(this.d);
    }

    public final int hashCode() {
        return Arrays.f(5, this.d) ^ f77968e.hashCode();
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final boolean i() {
        return Nat160.h(this.d);
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final ECFieldElement j(ECFieldElement eCFieldElement) {
        int[] iArr = new int[5];
        SecP160R1Field.a(this.d, ((SecP160R1FieldElement) eCFieldElement).d, iArr);
        return new SecP160R1FieldElement(iArr);
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final ECFieldElement m() {
        int[] iArr = new int[5];
        int[] iArr2 = this.d;
        if (Nat160.h(iArr2)) {
            iArr[0] = 0;
            iArr[1] = 0;
            iArr[2] = 0;
            iArr[3] = 0;
            iArr[4] = 0;
        } else {
            Nat160.l(SecP160R1Field.f77965a, iArr2, iArr);
        }
        return new SecP160R1FieldElement(iArr);
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final ECFieldElement n() {
        int[] iArr = this.d;
        if (Nat160.h(iArr) || Nat160.g(iArr)) {
            return this;
        }
        int[] iArr2 = new int[5];
        SecP160R1Field.d(iArr, iArr2);
        SecP160R1Field.a(iArr2, iArr, iArr2);
        int[] iArr3 = new int[5];
        SecP160R1Field.e(iArr2, 2, iArr3);
        SecP160R1Field.a(iArr3, iArr2, iArr3);
        SecP160R1Field.e(iArr3, 4, iArr2);
        SecP160R1Field.a(iArr2, iArr3, iArr2);
        SecP160R1Field.e(iArr2, 8, iArr3);
        SecP160R1Field.a(iArr3, iArr2, iArr3);
        SecP160R1Field.e(iArr3, 16, iArr2);
        SecP160R1Field.a(iArr2, iArr3, iArr2);
        SecP160R1Field.e(iArr2, 32, iArr3);
        SecP160R1Field.a(iArr3, iArr2, iArr3);
        SecP160R1Field.e(iArr3, 64, iArr2);
        SecP160R1Field.a(iArr2, iArr3, iArr2);
        SecP160R1Field.d(iArr2, iArr3);
        SecP160R1Field.a(iArr3, iArr, iArr3);
        SecP160R1Field.e(iArr3, 29, iArr3);
        SecP160R1Field.d(iArr3, iArr2);
        if (Nat160.c(iArr, iArr2)) {
            return new SecP160R1FieldElement(iArr3);
        }
        return null;
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final ECFieldElement o() {
        int[] iArr = new int[5];
        SecP160R1Field.d(this.d, iArr);
        return new SecP160R1FieldElement(iArr);
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final ECFieldElement q(ECFieldElement eCFieldElement) {
        int[] iArr = new int[5];
        SecP160R1Field.f(this.d, ((SecP160R1FieldElement) eCFieldElement).d, iArr);
        return new SecP160R1FieldElement(iArr);
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final boolean r() {
        return Nat160.e(this.d) == 1;
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final BigInteger s() {
        return Nat160.n(this.d);
    }

    public SecP160R1FieldElement() {
        this.d = new int[5];
    }

    public SecP160R1FieldElement(int[] iArr) {
        this.d = iArr;
    }
}
