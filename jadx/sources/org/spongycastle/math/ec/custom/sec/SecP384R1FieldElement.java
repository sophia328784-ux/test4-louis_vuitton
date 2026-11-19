package org.spongycastle.math.ec.custom.sec;

import defpackage.md;
import java.math.BigInteger;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;
import org.spongycastle.math.ec.ECFieldElement;
import org.spongycastle.math.raw.Mod;
import org.spongycastle.math.raw.Nat;
import org.spongycastle.util.Arrays;

/* JADX INFO: loaded from: classes5.dex */
public class SecP384R1FieldElement extends ECFieldElement {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final BigInteger f78016e = SecP384R1Curve.f78011i;
    public final int[] d;

    public SecP384R1FieldElement(BigInteger bigInteger) {
        if (bigInteger == null || bigInteger.signum() < 0 || bigInteger.compareTo(f78016e) >= 0) {
            md.n("x value invalid for SecP384R1FieldElement");
            throw null;
        }
        int[] iArrJ = Nat.j(KyberEngine.KyberPolyBytes, bigInteger);
        if (iArrJ[11] == -1) {
            int[] iArr = SecP384R1Field.f78013a;
            if (Nat.l(12, iArrJ, iArr)) {
                Nat.y(12, iArr, iArrJ);
            }
        }
        this.d = iArrJ;
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final ECFieldElement a(ECFieldElement eCFieldElement) {
        int[] iArr = new int[12];
        if (Nat.a(12, this.d, ((SecP384R1FieldElement) eCFieldElement).d, iArr) != 0 || (iArr[11] == -1 && Nat.l(12, iArr, SecP384R1Field.f78013a))) {
            SecP384R1Field.a(iArr);
        }
        return new SecP384R1FieldElement(iArr);
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final ECFieldElement b() {
        int[] iArr = new int[12];
        if (Nat.m(12, this.d, iArr) != 0 || (iArr[11] == -1 && Nat.l(12, iArr, SecP384R1Field.f78013a))) {
            SecP384R1Field.a(iArr);
        }
        return new SecP384R1FieldElement(iArr);
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final ECFieldElement d(ECFieldElement eCFieldElement) {
        int[] iArr = new int[12];
        Mod.b(SecP384R1Field.f78013a, ((SecP384R1FieldElement) eCFieldElement).d, iArr);
        SecP384R1Field.b(iArr, this.d, iArr);
        return new SecP384R1FieldElement(iArr);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof SecP384R1FieldElement) {
            return Nat.i(12, this.d, ((SecP384R1FieldElement) obj).d);
        }
        return false;
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final int f() {
        return f78016e.bitLength();
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final ECFieldElement g() {
        int[] iArr = new int[12];
        Mod.b(SecP384R1Field.f78013a, this.d, iArr);
        return new SecP384R1FieldElement(iArr);
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final boolean h() {
        return Nat.q(12, this.d);
    }

    public final int hashCode() {
        return Arrays.f(12, this.d) ^ f78016e.hashCode();
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final boolean i() {
        return Nat.r(12, this.d);
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final ECFieldElement j(ECFieldElement eCFieldElement) {
        int[] iArr = new int[12];
        SecP384R1Field.b(this.d, ((SecP384R1FieldElement) eCFieldElement).d, iArr);
        return new SecP384R1FieldElement(iArr);
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final ECFieldElement m() {
        int[] iArr = new int[12];
        int[] iArr2 = this.d;
        if (Nat.r(12, iArr2)) {
            for (int i2 = 0; i2 < 12; i2++) {
                iArr[i2] = 0;
            }
        } else {
            Nat.v(12, SecP384R1Field.f78013a, iArr2, iArr);
        }
        return new SecP384R1FieldElement(iArr);
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final ECFieldElement n() {
        int[] iArr = this.d;
        if (Nat.r(12, iArr) || Nat.q(12, iArr)) {
            return this;
        }
        int[] iArr2 = new int[12];
        int[] iArr3 = new int[12];
        int[] iArr4 = new int[12];
        int[] iArr5 = new int[12];
        SecP384R1Field.e(iArr, iArr2);
        SecP384R1Field.b(iArr2, iArr, iArr2);
        SecP384R1Field.f(iArr2, 2, iArr3);
        SecP384R1Field.b(iArr3, iArr2, iArr3);
        SecP384R1Field.e(iArr3, iArr3);
        SecP384R1Field.b(iArr3, iArr, iArr3);
        SecP384R1Field.f(iArr3, 5, iArr4);
        SecP384R1Field.b(iArr4, iArr3, iArr4);
        SecP384R1Field.f(iArr4, 5, iArr5);
        SecP384R1Field.b(iArr5, iArr3, iArr5);
        SecP384R1Field.f(iArr5, 15, iArr3);
        SecP384R1Field.b(iArr3, iArr5, iArr3);
        SecP384R1Field.f(iArr3, 2, iArr4);
        SecP384R1Field.b(iArr2, iArr4, iArr2);
        SecP384R1Field.f(iArr4, 28, iArr4);
        SecP384R1Field.b(iArr3, iArr4, iArr3);
        SecP384R1Field.f(iArr3, 60, iArr4);
        SecP384R1Field.b(iArr4, iArr3, iArr4);
        SecP384R1Field.f(iArr4, 120, iArr3);
        SecP384R1Field.b(iArr3, iArr4, iArr3);
        SecP384R1Field.f(iArr3, 15, iArr3);
        SecP384R1Field.b(iArr3, iArr5, iArr3);
        SecP384R1Field.f(iArr3, 33, iArr3);
        SecP384R1Field.b(iArr3, iArr2, iArr3);
        SecP384R1Field.f(iArr3, 64, iArr3);
        SecP384R1Field.b(iArr3, iArr, iArr3);
        SecP384R1Field.f(iArr3, 30, iArr2);
        SecP384R1Field.e(iArr2, iArr3);
        if (Nat.i(12, iArr, iArr3)) {
            return new SecP384R1FieldElement(iArr2);
        }
        return null;
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final ECFieldElement o() {
        int[] iArr = new int[12];
        SecP384R1Field.e(this.d, iArr);
        return new SecP384R1FieldElement(iArr);
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final ECFieldElement q(ECFieldElement eCFieldElement) {
        int[] iArr = new int[12];
        SecP384R1Field.g(this.d, ((SecP384R1FieldElement) eCFieldElement).d, iArr);
        return new SecP384R1FieldElement(iArr);
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final boolean r() {
        return Nat.k(this.d) == 1;
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final BigInteger s() {
        return Nat.z(12, this.d);
    }

    public SecP384R1FieldElement() {
        this.d = new int[12];
    }

    public SecP384R1FieldElement(int[] iArr) {
        this.d = iArr;
    }
}
