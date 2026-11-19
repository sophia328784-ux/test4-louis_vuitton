package org.spongycastle.pqc.crypto.mceliece;

import org.spongycastle.pqc.math.linearalgebra.GF2Matrix;

/* JADX INFO: loaded from: classes5.dex */
public class McElieceCCA2PublicKeyParameters extends McElieceCCA2KeyParameters {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f78103c;
    public final int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final GF2Matrix f78104e;

    public McElieceCCA2PublicKeyParameters(int i2, int i3, GF2Matrix gF2Matrix, String str) {
        super(false, str);
        this.f78103c = i2;
        this.d = i3;
        this.f78104e = new GF2Matrix(gF2Matrix);
    }
}
