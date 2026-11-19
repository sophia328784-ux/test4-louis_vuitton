package org.bouncycastle.crypto.modes;

import defpackage.b21;
import defpackage.mt;
import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.DataLengthException;

/* JADX INFO: loaded from: classes5.dex */
public class OpenPGPCFBBlockCipher implements BlockCipher {
    private byte[] FR;
    private byte[] FRE;
    private byte[] IV;
    private int blockSize;
    private BlockCipher cipher;
    private int count;
    private boolean forEncryption;

    public OpenPGPCFBBlockCipher(BlockCipher blockCipher) {
        this.cipher = blockCipher;
        int blockSize = blockCipher.getBlockSize();
        this.blockSize = blockSize;
        this.IV = new byte[blockSize];
        this.FR = new byte[blockSize];
        this.FRE = new byte[blockSize];
    }

    private int decryptBlock(byte[] bArr, int i2, byte[] bArr2, int i3) throws IllegalStateException, DataLengthException {
        int i4;
        int i5 = this.blockSize;
        int i6 = 0;
        if (i2 + i5 > bArr.length) {
            b21.q("input buffer too short");
            return 0;
        }
        if (i3 + i5 > bArr2.length) {
            mt.n("output buffer too short");
            return 0;
        }
        int i7 = this.count;
        int i8 = 2;
        if (i7 > i5) {
            byte b2 = bArr[i2];
            this.FR[i5 - 2] = b2;
            bArr2[i3] = encryptByte(b2, i5 - 2);
            byte b3 = bArr[i2 + 1];
            byte[] bArr3 = this.FR;
            int i9 = this.blockSize;
            bArr3[i9 - 1] = b3;
            bArr2[i3 + 1] = encryptByte(b3, i9 - 1);
            this.cipher.processBlock(this.FR, 0, this.FRE, 0);
            while (i8 < this.blockSize) {
                byte b4 = bArr[i2 + i8];
                int i10 = i8 - 2;
                this.FR[i10] = b4;
                bArr2[i3 + i8] = encryptByte(b4, i10);
                i8++;
            }
        } else {
            if (i7 != 0) {
                if (i7 == i5) {
                    this.cipher.processBlock(this.FR, 0, this.FRE, 0);
                    byte b5 = bArr[i2];
                    byte b6 = bArr[i2 + 1];
                    bArr2[i3] = encryptByte(b5, 0);
                    bArr2[i3 + 1] = encryptByte(b6, 1);
                    byte[] bArr4 = this.FR;
                    System.arraycopy(bArr4, 2, bArr4, 0, this.blockSize - 2);
                    byte[] bArr5 = this.FR;
                    int i11 = this.blockSize;
                    bArr5[i11 - 2] = b5;
                    bArr5[i11 - 1] = b6;
                    this.cipher.processBlock(bArr5, 0, this.FRE, 0);
                    while (true) {
                        i4 = this.blockSize;
                        if (i8 >= i4) {
                            break;
                        }
                        byte b7 = bArr[i2 + i8];
                        int i12 = i8 - 2;
                        this.FR[i12] = b7;
                        bArr2[i3 + i8] = encryptByte(b7, i12);
                        i8++;
                    }
                }
            } else {
                this.cipher.processBlock(this.FR, 0, this.FRE, 0);
                while (true) {
                    i4 = this.blockSize;
                    if (i6 >= i4) {
                        break;
                    }
                    int i13 = i2 + i6;
                    this.FR[i6] = bArr[i13];
                    bArr2[i3 + i6] = encryptByte(bArr[i13], i6);
                    i6++;
                }
            }
            this.count += i4;
        }
        return this.blockSize;
    }

