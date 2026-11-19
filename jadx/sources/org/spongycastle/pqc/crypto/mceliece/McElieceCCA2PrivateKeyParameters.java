package org.spongycastle.pqc.crypto.mceliece;

import org.spongycastle.pqc.math.linearalgebra.GF2Matrix;
import org.spongycastle.pqc.math.linearalgebra.GF2mField;
import org.spongycastle.pqc.math.linearalgebra.GoppaCode;
import org.spongycastle.pqc.math.linearalgebra.Permutation;
import org.spongycastle.pqc.math.linearalgebra.PolynomialGF2mSmallM;
import org.spongycastle.pqc.math.linearalgebra.PolynomialRingGF2m;

/* JADX INFO: loaded from: classes5.dex */
public class McElieceCCA2PrivateKeyParameters extends McElieceCCA2KeyParameters {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f78099c;
    public final int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final GF2mField f78100e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final PolynomialGF2mSmallM f78101f;
    public final Permutation g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final GF2Matrix f78102h;

    public McElieceCCA2PrivateKeyParameters(int i2, int i3, GF2mField gF2mField, PolynomialGF2mSmallM polynomialGF2mSmallM, GF2Matrix gF2Matrix, Permutation permutation, String str) {
        super(true, str);
        this.f78099c = i2;
        this.d = i3;
        this.f78100e = gF2mField;
        this.f78101f = polynomialGF2mSmallM;
        this.f78102h = gF2Matrix;
        this.g = permutation;
        new PolynomialRingGF2m(gF2mField, polynomialGF2mSmallM);
    }

    public McElieceCCA2PrivateKeyParameters(int i2, int i3, GF2mField gF2mField, PolynomialGF2mSmallM polynomialGF2mSmallM, Permutation permutation, String str) {
        this(i2, i3, gF2mField, polynomialGF2mSmallM, GoppaCode.a(gF2mField, polynomialGF2mSmallM), permutation, str);
    }
}
