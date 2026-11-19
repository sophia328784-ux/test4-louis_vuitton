package org.spongycastle.math.ec.custom.sec;

import defpackage.md;
import java.math.BigInteger;
import java.util.Random;
import org.bouncycastle.asn1.cmc.BodyPartID;
import org.spongycastle.math.ec.ECFieldElement;
import org.spongycastle.math.raw.Mod;
import org.spongycastle.math.raw.Nat;
import org.spongycastle.math.raw.Nat224;
import org.spongycastle.util.Arrays;

/* JADX INFO: loaded from: classes5.dex */
public class SecP224R1FieldElement extends ECFieldElement {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final BigInteger f77999e = SecP224R1Curve.f77994i;
    public final int[] d;

    public SecP224R1FieldElement(BigInteger bigInteger) {
        if (bigInteger == null || bigInteger.signum() < 0 || bigInteger.compareTo(f77999e) >= 0) {
            md.n("x value invalid for SecP224R1FieldElement");
            throw null;
        }
        int[] iArrE = Nat224.e(bigInteger);
        if (iArrE[6] == -1) {
            int[] iArr = SecP224R1Field.f77996a;
            if (Nat224.g(iArrE, iArr)) {
                long j2 = (((long) iArrE[0]) & BodyPartID.bodyIdMax) - (((long) iArr[0]) & BodyPartID.bodyIdMax);
                iArrE[0] = (int) j2;
                long j3 = ((((long) iArrE[1]) & BodyPartID.bodyIdMax) - (((long) iArr[1]) & BodyPartID.bodyIdMax)) + (j2 >> 32);
                iArrE[1] = (int) j3;
                long j4 = ((((long) iArrE[2]) & BodyPartID.bodyIdMax) - (((long) iArr[2]) & BodyPartID.bodyIdMax)) + (j3 >> 32);
                iArrE[2] = (int) j4;
                long j5 = ((((long) iArrE[3]) & BodyPartID.bodyIdMax) - (((long) iArr[3]) & BodyPartID.bodyIdMax)) + (j4 >> 32);
                iArrE[3] = (int) j5;
                long j6 = ((((long) iArrE[4]) & BodyPartID.bodyIdMax) - (((long) iArr[4]) & BodyPartID.bodyIdMax)) + (j5 >> 32);
                iArrE[4] = (int) j6;
                long j7 = ((((long) iArrE[5]) & BodyPartID.bodyIdMax) - (((long) iArr[5]) & BodyPartID.bodyIdMax)) + (j6 >> 32);
                iArrE[5] = (int) j7;
                iArrE[6] = (int) (((((long) iArrE[6]) & BodyPartID.bodyIdMax) - (((long) iArr[6]) & BodyPartID.bodyIdMax)) + (j7 >> 32));
            }
        }
        this.d = iArrE;
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final ECFieldElement a(ECFieldElement eCFieldElement) {
        int[] iArr = new int[7];
        SecP224R1Field.a(this.d, ((SecP224R1FieldElement) eCFieldElement).d, iArr);
        return new SecP224R1FieldElement(iArr);
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final ECFieldElement b() {
        int[] iArr = new int[7];
        if (Nat.m(7, this.d, iArr) != 0 || (iArr[6] == -1 && Nat224.g(iArr, SecP224R1Field.f77996a))) {
            SecP224R1Field.b(iArr);
        }
        return new SecP224R1FieldElement(iArr);
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final ECFieldElement d(ECFieldElement eCFieldElement) {
        int[] iArr = new int[7];
        Mod.b(SecP224R1Field.f77996a, ((SecP224R1FieldElement) eCFieldElement).d, iArr);
        SecP224R1Field.c(iArr, this.d, iArr);
        return new SecP224R1FieldElement(iArr);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof SecP224R1FieldElement) {
            return Nat224.d(this.d, ((SecP224R1FieldElement) obj).d);
        }
        return false;
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final int f() {
        return f77999e.bitLength();
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final ECFieldElement g() {
        int[] iArr = new int[7];
        Mod.b(SecP224R1Field.f77996a, this.d, iArr);
        return new SecP224R1FieldElement(iArr);
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final boolean h() {
        return Nat224.h(this.d);
    }

    public final int hashCode() {
        return Arrays.f(7, this.d) ^ f77999e.hashCode();
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final boolean i() {
        return Nat224.i(this.d);
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final ECFieldElement j(ECFieldElement eCFieldElement) {
        int[] iArr = new int[7];
        SecP224R1Field.c(this.d, ((SecP224R1FieldElement) eCFieldElement).d, iArr);
        return new SecP224R1FieldElement(iArr);
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
            Nat224.m(SecP224R1Field.f77996a, iArr2, iArr);
        }
        return new SecP224R1FieldElement(iArr);
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final ECFieldElement n() {
        int[] iArr;
        int[] iArr2;
        int[] iArr3 = this.d;
        if (Nat224.i(iArr3) || Nat224.h(iArr3)) {
            return this;
        }
        int[] iArr4 = new int[7];
        boolean zI = Nat224.i(iArr3);
        char c2 = 6;
        int[] iArr5 = SecP224R1Field.f77996a;
        if (zI) {
            iArr4[0] = 0;
            iArr4[1] = 0;
            iArr4[2] = 0;
            iArr4[3] = 0;
            iArr4[4] = 0;
            iArr4[5] = 0;
            iArr4[6] = 0;
        } else {
            Nat224.m(iArr5, iArr3, iArr4);
        }
        Random random = new Random();
        int[] iArr6 = new int[7];
        int i2 = iArr5[6];
        int i3 = i2 | (i2 >>> 1);
        int i4 = i3 | (i3 >>> 2);
        int i5 = i4 | (i4 >>> 4);
        int i6 = i5 | (i5 >>> 8);
        int i7 = (i6 >>> 16) | i6;
        do {
            for (int i8 = 0; i8 != 7; i8++) {
                iArr6[i8] = random.nextInt();
            }
            iArr6[6] = iArr6[6] & i7;
        } while (Nat.l(7, iArr6, iArr5));
        int[] iArr7 = new int[7];
        int[] iArr8 = new int[7];
        int[] iArr9 = new int[7];
        Nat224.c(iArr3, iArr8);
        for (int i9 = 0; i9 < 7; i9++) {
            Nat224.c(iArr8, iArr9);
            int i10 = 1 << i9;
            int[] iArr10 = new int[14];
            Nat224.l(iArr8, iArr10);
            SecP224R1Field.d(iArr10, iArr8);
            while (true) {
                i10--;
                if (i10 > 0) {
                    Nat224.l(iArr8, iArr10);
                    SecP224R1Field.d(iArr10, iArr8);
                }
            }
            SecP224R1Field.c(iArr8, iArr9, iArr8);
        }
        int[] iArr11 = new int[14];
        Nat224.l(iArr8, iArr11);
        SecP224R1Field.d(iArr11, iArr8);
        int i11 = 95;
        while (true) {
            i11--;
            if (i11 <= 0) {
                break;
            }
            Nat224.l(iArr8, iArr11);
            SecP224R1Field.d(iArr11, iArr8);
        }
        if (!Nat224.h(iArr8)) {
            return null;
        }
        loop5: while (true) {
            int[] iArr12 = new int[7];
            Nat224.c(iArr6, iArr12);
            int[] iArr13 = new int[7];
            iArr13[0] = 1;
            int[] iArr14 = new int[7];
            Nat224.c(iArr4, iArr14);
            int[] iArr15 = new int[7];
            int[] iArr16 = new int[7];
            for (int i12 = 0; i12 < 7; i12++) {
                Nat224.c(iArr12, iArr15);
                Nat224.c(iArr13, iArr16);
                int i13 = 1 << i12;
                while (true) {
                    i13--;
                    if (i13 >= 0) {
                        SecP224R1Field.c(iArr13, iArr12, iArr13);
                        SecP224R1Field.h(iArr13, iArr13);
                        SecP224R1Field.f(iArr12, iArr7);
                        SecP224R1Field.a(iArr14, iArr7, iArr12);
                        SecP224R1Field.c(iArr14, iArr7, iArr14);
                        SecP224R1Field.e(Nat.t(7, iArr14), iArr14);
                        c2 = c2;
                    }
                }
                SecP224R1Field.c(iArr13, iArr16, iArr7);
                SecP224R1Field.c(iArr7, iArr4, iArr7);
                SecP224R1Field.c(iArr12, iArr15, iArr14);
                SecP224R1Field.a(iArr14, iArr7, iArr14);
                SecP224R1Field.c(iArr12, iArr16, iArr7);
                Nat224.c(iArr14, iArr12);
                SecP224R1Field.c(iArr13, iArr15, iArr13);
                SecP224R1Field.a(iArr13, iArr7, iArr13);
                SecP224R1Field.f(iArr13, iArr14);
                SecP224R1Field.c(iArr14, iArr4, iArr14);
            }
            char c3 = c2;
            iArr = new int[7];
            iArr2 = new int[7];
            for (int i14 = 1; i14 < 96; i14++) {
                Nat224.c(iArr12, iArr);
                Nat224.c(iArr13, iArr2);
                SecP224R1Field.c(iArr13, iArr12, iArr13);
                SecP224R1Field.h(iArr13, iArr13);
                SecP224R1Field.f(iArr12, iArr7);
                SecP224R1Field.a(iArr14, iArr7, iArr12);
                SecP224R1Field.c(iArr14, iArr7, iArr14);
                SecP224R1Field.e(Nat.t(7, iArr14), iArr14);
                if (Nat224.i(iArr12)) {
                    break loop5;
                }
            }
            if (Nat.m(7, iArr6, iArr6) != 0 || (iArr6[c3] == -1 && Nat224.g(iArr6, iArr5))) {
                SecP224R1Field.b(iArr6);
            }
            c2 = c3;
        }
        Mod.b(iArr5, iArr2, iArr7);
        SecP224R1Field.c(iArr7, iArr, iArr7);
        SecP224R1Field.f(iArr7, iArr6);
        if (Nat224.d(iArr3, iArr6)) {
            return new SecP224R1FieldElement(iArr7);
        }
        return null;
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final ECFieldElement o() {
        int[] iArr = new int[7];
        SecP224R1Field.f(this.d, iArr);
        return new SecP224R1FieldElement(iArr);
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final ECFieldElement q(ECFieldElement eCFieldElement) {
        int[] iArr = new int[7];
        SecP224R1Field.g(this.d, ((SecP224R1FieldElement) eCFieldElement).d, iArr);
        return new SecP224R1FieldElement(iArr);
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final boolean r() {
        return Nat224.f(this.d) == 1;
    }

    @Override // org.spongycastle.math.ec.ECFieldElement
    public final BigInteger s() {
        return Nat224.n(this.d);
    }

    public SecP224R1FieldElement() {
        this.d = new int[7];
    }

    public SecP224R1FieldElement(int[] iArr) {
        this.d = iArr;
    }
}
