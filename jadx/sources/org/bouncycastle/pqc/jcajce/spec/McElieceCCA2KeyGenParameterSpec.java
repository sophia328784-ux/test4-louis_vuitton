package org.bouncycastle.pqc.jcajce.spec;

import defpackage.md;
import java.security.spec.AlgorithmParameterSpec;
import org.bouncycastle.pqc.legacy.math.linearalgebra.PolynomialRingGF2;

/* JADX INFO: loaded from: classes5.dex */
public class McElieceCCA2KeyGenParameterSpec implements AlgorithmParameterSpec {
    public static final int DEFAULT_M = 11;
    public static final int DEFAULT_T = 50;
    public static final String SHA1 = "SHA-1";
    public static final String SHA224 = "SHA-224";
    public static final String SHA256 = "SHA-256";
    public static final String SHA384 = "SHA-384";
    public static final String SHA512 = "SHA-512";
    private final String digest;
    private int fieldPoly;
    private final int m;
    private final int n;
    private final int t;

    public McElieceCCA2KeyGenParameterSpec(int i2, int i3, int i4, String str) {
        this.m = i2;
        if (i2 < 1) {
            md.n("m must be positive");
            throw null;
        }
        if (i2 > 32) {
            md.n(" m is too large");
            throw null;
        }
        int i5 = 1 << i2;
        this.n = i5;
        this.t = i3;
        if (i3 < 0) {
            md.n("t must be positive");
            throw null;
        }
        if (i3 > i5) {
            md.n("t must be less than n = 2^m");
            throw null;
        }
        if (PolynomialRingGF2.degree(i4) != i2 || !PolynomialRingGF2.isIrreducible(i4)) {
            md.n("polynomial is not a field polynomial for GF(2^m)");
            throw null;
        }
        this.fieldPoly = i4;
        this.digest = str;
    }

    public String getDigest() {
        return this.digest;
    }

    public int getFieldPoly() {
        return this.fieldPoly;
    }

    public int getM() {
        return this.m;
    }

    public int getN() {
        return this.n;
    }

    public int getT() {
        return this.t;
    }

    public McElieceCCA2KeyGenParameterSpec(int i2) {
        this(i2, "SHA-256");
    }

    public McElieceCCA2KeyGenParameterSpec(int i2, int i3) {
        this(i2, i3, "SHA-256");
    }

    public McElieceCCA2KeyGenParameterSpec(int i2, int i3, int i4) {
        this(i2, i3, i4, "SHA-256");
    }

    public McElieceCCA2KeyGenParameterSpec() {
        this(11, 50, "SHA-256");
    }

    public McElieceCCA2KeyGenParameterSpec(int i2, int i3, String str) {
        if (i2 < 1) {
            md.n("m must be positive");
            throw null;
        }
        if (i2 > 32) {
            md.n("m is too large");
            throw null;
        }
        this.m = i2;
        int i4 = 1 << i2;
        this.n = i4;
        if (i3 < 0) {
            md.n("t must be positive");
            throw null;
        }
        if (i3 > i4) {
            md.n("t must be less than n = 2^m");
            throw null;
        }
        this.t = i3;
        this.fieldPoly = PolynomialRingGF2.getIrreduciblePolynomial(i2);
        this.digest = str;
    }

    public McElieceCCA2KeyGenParameterSpec(int i2, String str) {
        int i3 = 1;
        if (i2 < 1) {
            md.n("key size must be positive");
            throw null;
        }
        int i4 = 0;
        while (i3 < i2) {
            i3 <<= 1;
            i4++;
        }
        this.t = (i3 >>> 1) / i4;
        this.m = i4;
        this.n = i3;
        this.fieldPoly = PolynomialRingGF2.getIrreduciblePolynomial(i4);
        this.digest = str;
    }
}