    private int encryptBlock(byte[] bArr, int i2, byte[] bArr2, int i3) throws IllegalStateException, DataLengthException {
        int i4;
        int i5 = this.blockSize;
        int i6 = 0;
        if (i2 + i5 > bArr.length) {
            b21.q("input buffer too short");
            return 0;
        }
        if (i3 + i5 > bArr2.length) {
            mt.n("output buffer too short");
            return 0;
        }
        int i7 = this.count;
        int i8 = 2;
        if (i7 > i5) {
            byte[] bArr3 = this.FR;
            int i9 = i5 - 2;
            byte bEncryptByte = encryptByte(bArr[i2], i5 - 2);
            bArr2[i3] = bEncryptByte;
            bArr3[i9] = bEncryptByte;
            byte[] bArr4 = this.FR;
            int i10 = this.blockSize;
            int i11 = i10 - 1;
            byte bEncryptByte2 = encryptByte(bArr[i2 + 1], i10 - 1);
            bArr2[i3 + 1] = bEncryptByte2;
            bArr4[i11] = bEncryptByte2;
            this.cipher.processBlock(this.FR, 0, this.FRE, 0);
            while (i8 < this.blockSize) {
                byte[] bArr5 = this.FR;
                int i12 = i8 - 2;
                byte bEncryptByte3 = encryptByte(bArr[i2 + i8], i12);
                bArr2[i3 + i8] = bEncryptByte3;
                bArr5[i12] = bEncryptByte3;
                i8++;
            }
        } else {
            if (i7 != 0) {
                if (i7 == i5) {
                    this.cipher.processBlock(this.FR, 0, this.FRE, 0);
                    bArr2[i3] = encryptByte(bArr[i2], 0);
                    bArr2[i3 + 1] = encryptByte(bArr[i2 + 1], 1);
                    byte[] bArr6 = this.FR;
                    System.arraycopy(bArr6, 2, bArr6, 0, this.blockSize - 2);
                    System.arraycopy(bArr2, i3, this.FR, this.blockSize - 2, 2);
                    this.cipher.processBlock(this.FR, 0, this.FRE, 0);
                    while (true) {
                        i4 = this.blockSize;
                        if (i8 >= i4) {
                            break;
                        }
                        byte[] bArr7 = this.FR;
                        int i13 = i8 - 2;
                        byte bEncryptByte4 = encryptByte(bArr[i2 + i8], i13);
                        bArr2[i3 + i8] = bEncryptByte4;
                        bArr7[i13] = bEncryptByte4;
                        i8++;
                    }
                }
            } else {
                this.cipher.processBlock(this.FR, 0, this.FRE, 0);
                while (true) {
                    i4 = this.blockSize;
                    if (i6 >= i4) {
                        break;
                    }
                    byte[] bArr8 = this.FR;
                    byte bEncryptByte5 = encryptByte(bArr[i2 + i6], i6);
                    bArr2[i3 + i6] = bEncryptByte5;
                    bArr8[i6] = bEncryptByte5;
                    i6++;
                }
            }
            this.count += i4;
        }
        return this.blockSize;
    }

    private byte encryptByte(byte b2, int i2) {
        return (byte) (this.FRE[i2] ^ b2);
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public String getAlgorithmName() {
        return this.cipher.getAlgorithmName() + "/OpenPGPCFB";
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public int getBlockSize() {
        return this.cipher.getBlockSize();
    }

    public BlockCipher getUnderlyingCipher() {
        return this.cipher;
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public void init(boolean z, CipherParameters cipherParameters) throws IllegalArgumentException {
        this.forEncryption = z;
        reset();
        this.cipher.init(true, cipherParameters);
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public int processBlock(byte[] bArr, int i2, byte[] bArr2, int i3) throws IllegalStateException, DataLengthException {
        return this.forEncryption ? encryptBlock(bArr, i2, bArr2, i3) : decryptBlock(bArr, i2, bArr2, i3);
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public void reset() {
        this.count = 0;
        byte[] bArr = this.IV;
        byte[] bArr2 = this.FR;
        System.arraycopy(bArr, 0, bArr2, 0, bArr2.length);
        this.cipher.reset();
    }
}
