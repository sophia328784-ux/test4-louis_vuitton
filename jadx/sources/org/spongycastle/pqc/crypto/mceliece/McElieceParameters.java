package org.spongycastle.pqc.crypto.mceliece;

import defpackage.md;
import org.spongycastle.crypto.CipherParameters;
import org.spongycastle.crypto.Digest;
import org.spongycastle.pqc.math.linearalgebra.PolynomialRingGF2;

/* JADX INFO: loaded from: classes5.dex */
public class McElieceParameters implements CipherParameters {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f78105b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f78106c;
    public final Digest d;

    public McElieceParameters(int i2, int i3, int i4, Digest digest) {
        this.f78105b = i2;
        if (i2 < 1) {
            md.n("m must be positive");
            throw null;
        }
        if (i2 > 32) {
            md.n(" m is too large");
            throw null;
        }
        int i5 = 1 << i2;
        this.f78106c = i5;
        if (i3 < 0) {
            md.n("t must be positive");
            throw null;
        }
        if (i3 > i5) {
            md.n("t must be less than n = 2^m");
            throw null;
        }
        if (PolynomialRingGF2.a(i4) == i2 && PolynomialRingGF2.c(i4)) {
            this.d = digest;
        } else {
            md.n("polynomial is not a field polynomial for GF(2^m)");
            throw null;
        }
    }

    public McElieceParameters(Digest digest) {
        this(11, 50, digest);
    }

    public McElieceParameters(int i2) {
        this(i2, (Digest) null);
    }

    public McElieceParameters(int i2, Digest digest) {
        if (i2 >= 1) {
            this.f78105b = 0;
            this.f78106c = 1;
            while (true) {
                int i3 = this.f78106c;
                if (i3 < i2) {
                    this.f78106c = i3 << 1;
                    this.f78105b++;
                } else {
                    int i4 = this.f78105b;
                    int i5 = (i3 >>> 1) / i4;
                    PolynomialRingGF2.b(i4);
                    this.d = digest;
                    return;
                }
            }
        } else {
            md.n("key size must be positive");
            throw null;
        }
    }

    public McElieceParameters(int i2, int i3) {
        this(i2, i3, (Digest) null);
    }

    public McElieceParameters(int i2, int i3, Digest digest) {
        if (i2 < 1) {
            md.n("m must be positive");
            throw null;
        }
        if (i2 <= 32) {
            this.f78105b = i2;
            int i4 = 1 << i2;
            this.f78106c = i4;
            if (i3 < 0) {
                md.n("t must be positive");
                throw null;
            }
            if (i3 <= i4) {
                PolynomialRingGF2.b(i2);
                this.d = digest;
                return;
            } else {
                md.n("t must be less than n = 2^m");
                throw null;
            }
        }
        md.n("m is too large");
        throw null;
    }

    public McElieceParameters(int i2, int i3, int i4) {
        this(i2, i3, i4, null);
    }

    public McElieceParameters() {
        this(11, 50);
    }
}
