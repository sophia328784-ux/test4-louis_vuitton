package org.bouncycastle.pqc.crypto.crystals.kyber;

import org.bouncycastle.pqc.crypto.KEMParameters;

/* JADX INFO: loaded from: classes5.dex */
public class KyberParameters implements KEMParameters {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final int f77661k;
    private final String name;
    private final int sessionKeySize;
    private final boolean usingAes;
    public static final KyberParameters kyber512 = new KyberParameters("kyber512", 2, 256, false);
    public static final KyberParameters kyber768 = new KyberParameters("kyber768", 3, 256, false);
    public static final KyberParameters kyber1024 = new KyberParameters("kyber1024", 4, 256, false);

    private KyberParameters(String str, int i2, int i3, boolean z) {
        this.name = str;
        this.f77661k = i2;
        this.sessionKeySize = i3;
        this.usingAes = z;
    }

    public KyberEngine getEngine() {
        return new KyberEngine(this.f77661k, this.usingAes);
    }

    public String getName() {
        return this.name;
    }

    public int getSessionKeySize() {
        return this.sessionKeySize;
    }
}
