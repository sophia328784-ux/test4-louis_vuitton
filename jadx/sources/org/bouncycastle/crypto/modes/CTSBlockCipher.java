package org.bouncycastle.crypto.modes;

import defpackage.b21;
import defpackage.md;
import defpackage.mt;
import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.DefaultBufferedBlockCipher;
import org.bouncycastle.crypto.InvalidCipherTextException;
import org.bouncycastle.crypto.StreamBlockCipher;

/* JADX INFO: loaded from: classes5.dex */
public class CTSBlockCipher extends DefaultBufferedBlockCipher {
    private int blockSize;

    public CTSBlockCipher(BlockCipher blockCipher) {
        if (blockCipher instanceof StreamBlockCipher) {
            md.n("CTSBlockCipher can only accept ECB, or CBC ciphers");
            throw null;
        }
        ((DefaultBufferedBlockCipher) this).cipher = blockCipher;
        int blockSize = blockCipher.getBlockSize();
        this.blockSize = blockSize;
        ((DefaultBufferedBlockCipher) this).buf = new byte[blockSize * 2];
        ((DefaultBufferedBlockCipher) this).bufOff = 0;
    }

    @Override // org.bouncycastle.crypto.DefaultBufferedBlockCipher, org.bouncycastle.crypto.BufferedBlockCipher
    public int doFinal(byte[] bArr, int i2) throws InvalidCipherTextException, IllegalStateException, DataLengthException {
        if (((DefaultBufferedBlockCipher) this).bufOff + i2 > bArr.length) {
            mt.n("output buffer to small in doFinal");
            return 0;
        }
        int blockSize = ((DefaultBufferedBlockCipher) this).cipher.getBlockSize();
        int i3 = ((DefaultBufferedBlockCipher) this).bufOff;
        int i4 = i3 - blockSize;
        byte[] bArr2 = new byte[blockSize];
        if (((DefaultBufferedBlockCipher) this).forEncryption) {
            if (i3 < blockSize) {
                b21.q("need at least one block of input for CTS");
                return 0;
            }
            ((DefaultBufferedBlockCipher) this).cipher.processBlock(((DefaultBufferedBlockCipher) this).buf, 0, bArr2, 0);
            int i5 = ((DefaultBufferedBlockCipher) this).bufOff;
            if (i5 > blockSize) {
                while (true) {
                    byte[] bArr3 = ((DefaultBufferedBlockCipher) this).buf;
                    if (i5 == bArr3.length) {
                        break;
                    }
                    bArr3[i5] = bArr2[i5 - blockSize];
                    i5++;
                }
                for (int i6 = blockSize; i6 != ((DefaultBufferedBlockCipher) this).bufOff; i6++) {
                    byte[] bArr4 = ((DefaultBufferedBlockCipher) this).buf;
                    bArr4[i6] = (byte) (bArr4[i6] ^ bArr2[i6 - blockSize]);
                }
                BlockCipher blockCipher = ((DefaultBufferedBlockCipher) this).cipher;
                if (blockCipher instanceof CBCModeCipher) {
                    ((CBCModeCipher) blockCipher).getUnderlyingCipher().processBlock(((DefaultBufferedBlockCipher) this).buf, blockSize, bArr, i2);
                } else {
                    blockCipher.processBlock(((DefaultBufferedBlockCipher) this).buf, blockSize, bArr, i2);
                }
                System.arraycopy(bArr2, 0, bArr, i2 + blockSize, i4);
            } else {
                System.arraycopy(bArr2, 0, bArr, i2, blockSize);
            }
        } else {
            if (i3 < blockSize) {
                b21.q("need at least one block of input for CTS");
                return 0;
            }
            byte[] bArr5 = new byte[blockSize];
            BlockCipher blockCipher2 = ((DefaultBufferedBlockCipher) this).cipher;
            if (i3 > blockSize) {
                if (blockCipher2 instanceof CBCModeCipher) {
                    ((CBCModeCipher) blockCipher2).getUnderlyingCipher().processBlock(((DefaultBufferedBlockCipher) this).buf, 0, bArr2, 0);
                } else {
                    blockCipher2.processBlock(((DefaultBufferedBlockCipher) this).buf, 0, bArr2, 0);
                }
                for (int i7 = blockSize; i7 != ((DefaultBufferedBlockCipher) this).bufOff; i7++) {
                    int i8 = i7 - blockSize;
                    bArr5[i8] = (byte) (bArr2[i8] ^ ((DefaultBufferedBlockCipher) this).buf[i7]);
                }
                System.arraycopy(((DefaultBufferedBlockCipher) this).buf, blockSize, bArr2, 0, i4);
                ((DefaultBufferedBlockCipher) this).cipher.processBlock(bArr2, 0, bArr, i2);
                System.arraycopy(bArr5, 0, bArr, i2 + blockSize, i4);
            } else {
                blockCipher2.processBlock(((DefaultBufferedBlockCipher) this).buf, 0, bArr2, 0);
                System.arraycopy(bArr2, 0, bArr, i2, blockSize);
            }
        }
        int i9 = ((DefaultBufferedBlockCipher) this).bufOff;
        reset();
        return i9;
    }

