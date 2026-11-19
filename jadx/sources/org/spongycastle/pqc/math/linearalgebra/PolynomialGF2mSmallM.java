package org.spongycastle.pqc.math.linearalgebra;

import com.linkplay.medialib.ContentTree;
import defpackage.lc0;
import defpackage.md;
import defpackage.n00;
import java.security.SecureRandom;

/* JADX INFO: loaded from: classes5.dex */
public class PolynomialGF2mSmallM {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final GF2mField f78256a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f78257b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int[] f78258c;

    public PolynomialGF2mSmallM(GF2mField gF2mField, int i2, char c2, SecureRandom secureRandom) {
        int i3;
        int[] iArrG;
        this.f78256a = gF2mField;
        if (c2 != 'I') {
            throw new IllegalArgumentException(" Error: type " + c2 + " is not defined for GF2smallmPolynomial");
        }
        int[] iArr = new int[i2 + 1];
        int i4 = 1;
        iArr[i2] = 1;
        int iA = gF2mField.a(secureRandom);
        int i5 = gF2mField.f78248a;
        iArr[0] = iA;
        for (int i6 = 1; i6 < i2; i6++) {
            iArr[i6] = RandUtils.a(secureRandom, 1 << i5);
        }
        while (true) {
            if (iArr[0] == 0) {
                i3 = i4;
            } else {
                int iB = b(iArr) >> i4;
                int[] iArrJ = new int[2];
                iArrJ[0] = 0;
                iArrJ[i4] = i4;
                int[] iArr2 = {0, i4};
                int i7 = 0;
                while (true) {
                    if (i7 >= iB) {
                        this.f78258c = iArr;
                        c();
                        return;
                    }
                    for (int i8 = i5 - 1; i8 >= 0; i8--) {
                        iArrJ = f(i(iArrJ, iArrJ), iArr);
                    }
                    iArrJ = j(iArrJ);
                    int[] iArrA = a(iArrJ, iArr2);
                    if (b(iArrA) == -1) {
                        i3 = i4;
                        iArrG = iArr;
                    } else {
                        int[] iArr3 = iArr;
                        while (b(iArr3) != -1) {
                            int[] iArrF = f(iArrA, iArr3);
                            int length = iArr3.length;
                            int i9 = i4;
                            int[] iArr4 = new int[length];
                            System.arraycopy(iArr3, 0, iArr4, 0, length);
                            int length2 = iArrF.length;
                            int[] iArr5 = new int[length2];
                            System.arraycopy(iArrF, 0, iArr5, 0, length2);
                            iArrA = iArr4;
                            iArr3 = iArr5;
                            i4 = i9;
                        }
                        i3 = i4;
                        int iB2 = b(iArrA);
                        iArrG = g(iArrA, gF2mField.b(iB2 == -1 ? 0 : iArrA[iB2]));
                    }
                    if (b(iArrG) != 0) {
                        break;
                    }
                    i7++;
                    i4 = i3;
                }
            }
            int iA2 = RandUtils.a(secureRandom, i2);
            if (iA2 == 0) {
                iArr[0] = gF2mField.a(secureRandom);
            } else {
                iArr[iA2] = RandUtils.a(secureRandom, i3 << i5);
            }
            i4 = i3;
        }
    }

    public static int b(int[] iArr) {
        int length = iArr.length - 1;
        while (length >= 0 && iArr[length] == 0) {
            length--;
        }
        return length;
    }

    public static int[] h(int[] iArr, int i2) {
        int iB = b(iArr);
        if (iB == -1) {
            return new int[1];
        }
        int[] iArr2 = new int[iB + i2 + 1];
        System.arraycopy(iArr, 0, iArr2, i2, iB + 1);
        return iArr2;
    }

    public static int[] j(int[] iArr) {
        int iB = b(iArr);
        if (iB == -1) {
            return new int[1];
        }
        int i2 = iB + 1;
        if (iArr.length == i2) {
            int[] iArr2 = new int[iArr.length];
            System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
            return iArr2;
        }
        int[] iArr3 = new int[i2];
        System.arraycopy(iArr, 0, iArr3, 0, i2);
        return iArr3;
    }

    public final int[] a(int[] iArr, int[] iArr2) {
        int[] iArr3;
        if (iArr.length < iArr2.length) {
            iArr3 = new int[iArr2.length];
            System.arraycopy(iArr2, 0, iArr3, 0, iArr2.length);
        } else {
            iArr3 = new int[iArr.length];
            System.arraycopy(iArr, 0, iArr3, 0, iArr.length);
            iArr = iArr2;
        }
        for (int length = iArr.length - 1; length >= 0; length--) {
            int i2 = iArr3[length];
            int i3 = iArr[length];
            this.f78256a.getClass();
            iArr3[length] = i2 ^ i3;
        }
        return iArr3;
    }

