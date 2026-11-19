package org.bouncycastle.pqc.crypto.rainbow;

import defpackage.v7;
import java.lang.reflect.Array;

/* JADX INFO: loaded from: classes5.dex */
class ComputeInField {
    private void gaussElim(short[][] sArr) {
        int i2 = 0;
        while (i2 < sArr.length) {
            int i3 = i2 + 1;
            for (int i4 = i3; i4 < sArr.length; i4++) {
                if (sArr[i2][i2] == 0) {
                    for (int i5 = i2; i5 < sArr[0].length; i5++) {
                        short[] sArr2 = sArr[i2];
                        sArr2[i5] = GF2Field.addElem(sArr2[i5], sArr[i4][i5]);
                    }
                }
            }
            short sInvElem = GF2Field.invElem(sArr[i2][i2]);
            if (sInvElem == 0) {
                v7.h("The matrix is not invertible");
                return;
            }
            sArr[i2] = multVect(sInvElem, sArr[i2]);
            for (int i6 = 0; i6 < sArr.length; i6++) {
                if (i2 != i6) {
                    short s = sArr[i6][i2];
                    for (int i7 = i2; i7 < sArr[0].length; i7++) {
                        short sMultElem = GF2Field.multElem(sArr[i2][i7], s);
                        short[] sArr3 = sArr[i6];
                        sArr3[i7] = GF2Field.addElem(sArr3[i7], sMultElem);
                    }
                }
            }
            i2 = i3;
        }
    }

    public short[][] addMatrix(short[][] sArr, short[][] sArr2) {
        if (sArr.length == sArr2.length) {
            short[] sArr3 = sArr[0];
            if (sArr3.length == sArr2[0].length) {
                short[][] sArr4 = (short[][]) Array.newInstance((Class<?>) Short.TYPE, sArr.length, sArr3.length);
                for (int i2 = 0; i2 < sArr.length; i2++) {
                    for (int i3 = 0; i3 < sArr[0].length; i3++) {
                        sArr4[i2][i3] = GF2Field.addElem(sArr[i2][i3], sArr2[i2][i3]);
                    }
                }
                return sArr4;
            }
        }
        v7.h("Addition is not possible!");
        return null;
    }

    public short[][] addMatrixTranspose(short[][] sArr) {
        if (sArr.length == sArr[0].length) {
            return addMatrix(sArr, transpose(sArr));
        }
        v7.h("Addition is not possible!");
        return null;
    }

    public short[] addVect(short[] sArr, short[] sArr2) {
        if (sArr.length == sArr2.length) {
            int length = sArr.length;
            short[] sArr3 = new short[length];
            for (int i2 = 0; i2 < length; i2++) {
                sArr3[i2] = GF2Field.addElem(sArr[i2], sArr2[i2]);
            }
            return sArr3;
        }
        throw new RuntimeException("Addition is not possible! vector1.length: " + sArr.length + " vector2.length: " + sArr2.length);
    }

