package org.bouncycastle.pqc.legacy.math.linearalgebra;

import defpackage.md;
import defpackage.v7;
import java.lang.reflect.Array;
import java.security.SecureRandom;
import java.util.Random;

/* JADX INFO: loaded from: classes5.dex */
public class GF2nONBField extends GF2nField {
    private static final int MAXLONG = 64;
    private int mBit;
    private int mLength;
    int[][] mMult;
    private int mType;

    public GF2nONBField(int i2, SecureRandom secureRandom) throws RuntimeException {
        super(secureRandom);
        if (i2 < 3) {
            md.n("k must be at least 3");
            throw null;
        }
        this.mDegree = i2;
        int i3 = i2 / 64;
        this.mLength = i3;
        int i4 = i2 & 63;
        this.mBit = i4;
        if (i4 == 0) {
            this.mBit = 64;
        } else {
            this.mLength = i3 + 1;
        }
        computeType();
        if (this.mType >= 3) {
            throw new RuntimeException("\nThe type of this field is " + this.mType);
        }
        this.mMult = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, this.mDegree, 2);
        for (int i5 = 0; i5 < this.mDegree; i5++) {
            int[] iArr = this.mMult[i5];
            iArr[0] = -1;
            iArr[1] = -1;
        }
        computeMultMatrix();
        computeFieldPolynomial();
        this.fields = new java.util.Vector();
        this.matrices = new java.util.Vector();
    }

    private void computeMultMatrix() {
        String str;
        int i2;
        int i3 = this.mType;
        if ((i3 & 7) != 0) {
            int i4 = this.mDegree * i3;
            int i5 = i4 + 1;
            int[] iArr = new int[i5];
            int iElementOfOrder = i3 == 1 ? 1 : i3 == 2 ? i4 : elementOfOrder(i3, i5);
            int i6 = 1;
            int i7 = 0;
            while (true) {
                i2 = this.mType;
                if (i7 >= i2) {
                    break;
                }
                int i8 = i6;
                for (int i9 = 0; i9 < this.mDegree; i9++) {
                    iArr[i8] = i9;
                    i8 = (i8 << 1) % i5;
                    if (i8 < 0) {
                        i8 += i5;
                    }
                }
                i6 = (i6 * iElementOfOrder) % i5;
                if (i6 < 0) {
                    i6 += i5;
                }
                i7++;
            }
            if (i2 == 1) {
                int i10 = 1;
                while (i10 < i4) {
                    int i11 = i10 + 1;
                    int[] iArr2 = this.mMult[iArr[i11]];
                    int i12 = i5 - i10;
                    if (iArr2[0] == -1) {
                        iArr2[0] = iArr[i12];
                    } else {
                        iArr2[1] = iArr[i12];
                    }
                    i10 = i11;
                }
                int i13 = this.mDegree >> 1;
                for (int i14 = 1; i14 <= i13; i14++) {
                    int[][] iArr3 = this.mMult;
                    int i15 = i14 - 1;
                    int[] iArr4 = iArr3[i15];
                    if (iArr4[0] == -1) {
                        iArr4[0] = (i13 + i14) - 1;
                    } else {
                        iArr4[1] = (i13 + i14) - 1;
                    }
                    int[] iArr5 = iArr3[(i13 + i14) - 1];
                    if (iArr5[0] == -1) {
                        iArr5[0] = i15;
                    } else {
                        iArr5[1] = i15;
                    }
                }
                return;
            }
            if (i2 == 2) {
                int i16 = 1;
                while (i16 < i4) {
                    int i17 = i16 + 1;
                    int[] iArr6 = this.mMult[iArr[i17]];
                    int i18 = i5 - i16;
                    if (iArr6[0] == -1) {
                        iArr6[0] = iArr[i18];
                    } else {
                        iArr6[1] = iArr[i18];
                    }
                    i16 = i17;
                }
                return;
            }
            str = "only type 1 or type 2 implemented";
        } else {
            str = "bisher nur fuer Gausssche Normalbasen implementiert";
        }
        v7.h(str);
    }

    private void computeType() throws RuntimeException {
        int i2;
        if ((this.mDegree & 7) == 0) {
            v7.h("The extension degree is divisible by 8!");
            return;
        }
        this.mType = 1;
        int iGcd = 0;
        while (true) {
            i2 = this.mType;
            if (iGcd == 1) {
                break;
            }
            int i3 = (i2 * this.mDegree) + 1;
            if (IntegerFunctions.isPrime(i3)) {
                int iOrder = IntegerFunctions.order(2, i3);
                int i4 = this.mType;
                int i5 = this.mDegree;
                iGcd = IntegerFunctions.gcd((i4 * i5) / iOrder, i5);
            }
            this.mType++;
        }
        int i6 = i2 - 1;
        this.mType = i6;
        if (i6 == 1) {
            int i7 = (this.mDegree << 1) + 1;
            if (IntegerFunctions.isPrime(i7)) {
                int iOrder2 = IntegerFunctions.order(2, i7);
                int i8 = this.mDegree;
                if (IntegerFunctions.gcd((i8 << 1) / iOrder2, i8) == 1) {
                    this.mType++;
                }
            }
        }
    }

    private int elementOfOrder(int i2, int i3) {
        int iOrder;
        Random random = new Random();
        int iNextInt = 0;
        while (iNextInt == 0) {
            int i4 = i3 - 1;
            iNextInt = random.nextInt() % i4;
            if (iNextInt < 0) {
                iNextInt += i4;
            }
        }
        while (true) {
            iOrder = IntegerFunctions.order(iNextInt, i3);
            if (iOrder % i2 == 0 && iOrder != 0) {
                break;
            }
            while (iNextInt == 0) {
                int i5 = i3 - 1;
                iNextInt = random.nextInt() % i5;
                if (iNextInt < 0) {
                    iNextInt += i5;
                }
            }
        }
        int i6 = iNextInt;
        for (int i7 = 2; i7 <= i2 / iOrder; i7++) {
            i6 *= iNextInt;
        }
        return i6;
    }

    @Override // org.bouncycastle.pqc.legacy.math.linearalgebra.GF2nField
    public void computeCOBMatrix(GF2nField gF2nField) {
        GF2nElement randomRoot;
        int i2 = this.mDegree;
        if (i2 != gF2nField.mDegree) {
            md.n("GF2nField.computeCOBMatrix: B1 has a different degree and thus cannot be coverted to!");
            return;
        }
        GF2Polynomial[] gF2PolynomialArr = new GF2Polynomial[i2];
        for (int i3 = 0; i3 < this.mDegree; i3++) {
            gF2PolynomialArr[i3] = new GF2Polynomial(this.mDegree);
        }
        do {
            randomRoot = gF2nField.getRandomRoot(this.fieldPolynomial);
        } while (randomRoot.isZero());
        GF2nElement[] gF2nElementArr = new GF2nPolynomialElement[this.mDegree];
        gF2nElementArr[0] = (GF2nElement) randomRoot.clone();
        for (int i4 = 1; i4 < this.mDegree; i4++) {
            gF2nElementArr[i4] = gF2nElementArr[i4 - 1].square();
        }
        for (int i5 = 0; i5 < this.mDegree; i5++) {
            for (int i6 = 0; i6 < this.mDegree; i6++) {
                if (gF2nElementArr[i5].testBit(i6)) {
                    int i7 = this.mDegree;
                    gF2PolynomialArr[(i7 - i6) - 1].setBit((i7 - i5) - 1);
                }
            }
        }
        this.fields.addElement(gF2nField);
        this.matrices.addElement(gF2PolynomialArr);
        gF2nField.fields.addElement(this);
        gF2nField.matrices.addElement(invertMatrix(gF2PolynomialArr));
    }

    @Override // org.bouncycastle.pqc.legacy.math.linearalgebra.GF2nField
    public void computeFieldPolynomial() {
        int i2 = this.mType;
        if (i2 == 1) {
            this.fieldPolynomial = new GF2Polynomial(this.mDegree + 1, "ALL");
            return;
        }
        if (i2 == 2) {
            GF2Polynomial gF2Polynomial = new GF2Polynomial(this.mDegree + 1, "ONE");
            GF2Polynomial gF2Polynomial2 = new GF2Polynomial(this.mDegree + 1, "X");
            gF2Polynomial2.addToThis(gF2Polynomial);
            GF2Polynomial gF2Polynomial3 = gF2Polynomial;
            GF2Polynomial gF2Polynomial4 = gF2Polynomial2;
            int i3 = 1;
            while (i3 < this.mDegree) {
                GF2Polynomial gF2PolynomialShiftLeft = gF2Polynomial4.shiftLeft();
                gF2PolynomialShiftLeft.addToThis(gF2Polynomial3);
                i3++;
                gF2Polynomial3 = gF2Polynomial4;
                gF2Polynomial4 = gF2PolynomialShiftLeft;
            }
            this.fieldPolynomial = gF2Polynomial4;
        }
    }

    public int getONBBit() {
        return this.mBit;
    }

    public int getONBLength() {
        return this.mLength;
    }

    @Override // org.bouncycastle.pqc.legacy.math.linearalgebra.GF2nField
    public GF2nElement getRandomRoot(GF2Polynomial gF2Polynomial) {
        GF2nPolynomial gF2nPolynomialGcd;
        int degree;
        int degree2;
        GF2nPolynomial gF2nPolynomial = new GF2nPolynomial(gF2Polynomial, this);
        while (gF2nPolynomial.getDegree() > 1) {
            while (true) {
                GF2nONBElement gF2nONBElement = new GF2nONBElement(this, this.random);
                GF2nPolynomial gF2nPolynomial2 = new GF2nPolynomial(2, GF2nONBElement.ZERO(this));
                gF2nPolynomial2.set(1, gF2nONBElement);
                GF2nPolynomial gF2nPolynomial3 = new GF2nPolynomial(gF2nPolynomial2);
                for (int i2 = 1; i2 <= this.mDegree - 1; i2++) {
                    gF2nPolynomial3 = gF2nPolynomial3.multiplyAndReduce(gF2nPolynomial3, gF2nPolynomial).add(gF2nPolynomial2);
                }
                gF2nPolynomialGcd = gF2nPolynomial3.gcd(gF2nPolynomial);
                degree = gF2nPolynomialGcd.getDegree();
                degree2 = gF2nPolynomial.getDegree();
                if (degree != 0 && degree != degree2) {
                    break;
                }
            }
            gF2nPolynomial = (degree << 1) > degree2 ? gF2nPolynomial.quotient(gF2nPolynomialGcd) : new GF2nPolynomial(gF2nPolynomialGcd);
        }
        return gF2nPolynomial.at(0);
    }

    public int[][] invMatrix(int[][] iArr) {
        int i2 = this.mDegree;
        int[] iArr2 = {i2, i2};
        Class cls = Integer.TYPE;
        int i3 = this.mDegree;
        int[][] iArr3 = (int[][]) Array.newInstance((Class<?>) cls, i3, i3);
        for (int i4 = 0; i4 < this.mDegree; i4++) {
            iArr3[i4][i4] = 1;
        }
        for (int i5 = 0; i5 < this.mDegree; i5++) {
            int i6 = i5;
            while (true) {
                int i7 = this.mDegree;
                if (i6 < i7) {
                    iArr[(i7 - 1) - i5][i6] = iArr[i5][i5];
                    i6++;
                }
            }
        }
        return null;
    }
}
