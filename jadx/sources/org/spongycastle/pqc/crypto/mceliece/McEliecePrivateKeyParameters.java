package org.spongycastle.pqc.crypto.mceliece;

import org.spongycastle.pqc.math.linearalgebra.GF2Matrix;
import org.spongycastle.pqc.math.linearalgebra.GF2mField;
import org.spongycastle.pqc.math.linearalgebra.GoppaCode;
import org.spongycastle.pqc.math.linearalgebra.Permutation;
import org.spongycastle.pqc.math.linearalgebra.PolynomialGF2mSmallM;
import org.spongycastle.pqc.math.linearalgebra.PolynomialRingGF2m;

/* JADX INFO: loaded from: classes5.dex */
public class McEliecePrivateKeyParameters extends McElieceKeyParameters {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f78107b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f78108c;
    public final GF2mField d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final PolynomialGF2mSmallM f78109e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final GF2Matrix f78110f;
    public final Permutation g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Permutation f78111h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final PolynomialGF2mSmallM[] f78112i;

    public McEliecePrivateKeyParameters(int i2, int i3, byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4, byte[] bArr5, byte[] bArr6, byte[][] bArr7) {
        super(true, null);
        this.f78107b = i2;
        this.f78108c = i3;
        GF2mField gF2mField = new GF2mField(bArr);
        this.d = gF2mField;
        this.f78109e = new PolynomialGF2mSmallM(gF2mField, bArr2);
        this.f78110f = new GF2Matrix(bArr3);
        this.g = new Permutation(bArr4);
        this.f78111h = new Permutation(bArr5);
        new GF2Matrix(bArr6);
        this.f78112i = new PolynomialGF2mSmallM[bArr7.length];
        for (int i4 = 0; i4 < bArr7.length; i4++) {
            this.f78112i[i4] = new PolynomialGF2mSmallM(this.d, bArr7[i4]);
        }
    }

    public McEliecePrivateKeyParameters(int i2, int i3, GF2mField gF2mField, PolynomialGF2mSmallM polynomialGF2mSmallM, Permutation permutation, Permutation permutation2, GF2Matrix gF2Matrix) {
        super(true, null);
        this.f78108c = i3;
        this.f78107b = i2;
        this.d = gF2mField;
        this.f78109e = polynomialGF2mSmallM;
        this.f78110f = gF2Matrix;
        this.g = permutation;
        this.f78111h = permutation2;
        GoppaCode.a(gF2mField, polynomialGF2mSmallM);
        this.f78112i = new PolynomialRingGF2m(gF2mField, polynomialGF2mSmallM).d;
    }
}
