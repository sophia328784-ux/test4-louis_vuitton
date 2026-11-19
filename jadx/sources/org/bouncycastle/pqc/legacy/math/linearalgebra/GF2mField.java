package org.bouncycastle.pqc.legacy.math.linearalgebra;

import com.linkplay.medialib.ContentTree;
import defpackage.cj;
import defpackage.md;
import defpackage.n00;
import java.security.SecureRandom;
import org.bouncycastle.crypto.CryptoServicesRegistrar;

/* JADX INFO: loaded from: classes5.dex */
public class GF2mField {
    private int degree;
    private int polynomial;

    public GF2mField(byte[] bArr) {
        this.degree = 0;
        if (bArr.length != 4) {
            md.n("byte array is not an encoded finite field");
            throw null;
        }
        int iOS2IP = LittleEndianConversions.OS2IP(bArr);
        this.polynomial = iOS2IP;
        if (PolynomialRingGF2.isIrreducible(iOS2IP)) {
            this.degree = PolynomialRingGF2.degree(this.polynomial);
        } else {
            md.n("byte array is not an encoded finite field");
            throw null;
        }
    }

    private static String polyToString(int i2) {
        if (i2 == 0) {
            return ContentTree.ROOT_ID;
        }
        String strE = ((byte) (i2 & 1)) == 1 ? "1" : "";
        int i3 = i2 >>> 1;
        int i4 = 1;
        while (i3 != 0) {
            if (((byte) (i3 & 1)) == 1) {
                strE = cj.e(i4, strE, "+x^");
            }
            i3 >>>= 1;
            i4++;
        }
        return strE;
    }

    public int add(int i2, int i3) {
        return i2 ^ i3;
    }

    public String elementToStr(int i2) {
        String strConcat = "";
        for (int i3 = 0; i3 < this.degree; i3++) {
            strConcat = ((((byte) i2) & 1) == 0 ? ContentTree.ROOT_ID : "1").concat(strConcat);
            i2 >>>= 1;
        }
        return strConcat;
    }

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof GF2mField)) {
            GF2mField gF2mField = (GF2mField) obj;
            if (this.degree == gF2mField.degree && this.polynomial == gF2mField.polynomial) {
                return true;
            }
        }
        return false;
    }

    public int exp(int i2, int i3) {
        if (i3 == 0) {
            return 1;
        }
        if (i2 == 0) {
            return 0;
        }
        if (i2 == 1) {
            return 1;
        }
        if (i3 < 0) {
            i2 = inverse(i2);
            i3 = -i3;
        }
        int iMult = 1;
        while (i3 != 0) {
            if ((i3 & 1) == 1) {
                iMult = mult(iMult, i2);
            }
            i2 = mult(i2, i2);
            i3 >>>= 1;
        }
        return iMult;
    }

    public int getDegree() {
        return this.degree;
    }

    public byte[] getEncoded() {
        return LittleEndianConversions.I2OSP(this.polynomial);
    }

    public int getPolynomial() {
        return this.polynomial;
    }

    public int getRandomElement(SecureRandom secureRandom) {
        return RandUtils.nextInt(secureRandom, 1 << this.degree);
    }

    public int getRandomNonZeroElement(SecureRandom secureRandom) {
        int iNextInt = RandUtils.nextInt(secureRandom, 1 << this.degree);
        int i2 = 0;
        while (iNextInt == 0 && i2 < 1048576) {
            iNextInt = RandUtils.nextInt(secureRandom, 1 << this.degree);
            i2++;
        }
        if (i2 == 1048576) {
            return 1;
        }
        return iNextInt;
    }

    public int hashCode() {
        return this.polynomial;
    }

    public int inverse(int i2) {
        return exp(i2, (1 << this.degree) - 2);
    }

    public boolean isElementOfThisField(int i2) {
        int i3 = this.degree;
        if (i3 == 31) {
            return i2 >= 0;
        }
        return i2 >= 0 && i2 < (1 << i3);
    }

    public int mult(int i2, int i3) {
        return PolynomialRingGF2.modMultiply(i2, i3, this.polynomial);
    }

    public int sqRoot(int i2) {
        for (int i3 = 1; i3 < this.degree; i3++) {
            i2 = mult(i2, i2);
        }
        return i2;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("Finite Field GF(2^");
        sb.append(this.degree);
        sb.append(") = GF(2)[X]/<");
        return n00.r(polyToString(this.polynomial), "> ", sb);
    }

    public int getRandomNonZeroElement() {
        return getRandomNonZeroElement(CryptoServicesRegistrar.getSecureRandom());
    }

    public GF2mField(int i2, int i3) {
        this.degree = 0;
        if (i2 != PolynomialRingGF2.degree(i3)) {
            md.n(" Error: the degree is not correct");
            throw null;
        }
        if (!PolynomialRingGF2.isIrreducible(i3)) {
            md.n(" Error: given polynomial is reducible");
            throw null;
        }
        this.degree = i2;
        this.polynomial = i3;
    }

    public GF2mField(GF2mField gF2mField) {
        this.degree = 0;
        this.degree = gF2mField.degree;
        this.polynomial = gF2mField.polynomial;
    }

    public GF2mField(int i2) {
        this.degree = 0;
        if (i2 >= 32) {
            md.n(" Error: the degree of field is too large ");
            throw null;
        }
        if (i2 < 1) {
            md.n(" Error: the degree of field is non-positive ");
            throw null;
        }
        this.degree = i2;
        this.polynomial = PolynomialRingGF2.getIrreduciblePolynomial(i2);
    }
}