    public final void c() {
        this.f78257b = this.f78258c.length - 1;
        while (true) {
            int i2 = this.f78257b;
            if (i2 < 0 || this.f78258c[i2] != 0) {
                return;
            } else {
                this.f78257b = i2 - 1;
            }
        }
    }

    public final int d(int i2) {
        if (i2 < 0 || i2 > this.f78257b) {
            return 0;
        }
        return this.f78258c[i2];
    }

    public final byte[] e() {
        int i2 = 8;
        int i3 = 1;
        while (this.f78256a.f78248a > i2) {
            i3++;
            i2 += 8;
        }
        byte[] bArr = new byte[this.f78258c.length * i3];
        int i4 = 0;
        for (int i5 = 0; i5 < this.f78258c.length; i5++) {
            int i6 = 0;
            while (i6 < i2) {
                bArr[i4] = (byte) (this.f78258c[i5] >>> i6);
                i6 += 8;
                i4++;
            }
        }
        return bArr;
    }

    public final boolean equals(Object obj) {
        if (obj != null && (obj instanceof PolynomialGF2mSmallM)) {
            PolynomialGF2mSmallM polynomialGF2mSmallM = (PolynomialGF2mSmallM) obj;
            if (this.f78256a.equals(polynomialGF2mSmallM.f78256a) && this.f78257b == polynomialGF2mSmallM.f78257b) {
                int[] iArr = this.f78258c;
                int[] iArr2 = polynomialGF2mSmallM.f78258c;
                int iB = b(iArr);
                if (iB == b(iArr2)) {
                    for (int i2 = 0; i2 <= iB; i2++) {
                        if (iArr[i2] == iArr2[i2]) {
                        }
                    }
                    return true;
                }
            }
        }
        return false;
    }

    public final int[] f(int[] iArr, int[] iArr2) {
        int iB = b(iArr2);
        if (iB == -1) {
            lc0.l("Division by zero");
            return null;
        }
        int length = iArr.length;
        int[] iArrA = new int[length];
        int iB2 = b(iArr2);
        int i2 = iB2 == -1 ? 0 : iArr2[iB2];
        GF2mField gF2mField = this.f78256a;
        int iB3 = gF2mField.b(i2);
        System.arraycopy(iArr, 0, iArrA, 0, length);
        while (iB <= b(iArrA)) {
            int iB4 = b(iArrA);
            iArrA = a(g(h(iArr2, b(iArrA) - iB), PolynomialRingGF2.d(iB4 == -1 ? 0 : iArrA[iB4], iB3, gF2mField.f78249b)), iArrA);
        }
        return iArrA;
    }

    public final int[] g(int[] iArr, int i2) {
        int iB = b(iArr);
        if (iB == -1 || i2 == 0) {
            return new int[1];
        }
        if (i2 == 1) {
            int[] iArr2 = new int[iArr.length];
            System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
            return iArr2;
        }
        int[] iArr3 = new int[iB + 1];
        while (iB >= 0) {
            iArr3[iB] = PolynomialRingGF2.d(iArr[iB], i2, this.f78256a.f78249b);
            iB--;
        }
        return iArr3;
    }

    public final int hashCode() {
        int i2 = this.f78256a.f78249b;
        int i3 = 0;
        while (true) {
            int[] iArr = this.f78258c;
            if (i3 >= iArr.length) {
                return i2;
            }
            i2 = (i2 * 31) + iArr[i3];
            i3++;
        }
    }

