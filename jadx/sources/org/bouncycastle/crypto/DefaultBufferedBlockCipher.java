package org.bouncycastle.crypto;

import defpackage.md;
import defpackage.mt;

/* JADX INFO: loaded from: classes5.dex */
public class DefaultBufferedBlockCipher extends BufferedBlockCipher {
    protected byte[] buf;
    protected int bufOff;
    protected BlockCipher cipher;
    protected boolean forEncryption;
    protected MultiBlockCipher mbCipher;
    protected boolean partialBlockOkay;
    protected boolean pgpCFB;

    public DefaultBufferedBlockCipher(BlockCipher blockCipher) {
        this.cipher = blockCipher;
        if (blockCipher instanceof MultiBlockCipher) {
            MultiBlockCipher multiBlockCipher = (MultiBlockCipher) blockCipher;
            this.mbCipher = multiBlockCipher;
            this.buf = new byte[multiBlockCipher.getMultiBlockSize()];
        } else {
            this.mbCipher = null;
            this.buf = new byte[blockCipher.getBlockSize()];
        }
        boolean z = false;
        this.bufOff = 0;
        String algorithmName = blockCipher.getAlgorithmName();
        int iIndexOf = algorithmName.indexOf(47) + 1;
        boolean z2 = iIndexOf > 0 && algorithmName.startsWith("PGP", iIndexOf);
        this.pgpCFB = z2;
        if (z2 || (blockCipher instanceof StreamCipher)) {
            this.partialBlockOkay = true;
            return;
        }
        if (iIndexOf > 0 && algorithmName.startsWith("OpenPGP", iIndexOf)) {
            z = true;
        }
        this.partialBlockOkay = z;
    }

    @Override // org.bouncycastle.crypto.BufferedBlockCipher
    public int doFinal(byte[] bArr, int i2) throws InvalidCipherTextException, IllegalStateException, DataLengthException {
        try {
            int i3 = this.bufOff;
            if (i2 + i3 > bArr.length) {
                throw new OutputLengthException("output buffer too short for doFinal()");
            }
            int i4 = 0;
            if (i3 != 0) {
                if (!this.partialBlockOkay) {
                    throw new DataLengthException("data not block size aligned");
                }
                BlockCipher blockCipher = this.cipher;
                byte[] bArr2 = this.buf;
                blockCipher.processBlock(bArr2, 0, bArr2, 0);
                int i5 = this.bufOff;
                this.bufOff = 0;
                System.arraycopy(this.buf, 0, bArr, i2, i5);
                i4 = i5;
            }
            reset();
            return i4;
        } catch (Throwable th) {
            reset();
            throw th;
        }
    }

    @Override // org.bouncycastle.crypto.BufferedBlockCipher
    public int getBlockSize() {
        return this.cipher.getBlockSize();
    }

    @Override // org.bouncycastle.crypto.BufferedBlockCipher
    public int getOutputSize(int i2) {
        if (!this.pgpCFB || !this.forEncryption) {
            return i2 + this.bufOff;
        }
        return this.cipher.getBlockSize() + 2 + i2 + this.bufOff;
    }

    @Override // org.bouncycastle.crypto.BufferedBlockCipher
    public BlockCipher getUnderlyingCipher() {
        return this.cipher;
    }

    @Override // org.bouncycastle.crypto.BufferedBlockCipher
    public int getUpdateOutputSize(int i2) {
        int length;
        int length2;
        int i3 = i2 + this.bufOff;
        if (this.pgpCFB) {
            boolean z = this.forEncryption;
            byte[] bArr = this.buf;
            if (z) {
                length2 = (i3 % bArr.length) - (this.cipher.getBlockSize() + 2);
            } else {
                length = bArr.length;
            }
            return i3 - length2;
        }
        length = this.buf.length;
        length2 = i3 % length;
        return i3 - length2;
    }

    @Override // org.bouncycastle.crypto.BufferedBlockCipher
    public void init(boolean z, CipherParameters cipherParameters) throws IllegalArgumentException {
        this.forEncryption = z;
        reset();
        this.cipher.init(z, cipherParameters);
    }

    @Override // org.bouncycastle.crypto.BufferedBlockCipher
    public int processByte(byte b2, byte[] bArr, int i2) throws IllegalStateException, DataLengthException {
        byte[] bArr2 = this.buf;
        int i3 = this.bufOff;
        int i4 = i3 + 1;
        this.bufOff = i4;
        bArr2[i3] = b2;
        if (i4 != bArr2.length) {
            return 0;
        }
        int iProcessBlock = this.cipher.processBlock(bArr2, 0, bArr, i2);
        this.bufOff = 0;
        return iProcessBlock;
    }

    @Override // org.bouncycastle.crypto.BufferedBlockCipher
    public int processBytes(byte[] bArr, int i2, int i3, byte[] bArr2, int i4) throws IllegalStateException, DataLengthException {
        int iProcessBlock;
        if (i3 < 0) {
            md.n("Can't have a negative input length!");
            return 0;
        }
        int blockSize = getBlockSize();
        int updateOutputSize = getUpdateOutputSize(i3);
        if (updateOutputSize > 0 && updateOutputSize + i4 > bArr2.length) {
            mt.n("output buffer too short");
            return 0;
        }
        byte[] bArr3 = this.buf;
        int length = bArr3.length;
        int i5 = this.bufOff;
        int i6 = length - i5;
        if (i3 > i6) {
            System.arraycopy(bArr, i2, bArr3, i5, i6);
            iProcessBlock = this.cipher.processBlock(this.buf, 0, bArr2, i4);
            this.bufOff = 0;
            i3 -= i6;
            int i7 = i6 + i2;
            MultiBlockCipher multiBlockCipher = this.mbCipher;
            if (multiBlockCipher != null) {
                int multiBlockSize = i3 / multiBlockCipher.getMultiBlockSize();
                if (multiBlockSize > 0) {
                    iProcessBlock += this.mbCipher.processBlocks(bArr, i7, multiBlockSize, bArr2, i4 + iProcessBlock);
                    int multiBlockSize2 = this.mbCipher.getMultiBlockSize() * multiBlockSize;
                    i3 -= multiBlockSize2;
                    i7 += multiBlockSize2;
                }
                i2 = i7;
            } else {
                i2 = i7;
                while (i3 > this.buf.length) {
                    iProcessBlock += this.cipher.processBlock(bArr, i2, bArr2, i4 + iProcessBlock);
                    i3 -= blockSize;
                    i2 += blockSize;
                }
            }
        } else {
            iProcessBlock = 0;
        }
        System.arraycopy(bArr, i2, this.buf, this.bufOff, i3);
        int i8 = this.bufOff + i3;
        this.bufOff = i8;
        byte[] bArr4 = this.buf;
        if (i8 != bArr4.length) {
            return iProcessBlock;
        }
        int iProcessBlock2 = this.cipher.processBlock(bArr4, 0, bArr2, i4 + iProcessBlock) + iProcessBlock;
        this.bufOff = 0;
        return iProcessBlock2;
    }

    @Override // org.bouncycastle.crypto.BufferedBlockCipher
    public void reset() {
        int i2 = 0;
        while (true) {
            byte[] bArr = this.buf;
            if (i2 >= bArr.length) {
                this.bufOff = 0;
                this.cipher.reset();
                return;
            } else {
                bArr[i2] = 0;
                i2++;
            }
        }
    }

    public DefaultBufferedBlockCipher() {
    }
}