    @Override // org.bouncycastle.crypto.DefaultBufferedBlockCipher, org.bouncycastle.crypto.BufferedBlockCipher
    public int getOutputSize(int i2) {
        return i2 + ((DefaultBufferedBlockCipher) this).bufOff;
    }

    @Override // org.bouncycastle.crypto.DefaultBufferedBlockCipher, org.bouncycastle.crypto.BufferedBlockCipher
    public int getUpdateOutputSize(int i2) {
        int i3 = i2 + ((DefaultBufferedBlockCipher) this).bufOff;
        byte[] bArr = ((DefaultBufferedBlockCipher) this).buf;
        int length = i3 % bArr.length;
        return length == 0 ? i3 - bArr.length : i3 - length;
    }

    @Override // org.bouncycastle.crypto.DefaultBufferedBlockCipher, org.bouncycastle.crypto.BufferedBlockCipher
    public int processByte(byte b2, byte[] bArr, int i2) throws IllegalStateException, DataLengthException {
        int i3 = ((DefaultBufferedBlockCipher) this).bufOff;
        byte[] bArr2 = ((DefaultBufferedBlockCipher) this).buf;
        int i4 = 0;
        if (i3 == bArr2.length) {
            int iProcessBlock = ((DefaultBufferedBlockCipher) this).cipher.processBlock(bArr2, 0, bArr, i2);
            byte[] bArr3 = ((DefaultBufferedBlockCipher) this).buf;
            int i5 = this.blockSize;
            System.arraycopy(bArr3, i5, bArr3, 0, i5);
            ((DefaultBufferedBlockCipher) this).bufOff = this.blockSize;
            i4 = iProcessBlock;
        }
        byte[] bArr4 = ((DefaultBufferedBlockCipher) this).buf;
        int i6 = ((DefaultBufferedBlockCipher) this).bufOff;
        ((DefaultBufferedBlockCipher) this).bufOff = i6 + 1;
        bArr4[i6] = b2;
        return i4;
    }

    @Override // org.bouncycastle.crypto.DefaultBufferedBlockCipher, org.bouncycastle.crypto.BufferedBlockCipher
    public int processBytes(byte[] bArr, int i2, int i3, byte[] bArr2, int i4) throws IllegalStateException, DataLengthException {
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
        byte[] bArr3 = ((DefaultBufferedBlockCipher) this).buf;
        int length = bArr3.length;
        int i5 = ((DefaultBufferedBlockCipher) this).bufOff;
        int i6 = length - i5;
        int i7 = 0;
        if (i3 > i6) {
            System.arraycopy(bArr, i2, bArr3, i5, i6);
            int iProcessBlock = ((DefaultBufferedBlockCipher) this).cipher.processBlock(((DefaultBufferedBlockCipher) this).buf, 0, bArr2, i4);
            byte[] bArr4 = ((DefaultBufferedBlockCipher) this).buf;
            System.arraycopy(bArr4, blockSize, bArr4, 0, blockSize);
            ((DefaultBufferedBlockCipher) this).bufOff = blockSize;
            i3 -= i6;
            i2 += i6;
            while (i3 > blockSize) {
                System.arraycopy(bArr, i2, ((DefaultBufferedBlockCipher) this).buf, ((DefaultBufferedBlockCipher) this).bufOff, blockSize);
                iProcessBlock += ((DefaultBufferedBlockCipher) this).cipher.processBlock(((DefaultBufferedBlockCipher) this).buf, 0, bArr2, i4 + iProcessBlock);
                byte[] bArr5 = ((DefaultBufferedBlockCipher) this).buf;
                System.arraycopy(bArr5, blockSize, bArr5, 0, blockSize);
                i3 -= blockSize;
                i2 += blockSize;
            }
            i7 = iProcessBlock;
        }
        System.arraycopy(bArr, i2, ((DefaultBufferedBlockCipher) this).buf, ((DefaultBufferedBlockCipher) this).bufOff, i3);
        ((DefaultBufferedBlockCipher) this).bufOff += i3;
        return i7;
    }
}
