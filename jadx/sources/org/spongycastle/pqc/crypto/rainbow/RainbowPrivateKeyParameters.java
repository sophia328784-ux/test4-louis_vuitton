package org.spongycastle.pqc.crypto.rainbow;

/* JADX INFO: loaded from: classes5.dex */
public class RainbowPrivateKeyParameters extends RainbowKeyParameters {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final short[][] f78123c;
    public final short[] d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final short[][] f78124e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final short[] f78125f;
    public final int[] g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Layer[] f78126h;

    public RainbowPrivateKeyParameters(short[][] sArr, short[] sArr2, short[][] sArr3, short[] sArr4, int[] iArr, Layer[] layerArr) {
        super(true, iArr[iArr.length - 1] - iArr[0]);
        this.f78123c = sArr;
        this.d = sArr2;
        this.f78124e = sArr3;
        this.f78125f = sArr4;
        this.g = iArr;
        this.f78126h = layerArr;
    }
}
