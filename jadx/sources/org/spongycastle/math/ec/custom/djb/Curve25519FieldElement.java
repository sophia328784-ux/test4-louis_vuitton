package org.spongycastle.math.ec.custom.djb;

import defpackage.md;
import java.math.BigInteger;
import org.spongycastle.math.ec.ECFieldElement;
import org.spongycastle.math.raw.Mod;
import org.spongycastle.math.raw.Nat;
import org.spongycastle.math.raw.Nat256;
import org.spongycastle.util.Arrays;

/* JADX INFO: loaded from: classes5.dex */
public class Curve25519FieldElement extends ECFieldElement {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final BigInteger f77948e = Curve25519.f77944i;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final int[] f77949f = {1242472624, -991028441, -1389370248, 792926214, 1039914919, 726466713, 1338105611, 730014848};
    public final int[] d;

    public Curve25519FieldElement(BigInteger bigInteger) {
        if (bigInteger == null || bigInteger.signum() < 0 || bigInteger.compareTo(f77948e) >= 0) {
            md.n("x value invalid for Curve25519FieldElement");
            throw null;
        }
        int[] iArrH = Nat256.h(bigInteger);
        while (true) {
            int[] iArr = Curve25519Field.f77946a;
            if (!Nat256.k(iArrH, iArr)) {
                this.d = iArrH;
                return;
            }
            Nat256.u(iArr, iArrH);
        }
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final ECFieldElement a(ECFieldElement eCFieldElement) {
        int[] iArr = new int[8];
        Nat256.a(this.d, ((Curve25519FieldElement) eCFieldElement).d, iArr);
        if (Nat256.k(iArr, Curve25519Field.f77946a)) {
            Curve25519Field.f(iArr);
        }
        return new Curve25519FieldElement(iArr);
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final ECFieldElement b() {
        int[] iArr = new int[8];
        Nat.m(8, this.d, iArr);
        if (Nat256.k(iArr, Curve25519Field.f77946a)) {
            Curve25519Field.f(iArr);
        }
        return new Curve25519FieldElement(iArr);
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final ECFieldElement d(ECFieldElement eCFieldElement) {
        int[] iArr = new int[8];
        Mod.b(Curve25519Field.f77946a, ((Curve25519FieldElement) eCFieldElement).d, iArr);
        Curve25519Field.a(iArr, this.d, iArr);
        return new Curve25519FieldElement(iArr);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof Curve25519FieldElement) {
            return Nat256.f(this.d, ((Curve25519FieldElement) obj).d);
        }
        return false;
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final int f() {
        return f77948e.bitLength();
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final ECFieldElement g() {
        int[] iArr = new int[8];
        Mod.b(Curve25519Field.f77946a, this.d, iArr);
        return new Curve25519FieldElement(iArr);
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final boolean h() {
        return Nat256.l(this.d);
    }

    public final int hashCode() {
        return Arrays.f(8, this.d) ^ f77948e.hashCode();
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final boolean i() {
        return Nat256.n(this.d);
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final ECFieldElement j(ECFieldElement eCFieldElement) {
        int[] iArr = new int[8];
        Curve25519Field.a(this.d, ((Curve25519FieldElement) eCFieldElement).d, iArr);
        return new Curve25519FieldElement(iArr);
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final ECFieldElement m() {
        int[] iArr = new int[8];
        int[] iArr2 = this.d;
        if (Nat256.n(iArr2)) {
            Nat256.x(iArr);
        } else {
            Nat256.s(Curve25519Field.f77946a, iArr2, iArr);
        }
        return new Curve25519FieldElement(iArr);
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final ECFieldElement n() {
        int[] iArr = this.d;
        if (Nat256.n(iArr) || Nat256.l(iArr)) {
            return this;
        }
        int[] iArr2 = new int[8];
        Curve25519Field.d(iArr, iArr2);
        Curve25519Field.a(iArr2, iArr, iArr2);
        Curve25519Field.d(iArr2, iArr2);
        Curve25519Field.a(iArr2, iArr, iArr2);
        int[] iArr3 = new int[8];
        Curve25519Field.d(iArr2, iArr3);
        Curve25519Field.a(iArr3, iArr, iArr3);
        int[] iArr4 = new int[8];
        Curve25519Field.e(iArr3, 3, iArr4);
        Curve25519Field.a(iArr4, iArr2, iArr4);
        Curve25519Field.e(iArr4, 4, iArr2);
        Curve25519Field.a(iArr2, iArr3, iArr2);
        Curve25519Field.e(iArr2, 4, iArr4);
        Curve25519Field.a(iArr4, iArr3, iArr4);
        Curve25519Field.e(iArr4, 15, iArr3);
        Curve25519Field.a(iArr3, iArr4, iArr3);
        Curve25519Field.e(iArr3, 30, iArr4);
        Curve25519Field.a(iArr4, iArr3, iArr4);
        Curve25519Field.e(iArr4, 60, iArr3);
        Curve25519Field.a(iArr3, iArr4, iArr3);
        Curve25519Field.e(iArr3, 11, iArr4);
        Curve25519Field.a(iArr4, iArr2, iArr4);
        Curve25519Field.e(iArr4, 120, iArr2);
        Curve25519Field.a(iArr2, iArr3, iArr2);
        Curve25519Field.d(iArr2, iArr2);
        Curve25519Field.d(iArr2, iArr3);
        if (Nat256.f(iArr, iArr3)) {
            return new Curve25519FieldElement(iArr2);
        }
        Curve25519Field.a(iArr2, f77949f, iArr2);
        Curve25519Field.d(iArr2, iArr3);
        if (Nat256.f(iArr, iArr3)) {
            return new Curve25519FieldElement(iArr2);
        }
        return null;
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final ECFieldElement o() {
        int[] iArr = new int[8];
        Curve25519Field.d(this.d, iArr);
        return new Curve25519FieldElement(iArr);
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final ECFieldElement q(ECFieldElement eCFieldElement) {
        int[] iArr = new int[8];
        Curve25519Field.g(this.d, ((Curve25519FieldElement) eCFieldElement).d, iArr);
        return new Curve25519FieldElement(iArr);
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final boolean r() {
        return Nat256.j(this.d) == 1;
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final BigInteger s() {
        return Nat256.v(this.d);
    }

    public Curve25519FieldElement() {
        this.d = new int[8];
    }

    public Curve25519FieldElement(int[] iArr) {
        this.d = iArr;
    }
}
