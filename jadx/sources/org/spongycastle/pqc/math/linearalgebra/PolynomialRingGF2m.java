package org.spongycastle.pqc.math.linearalgebra;

import defpackage.lc0;

/* JADX INFO: loaded from: classes5.dex */
public class PolynomialRingGF2m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final GF2mField f78259a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final PolynomialGF2mSmallM f78260b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final PolynomialGF2mSmallM[] f78261c;
    public final PolynomialGF2mSmallM[] d;

    public PolynomialRingGF2m(GF2mField gF2mField, PolynomialGF2mSmallM polynomialGF2mSmallM) {
        int i2;
        int iD;
        this.f78259a = gF2mField;
        this.f78260b = polynomialGF2mSmallM;
        int[] iArr = polynomialGF2mSmallM.f78258c;
        int length = iArr.length - 1;
        length = iArr[length] == 0 ? -1 : length;
        this.f78261c = new PolynomialGF2mSmallM[length];
        int i3 = 0;
        while (true) {
            i2 = length >> 1;
            if (i3 >= i2) {
                break;
            }
            int i4 = i3 << 1;
            int[] iArr2 = new int[i4 + 1];
            iArr2[i4] = 1;
            this.f78261c[i3] = new PolynomialGF2mSmallM(gF2mField, iArr2);
            i3++;
        }
        while (i2 < length) {
            int i5 = i2 << 1;
            int[] iArr3 = new int[i5 + 1];
            iArr3[i5] = 1;
            PolynomialGF2mSmallM polynomialGF2mSmallM2 = new PolynomialGF2mSmallM(gF2mField, iArr3);
            this.f78261c[i2] = new PolynomialGF2mSmallM(polynomialGF2mSmallM2.f78256a, polynomialGF2mSmallM2.f(polynomialGF2mSmallM2.f78258c, polynomialGF2mSmallM.f78258c));
            i2++;
        }
        GF2mField gF2mField2 = this.f78259a;
        int[] iArr4 = this.f78260b.f78258c;
        int length2 = iArr4.length - 1;
        int i6 = iArr4[length2] != 0 ? length2 : -1;
        PolynomialGF2mSmallM[] polynomialGF2mSmallMArr = new PolynomialGF2mSmallM[i6];
        int i7 = i6 - 1;
        for (int i8 = i7; i8 >= 0; i8--) {
            polynomialGF2mSmallMArr[i8] = new PolynomialGF2mSmallM(this.f78261c[i8]);
        }
        this.d = new PolynomialGF2mSmallM[i6];
        while (i7 >= 0) {
            this.d[i7] = new PolynomialGF2mSmallM(gF2mField2, i7);
            i7--;
        }
        for (int i9 = 0; i9 < i6; i9++) {
            if (polynomialGF2mSmallMArr[i9].d(i9) == 0) {
                int i10 = i9 + 1;
                boolean z = false;
                while (i10 < i6) {
                    if (polynomialGF2mSmallMArr[i10].d(i9) != 0) {
                        PolynomialGF2mSmallM polynomialGF2mSmallM3 = polynomialGF2mSmallMArr[i9];
                        polynomialGF2mSmallMArr[i9] = polynomialGF2mSmallMArr[i10];
                        polynomialGF2mSmallMArr[i10] = polynomialGF2mSmallM3;
                        PolynomialGF2mSmallM[] polynomialGF2mSmallMArr2 = this.d;
                        PolynomialGF2mSmallM polynomialGF2mSmallM4 = polynomialGF2mSmallMArr2[i9];
                        polynomialGF2mSmallMArr2[i9] = polynomialGF2mSmallMArr2[i10];
                        polynomialGF2mSmallMArr2[i10] = polynomialGF2mSmallM4;
                        z = true;
                        i10 = i6;
                    }
                    i10++;
                }
                if (!z) {
                    lc0.l("Squaring matrix is not invertible.");
                    throw null;
                }
            }
            int iB = gF2mField2.b(polynomialGF2mSmallMArr[i9].d(i9));
            PolynomialGF2mSmallM polynomialGF2mSmallM5 = polynomialGF2mSmallMArr[i9];
            if (!polynomialGF2mSmallM5.f78256a.c(iB)) {
                lc0.l("Not an element of the finite field this polynomial is defined over.");
                throw null;
            }
            polynomialGF2mSmallM5.f78258c = polynomialGF2mSmallM5.g(polynomialGF2mSmallM5.f78258c, iB);
            polynomialGF2mSmallM5.c();
            PolynomialGF2mSmallM polynomialGF2mSmallM6 = this.d[i9];
            if (!polynomialGF2mSmallM6.f78256a.c(iB)) {
                lc0.l("Not an element of the finite field this polynomial is defined over.");
                throw null;
            }
            polynomialGF2mSmallM6.f78258c = polynomialGF2mSmallM6.g(polynomialGF2mSmallM6.f78258c, iB);
            polynomialGF2mSmallM6.c();
            for (int i11 = 0; i11 < i6; i11++) {
                if (i11 != i9 && (iD = polynomialGF2mSmallMArr[i11].d(i9)) != 0) {
                    PolynomialGF2mSmallM polynomialGF2mSmallM7 = polynomialGF2mSmallMArr[i9];
                    GF2mField gF2mField3 = polynomialGF2mSmallM7.f78256a;
                    if (!gF2mField3.c(iD)) {
                        lc0.l("Not an element of the finite field this polynomial is defined over.");
                        throw null;
                    }
                    PolynomialGF2mSmallM polynomialGF2mSmallM8 = new PolynomialGF2mSmallM(gF2mField3, polynomialGF2mSmallM7.g(polynomialGF2mSmallM7.f78258c, iD));
                    PolynomialGF2mSmallM polynomialGF2mSmallM9 = this.d[i9];
                    GF2mField gF2mField4 = polynomialGF2mSmallM9.f78256a;
                    if (!gF2mField4.c(iD)) {
                        lc0.l("Not an element of the finite field this polynomial is defined over.");
                        throw null;
                    }
                    PolynomialGF2mSmallM polynomialGF2mSmallM10 = new PolynomialGF2mSmallM(gF2mField4, polynomialGF2mSmallM9.g(polynomialGF2mSmallM9.f78258c, iD));
                    PolynomialGF2mSmallM polynomialGF2mSmallM11 = polynomialGF2mSmallMArr[i11];
                    polynomialGF2mSmallM11.f78258c = polynomialGF2mSmallM11.a(polynomialGF2mSmallM11.f78258c, polynomialGF2mSmallM8.f78258c);
                    polynomialGF2mSmallM11.c();
                    PolynomialGF2mSmallM polynomialGF2mSmallM12 = this.d[i11];
                    polynomialGF2mSmallM12.f78258c = polynomialGF2mSmallM12.a(polynomialGF2mSmallM12.f78258c, polynomialGF2mSmallM10.f78258c);
                    polynomialGF2mSmallM12.c();
                }
            }
        }
    }
}
