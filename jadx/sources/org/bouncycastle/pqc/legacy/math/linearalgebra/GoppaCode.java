package org.bouncycastle.pqc.legacy.math.linearalgebra;

import java.lang.reflect.Array;
import java.security.SecureRandom;

/* JADX INFO: loaded from: classes5.dex */
public final class GoppaCode {

    public static class MaMaPe {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private GF2Matrix f77693h;
        private Permutation p;
        private GF2Matrix s;

        public MaMaPe(GF2Matrix gF2Matrix, GF2Matrix gF2Matrix2, Permutation permutation) {
            this.s = gF2Matrix;
            this.f77693h = gF2Matrix2;
            this.p = permutation;
        }

        public GF2Matrix getFirstMatrix() {
            return this.s;
        }

        public Permutation getPermutation() {
            return this.p;
        }

        public GF2Matrix getSecondMatrix() {
            return this.f77693h;
        }
    }

    public static class MatrixSet {
        private GF2Matrix g;
        private int[] setJ;

        public MatrixSet(GF2Matrix gF2Matrix, int[] iArr) {
            this.g = gF2Matrix;
            this.setJ = iArr;
        }

        public GF2Matrix getG() {
            return this.g;
        }

        public int[] getSetJ() {
            return this.setJ;
        }
    }

    private GoppaCode() {
    }

    public static MaMaPe computeSystematicForm(GF2Matrix gF2Matrix, SecureRandom secureRandom) {
        GF2Matrix gF2Matrix2;
        boolean z;
        int numColumns = gF2Matrix.getNumColumns();
        GF2Matrix gF2Matrix3 = null;
        while (true) {
            Permutation permutation = new Permutation(numColumns, secureRandom);
            GF2Matrix gF2Matrix4 = (GF2Matrix) gF2Matrix.rightMultiply(permutation);
            GF2Matrix leftSubMatrix = gF2Matrix4.getLeftSubMatrix();
            try {
                gF2Matrix2 = (GF2Matrix) leftSubMatrix.computeInverse();
                z = true;
            } catch (ArithmeticException unused) {
                gF2Matrix2 = gF2Matrix3;
                z = false;
            }
            if (z) {
                return new MaMaPe(leftSubMatrix, ((GF2Matrix) gF2Matrix2.rightMultiply(gF2Matrix4)).getRightSubMatrix(), permutation);
            }
            gF2Matrix3 = gF2Matrix2;
        }
    }

    public static GF2Matrix createCanonicalCheckMatrix(GF2mField gF2mField, PolynomialGF2mSmallM polynomialGF2mSmallM) {
        int degree = gF2mField.getDegree();
        int i2 = 1;
        int i3 = 1 << degree;
        int degree2 = polynomialGF2mSmallM.getDegree();
        int i4 = 0;
        Class cls = Integer.TYPE;
        int[][] iArr = (int[][]) Array.newInstance((Class<?>) cls, degree2, i3);
        int[][] iArr2 = (int[][]) Array.newInstance((Class<?>) cls, degree2, i3);
        for (int i5 = 0; i5 < i3; i5++) {
            iArr2[0][i5] = gF2mField.inverse(polynomialGF2mSmallM.evaluateAt(i5));
        }
        for (int i6 = 1; i6 < degree2; i6++) {
            for (int i7 = 0; i7 < i3; i7++) {
                iArr2[i6][i7] = gF2mField.mult(iArr2[i6 - 1][i7], i7);
            }
        }
        for (int i8 = 0; i8 < degree2; i8++) {
            for (int i9 = i4; i9 < i3; i9++) {
                int i10 = i4;
                while (i10 <= i8) {
                    int[] iArr3 = iArr[i8];
                    iArr3[i9] = gF2mField.add(iArr3[i9], gF2mField.mult(iArr2[i10][i9], polynomialGF2mSmallM.getCoefficient((degree2 + i10) - i8)));
                    i10++;
                    i2 = i2;
                    i4 = i4;
                }
            }
        }
        int i11 = i2;
        int i12 = i4;
        int[] iArr4 = new int[2];
        iArr4[i11] = (i3 + 31) >>> 5;
        iArr4[i12] = degree2 * degree;
        int[][] iArr5 = (int[][]) Array.newInstance((Class<?>) cls, iArr4);
        for (int i13 = i12; i13 < i3; i13++) {
            int i14 = i13 >>> 5;
            int i15 = i11 << (i13 & 31);
            for (int i16 = i12; i16 < degree2; i16++) {
                int i17 = iArr[i16][i13];
                for (int i18 = i12; i18 < degree; i18++) {
                    if (((i17 >>> i18) & 1) != 0) {
                        int[] iArr6 = iArr5[(((i16 + 1) * degree) - i18) - 1];
                        iArr6[i14] = iArr6[i14] ^ i15;
                    }
                }
            }
        }
        return new GF2Matrix(i3, iArr5);
    }

    public static GF2Vector syndromeDecode(GF2Vector gF2Vector, GF2mField gF2mField, PolynomialGF2mSmallM polynomialGF2mSmallM, PolynomialGF2mSmallM[] polynomialGF2mSmallMArr) {
        int degree = 1 << gF2mField.getDegree();
        GF2Vector gF2Vector2 = new GF2Vector(degree);
        if (!gF2Vector.isZero()) {
            PolynomialGF2mSmallM[] polynomialGF2mSmallMArrModPolynomialToFracton = new PolynomialGF2mSmallM(gF2Vector.toExtensionFieldVector(gF2mField)).modInverse(polynomialGF2mSmallM).addMonomial(1).modSquareRootMatrix(polynomialGF2mSmallMArr).modPolynomialToFracton(polynomialGF2mSmallM);
            PolynomialGF2mSmallM polynomialGF2mSmallM2 = polynomialGF2mSmallMArrModPolynomialToFracton[0];
            PolynomialGF2mSmallM polynomialGF2mSmallMMultiply = polynomialGF2mSmallM2.multiply(polynomialGF2mSmallM2);
            PolynomialGF2mSmallM polynomialGF2mSmallM3 = polynomialGF2mSmallMArrModPolynomialToFracton[1];
            PolynomialGF2mSmallM polynomialGF2mSmallMAdd = polynomialGF2mSmallMMultiply.add(polynomialGF2mSmallM3.multiply(polynomialGF2mSmallM3).multWithMonomial(1));
            PolynomialGF2mSmallM polynomialGF2mSmallMMultWithElement = polynomialGF2mSmallMAdd.multWithElement(gF2mField.inverse(polynomialGF2mSmallMAdd.getHeadCoefficient()));
            for (int i2 = 0; i2 < degree; i2++) {
                if (polynomialGF2mSmallMMultWithElement.evaluateAt(i2) == 0) {
                    gF2Vector2.setBit(i2);
                }
            }
        }
        return gF2Vector2;
    }
}
