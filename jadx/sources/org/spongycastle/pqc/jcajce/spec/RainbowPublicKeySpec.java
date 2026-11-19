package org.spongycastle.pqc.jcajce.spec;

import java.security.spec.KeySpec;

/* JADX INFO: loaded from: classes5.dex */
public class RainbowPublicKeySpec implements KeySpec {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final short[][] f78244b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final short[][] f78245c;
    public final short[] d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f78246e;

    public RainbowPublicKeySpec(int i2, short[][] sArr, short[][] sArr2, short[] sArr3) {
        this.f78246e = i2;
        this.f78244b = sArr;
        this.f78245c = sArr2;
        this.d = sArr3;
    }
}
