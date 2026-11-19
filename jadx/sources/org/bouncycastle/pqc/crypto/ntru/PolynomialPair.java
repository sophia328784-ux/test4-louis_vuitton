package org.bouncycastle.pqc.crypto.ntru;

import org.bouncycastle.pqc.math.ntru.Polynomial;

/* JADX INFO: loaded from: classes5.dex */
class PolynomialPair {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Polynomial f77668a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Polynomial f77669b;

    public PolynomialPair(Polynomial polynomial, Polynomial polynomial2) {
        this.f77668a = polynomial;
        this.f77669b = polynomial2;
    }

    public Polynomial f() {
        return this.f77668a;
    }

    public Polynomial g() {
        return this.f77669b;
    }

    public Polynomial m() {
        return this.f77669b;
    }

    public Polynomial r() {
        return this.f77668a;
    }
}
