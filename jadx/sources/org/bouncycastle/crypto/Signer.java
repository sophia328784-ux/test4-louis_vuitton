package org.bouncycastle.crypto;

/* JADX INFO: loaded from: classes5.dex */
public interface Signer {
    byte[] generateSignature() throws DataLengthException, CryptoException;

    void init(boolean z, CipherParameters cipherParameters);

    void reset();

    void update(byte b2);

    void update(byte[] bArr, int i2, int i3);

    boolean verifySignature(byte[] bArr);
}
