package org.spongycastle.pqc.crypto.mceliece;

import org.spongycastle.pqc.math.linearalgebra.GF2Matrix;

/* JADX INFO: loaded from: classes5.dex */
public class McEliecePublicKeyParameters extends McElieceKeyParameters {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f78113b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f78114c;
    public final GF2Matrix d;

    public McEliecePublicKeyParameters(int i2, int i3, GF2Matrix gF2Matrix) {
        super(false, null);
        this.f78113b = i2;
        this.f78114c = i3;
        this.d = new GF2Matrix(gF2Matrix);
    }
}
