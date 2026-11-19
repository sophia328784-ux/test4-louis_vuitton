package org.spongycastle.math.ec.custom.sec;

import defpackage.md;
import java.math.BigInteger;
import org.spongycastle.math.ec.ECFieldElement;
import org.spongycastle.math.raw.Mod;
import org.spongycastle.math.raw.Nat;
import org.spongycastle.math.raw.Nat224;
import org.spongycastle.util.Arrays;

/* JADX INFO: loaded from: classes5.dex */
public class SecP224K1FieldElement extends ECFieldElement {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final BigInteger f77992e = SecP224K1Curve.f77987i;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final int[] f77993f = {868209154, -587542221, 579297866, -1014948952, -1470801668, 514782679, -1897982644};
    public final int[] d;

    public SecP224K1FieldElement(BigInteger bigInteger) {
        if (bigInteger == null || bigInteger.signum() < 0 || bigInteger.compareTo(f77992e) >= 0) {
            md.n("x value invalid for SecP224K1FieldElement");
            throw null;
        }
        int[] iArrE = Nat224.e(bigInteger);
        if (iArrE[6] == -1 && Nat224.g(iArrE, SecP224K1Field.f77989a)) {
            Nat.b(7, 6803, iArrE);
        }
        this.d = iArrE;
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final ECFieldElement a(ECFieldElement eCFieldElement) {
        int[] iArr = new int[7];
        if (Nat224.a(this.d, ((SecP224K1FieldElement) eCFieldElement).d, iArr) != 0 || (iArr[6] == -1 && Nat224.g(iArr, SecP224K1Field.f77989a))) {
            Nat.b(7, 6803, iArr);
        }
        return new SecP224K1FieldElement(iArr);
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final ECFieldElement b() {
        int[] iArr = new int[7];
        if (Nat.m(7, this.d, iArr) != 0 || (iArr[6] == -1 && Nat224.g(iArr, SecP224K1Field.f77989a))) {
            Nat.b(7, 6803, iArr);
        }
        return new SecP224K1FieldElement(iArr);
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final ECFieldElement d(ECFieldElement eCFieldElement) {
        int[] iArr = new int[7];
        Mod.b(SecP224K1Field.f77989a, ((SecP224K1FieldElement) eCFieldElement).d, iArr);
        SecP224K1Field.a(iArr, this.d, iArr);
        return new SecP224K1FieldElement(iArr);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof SecP224K1FieldElement) {
            return Nat224.d(this.d, ((SecP224K1FieldElement) obj).d);
        }
        return false;
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final int f() {
        return f77992e.bitLength();
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final ECFieldElement g() {
        int[] iArr = new int[7];
        Mod.b(SecP224K1Field.f77989a, this.d, iArr);
        return new SecP224K1FieldElement(iArr);
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final boolean h() {
        return Nat224.h(this.d);
    }

    public final int hashCode() {
        return Arrays.f(7, this.d) ^ f77992e.hashCode();
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final boolean i() {
        return Nat224.i(this.d);
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final ECFieldElement j(ECFieldElement eCFieldElement) {
        int[] iArr = new int[7];
        SecP224K1Field.a(this.d, ((SecP224K1FieldElement) eCFieldElement).d, iArr);
        return new SecP224K1FieldElement(iArr);
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final ECFieldElement m() {
        int[] iArr = new int[7];
        int[] iArr2 = this.d;
        if (Nat224.i(iArr2)) {
            iArr[0] = 0;
            iArr[1] = 0;
            iArr[2] = 0;
            iArr[3] = 0;
            iArr[4] = 0;
            iArr[5] = 0;
            iArr[6] = 0;
        } else {
            Nat224.m(SecP224K1Field.f77989a, iArr2, iArr);
        }
        return new SecP224K1FieldElement(iArr);
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final ECFieldElement n() {
        int[] iArr = this.d;
        if (Nat224.i(iArr) || Nat224.h(iArr)) {
            return this;
        }
        int[] iArr2 = new int[7];
        SecP224K1Field.d(iArr, iArr2);
        SecP224K1Field.a(iArr2, iArr, iArr2);
        SecP224K1Field.d(iArr2, iArr2);
        SecP224K1Field.a(iArr2, iArr, iArr2);
        int[] iArr3 = new int[7];
        SecP224K1Field.d(iArr2, iArr3);
        SecP224K1Field.a(iArr3, iArr, iArr3);
        int[] iArr4 = new int[7];
        SecP224K1Field.e(iArr3, 4, iArr4);
        SecP224K1Field.a(iArr4, iArr3, iArr4);
        int[] iArr5 = new int[7];
        SecP224K1Field.e(iArr4, 3, iArr5);
        SecP224K1Field.a(iArr5, iArr2, iArr5);
        SecP224K1Field.e(iArr5, 8, iArr5);
        SecP224K1Field.a(iArr5, iArr4, iArr5);
        SecP224K1Field.e(iArr5, 4, iArr4);
        SecP224K1Field.a(iArr4, iArr3, iArr4);
        SecP224K1Field.e(iArr4, 19, iArr3);
        SecP224K1Field.a(iArr3, iArr5, iArr3);
        int[] iArr6 = new int[7];
        SecP224K1Field.e(iArr3, 42, iArr6);
        SecP224K1Field.a(iArr6, iArr3, iArr6);
        SecP224K1Field.e(iArr6, 23, iArr3);
        SecP224K1Field.a(iArr3, iArr4, iArr3);
        SecP224K1Field.e(iArr3, 84, iArr4);
        SecP224K1Field.a(iArr4, iArr6, iArr4);
        SecP224K1Field.e(iArr4, 20, iArr4);
        SecP224K1Field.a(iArr4, iArr5, iArr4);
        SecP224K1Field.e(iArr4, 3, iArr4);
        SecP224K1Field.a(iArr4, iArr, iArr4);
        SecP224K1Field.e(iArr4, 2, iArr4);
        SecP224K1Field.a(iArr4, iArr, iArr4);
        SecP224K1Field.e(iArr4, 4, iArr4);
        SecP224K1Field.a(iArr4, iArr2, iArr4);
        SecP224K1Field.d(iArr4, iArr4);
        SecP224K1Field.d(iArr4, iArr6);
        if (Nat224.d(iArr, iArr6)) {
            return new SecP224K1FieldElement(iArr4);
        }
        SecP224K1Field.a(iArr4, f77993f, iArr4);
        SecP224K1Field.d(iArr4, iArr6);
        if (Nat224.d(iArr, iArr6)) {
            return new SecP224K1FieldElement(iArr4);
        }
        return null;
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final ECFieldElement o() {
        int[] iArr = new int[7];
        SecP224K1Field.d(this.d, iArr);
        return new SecP224K1FieldElement(iArr);
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final ECFieldElement q(ECFieldElement eCFieldElement) {
        int[] iArr = new int[7];
        SecP224K1Field.f(this.d, ((SecP224K1FieldElement) eCFieldElement).d, iArr);
        return new SecP224K1FieldElement(iArr);
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final boolean r() {
        return Nat224.f(this.d) == 1;
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final BigInteger s() {
        return Nat224.n(this.d);
    }

    public SecP224K1FieldElement() {
        this.d = new int[7];
    }

    public SecP224K1FieldElement(int[] iArr) {
        this.d = iArr;
    }
}
