package org.bouncycastle.crypto.modes;

import defpackage.b21;
import defpackage.md;
import defpackage.mt;
import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.DefaultBufferedBlockCipher;
import org.bouncycastle.crypto.InvalidCipherTextException;

/* JADX INFO: loaded from: classes5.dex */
public class NISTCTSBlockCipher extends DefaultBufferedBlockCipher {
    public static final int CS1 = 1;
    public static final int CS2 = 2;
    public static final int CS3 = 3;
    private final int blockSize;
    private final int type;

    public NISTCTSBlockCipher(int i2, BlockCipher blockCipher) {
        this.type = i2;
        ((DefaultBufferedBlockCipher) this).cipher = CBCBlockCipher.newInstance(blockCipher);
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
                b21.q("need at least one block of input for NISTCTS");
                return 0;
            }
            if (i3 > blockSize) {
                byte[] bArr3 = new byte[blockSize];
                int i5 = this.type;
                if (i5 == 2 || i5 == 3) {
                    ((DefaultBufferedBlockCipher) this).cipher.processBlock(((DefaultBufferedBlockCipher) this).buf, 0, bArr2, 0);
                    System.arraycopy(((DefaultBufferedBlockCipher) this).buf, blockSize, bArr3, 0, i4);
                    ((DefaultBufferedBlockCipher) this).cipher.processBlock(bArr3, 0, bArr3, 0);
                    if (this.type == 2 && i4 == blockSize) {
                        System.arraycopy(bArr2, 0, bArr, i2, blockSize);
                        System.arraycopy(bArr3, 0, bArr, i2 + blockSize, i4);
                    } else {
                        System.arraycopy(bArr3, 0, bArr, i2, blockSize);
                        System.arraycopy(bArr2, 0, bArr, i2 + blockSize, i4);
                    }
                } else {
                    System.arraycopy(((DefaultBufferedBlockCipher) this).buf, 0, bArr2, 0, blockSize);
                    ((DefaultBufferedBlockCipher) this).cipher.processBlock(bArr2, 0, bArr2, 0);
                    System.arraycopy(bArr2, 0, bArr, i2, i4);
                    System.arraycopy(((DefaultBufferedBlockCipher) this).buf, ((DefaultBufferedBlockCipher) this).bufOff - i4, bArr3, 0, i4);
                    ((DefaultBufferedBlockCipher) this).cipher.processBlock(bArr3, 0, bArr3, 0);
                    System.arraycopy(bArr3, 0, bArr, i2 + i4, blockSize);
                }
            } else {
                ((DefaultBufferedBlockCipher) this).cipher.processBlock(((DefaultBufferedBlockCipher) this).buf, 0, bArr2, 0);
                System.arraycopy(bArr2, 0, bArr, i2, blockSize);
            }
        } else {
            if (i3 < blockSize) {
                b21.q("need at least one block of input for CTS");
                return 0;
            }
            byte[] bArr4 = new byte[blockSize];
            if (i3 > blockSize) {
                int i6 = this.type;
                if (i6 == 3 || (i6 == 2 && (((DefaultBufferedBlockCipher) this).buf.length - i3) % blockSize != 0)) {
                    BlockCipher blockCipher = ((DefaultBufferedBlockCipher) this).cipher;
                    if (blockCipher instanceof CBCModeCipher) {
                        ((CBCModeCipher) blockCipher).getUnderlyingCipher().processBlock(((DefaultBufferedBlockCipher) this).buf, 0, bArr2, 0);
                    } else {
                        blockCipher.processBlock(((DefaultBufferedBlockCipher) this).buf, 0, bArr2, 0);
                    }
                    for (int i7 = blockSize; i7 != ((DefaultBufferedBlockCipher) this).bufOff; i7++) {
                        int i8 = i7 - blockSize;
                        bArr4[i8] = (byte) (bArr2[i8] ^ ((DefaultBufferedBlockCipher) this).buf[i7]);
                    }
                    System.arraycopy(((DefaultBufferedBlockCipher) this).buf, blockSize, bArr2, 0, i4);
                    ((DefaultBufferedBlockCipher) this).cipher.processBlock(bArr2, 0, bArr, i2);
                } else {
                    ((CBCModeCipher) ((DefaultBufferedBlockCipher) this).cipher).getUnderlyingCipher().processBlock(((DefaultBufferedBlockCipher) this).buf, ((DefaultBufferedBlockCipher) this).bufOff - blockSize, bArr4, 0);
                    System.arraycopy(((DefaultBufferedBlockCipher) this).buf, 0, bArr2, 0, blockSize);
                    if (i4 != blockSize) {
                        System.arraycopy(bArr4, i4, bArr2, i4, blockSize - i4);
                    }
                    ((DefaultBufferedBlockCipher) this).cipher.processBlock(bArr2, 0, bArr2, 0);
                    System.arraycopy(bArr2, 0, bArr, i2, blockSize);
                    for (int i9 = 0; i9 != i4; i9++) {
                        bArr4[i9] = (byte) (bArr4[i9] ^ ((DefaultBufferedBlockCipher) this).buf[i9]);
                    }
                }
                System.arraycopy(bArr4, 0, bArr, i2 + blockSize, i4);
            } else {
                ((DefaultBufferedBlockCipher) this).cipher.processBlock(((DefaultBufferedBlockCipher) this).buf, 0, bArr2, 0);
                System.arraycopy(bArr2, 0, bArr, i2, blockSize);
            }
        }
        int i10 = ((DefaultBufferedBlockCipher) this).bufOff;
        reset();
        return i10;
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
