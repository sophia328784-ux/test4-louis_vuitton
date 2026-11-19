package org.bouncycastle.pqc.jcajce.spec;

import defpackage.md;
import java.security.InvalidParameterException;
import java.security.spec.AlgorithmParameterSpec;
import org.bouncycastle.pqc.legacy.math.linearalgebra.PolynomialRingGF2;

/* JADX INFO: loaded from: classes5.dex */
public class McElieceKeyGenParameterSpec implements AlgorithmParameterSpec {
    public static final int DEFAULT_M = 11;
    public static final int DEFAULT_T = 50;
    private int fieldPoly;
    private int m;
    private int n;
    private int t;

    public McElieceKeyGenParameterSpec(int i2, int i3, int i4) {
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
        if (PolynomialRingGF2.degree(i4) == i2 && PolynomialRingGF2.isIrreducible(i4)) {
            this.fieldPoly = i4;
        } else {
            md.n("polynomial is not a field polynomial for GF(2^m)");
            throw null;
        }
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

    public McElieceKeyGenParameterSpec(int i2) {
        if (i2 < 1) {
            md.n("key size must be positive");
            throw null;
        }
        this.m = 0;
        this.n = 1;
        while (true) {
            int i3 = this.n;
            if (i3 >= i2) {
                int i4 = i3 >>> 1;
                this.t = i4;
                int i5 = this.m;
                this.t = i4 / i5;
                this.fieldPoly = PolynomialRingGF2.getIrreduciblePolynomial(i5);
                return;
            }
            this.n = i3 << 1;
            this.m++;
        }
    }

    public McElieceKeyGenParameterSpec(int i2, int i3) throws InvalidParameterException {
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
    }

    public McElieceKeyGenParameterSpec() {
        this(11, 50);
    }
}
