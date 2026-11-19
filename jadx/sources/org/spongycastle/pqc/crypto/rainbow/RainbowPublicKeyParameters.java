package org.spongycastle.pqc.crypto.rainbow;

/* JADX INFO: loaded from: classes5.dex */
public class RainbowPublicKeyParameters extends RainbowKeyParameters {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final short[][] f78127c;
    public final short[][] d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final short[] f78128e;

    public RainbowPublicKeyParameters(int i2, short[][] sArr, short[][] sArr2, short[] sArr3) {
        super(false, i2);
        this.f78127c = sArr;
        this.d = sArr2;
        this.f78128e = sArr3;
    }
}
