package org.spongycastle.math.ec.custom.sec;

import defpackage.md;
import java.math.BigInteger;
import org.spongycastle.math.ec.ECFieldElement;
import org.spongycastle.math.raw.Mod;
import org.spongycastle.math.raw.Nat;
import org.spongycastle.math.raw.Nat160;
import org.spongycastle.util.Arrays;

/* JADX INFO: loaded from: classes5.dex */
public class SecP160R2FieldElement extends ECFieldElement {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final BigInteger f77974e = SecP160R2Curve.f77969i;
    public final int[] d;

    public SecP160R2FieldElement(BigInteger bigInteger) {
        if (bigInteger == null || bigInteger.signum() < 0 || bigInteger.compareTo(f77974e) >= 0) {
            md.n("x value invalid for SecP160R2FieldElement");
            throw null;
        }
        int[] iArrD = Nat160.d(bigInteger);
        if (iArrD[4] == -1) {
            int[] iArr = SecP160R2Field.f77971a;
            if (Nat160.f(iArrD, iArr)) {
                Nat160.m(iArr, iArrD);
            }
        }
        this.d = iArrD;
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final ECFieldElement a(ECFieldElement eCFieldElement) {
        int[] iArr = new int[5];
        if (Nat160.a(this.d, ((SecP160R2FieldElement) eCFieldElement).d, iArr) != 0 || (iArr[4] == -1 && Nat160.f(iArr, SecP160R2Field.f77971a))) {
            Nat.b(5, 21389, iArr);
        }
        return new SecP160R2FieldElement(iArr);
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final ECFieldElement b() {
        int[] iArr = new int[5];
        if (Nat.m(5, this.d, iArr) != 0 || (iArr[4] == -1 && Nat160.f(iArr, SecP160R2Field.f77971a))) {
            Nat.b(5, 21389, iArr);
        }
        return new SecP160R2FieldElement(iArr);
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final ECFieldElement d(ECFieldElement eCFieldElement) {
        int[] iArr = new int[5];
        Mod.b(SecP160R2Field.f77971a, ((SecP160R2FieldElement) eCFieldElement).d, iArr);
        SecP160R2Field.a(iArr, this.d, iArr);
        return new SecP160R2FieldElement(iArr);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof SecP160R2FieldElement) {
            return Nat160.c(this.d, ((SecP160R2FieldElement) obj).d);
        }
        return false;
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final int f() {
        return f77974e.bitLength();
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final ECFieldElement g() {
        int[] iArr = new int[5];
        Mod.b(SecP160R2Field.f77971a, this.d, iArr);
        return new SecP160R2FieldElement(iArr);
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final boolean h() {
        return Nat160.g(this.d);
    }

    public final int hashCode() {
        return Arrays.f(5, this.d) ^ f77974e.hashCode();
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final boolean i() {
        return Nat160.h(this.d);
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final ECFieldElement j(ECFieldElement eCFieldElement) {
        int[] iArr = new int[5];
        SecP160R2Field.a(this.d, ((SecP160R2FieldElement) eCFieldElement).d, iArr);
        return new SecP160R2FieldElement(iArr);
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
            Nat160.l(SecP160R2Field.f77971a, iArr2, iArr);
        }
        return new SecP160R2FieldElement(iArr);
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final ECFieldElement n() {
        int[] iArr = this.d;
        if (Nat160.h(iArr) || Nat160.g(iArr)) {
            return this;
        }
        int[] iArr2 = new int[5];
        SecP160R2Field.e(iArr, iArr2);
        SecP160R2Field.a(iArr2, iArr, iArr2);
        int[] iArr3 = new int[5];
        SecP160R2Field.e(iArr2, iArr3);
        SecP160R2Field.a(iArr3, iArr, iArr3);
        int[] iArr4 = new int[5];
        SecP160R2Field.e(iArr3, iArr4);
        SecP160R2Field.a(iArr4, iArr, iArr4);
        int[] iArr5 = new int[5];
        SecP160R2Field.f(iArr4, 3, iArr5);
        SecP160R2Field.a(iArr5, iArr3, iArr5);
        SecP160R2Field.f(iArr5, 7, iArr4);
        SecP160R2Field.a(iArr4, iArr5, iArr4);
        SecP160R2Field.f(iArr4, 3, iArr5);
        SecP160R2Field.a(iArr5, iArr3, iArr5);
        int[] iArr6 = new int[5];
        SecP160R2Field.f(iArr5, 14, iArr6);
        SecP160R2Field.a(iArr6, iArr4, iArr6);
        SecP160R2Field.f(iArr6, 31, iArr4);
        SecP160R2Field.a(iArr4, iArr6, iArr4);
        SecP160R2Field.f(iArr4, 62, iArr6);
        SecP160R2Field.a(iArr6, iArr4, iArr6);
        SecP160R2Field.f(iArr6, 3, iArr4);
        SecP160R2Field.a(iArr4, iArr3, iArr4);
        SecP160R2Field.f(iArr4, 18, iArr4);
        SecP160R2Field.a(iArr4, iArr5, iArr4);
        SecP160R2Field.f(iArr4, 2, iArr4);
        SecP160R2Field.a(iArr4, iArr, iArr4);
        SecP160R2Field.f(iArr4, 3, iArr4);
        SecP160R2Field.a(iArr4, iArr2, iArr4);
        SecP160R2Field.f(iArr4, 6, iArr4);
        SecP160R2Field.a(iArr4, iArr3, iArr4);
        SecP160R2Field.f(iArr4, 2, iArr4);
        SecP160R2Field.a(iArr4, iArr, iArr4);
        SecP160R2Field.e(iArr4, iArr2);
        if (Nat160.c(iArr, iArr2)) {
            return new SecP160R2FieldElement(iArr4);
        }
        return null;
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final ECFieldElement o() {
        int[] iArr = new int[5];
        SecP160R2Field.e(this.d, iArr);
        return new SecP160R2FieldElement(iArr);
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final ECFieldElement q(ECFieldElement eCFieldElement) {
        int[] iArr = new int[5];
        SecP160R2Field.g(this.d, ((SecP160R2FieldElement) eCFieldElement).d, iArr);
        return new SecP160R2FieldElement(iArr);
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final boolean r() {
        return Nat160.e(this.d) == 1;
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final BigInteger s() {
        return Nat160.n(this.d);
    }

    public SecP160R2FieldElement() {
        this.d = new int[5];
    }

    public SecP160R2FieldElement(int[] iArr) {
        this.d = iArr;
    }
}
