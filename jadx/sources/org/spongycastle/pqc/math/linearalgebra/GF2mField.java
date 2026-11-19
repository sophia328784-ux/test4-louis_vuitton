package org.spongycastle.pqc.math.linearalgebra;

import com.linkplay.medialib.ContentTree;
import defpackage.cj;
import defpackage.md;
import defpackage.n00;
import java.security.SecureRandom;

/* JADX INFO: loaded from: classes5.dex */
public class GF2mField {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f78248a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f78249b;

    public GF2mField(byte[] bArr) {
        this.f78248a = 0;
        if (bArr.length != 4) {
            md.n("byte array is not an encoded finite field");
            throw null;
        }
        int i2 = ((bArr[3] & 255) << 24) | (bArr[0] & 255) | ((bArr[1] & 255) << 8) | ((bArr[2] & 255) << 16);
        this.f78249b = i2;
        if (PolynomialRingGF2.c(i2)) {
            this.f78248a = PolynomialRingGF2.a(i2);
        } else {
            md.n("byte array is not an encoded finite field");
            throw null;
        }
    }

    public final int a(SecureRandom secureRandom) {
        int i2 = this.f78248a;
        int iA = RandUtils.a(secureRandom, 1 << i2);
        int i3 = 0;
        while (iA == 0 && i3 < 1048576) {
            iA = RandUtils.a(secureRandom, 1 << i2);
            i3++;
        }
        if (i3 == 1048576) {
            return 1;
        }
        return iA;
    }

    public final int b(int i2) {
        int i3 = (1 << this.f78248a) - 2;
        if (i3 != 0) {
            if (i2 == 0) {
                return 0;
            }
            if (i2 != 1) {
                if (i3 < 0) {
                    i2 = b(i2);
                    i3 = -i3;
                }
                int iD = 1;
                while (i3 != 0) {
                    int i4 = i3 & 1;
                    int i5 = this.f78249b;
                    if (i4 == 1) {
                        iD = PolynomialRingGF2.d(iD, i2, i5);
                    }
                    i2 = PolynomialRingGF2.d(i2, i2, i5);
                    i3 >>>= 1;
                }
                return iD;
            }
        }
        return 1;
    }

    public final boolean c(int i2) {
        int i3 = this.f78248a;
        if (i3 == 31) {
            return i2 >= 0;
        }
        return i2 >= 0 && i2 < (1 << i3);
    }

    public final boolean equals(Object obj) {
        if (obj != null && (obj instanceof GF2mField)) {
            GF2mField gF2mField = (GF2mField) obj;
            if (this.f78248a == gF2mField.f78248a && this.f78249b == gF2mField.f78249b) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.f78249b;
    }

    public final String toString() {
        String str;
        StringBuilder sb = new StringBuilder("Finite Field GF(2^");
        sb.append(this.f78248a);
        sb.append(") = GF(2)[X]/<");
        int i2 = this.f78249b;
        if (i2 == 0) {
            str = ContentTree.ROOT_ID;
        } else {
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
            str = strE;
        }
        return n00.r(str, "> ", sb);
    }

    public GF2mField(int i2, int i3) {
        this.f78248a = 0;
        if (i2 == PolynomialRingGF2.a(i3)) {
            if (PolynomialRingGF2.c(i3)) {
                this.f78248a = i2;
                this.f78249b = i3;
                return;
            } else {
                md.n(" Error: given polynomial is reducible");
                throw null;
            }
        }
        md.n(" Error: the degree is not correct");
        throw null;
    }

    public GF2mField(int i2) {
        this.f78248a = 0;
        if (i2 >= 32) {
            md.n(" Error: the degree of field is too large ");
            throw null;
        }
        if (i2 >= 1) {
            this.f78248a = i2;
            this.f78249b = PolynomialRingGF2.b(i2);
        } else {
            md.n(" Error: the degree of field is non-positive ");
            throw null;
        }
    }

    public GF2mField(GF2mField gF2mField) {
        this.f78248a = 0;
        this.f78248a = gF2mField.f78248a;
        this.f78249b = gF2mField.f78249b;
    }
}
