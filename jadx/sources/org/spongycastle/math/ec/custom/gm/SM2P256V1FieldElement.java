package org.spongycastle.math.ec.custom.gm;

import defpackage.md;
import java.math.BigInteger;
import org.spongycastle.math.ec.ECFieldElement;
import org.spongycastle.math.raw.Mod;
import org.spongycastle.math.raw.Nat;
import org.spongycastle.math.raw.Nat256;
import org.spongycastle.util.Arrays;

/* JADX INFO: loaded from: classes5.dex */
public class SM2P256V1FieldElement extends ECFieldElement {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final BigInteger f77954e = SM2P256V1Curve.f77950i;
    public final int[] d;

    public SM2P256V1FieldElement(BigInteger bigInteger) {
        if (bigInteger == null || bigInteger.signum() < 0 || bigInteger.compareTo(f77954e) >= 0) {
            md.n("x value invalid for SM2P256V1FieldElement");
            throw null;
        }
        int[] iArrH = Nat256.h(bigInteger);
        if ((iArrH[7] >>> 1) >= Integer.MAX_VALUE) {
            int[] iArr = SM2P256V1Field.f77952a;
            if (Nat256.k(iArrH, iArr)) {
                Nat256.u(iArr, iArrH);
            }
        }
        this.d = iArrH;
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final ECFieldElement a(ECFieldElement eCFieldElement) {
        int[] iArr = new int[8];
        SM2P256V1Field.a(this.d, ((SM2P256V1FieldElement) eCFieldElement).d, iArr);
        return new SM2P256V1FieldElement(iArr);
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final ECFieldElement b() {
        int[] iArr = new int[8];
        if (Nat.m(8, this.d, iArr) != 0 || ((iArr[7] >>> 1) >= Integer.MAX_VALUE && Nat256.k(iArr, SM2P256V1Field.f77952a))) {
            SM2P256V1Field.b(iArr);
        }
        return new SM2P256V1FieldElement(iArr);
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final ECFieldElement d(ECFieldElement eCFieldElement) {
        int[] iArr = new int[8];
        Mod.b(SM2P256V1Field.f77952a, ((SM2P256V1FieldElement) eCFieldElement).d, iArr);
        SM2P256V1Field.c(iArr, this.d, iArr);
        return new SM2P256V1FieldElement(iArr);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof SM2P256V1FieldElement) {
            return Nat256.f(this.d, ((SM2P256V1FieldElement) obj).d);
        }
        return false;
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final int f() {
        return f77954e.bitLength();
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final ECFieldElement g() {
        int[] iArr = new int[8];
        Mod.b(SM2P256V1Field.f77952a, this.d, iArr);
        return new SM2P256V1FieldElement(iArr);
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final boolean h() {
        return Nat256.l(this.d);
    }

    public final int hashCode() {
        return Arrays.f(8, this.d) ^ f77954e.hashCode();
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final boolean i() {
        return Nat256.n(this.d);
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final ECFieldElement j(ECFieldElement eCFieldElement) {
        int[] iArr = new int[8];
        SM2P256V1Field.c(this.d, ((SM2P256V1FieldElement) eCFieldElement).d, iArr);
        return new SM2P256V1FieldElement(iArr);
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final ECFieldElement m() {
        int[] iArr = new int[8];
        int[] iArr2 = this.d;
        if (Nat256.n(iArr2)) {
            Nat256.x(iArr);
        } else {
            Nat256.s(SM2P256V1Field.f77952a, iArr2, iArr);
        }
        return new SM2P256V1FieldElement(iArr);
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final ECFieldElement n() {
        int[] iArr = this.d;
        if (Nat256.n(iArr) || Nat256.l(iArr)) {
            return this;
        }
        int[] iArr2 = new int[8];
        SM2P256V1Field.f(iArr, iArr2);
        SM2P256V1Field.c(iArr2, iArr, iArr2);
        int[] iArr3 = new int[8];
        SM2P256V1Field.g(iArr2, 2, iArr3);
        SM2P256V1Field.c(iArr3, iArr2, iArr3);
        int[] iArr4 = new int[8];
        SM2P256V1Field.g(iArr3, 2, iArr4);
        SM2P256V1Field.c(iArr4, iArr2, iArr4);
        SM2P256V1Field.g(iArr4, 6, iArr2);
        SM2P256V1Field.c(iArr2, iArr4, iArr2);
        int[] iArr5 = new int[8];
        SM2P256V1Field.g(iArr2, 12, iArr5);
        SM2P256V1Field.c(iArr5, iArr2, iArr5);
        SM2P256V1Field.g(iArr5, 6, iArr2);
        SM2P256V1Field.c(iArr2, iArr4, iArr2);
        SM2P256V1Field.f(iArr2, iArr4);
        SM2P256V1Field.c(iArr4, iArr, iArr4);
        SM2P256V1Field.g(iArr4, 31, iArr5);
        SM2P256V1Field.c(iArr5, iArr4, iArr2);
        SM2P256V1Field.g(iArr5, 32, iArr5);
        SM2P256V1Field.c(iArr5, iArr2, iArr5);
        SM2P256V1Field.g(iArr5, 62, iArr5);
        SM2P256V1Field.c(iArr5, iArr2, iArr5);
        SM2P256V1Field.g(iArr5, 4, iArr5);
        SM2P256V1Field.c(iArr5, iArr3, iArr5);
        SM2P256V1Field.g(iArr5, 32, iArr5);
        SM2P256V1Field.c(iArr5, iArr, iArr5);
        SM2P256V1Field.g(iArr5, 62, iArr5);
        SM2P256V1Field.f(iArr5, iArr3);
        if (Nat256.f(iArr, iArr3)) {
            return new SM2P256V1FieldElement(iArr5);
        }
        return null;
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final ECFieldElement o() {
        int[] iArr = new int[8];
        SM2P256V1Field.f(this.d, iArr);
        return new SM2P256V1FieldElement(iArr);
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final ECFieldElement q(ECFieldElement eCFieldElement) {
        int[] iArr = new int[8];
        SM2P256V1Field.h(this.d, ((SM2P256V1FieldElement) eCFieldElement).d, iArr);
        return new SM2P256V1FieldElement(iArr);
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final boolean r() {
        return Nat256.j(this.d) == 1;
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final BigInteger s() {
        return Nat256.v(this.d);
    }

    public SM2P256V1FieldElement() {
        this.d = new int[8];
    }

    public SM2P256V1FieldElement(int[] iArr) {
        this.d = iArr;
    }
}
