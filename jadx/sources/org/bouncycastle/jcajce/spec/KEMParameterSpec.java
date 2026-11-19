package org.bouncycastle.jcajce.spec;

/* JADX INFO: loaded from: classes5.dex */
public class KEMParameterSpec extends KTSParameterSpec {
    public KEMParameterSpec(String str, int i2) {
        super(str, i2, null, null, null);
    }

    public int getKeySizeInBits() {
        return getKeySize();
    }

    public KEMParameterSpec(String str) {
        this(str, 256);
    }
}
