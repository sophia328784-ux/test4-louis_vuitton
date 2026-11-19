package org.spongycastle.pqc.jcajce.spec;

import java.security.spec.KeySpec;
import org.spongycastle.pqc.crypto.rainbow.Layer;

/* JADX INFO: loaded from: classes5.dex */
public class RainbowPrivateKeySpec implements KeySpec {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final short[][] f78240b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final short[] f78241c;
    public final short[][] d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final short[] f78242e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int[] f78243f;
    public final Layer[] g;

    public RainbowPrivateKeySpec(short[][] sArr, short[] sArr2, short[][] sArr3, short[] sArr4, int[] iArr, Layer[] layerArr) {
        this.f78240b = sArr;
        this.f78241c = sArr2;
        this.d = sArr3;
        this.f78242e = sArr4;
        this.f78243f = iArr;
        this.g = layerArr;
    }
}
