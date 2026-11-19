package org.bouncycastle.crypto;

/* JADX INFO: loaded from: classes5.dex */
public abstract class DefaultMultiBlockCipher implements MultiBlockCipher {
    @Override // org.bouncycastle.crypto.MultiBlockCipher
    public int getMultiBlockSize() {
        return getBlockSize();
    }

    @Override // org.bouncycastle.crypto.MultiBlockCipher
    public int processBlocks(byte[] bArr, int i2, int i3, byte[] bArr2, int i4) throws IllegalStateException, DataLengthException {
        int multiBlockSize = getMultiBlockSize();
        int iProcessBlock = 0;
        for (int i5 = 0; i5 != i3; i5++) {
            iProcessBlock += processBlock(bArr, i2, bArr2, i4 + iProcessBlock);
            i2 += multiBlockSize;
        }
        return iProcessBlock;
    }
}
