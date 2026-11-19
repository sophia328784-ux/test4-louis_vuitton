package org.bouncycastle.crypto;

/* JADX INFO: loaded from: classes5.dex */
public interface AsymmetricBlockCipher {
    int getInputBlockSize();

    int getOutputBlockSize();

    void init(boolean z, CipherParameters cipherParameters);

    byte[] processBlock(byte[] bArr, int i2, int i3) throws InvalidCipherTextException;
}
