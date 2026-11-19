package org.bouncycastle.pqc.legacy.math.linearalgebra;

import defpackage.lc0;
import java.lang.reflect.Array;
import java.security.SecureRandom;
import org.bouncycastle.util.Arrays;

/* JADX INFO: loaded from: classes5.dex */
public class GF2Matrix extends Matrix {
    private int length;
    private int[][] matrix;

    public GF2Matrix(byte[] bArr) {
        if (bArr.length < 9) {
            lc0.l("given array is not an encoded matrix over GF(2)");
            throw null;
        }
        this.numRows = LittleEndianConversions.OS2IP(bArr, 0);
        int iOS2IP = LittleEndianConversions.OS2IP(bArr, 4);
        this.numColumns = iOS2IP;
        int i2 = this.numRows;
        int i3 = ((iOS2IP + 7) >>> 3) * i2;
        if (i2 > 0) {
            int i4 = 8;
            if (i3 == bArr.length - 8) {
                int i5 = (iOS2IP + 31) >>> 5;
                this.length = i5;
                this.matrix = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, i2, i5);
                int i6 = this.numColumns;
                int i7 = i6 >> 5;
                int i8 = i6 & 31;
                for (int i9 = 0; i9 < this.numRows; i9++) {
                    int i10 = 0;
                    while (i10 < i7) {
                        this.matrix[i9][i10] = LittleEndianConversions.OS2IP(bArr, i4);
                        i10++;
                        i4 += 4;
                    }
                    int i11 = 0;
                    while (i11 < i8) {
                        int[] iArr = this.matrix[i9];
                        iArr[i7] = iArr[i7] ^ ((bArr[i4] & 255) << i11);
                        i11 += 8;
                        i4++;
                    }
                }
                return;
            }
        }
        lc0.l("given array is not an encoded matrix over GF(2)");
        throw null;
    }

    private static void addToRow(int[] iArr, int[] iArr2, int i2) {
        for (int length = iArr2.length - 1; length >= i2; length--) {
            iArr2[length] = iArr[length] ^ iArr2[length];
        }
    }

    private void assignRandomLowerTriangularMatrix(int i2, SecureRandom secureRandom) {
        int[][] iArr;
        this.numRows = i2;
        this.numColumns = i2;
        int i3 = (i2 + 31) >>> 5;
        this.length = i3;
        this.matrix = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, i2, i3);
        for (int i4 = 0; i4 < this.numRows; i4++) {
            int i5 = i4 >>> 5;
            int i6 = i4 & 31;
            int i7 = 31 - i6;
            int i8 = 1 << i6;
            int i9 = 0;
            while (true) {
                iArr = this.matrix;
                if (i9 >= i5) {
                    break;
                }
                iArr[i4][i9] = secureRandom.nextInt();
                i9++;
            }
            iArr[i4][i5] = i8 | (secureRandom.nextInt() >>> i7);
            while (true) {
                i5++;
                if (i5 < this.length) {
                    this.matrix[i4][i5] = 0;
                }
            }
        }
    }

    private void assignRandomRegularMatrix(int i2, SecureRandom secureRandom) {
        this.numRows = i2;
        this.numColumns = i2;
        int i3 = (i2 + 31) >>> 5;
        this.length = i3;
        this.matrix = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, i2, i3);
        GF2Matrix gF2Matrix = (GF2Matrix) new GF2Matrix(i2, 'L', secureRandom).rightMultiply(new GF2Matrix(i2, Matrix.MATRIX_TYPE_RANDOM_UT, secureRandom));
        int[] vector = new Permutation(i2, secureRandom).getVector();
        for (int i4 = 0; i4 < i2; i4++) {
            System.arraycopy(gF2Matrix.matrix[i4], 0, this.matrix[vector[i4]], 0, this.length);
        }
    }

    private void assignRandomUpperTriangularMatrix(int i2, SecureRandom secureRandom) {
        int[][] iArr;
        int i3;
        int[][] iArr2;
        this.numRows = i2;
        this.numColumns = i2;
        int i4 = (i2 + 31) >>> 5;
        this.length = i4;
        this.matrix = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, i2, i4);
        int i5 = i2 & 31;
        int i6 = i5 == 0 ? -1 : (1 << i5) - 1;
        for (int i7 = 0; i7 < this.numRows; i7++) {
            int i8 = i7 >>> 5;
            int i9 = i7 & 31;
            int i10 = 0;
            while (true) {
                iArr = this.matrix;
                if (i10 >= i8) {
                    break;
                }
                iArr[i7][i10] = 0;
                i10++;
            }
            iArr[i7][i8] = (secureRandom.nextInt() | 1) << i9;
            while (true) {
                i8++;
                i3 = this.length;
                iArr2 = this.matrix;
                if (i8 < i3) {
                    iArr2[i7][i8] = secureRandom.nextInt();
                }
            }
            int[] iArr3 = iArr2[i7];
            int i11 = i3 - 1;
            iArr3[i11] = iArr3[i11] & i6;
        }
    }

    private void assignUnitMatrix(int i2) {
        this.numRows = i2;
        this.numColumns = i2;
        int i3 = (i2 + 31) >>> 5;
        this.length = i3;
        int[] iArr = {i2, i3};
        this.matrix = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, iArr);
        for (int i4 = 0; i4 < this.numRows; i4++) {
            for (int i5 = 0; i5 < this.length; i5++) {
                this.matrix[i4][i5] = 0;
            }
        }
        for (int i6 = 0; i6 < this.numRows; i6++) {
            this.matrix[i6][i6 >>> 5] = 1 << (i6 & 31);
        }
    }

    private void assignZeroMatrix(int i2, int i3) {
        this.numRows = i2;
        this.numColumns = i3;
        int i4 = (i3 + 31) >>> 5;
        this.length = i4;
        this.matrix = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, i2, i4);
        for (int i5 = 0; i5 < this.numRows; i5++) {
            for (int i6 = 0; i6 < this.length; i6++) {
                this.matrix[i5][i6] = 0;
            }
        }
    }

    public static GF2Matrix[] createRandomRegularMatrixAndItsInverse(int i2, SecureRandom secureRandom) {
        int i3 = (i2 + 31) >> 5;
        GF2Matrix gF2Matrix = new GF2Matrix(i2, 'L', secureRandom);
        GF2Matrix gF2Matrix2 = new GF2Matrix(i2, Matrix.MATRIX_TYPE_RANDOM_UT, secureRandom);
        GF2Matrix gF2Matrix3 = (GF2Matrix) gF2Matrix.rightMultiply(gF2Matrix2);
        Permutation permutation = new Permutation(i2, secureRandom);
        int[] vector = permutation.getVector();
        int i4 = 1;
        int[][] iArr = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, i2, i3);
        for (int i5 = 0; i5 < i2; i5++) {
            System.arraycopy(gF2Matrix3.matrix[vector[i5]], 0, iArr[i5], 0, i3);
        }
        GF2Matrix gF2Matrix4 = new GF2Matrix(i2, iArr);
        GF2Matrix gF2Matrix5 = new GF2Matrix(i2, 'I');
        int i6 = 0;
        while (i6 < i2) {
            int i7 = i6 >>> 5;
            int i8 = i4 << (i6 & 31);
            int i9 = i6 + 1;
            int i10 = i9;
            while (i10 < i2) {
                if ((gF2Matrix.matrix[i10][i7] & i8) != 0) {
                    int i11 = 0;
                    while (i11 <= i7) {
                        int i12 = i4;
                        int[][] iArr2 = gF2Matrix5.matrix;
                        int[] iArr3 = iArr2[i10];
                        iArr3[i11] = iArr3[i11] ^ iArr2[i6][i11];
                        i11++;
                        i4 = i12;
                    }
                }
                i10++;
                i4 = i4;
            }
            i6 = i9;
        }
        int i13 = i4;
        GF2Matrix gF2Matrix6 = new GF2Matrix(i2, 'I');
        for (int i14 = i2 - 1; i14 >= 0; i14--) {
            int i15 = i14 >>> 5;
            int i16 = i13 << (i14 & 31);
            for (int i17 = i14 - 1; i17 >= 0; i17--) {
                if ((gF2Matrix2.matrix[i17][i15] & i16) != 0) {
                    for (int i18 = i15; i18 < i3; i18++) {
                        int[][] iArr4 = gF2Matrix6.matrix;
                        int[] iArr5 = iArr4[i17];
                        iArr5[i18] = iArr4[i14][i18] ^ iArr5[i18];
                    }
                }
            }
        }
        return new GF2Matrix[]{gF2Matrix4, (GF2Matrix) gF2Matrix6.rightMultiply(gF2Matrix5.rightMultiply(permutation))};
    }

    private static void swapRows(int[][] iArr, int i2, int i3) {
        int[] iArr2 = iArr[i2];
        iArr[i2] = iArr[i3];
        iArr[i3] = iArr2;
    }

    @Override // org.bouncycastle.pqc.legacy.math.linearalgebra.Matrix
    public Matrix computeInverse() {
        int i2 = this.numRows;
        if (i2 != this.numColumns) {
            lc0.l("Matrix is not invertible.");
            return null;
        }
        int[] iArr = {i2, this.length};
        Class cls = Integer.TYPE;
        int[][] iArr2 = (int[][]) Array.newInstance((Class<?>) cls, iArr);
        for (int i3 = this.numRows - 1; i3 >= 0; i3--) {
            iArr2[i3] = IntUtils.clone(this.matrix[i3]);
        }
        int[][] iArr3 = (int[][]) Array.newInstance((Class<?>) cls, this.numRows, this.length);
        for (int i4 = this.numRows - 1; i4 >= 0; i4--) {
            iArr3[i4][i4 >> 5] = 1 << (i4 & 31);
        }
        for (int i5 = 0; i5 < this.numRows; i5++) {
            int i6 = i5 >> 5;
            int i7 = 1 << (i5 & 31);
            if ((iArr2[i5][i6] & i7) == 0) {
                int i8 = i5 + 1;
                boolean z = false;
                while (i8 < this.numRows) {
                    if ((iArr2[i8][i6] & i7) != 0) {
                        swapRows(iArr2, i5, i8);
                        swapRows(iArr3, i5, i8);
                        i8 = this.numRows;
                        z = true;
                    }
                    i8++;
                }
                if (!z) {
                    lc0.l("Matrix is not invertible.");
                    return null;
                }
            }
            for (int i9 = this.numRows - 1; i9 >= 0; i9--) {
                if (i9 != i5) {
                    int[] iArr4 = iArr2[i9];
                    if ((iArr4[i6] & i7) != 0) {
                        addToRow(iArr2[i5], iArr4, i6);
                        addToRow(iArr3[i5], iArr3[i9], 0);
                    }
                }
            }
        }
        return new GF2Matrix(this.numColumns, iArr3);
    }

    public Matrix computeTranspose() {
        int[][] iArr = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, this.numColumns, (this.numRows + 31) >>> 5);
        int i2 = 0;
        while (true) {
            int i3 = this.numRows;
            if (i2 >= i3) {
                return new GF2Matrix(i3, iArr);
            }
            for (int i4 = 0; i4 < this.numColumns; i4++) {
                int i5 = i2 >>> 5;
                int i6 = i2 & 31;
                if (((this.matrix[i2][i4 >>> 5] >>> (i4 & 31)) & 1) == 1) {
                    int[] iArr2 = iArr[i4];
                    iArr2[i5] = (1 << i6) | iArr2[i5];
                }
            }
            i2++;
        }
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof GF2Matrix)) {
            return false;
        }
        GF2Matrix gF2Matrix = (GF2Matrix) obj;
        if (this.numRows != gF2Matrix.numRows || this.numColumns != gF2Matrix.numColumns || this.length != gF2Matrix.length) {
            return false;
        }
        for (int i2 = 0; i2 < this.numRows; i2++) {
            if (!IntUtils.equals(this.matrix[i2], gF2Matrix.matrix[i2])) {
                return false;
            }
        }
        return true;
    }

    public GF2Matrix extendLeftCompactForm() {
        int i2 = this.numColumns;
        int i3 = this.numRows;
        GF2Matrix gF2Matrix = new GF2Matrix(i3, i2 + i3);
        int i4 = this.numRows;
        int i5 = (i4 - 1) + this.numColumns;
        int i6 = i4 - 1;
        while (i6 >= 0) {
            System.arraycopy(this.matrix[i6], 0, gF2Matrix.matrix[i6], 0, this.length);
            int[] iArr = gF2Matrix.matrix[i6];
            int i7 = i5 >> 5;
            iArr[i7] = iArr[i7] | (1 << (i5 & 31));
            i6--;
            i5--;
        }
        return gF2Matrix;
    }

    public GF2Matrix extendRightCompactForm() {
        int i2;
        int[][] iArr;
        int i3 = this.numRows;
        GF2Matrix gF2Matrix = new GF2Matrix(i3, this.numColumns + i3);
        int i4 = this.numRows;
        int i5 = i4 >> 5;
        int i6 = i4 & 31;
        for (int i7 = i4 - 1; i7 >= 0; i7--) {
            int[] iArr2 = gF2Matrix.matrix[i7];
            int i8 = i7 >> 5;
            iArr2[i8] = iArr2[i8] | (1 << (i7 & 31));
            int i9 = 0;
            if (i6 != 0) {
                int i10 = i5;
                while (true) {
                    i2 = this.length;
                    int i11 = i2 - 1;
                    iArr = this.matrix;
                    if (i9 >= i11) {
                        break;
                    }
                    int i12 = iArr[i7][i9];
                    int[] iArr3 = gF2Matrix.matrix[i7];
                    int i13 = i10 + 1;
                    iArr3[i10] = iArr3[i10] | (i12 << i6);
                    iArr3[i13] = iArr3[i13] | (i12 >>> (32 - i6));
                    i9++;
                    i10 = i13;
                }
                int i14 = iArr[i7][i2 - 1];
                int[] iArr4 = gF2Matrix.matrix[i7];
                int i15 = i10 + 1;
                iArr4[i10] = iArr4[i10] | (i14 << i6);
                if (i15 < gF2Matrix.length) {
                    iArr4[i15] = iArr4[i15] | (i14 >>> (32 - i6));
                }
            } else {
                System.arraycopy(this.matrix[i7], 0, iArr2, i5, this.length);
            }
        }
        return gF2Matrix;
    }

    @Override // org.bouncycastle.pqc.legacy.math.linearalgebra.Matrix
    public byte[] getEncoded() {
        int i2 = (this.numColumns + 7) >>> 3;
        int i3 = this.numRows;
        int i4 = 8;
        byte[] bArr = new byte[(i2 * i3) + 8];
        LittleEndianConversions.I2OSP(i3, bArr, 0);
        LittleEndianConversions.I2OSP(this.numColumns, bArr, 4);
        int i5 = this.numColumns;
        int i6 = i5 >>> 5;
        int i7 = i5 & 31;
        for (int i8 = 0; i8 < this.numRows; i8++) {
            int i9 = 0;
            while (i9 < i6) {
                LittleEndianConversions.I2OSP(this.matrix[i8][i9], bArr, i4);
                i9++;
                i4 += 4;
            }
            int i10 = 0;
            while (i10 < i7) {
                bArr[i4] = (byte) ((this.matrix[i8][i6] >>> i10) & 255);
                i10 += 8;
                i4++;
            }
        }
        return bArr;
    }

    public double getHammingWeight() {
        int[][] iArr;
        int i2 = this.numColumns & 31;
        int i3 = this.length;
        if (i2 != 0) {
            i3--;
        }
        double d = 0.0d;
        double d2 = 0.0d;
        for (int i4 = 0; i4 < this.numRows; i4++) {
            int i5 = 0;
            while (true) {
                iArr = this.matrix;
                if (i5 >= i3) {
                    break;
                }
                int i6 = iArr[i4][i5];
                for (int i7 = 0; i7 < 32; i7++) {
                    d += (double) ((i6 >>> i7) & 1);
                    d2 += 1.0d;
                }
                i5++;
            }
            int i8 = iArr[i4][this.length - 1];
            for (int i9 = 0; i9 < i2; i9++) {
                d += (double) ((i8 >>> i9) & 1);
                d2 += 1.0d;
            }
        }
        return d / d2;
    }

    public int[][] getIntArray() {
        return this.matrix;
    }

    public GF2Matrix getLeftSubMatrix() {
        int i2 = this.numColumns;
        int i3 = this.numRows;
        if (i2 <= i3) {
            lc0.l("empty submatrix");
            return null;
        }
        int i4 = (i3 + 31) >> 5;
        int[][] iArr = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, i3, i4);
        int i5 = this.numRows;
        int i6 = (1 << (i5 & 31)) - 1;
        if (i6 == 0) {
            i6 = -1;
        }
        for (int i7 = i5 - 1; i7 >= 0; i7--) {
            System.arraycopy(this.matrix[i7], 0, iArr[i7], 0, i4);
            int[] iArr2 = iArr[i7];
            int i8 = i4 - 1;
            iArr2[i8] = iArr2[i8] & i6;
        }
        return new GF2Matrix(this.numRows, iArr);
    }

    public int getLength() {
        return this.length;
    }

    public GF2Matrix getRightSubMatrix() {
        int i2;
        int[][] iArr;
        int i3 = this.numColumns;
        int i4 = this.numRows;
        if (i3 <= i4) {
            lc0.l("empty submatrix");
            return null;
        }
        int i5 = i4 >> 5;
        int i6 = i4 & 31;
        GF2Matrix gF2Matrix = new GF2Matrix(i4, i3 - i4);
        for (int i7 = this.numRows - 1; i7 >= 0; i7--) {
            int i8 = 0;
            if (i6 != 0) {
                int i9 = i5;
                while (true) {
                    i2 = gF2Matrix.length;
                    int i10 = i2 - 1;
                    iArr = gF2Matrix.matrix;
                    if (i8 >= i10) {
                        break;
                    }
                    int[] iArr2 = iArr[i7];
                    int[] iArr3 = this.matrix[i7];
                    int i11 = i9 + 1;
                    iArr2[i8] = (iArr3[i9] >>> i6) | (iArr3[i11] << (32 - i6));
                    i8++;
                    i9 = i11;
                }
                int[] iArr4 = iArr[i7];
                int[] iArr5 = this.matrix[i7];
                int i12 = i9 + 1;
                iArr4[i2 - 1] = iArr5[i9] >>> i6;
                if (i12 < this.length) {
                    int i13 = i2 - 1;
                    iArr4[i13] = iArr4[i13] | (iArr5[i12] << (32 - i6));
                }
            } else {
                System.arraycopy(this.matrix[i7], i5, gF2Matrix.matrix[i7], 0, gF2Matrix.length);
            }
        }
        return gF2Matrix;
    }

    public int[] getRow(int i2) {
        return this.matrix[i2];
    }

    public int hashCode() {
        int iHashCode = (((this.numRows * 31) + this.numColumns) * 31) + this.length;
        for (int i2 = 0; i2 < this.numRows; i2++) {
            iHashCode = (iHashCode * 31) + Arrays.hashCode(this.matrix[i2]);
        }
        return iHashCode;
    }

    @Override // org.bouncycastle.pqc.legacy.math.linearalgebra.Matrix
    public boolean isZero() {
        for (int i2 = 0; i2 < this.numRows; i2++) {
            for (int i3 = 0; i3 < this.length; i3++) {
                if (this.matrix[i2][i3] != 0) {
                    return false;
                }
            }
        }
        return true;
    }

    @Override // org.bouncycastle.pqc.legacy.math.linearalgebra.Matrix
    public Vector leftMultiply(Vector vector) {
        String str;
        if (!(vector instanceof GF2Vector)) {
            str = "vector is not defined over GF(2)";
        } else {
            if (vector.length == this.numRows) {
                int[] vecArray = ((GF2Vector) vector).getVecArray();
                int[] iArr = new int[this.length];
                int i2 = this.numRows;
                int i3 = i2 >> 5;
                int i4 = 1 << (i2 & 31);
                int i5 = 0;
                for (int i6 = 0; i6 < i3; i6++) {
                    int i7 = 1;
                    do {
                        if ((vecArray[i6] & i7) != 0) {
                            for (int i8 = 0; i8 < this.length; i8++) {
                                iArr[i8] = iArr[i8] ^ this.matrix[i5][i8];
                            }
                        }
                        i5++;
                        i7 <<= 1;
                    } while (i7 != 0);
                }
                for (int i9 = 1; i9 != i4; i9 <<= 1) {
                    if ((vecArray[i3] & i9) != 0) {
                        for (int i10 = 0; i10 < this.length; i10++) {
                            iArr[i10] = iArr[i10] ^ this.matrix[i5][i10];
                        }
                    }
                    i5++;
                }
                return new GF2Vector(iArr, this.numColumns);
            }
            str = "length mismatch";
        }
        lc0.l(str);
        return null;
    }

    public Vector leftMultiplyLeftCompactForm(Vector vector) {
        String str;
        if (!(vector instanceof GF2Vector)) {
            str = "vector is not defined over GF(2)";
        } else {
            if (vector.length == this.numRows) {
                int[] vecArray = ((GF2Vector) vector).getVecArray();
                int i2 = this.numRows;
                int[] iArr = new int[((this.numColumns + i2) + 31) >>> 5];
                int i3 = i2 >>> 5;
                int i4 = 0;
                for (int i5 = 0; i5 < i3; i5++) {
                    int i6 = 1;
                    do {
                        if ((vecArray[i5] & i6) != 0) {
                            for (int i7 = 0; i7 < this.length; i7++) {
                                iArr[i7] = iArr[i7] ^ this.matrix[i4][i7];
                            }
                            int i8 = this.numColumns;
                            int i9 = (i8 + i4) >>> 5;
                            iArr[i9] = (1 << ((i8 + i4) & 31)) | iArr[i9];
                        }
                        i4++;
                        i6 <<= 1;
                    } while (i6 != 0);
                }
                int i10 = 1 << (this.numRows & 31);
                for (int i11 = 1; i11 != i10; i11 <<= 1) {
                    if ((vecArray[i3] & i11) != 0) {
                        for (int i12 = 0; i12 < this.length; i12++) {
                            iArr[i12] = iArr[i12] ^ this.matrix[i4][i12];
                        }
                        int i13 = this.numColumns;
                        int i14 = (i13 + i4) >>> 5;
                        iArr[i14] = (1 << ((i13 + i4) & 31)) | iArr[i14];
                    }
                    i4++;
                }
                return new GF2Vector(iArr, this.numRows + this.numColumns);
            }
            str = "length mismatch";
        }
        lc0.l(str);
        return null;
    }

    @Override // org.bouncycastle.pqc.legacy.math.linearalgebra.Matrix
    public Matrix rightMultiply(Matrix matrix) {
        String str;
        int[][] iArr;
        if (!(matrix instanceof GF2Matrix)) {
            str = "matrix is not defined over GF(2)";
        } else {
            if (matrix.numRows == this.numColumns) {
                GF2Matrix gF2Matrix = (GF2Matrix) matrix;
                GF2Matrix gF2Matrix2 = new GF2Matrix(this.numRows, matrix.numColumns);
                int i2 = this.numColumns & 31;
                int i3 = this.length;
                if (i2 != 0) {
                    i3--;
                }
                for (int i4 = 0; i4 < this.numRows; i4++) {
                    int i5 = 0;
                    int i6 = 0;
                    while (true) {
                        iArr = this.matrix;
                        if (i5 >= i3) {
                            break;
                        }
                        int i7 = iArr[i4][i5];
                        for (int i8 = 0; i8 < 32; i8++) {
                            if (((1 << i8) & i7) != 0) {
                                for (int i9 = 0; i9 < gF2Matrix.length; i9++) {
                                    int[] iArr2 = gF2Matrix2.matrix[i4];
                                    iArr2[i9] = iArr2[i9] ^ gF2Matrix.matrix[i6][i9];
                                }
                            }
                            i6++;
                        }
                        i5++;
                    }
                    int i10 = iArr[i4][this.length - 1];
                    for (int i11 = 0; i11 < i2; i11++) {
                        if (((1 << i11) & i10) != 0) {
                            for (int i12 = 0; i12 < gF2Matrix.length; i12++) {
                                int[] iArr3 = gF2Matrix2.matrix[i4];
                                iArr3[i12] = iArr3[i12] ^ gF2Matrix.matrix[i6][i12];
                            }
                        }
                        i6++;
                    }
                }
                return gF2Matrix2;
            }
            str = "length mismatch";
        }
        lc0.l(str);
        return null;
    }

    public Vector rightMultiplyRightCompactForm(Vector vector) {
        String str;
        int i2;
        if (!(vector instanceof GF2Vector)) {
            str = "vector is not defined over GF(2)";
        } else if (vector.length == this.numColumns + this.numRows) {
            int[] vecArray = ((GF2Vector) vector).getVecArray();
            int i3 = this.numRows;
            int[] iArr = new int[(i3 + 31) >>> 5];
            int i4 = i3 >> 5;
            int i5 = i3 & 31;
            int i6 = 0;
            while (true) {
                int i7 = this.numRows;
                if (i6 >= i7) {
                    return new GF2Vector(iArr, i7);
                }
                int i8 = i6 >> 5;
                int i9 = i6 & 31;
                int i10 = (vecArray[i8] >>> i9) & 1;
                int i11 = i4;
                int i12 = 0;
                if (i5 != 0) {
                    while (true) {
                        i2 = this.length;
                        if (i12 >= i2 - 1) {
                            break;
                        }
                        int i13 = i11 + 1;
                        i10 ^= ((vecArray[i11] >>> i5) | (vecArray[i13] << (32 - i5))) & this.matrix[i6][i12];
                        i12++;
                        i11 = i13;
                    }
                    int i14 = i11 + 1;
                    int i15 = vecArray[i11] >>> i5;
                    if (i14 < vecArray.length) {
                        i15 |= vecArray[i14] << (32 - i5);
                    }
                    i10 ^= this.matrix[i6][i2 - 1] & i15;
                } else {
                    while (i12 < this.length) {
                        i10 ^= vecArray[i11] & this.matrix[i6][i12];
                        i12++;
                        i11++;
                    }
                }
                int i16 = 0;
                for (int i17 = 0; i17 < 32; i17++) {
                    i16 ^= i10 & 1;
                    i10 >>>= 1;
                }
                if (i16 == 1) {
                    iArr[i8] = iArr[i8] | (1 << i9);
                }
                i6++;
            }
        } else {
            str = "length mismatch";
        }
        lc0.l(str);
        return null;
    }

    @Override // org.bouncycastle.pqc.legacy.math.linearalgebra.Matrix
    public String toString() {
        int[][] iArr;
        int i2 = this.numColumns & 31;
        int i3 = this.length;
        if (i2 != 0) {
            i3--;
        }
        StringBuffer stringBuffer = new StringBuffer();
        for (int i4 = 0; i4 < this.numRows; i4++) {
            stringBuffer.append(i4 + ": ");
            int i5 = 0;
            while (true) {
                iArr = this.matrix;
                if (i5 >= i3) {
                    break;
                }
                int i6 = iArr[i4][i5];
                for (int i7 = 0; i7 < 32; i7++) {
                    if (((i6 >>> i7) & 1) == 0) {
                        stringBuffer.append('0');
                    } else {
                        stringBuffer.append('1');
                    }
                }
                stringBuffer.append(' ');
                i5++;
            }
            int i8 = iArr[i4][this.length - 1];
            for (int i9 = 0; i9 < i2; i9++) {
                if (((i8 >>> i9) & 1) == 0) {
                    stringBuffer.append('0');
                } else {
                    stringBuffer.append('1');
                }
            }
            stringBuffer.append('\n');
        }
        return stringBuffer.toString();
    }

    public Matrix leftMultiply(Permutation permutation) {
        int[] vector = permutation.getVector();
        int length = vector.length;
        int i2 = this.numRows;
        if (length != i2) {
            lc0.l("length mismatch");
            return null;
        }
        int[][] iArr = new int[i2][];
        for (int i3 = i2 - 1; i3 >= 0; i3--) {
            iArr[i3] = IntUtils.clone(this.matrix[vector[i3]]);
        }
        return new GF2Matrix(this.numRows, iArr);
    }

    public GF2Matrix(int i2, char c2, SecureRandom secureRandom) {
        if (i2 <= 0) {
            lc0.l("Size of matrix is non-positive.");
            throw null;
        }
        if (c2 == 'I') {
            assignUnitMatrix(i2);
            return;
        }
        if (c2 == 'L') {
            assignRandomLowerTriangularMatrix(i2, secureRandom);
            return;
        }
        if (c2 == 'R') {
            assignRandomRegularMatrix(i2, secureRandom);
            return;
        }
        if (c2 == 'U') {
            assignRandomUpperTriangularMatrix(i2, secureRandom);
        } else if (c2 == 'Z') {
            assignZeroMatrix(i2, i2);
        } else {
            lc0.l("Unknown matrix type.");
            throw null;
        }
    }

    private GF2Matrix(int i2, int i3) {
        if (i3 <= 0 || i2 <= 0) {
            lc0.l("size of matrix is non-positive");
            throw null;
        }
        assignZeroMatrix(i2, i3);
    }

    public GF2Matrix(int i2, int[][] iArr) {
        int[] iArr2 = iArr[0];
        if (iArr2.length != ((i2 + 31) >> 5)) {
            lc0.l("Int array does not match given number of columns.");
            throw null;
        }
        this.numColumns = i2;
        this.numRows = iArr.length;
        this.length = iArr2.length;
        int i3 = i2 & 31;
        int i4 = i3 == 0 ? -1 : (1 << i3) - 1;
        for (int i5 = 0; i5 < this.numRows; i5++) {
            int[] iArr3 = iArr[i5];
            int i6 = this.length - 1;
            iArr3[i6] = iArr3[i6] & i4;
        }
        this.matrix = iArr;
    }

    public GF2Matrix(GF2Matrix gF2Matrix) {
        this.numColumns = gF2Matrix.getNumColumns();
        this.numRows = gF2Matrix.getNumRows();
        this.length = gF2Matrix.length;
        this.matrix = new int[gF2Matrix.matrix.length][];
        int i2 = 0;
        while (true) {
            int[][] iArr = this.matrix;
            if (i2 >= iArr.length) {
                return;
            }
            iArr[i2] = IntUtils.clone(gF2Matrix.matrix[i2]);
            i2++;
        }
    }

    public GF2Matrix(int i2, char c2) {
        this(i2, c2, new SecureRandom());
    }

    @Override // org.bouncycastle.pqc.legacy.math.linearalgebra.Matrix
    public Matrix rightMultiply(Permutation permutation) {
        int[] vector = permutation.getVector();
        int length = vector.length;
        int i2 = this.numColumns;
        if (length != i2) {
            lc0.l("length mismatch");
            return null;
        }
        GF2Matrix gF2Matrix = new GF2Matrix(this.numRows, i2);
        for (int i3 = this.numColumns - 1; i3 >= 0; i3--) {
            int i4 = i3 >>> 5;
            int i5 = i3 & 31;
            int i6 = vector[i3];
            int i7 = i6 >>> 5;
            int i8 = i6 & 31;
            for (int i9 = this.numRows - 1; i9 >= 0; i9--) {
                int[] iArr = gF2Matrix.matrix[i9];
                iArr[i4] = iArr[i4] | (((this.matrix[i9][i7] >>> i8) & 1) << i5);
            }
        }
        return gF2Matrix;
    }

    @Override // org.bouncycastle.pqc.legacy.math.linearalgebra.Matrix
    public Vector rightMultiply(Vector vector) {
        String str;
        if (!(vector instanceof GF2Vector)) {
            str = "vector is not defined over GF(2)";
        } else if (vector.length == this.numColumns) {
            int[] vecArray = ((GF2Vector) vector).getVecArray();
            int[] iArr = new int[(this.numRows + 31) >>> 5];
            int i2 = 0;
            while (true) {
                int i3 = this.numRows;
                if (i2 >= i3) {
                    return new GF2Vector(iArr, i3);
                }
                int i4 = 0;
                for (int i5 = 0; i5 < this.length; i5++) {
                    i4 ^= this.matrix[i2][i5] & vecArray[i5];
                }
                int i6 = 0;
                for (int i7 = 0; i7 < 32; i7++) {
                    i6 ^= (i4 >>> i7) & 1;
                }
                if (i6 == 1) {
                    int i8 = i2 >>> 5;
                    iArr[i8] = iArr[i8] | (1 << (i2 & 31));
                }
                i2++;
            }
        } else {
            str = "length mismatch";
        }
        lc0.l(str);
        return null;
    }
}
