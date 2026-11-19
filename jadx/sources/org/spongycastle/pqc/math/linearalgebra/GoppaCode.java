package org.spongycastle.pqc.math.linearalgebra;

import java.lang.reflect.Array;

/* JADX INFO: loaded from: classes5.dex */
public abstract class GoppaCode {
    public static GF2Matrix a(GF2mField gF2mField, PolynomialGF2mSmallM polynomialGF2mSmallM) {
        int i2 = gF2mField.f78248a;
        int i3 = gF2mField.f78249b;
        int i4 = 1;
        int i5 = 1 << i2;
        int[] iArr = polynomialGF2mSmallM.f78258c;
        int length = iArr.length - 1;
        if (iArr[length] == 0) {
            length = -1;
        }
        int i6 = 0;
        Class cls = Integer.TYPE;
        int[][] iArr2 = (int[][]) Array.newInstance((Class<?>) cls, length, i5);
        int[][] iArr3 = (int[][]) Array.newInstance((Class<?>) cls, length, i5);
        int i7 = 0;
        while (i7 < i5) {
            int[] iArr4 = iArr3[0];
            int[] iArr5 = polynomialGF2mSmallM.f78258c;
            int i8 = polynomialGF2mSmallM.f78257b;
            int iD = iArr5[i8];
            int i9 = i8 - i4;
            while (i9 >= 0) {
                iD = polynomialGF2mSmallM.f78258c[i9] ^ PolynomialRingGF2.d(iD, i7, polynomialGF2mSmallM.f78256a.f78249b);
                i9--;
                i4 = i4;
            }
            iArr4[i7] = gF2mField.b(iD);
            i7++;
            i4 = i4;
        }
        int i10 = i4;
        for (int i11 = i10; i11 < length; i11++) {
            for (int i12 = 0; i12 < i5; i12++) {
                iArr3[i11][i12] = PolynomialRingGF2.d(iArr3[i11 - 1][i12], i12, i3);
            }
        }
        for (int i13 = 0; i13 < length; i13++) {
            for (int i14 = i6; i14 < i5; i14++) {
                int i15 = i6;
                while (i15 <= i13) {
                    int[] iArr6 = iArr2[i13];
                    iArr6[i14] = PolynomialRingGF2.d(iArr3[i15][i14], polynomialGF2mSmallM.d((length + i15) - i13), i3) ^ iArr6[i14];
                    i15++;
                    i6 = i6;
                }
            }
        }
        int i16 = i6;
        int[] iArr7 = new int[2];
        iArr7[i10] = (i5 + 31) >>> 5;
        iArr7[i16] = length * i2;
        int[][] iArr8 = (int[][]) Array.newInstance((Class<?>) cls, iArr7);
        for (int i17 = i16; i17 < i5; i17++) {
            int i18 = i17 >>> 5;
            int i19 = i10 << (i17 & 31);
            for (int i20 = i16; i20 < length; i20++) {
                int i21 = iArr2[i20][i17];
                for (int i22 = i16; i22 < i2; i22++) {
                    if (((i21 >>> i22) & 1) != 0) {
                        int[] iArr9 = iArr8[(((i20 + 1) * i2) - i22) - 1];
                        iArr9[i18] = iArr9[i18] ^ i19;
                    }
                }
            }
        }
        return new GF2Matrix(i5, iArr8);
    }
}
