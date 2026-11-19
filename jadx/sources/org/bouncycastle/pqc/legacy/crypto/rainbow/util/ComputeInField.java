package org.bouncycastle.pqc.legacy.crypto.rainbow.util;

import defpackage.md;
import defpackage.v7;
import java.lang.reflect.Array;

/* JADX INFO: loaded from: classes5.dex */
public class ComputeInField {
    private short[][] A;
    short[] x;

    private void computeZerosAbove() throws RuntimeException {
        for (int length = this.A.length - 1; length > 0; length--) {
            for (int i2 = length - 1; i2 >= 0; i2--) {
                short[][] sArr = this.A;
                short s = sArr[i2][length];
                short sInvElem = GF2Field.invElem(sArr[length][length]);
                if (sInvElem == 0) {
                    v7.h("The matrix is not invertible");
                    return;
                }
                int i3 = length;
                while (true) {
                    short[][] sArr2 = this.A;
                    if (i3 < sArr2.length * 2) {
                        short sMultElem = GF2Field.multElem(s, GF2Field.multElem(sArr2[length][i3], sInvElem));
                        short[] sArr3 = this.A[i2];
                        sArr3[i3] = GF2Field.addElem(sArr3[i3], sMultElem);
                        i3++;
                    }
                }
            }
        }
    }

    private void computeZerosUnder(boolean z) throws RuntimeException {
        short[][] sArr = this.A;
        int length = z ? sArr.length * 2 : sArr.length + 1;
        int i2 = 0;
        while (i2 < this.A.length - 1) {
            int i3 = i2 + 1;
            int i4 = i3;
            while (true) {
                short[][] sArr2 = this.A;
                if (i4 < sArr2.length) {
                    short s = sArr2[i4][i2];
                    short sInvElem = GF2Field.invElem(sArr2[i2][i2]);
                    if (sInvElem == 0) {
                        md.k("Matrix not invertible! We have to choose another one!");
                        return;
                    }
                    for (int i5 = i2; i5 < length; i5++) {
                        short sMultElem = GF2Field.multElem(s, GF2Field.multElem(this.A[i2][i5], sInvElem));
                        short[] sArr3 = this.A[i4];
                        sArr3[i5] = GF2Field.addElem(sArr3[i5], sMultElem);
                    }
                    i4++;
                }
            }
            i2 = i3;
        }
    }

    private void substitute() throws IllegalStateException {
        String str;
        short[][] sArr;
        short[][] sArr2 = this.A;
        short sInvElem = GF2Field.invElem(sArr2[sArr2.length - 1][sArr2.length - 1]);
        if (sInvElem != 0) {
            short[] sArr3 = this.x;
            short[][] sArr4 = this.A;
            sArr3[sArr4.length - 1] = GF2Field.multElem(sArr4[sArr4.length - 1][sArr4.length], sInvElem);
            for (int length = this.A.length - 2; length >= 0; length--) {
                short[][] sArr5 = this.A;
                short sAddElem = sArr5[length][sArr5.length];
                int length2 = sArr5.length;
                while (true) {
                    length2--;
                    sArr = this.A;
                    if (length2 <= length) {
                        break;
                    } else {
                        sAddElem = GF2Field.addElem(sAddElem, GF2Field.multElem(sArr[length][length2], this.x[length2]));
                    }
                }
                short sInvElem2 = GF2Field.invElem(sArr[length][length]);
                if (sInvElem2 != 0) {
                    this.x[length] = GF2Field.multElem(sAddElem, sInvElem2);
                } else {
                    str = "Not solvable equation system";
                }
            }
            return;
        }
        str = "The equation system is not solvable";
        md.k(str);
    }

    public short[][] addSquareMatrix(short[][] sArr, short[][] sArr2) {
        if (sArr.length != sArr2.length || sArr[0].length != sArr2[0].length) {
            v7.h("Addition is not possible!");
            return null;
        }
        short[][] sArr3 = (short[][]) Array.newInstance((Class<?>) Short.TYPE, sArr.length, sArr.length);
        for (int i2 = 0; i2 < sArr.length; i2++) {
            for (int i3 = 0; i3 < sArr2.length; i3++) {
                sArr3[i2][i3] = GF2Field.addElem(sArr[i2][i3], sArr2[i2][i3]);
            }
        }
        return sArr3;
    }

    public short[] addVect(short[] sArr, short[] sArr2) {
        if (sArr.length != sArr2.length) {
            v7.h("Multiplication is not possible!");
            return null;
        }
        int length = sArr.length;
        short[] sArr3 = new short[length];
        for (int i2 = 0; i2 < length; i2++) {
            sArr3[i2] = GF2Field.addElem(sArr[i2], sArr2[i2]);
        }
        return sArr3;
    }