    public final int[] i(int[] iArr, int[] iArr2) {
        if (b(iArr) < b(iArr2)) {
            iArr2 = iArr;
            iArr = iArr2;
        }
        int[] iArrJ = j(iArr);
        int[] iArrJ2 = j(iArr2);
        if (iArrJ2.length == 1) {
            return g(iArrJ, iArrJ2[0]);
        }
        int length = iArrJ.length;
        int length2 = iArrJ2.length;
        int[] iArr3 = new int[(length + length2) - 1];
        if (length2 != length) {
            int[] iArr4 = new int[length2];
            int i2 = length - length2;
            int[] iArr5 = new int[i2];
            System.arraycopy(iArrJ, 0, iArr4, 0, length2);
            System.arraycopy(iArrJ, length2, iArr5, 0, i2);
            return a(i(iArr4, iArrJ2), h(i(iArr5, iArrJ2), length2));
        }
        int i3 = (length + 1) >>> 1;
        int i4 = length - i3;
        int[] iArr6 = new int[i3];
        int[] iArr7 = new int[i3];
        int[] iArr8 = new int[i4];
        int[] iArr9 = new int[i4];
        System.arraycopy(iArrJ, 0, iArr6, 0, i3);
        System.arraycopy(iArrJ, i3, iArr8, 0, i4);
        System.arraycopy(iArrJ2, 0, iArr7, 0, i3);
        System.arraycopy(iArrJ2, i3, iArr9, 0, i4);
        int[] iArrA = a(iArr6, iArr8);
        int[] iArrA2 = a(iArr7, iArr9);
        int[] iArrI = i(iArr6, iArr7);
        int[] iArrI2 = i(iArrA, iArrA2);
        int[] iArrI3 = i(iArr8, iArr9);
        return a(h(a(a(a(iArrI2, iArrI), iArrI3), h(iArrI3, i3)), i3), iArrI);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(" Polynomial over ");
        GF2mField gF2mField = this.f78256a;
        sb.append(gF2mField.toString());
        sb.append(": \n");
        String string = sb.toString();
        for (int i2 = 0; i2 < this.f78258c.length; i2++) {
            StringBuilder sbT = n00.t(string);
            int i3 = this.f78258c[i2];
            String strConcat = "";
            for (int i4 = 0; i4 < gF2mField.f78248a; i4++) {
                strConcat = (((byte) i3) & 1) == 0 ? ContentTree.ROOT_ID.concat(strConcat) : "1".concat(strConcat);
                i3 >>>= 1;
            }
            sbT.append(strConcat);
            sbT.append("Y^");
            sbT.append(i2);
            sbT.append("+");
            string = sbT.toString();
        }
        return string.concat(";");
    }

    public PolynomialGF2mSmallM(GF2mField gF2mField) {
        this.f78256a = gF2mField;
        this.f78257b = -1;
        this.f78258c = new int[1];
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public PolynomialGF2mSmallM(GF2mVector gF2mVector) {
        GF2mField gF2mField = gF2mVector.f78250a;
        int[] iArr = gF2mVector.f78251b;
        int[] iArr2 = new int[iArr.length];
        System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
        this(gF2mField, iArr2);
    }

    public PolynomialGF2mSmallM(GF2mField gF2mField, int i2) {
        this.f78256a = gF2mField;
        this.f78257b = i2;
        int[] iArr = new int[i2 + 1];
        this.f78258c = iArr;
        iArr[i2] = 1;
    }

    public PolynomialGF2mSmallM(GF2mField gF2mField, int[] iArr) {
        this.f78256a = gF2mField;
        this.f78258c = j(iArr);
        c();
    }

    public PolynomialGF2mSmallM(GF2mField gF2mField, byte[] bArr) {
        this.f78256a = gF2mField;
        int i2 = 8;
        int i3 = 1;
        while (gF2mField.f78248a > i2) {
            i3++;
            i2 += 8;
        }
        if (bArr.length % i3 == 0) {
            this.f78258c = new int[bArr.length / i3];
            int i4 = 0;
            int i5 = 0;
            while (true) {
                int[] iArr = this.f78258c;
                if (i4 < iArr.length) {
                    int i6 = 0;
                    while (i6 < i2) {
                        int[] iArr2 = this.f78258c;
                        iArr2[i4] = ((bArr[i5] & 255) << i6) ^ iArr2[i4];
                        i6 += 8;
                        i5++;
                    }
                    if (!this.f78256a.c(this.f78258c[i4])) {
                        md.n(" Error: byte array is not encoded polynomial over given finite field GF2m");
                        throw null;
                    }
                    i4++;
                } else {
                    if (iArr.length != 1 && iArr[iArr.length - 1] == 0) {
                        md.n(" Error: byte array is not encoded polynomial over given finite field GF2m");
                        throw null;
                    }
                    c();
                    return;
                }
            }
        } else {
            md.n(" Error: byte array is not encoded polynomial over given finite field GF2m");
            throw null;
        }
    }

    public PolynomialGF2mSmallM(PolynomialGF2mSmallM polynomialGF2mSmallM) {
        this.f78256a = polynomialGF2mSmallM.f78256a;
        this.f78257b = polynomialGF2mSmallM.f78257b;
        int[] iArr = polynomialGF2mSmallM.f78258c;
        int[] iArr2 = new int[iArr.length];
        System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
        this.f78258c = iArr2;
    }
}
