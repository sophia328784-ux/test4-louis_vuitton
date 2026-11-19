package org.bouncycastle.crypto.modes;

import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.InvalidCipherTextException;

/* JADX INFO: loaded from: classes5.dex */
public interface AEADCipher {
    int doFinal(byte[] bArr, int i2) throws InvalidCipherTextException, IllegalStateException;

    String getAlgorithmName();

    byte[] getMac();

    int getOutputSize(int i2);

    int getUpdateOutputSize(int i2);

    void init(boolean z, CipherParameters cipherParameters) throws IllegalArgumentException;

    void processAADByte(byte b2);

    void processAADBytes(byte[] bArr, int i2, int i3);

    int processByte(byte b2, byte[] bArr, int i2) throws DataLengthException;

    int processBytes(byte[] bArr, int i2, int i3, byte[] bArr2, int i4) throws DataLengthException;

    void reset();
}