    public short[][] inverse(short[][] sArr) {
        short[][] sArr2;
        Class cls = Short.TYPE;
        try {
            int i2 = 0;
            this.A = (short[][]) Array.newInstance((Class<?>) cls, sArr.length, sArr.length * 2);
            if (sArr.length != sArr[0].length) {
                throw new RuntimeException("The matrix is not invertible. Please choose another one!");
            }
            for (int i3 = 0; i3 < sArr.length; i3++) {
                for (int i4 = 0; i4 < sArr.length; i4++) {
                    this.A[i3][i4] = sArr[i3][i4];
                }
                int length = sArr.length;
                while (true) {
                    int length2 = sArr.length * 2;
                    sArr2 = this.A;
                    if (length < length2) {
                        sArr2[i3][length] = 0;
                        length++;
                    }
                }
                sArr2[i3][sArr2.length + i3] = 1;
            }
            computeZerosUnder(true);
            int i5 = 0;
            while (true) {
                short[][] sArr3 = this.A;
                if (i5 >= sArr3.length) {
                    break;
                }
                short sInvElem = GF2Field.invElem(sArr3[i5][i5]);
                int i6 = i5;
                while (true) {
                    short[][] sArr4 = this.A;
                    if (i6 < sArr4.length * 2) {
                        short[] sArr5 = sArr4[i5];
                        sArr5[i6] = GF2Field.multElem(sArr5[i6], sInvElem);
                        i6++;
                    }
                }
                i5++;
            }
            computeZerosAbove();
            short[][] sArr6 = this.A;
            short[][] sArr7 = (short[][]) Array.newInstance((Class<?>) cls, sArr6.length, sArr6.length);
            while (true) {
                short[][] sArr8 = this.A;
                if (i2 >= sArr8.length) {
                    return sArr7;
                }
                int length3 = sArr8.length;
                while (true) {
                    short[][] sArr9 = this.A;
                    if (length3 < sArr9.length * 2) {
                        sArr7[i2][length3 - sArr9.length] = sArr9[i2][length3];
                        length3++;
                    }
                }
                i2++;
            }
        } catch (RuntimeException unused) {
            return null;
        }
    }

    public short[][] multMatrix(short s, short[][] sArr) {
        short[][] sArr2 = (short[][]) Array.newInstance((Class<?>) Short.TYPE, sArr.length, sArr[0].length);
        for (int i2 = 0; i2 < sArr.length; i2++) {
            for (int i3 = 0; i3 < sArr[0].length; i3++) {
                sArr2[i2][i3] = GF2Field.multElem(s, sArr[i2][i3]);
            }
        }
        return sArr2;
    }

    public short[] multVect(short s, short[] sArr) {
        int length = sArr.length;
        short[] sArr2 = new short[length];
        for (int i2 = 0; i2 < length; i2++) {
            sArr2[i2] = GF2Field.multElem(s, sArr[i2]);
        }
        return sArr2;
    }

    public short[][] multVects(short[] sArr, short[] sArr2) {
        if (sArr.length != sArr2.length) {
            v7.h("Multiplication is not possible!");
            return null;
        }
        short[][] sArr3 = (short[][]) Array.newInstance((Class<?>) Short.TYPE, sArr.length, sArr2.length);
        for (int i2 = 0; i2 < sArr.length; i2++) {
            for (int i3 = 0; i3 < sArr2.length; i3++) {
                sArr3[i2][i3] = GF2Field.multElem(sArr[i2], sArr2[i3]);
            }
        }
        return sArr3;
    }

    public short[][] multiplyMatrix(short[][] sArr, short[][] sArr2) throws RuntimeException {
        if (sArr[0].length != sArr2.length) {
            v7.h("Multiplication is not possible!");
            return null;
        }
        this.A = (short[][]) Array.newInstance((Class<?>) Short.TYPE, sArr.length, sArr2[0].length);
        for (int i2 = 0; i2 < sArr.length; i2++) {
            for (int i3 = 0; i3 < sArr2.length; i3++) {
                for (int i4 = 0; i4 < sArr2[0].length; i4++) {
                    short sMultElem = GF2Field.multElem(sArr[i2][i3], sArr2[i3][i4]);
                    short[] sArr3 = this.A[i2];
                    sArr3[i4] = GF2Field.addElem(sArr3[i4], sMultElem);
                }
            }
        }
        return this.A;
    }

    public short[] solveEquation(short[][] sArr, short[] sArr2) {
        if (sArr.length != sArr2.length) {
            return null;
        }
        try {
            this.A = (short[][]) Array.newInstance((Class<?>) Short.TYPE, sArr.length, sArr.length + 1);
            this.x = new short[sArr.length];
            for (int i2 = 0; i2 < sArr.length; i2++) {
                for (int i3 = 0; i3 < sArr[0].length; i3++) {
                    this.A[i2][i3] = sArr[i2][i3];
                }
            }
            for (int i4 = 0; i4 < sArr2.length; i4++) {
                short[] sArr3 = this.A[i4];
                sArr3[sArr2.length] = GF2Field.addElem(sArr2[i4], sArr3[sArr2.length]);
            }
            computeZerosUnder(false);
            substitute();
            return this.x;
        } catch (RuntimeException unused) {
            return null;
        }
    }

    public short[] multiplyMatrix(short[][] sArr, short[] sArr2) throws RuntimeException {
        if (sArr[0].length != sArr2.length) {
            v7.h("Multiplication is not possible!");
            return null;
        }
        short[] sArr3 = new short[sArr.length];
        for (int i2 = 0; i2 < sArr.length; i2++) {
            for (int i3 = 0; i3 < sArr2.length; i3++) {
                sArr3[i2] = GF2Field.addElem(sArr3[i2], GF2Field.multElem(sArr[i2][i3], sArr2[i3]));
            }
        }
        return sArr3;
    }
}