    public short[][] inverse(short[][] sArr) {
        Class cls = Short.TYPE;
        if (sArr.length != sArr[0].length) {
            v7.h("The matrix is not invertible. Please choose another one!");
            return null;
        }
        try {
            short[][] sArr2 = (short[][]) Array.newInstance((Class<?>) cls, sArr.length, sArr.length * 2);
            for (int i2 = 0; i2 < sArr.length; i2++) {
                System.arraycopy(sArr[i2], 0, sArr2[i2], 0, sArr.length);
                for (int length = sArr.length; length < sArr.length * 2; length++) {
                    sArr2[i2][length] = 0;
                }
                sArr2[i2][sArr2.length + i2] = 1;
            }
            gaussElim(sArr2);
            short[][] sArr3 = (short[][]) Array.newInstance((Class<?>) cls, sArr2.length, sArr2.length);
            for (int i3 = 0; i3 < sArr2.length; i3++) {
                for (int length2 = sArr2.length; length2 < sArr2.length * 2; length2++) {
                    sArr3[i3][length2 - sArr2.length] = sArr2[i3][length2];
                }
            }
            return sArr3;
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
        short[][] sArr3 = (short[][]) Array.newInstance((Class<?>) Short.TYPE, sArr.length, sArr2[0].length);
        for (int i2 = 0; i2 < sArr.length; i2++) {
            for (int i3 = 0; i3 < sArr2.length; i3++) {
                for (int i4 = 0; i4 < sArr2[0].length; i4++) {
                    short sMultElem = GF2Field.multElem(sArr[i2][i3], sArr2[i3][i4]);
                    short[] sArr4 = sArr3[i2];
                    sArr4[i4] = GF2Field.addElem(sArr4[i4], sMultElem);
                }
            }
        }
        return sArr3;
    }

    public short multiplyMatrix_quad(short[][] sArr, short[] sArr2) throws RuntimeException {
        int length = sArr.length;
        short[] sArr3 = sArr[0];
        if (length != sArr3.length || sArr3.length != sArr2.length) {
            v7.h("Multiplication is not possible!");
            return (short) 0;
        }
        short[] sArr4 = new short[sArr.length];
        short sAddElem = 0;
        for (int i2 = 0; i2 < sArr.length; i2++) {
            for (int i3 = 0; i3 < sArr2.length; i3++) {
                sArr4[i2] = GF2Field.addElem(sArr4[i2], GF2Field.multElem(sArr[i2][i3], sArr2[i3]));
            }
            sAddElem = GF2Field.addElem(sAddElem, GF2Field.multElem(sArr4[i2], sArr2[i2]));
        }
        return sAddElem;
    }

    public short[][][] obfuscate_l1_polys(short[][] sArr, short[][][] sArr2, short[][][] sArr3) {
        short[][] sArr4 = sArr2[0];
        int length = sArr4.length;
        short[][] sArr5 = sArr3[0];
        if (length == sArr5.length) {
            int length2 = sArr4[0].length;
            short[] sArr6 = sArr5[0];
            if (length2 == sArr6.length && sArr2.length == sArr[0].length && sArr3.length == sArr.length) {
                short[][][] sArr7 = (short[][][]) Array.newInstance((Class<?>) Short.TYPE, sArr3.length, sArr5.length, sArr6.length);
                for (int i2 = 0; i2 < sArr2[0].length; i2++) {
                    for (int i3 = 0; i3 < sArr2[0][0].length; i3++) {
                        for (int i4 = 0; i4 < sArr.length; i4++) {
                            for (int i5 = 0; i5 < sArr[0].length; i5++) {
                                short sMultElem = GF2Field.multElem(sArr[i4][i5], sArr2[i5][i2][i3]);
                                short[] sArr8 = sArr7[i4][i2];
                                sArr8[i3] = GF2Field.addElem(sArr8[i3], sMultElem);
                            }
                            short[] sArr9 = sArr7[i4][i2];
                            sArr9[i3] = GF2Field.addElem(sArr3[i4][i2][i3], sArr9[i3]);
                        }
                    }
                }
                return sArr7;
            }
        }
        v7.h("Multiplication not possible!");
        return null;
    }

    public short[] solveEquation(short[][] sArr, short[] sArr2) {
        if (sArr.length != sArr2.length) {
            return null;
        }
        try {
            short[][] sArr3 = (short[][]) Array.newInstance((Class<?>) Short.TYPE, sArr.length, sArr.length + 1);
            short[] sArr4 = new short[sArr.length];
            for (int i2 = 0; i2 < sArr.length; i2++) {
                System.arraycopy(sArr[i2], 0, sArr3[i2], 0, sArr[0].length);
                short[] sArr5 = sArr3[i2];
                sArr5[sArr2.length] = GF2Field.addElem(sArr2[i2], sArr5[sArr2.length]);
            }
            gaussElim(sArr3);
            for (int i3 = 0; i3 < sArr3.length; i3++) {
                sArr4[i3] = sArr3[i3][sArr2.length];
            }
            return sArr4;
        } catch (RuntimeException unused) {
            return null;
        }
    }

    public short[][] to_UT(short[][] sArr) {
        if (sArr.length != sArr[0].length) {
            v7.h("Computation to upper triangular matrix is not possible!");
            return null;
        }
        short[][] sArr2 = (short[][]) Array.newInstance((Class<?>) Short.TYPE, sArr.length, sArr.length);
        int i2 = 0;
        while (i2 < sArr.length) {
            sArr2[i2][i2] = sArr[i2][i2];
            int i3 = i2 + 1;
            for (int i4 = i3; i4 < sArr[0].length; i4++) {
                sArr2[i2][i4] = GF2Field.addElem(sArr[i2][i4], sArr[i4][i2]);
            }
            i2 = i3;
        }
        return sArr2;
    }

    public short[][] transpose(short[][] sArr) {
        short[][] sArr2 = (short[][]) Array.newInstance((Class<?>) Short.TYPE, sArr[0].length, sArr.length);
        for (int i2 = 0; i2 < sArr.length; i2++) {
            for (int i3 = 0; i3 < sArr[0].length; i3++) {
                sArr2[i3][i2] = sArr[i2][i3];
            }
        }
        return sArr2;
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
