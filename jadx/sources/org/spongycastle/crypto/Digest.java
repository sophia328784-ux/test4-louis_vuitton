package org.spongycastle.crypto;

/* JADX INFO: loaded from: classes5.dex */
public interface Digest {
    void a(int i2, byte[] bArr);

    int b(byte[] bArr);

    String getAlgorithmName();

    int getDigestSize();
}
