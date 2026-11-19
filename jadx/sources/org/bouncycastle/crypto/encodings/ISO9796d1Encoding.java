package org.bouncycastle.crypto.encodings;

import defpackage.az;
import defpackage.cj;
import defpackage.md;
import java.math.BigInteger;
import org.bouncycastle.crypto.AsymmetricBlockCipher;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.InvalidCipherTextException;
import org.bouncycastle.crypto.params.ParametersWithRandom;
import org.bouncycastle.crypto.params.RSAKeyParameters;

/* JADX INFO: loaded from: classes5.dex */
public class ISO9796d1Encoding implements AsymmetricBlockCipher {
    private int bitSize;
    private AsymmetricBlockCipher engine;
    private boolean forEncryption;
    private BigInteger modulus;
    private int padBits = 0;
    private static final BigInteger SIXTEEN = BigInteger.valueOf(16);
    private static final BigInteger SIX = BigInteger.valueOf(6);
    private static byte[] shadows = {14, 3, 5, 8, 9, 4, 2, 15, 0, 13, 11, 6, 7, 10, 12, 1};
    private static byte[] inverse = {8, 15, 6, 1, 5, 2, 11, 12, 3, 4, 13, 10, 14, 9, 0, 7};

    public ISO9796d1Encoding(AsymmetricBlockCipher asymmetricBlockCipher) {
        this.engine = asymmetricBlockCipher;
    }

    private static byte[] convertOutputDecryptOnly(BigInteger bigInteger) {
        byte[] byteArray = bigInteger.toByteArray();
        if (byteArray[0] != 0) {
            return byteArray;
        }
        int length = byteArray.length - 1;
        byte[] bArr = new byte[length];
        System.arraycopy(byteArray, 1, bArr, 0, length);
        return bArr;
    }

    /* JADX WARN: Code duplicated, block: B:10:0x0045  */
    /* JADX WARN: Code duplicated, block: B:13:0x0082  */
    /* JADX WARN: Code duplicated, block: B:15:0x009d A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:16:0x009f  */
    /* JADX WARN: Code duplicated, block: B:23:0x00b8 A[LOOP:1: B:22:0x00b6->B:23:0x00b8, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:26:0x00c7  */
    /* JADX WARN: Code duplicated, block: B:29:0x00a6 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:30:0x00ac A[SYNTHETIC] */
    private byte[] decodeBlock(byte[] bArr, int i2, int i3) throws InvalidCipherTextException {
        byte[] bArrConvertOutputDecryptOnly;
        String str;
        int i4;
        int length;
        int i5;
        int i6;
        boolean z;
        int length2;
        byte[] bArr2;
        int i7;
        int i8;
        byte b2;
        byte[] bArrProcessBlock = this.engine.processBlock(bArr, i2, i3);
        int i9 = (this.bitSize + 13) / 16;
        BigInteger bigInteger = new BigInteger(1, bArrProcessBlock);
        BigInteger bigInteger2 = SIXTEEN;
        BigInteger bigIntegerMod = bigInteger.mod(bigInteger2);
        BigInteger bigInteger3 = SIX;
        if (bigIntegerMod.equals(bigInteger3)) {
            bArrConvertOutputDecryptOnly = convertOutputDecryptOnly(bigInteger);
            if ((bArrConvertOutputDecryptOnly[bArrConvertOutputDecryptOnly.length - 1] & 15) == 6) {
                bArrConvertOutputDecryptOnly[bArrConvertOutputDecryptOnly.length - 1] = (byte) (((bArrConvertOutputDecryptOnly[bArrConvertOutputDecryptOnly.length - 1] & 255) >>> 4) | (inverse[(bArrConvertOutputDecryptOnly[bArrConvertOutputDecryptOnly.length - 2] & 255) >> 4] << 4));
                byte[] bArr3 = shadows;
                byte b3 = bArrConvertOutputDecryptOnly[1];
                byte b4 = (byte) (bArr3[b3 & 15] | (bArr3[(b3 & 255) >>> 4] << 4));
                bArrConvertOutputDecryptOnly[0] = b4;
                i5 = 1;
                i6 = 0;
                z = false;
                for (length = bArrConvertOutputDecryptOnly.length - 1; length >= bArrConvertOutputDecryptOnly.length - (i9 * 2); length -= 2) {
                    byte[] bArr4 = shadows;
                    byte b5 = bArrConvertOutputDecryptOnly[length];
                    i7 = bArr4[b5 & 15] | (bArr4[(b5 & 255) >>> 4] << 4);
                    i8 = length - 1;
                    b2 = bArrConvertOutputDecryptOnly[i8];
                    if (((b2 ^ i7) & 255) == 0) {
                        if (z) {
                            str = "invalid tsums in block";
                        } else {
                            i5 = (b2 ^ i7) & 255;
                            z = true;
                            i6 = i8;
                        }
                    }
                }
                bArrConvertOutputDecryptOnly[i6] = 0;
                length2 = (bArrConvertOutputDecryptOnly.length - i6) / 2;
                bArr2 = new byte[length2];
                for (i4 = 0; i4 < length2; i4++) {
                    bArr2[i4] = bArrConvertOutputDecryptOnly[cj.a(i4, 2, i6, 1)];
                }
                this.padBits = i5 - 1;
                return bArr2;
            }
            str = "invalid forcing byte in block";
        } else if (this.modulus.subtract(bigInteger).mod(bigInteger2).equals(bigInteger3)) {
            bigInteger = this.modulus.subtract(bigInteger);
            bArrConvertOutputDecryptOnly = convertOutputDecryptOnly(bigInteger);
            if ((bArrConvertOutputDecryptOnly[bArrConvertOutputDecryptOnly.length - 1] & 15) == 6) {
                bArrConvertOutputDecryptOnly[bArrConvertOutputDecryptOnly.length - 1] = (byte) (((bArrConvertOutputDecryptOnly[bArrConvertOutputDecryptOnly.length - 1] & 255) >>> 4) | (inverse[(bArrConvertOutputDecryptOnly[bArrConvertOutputDecryptOnly.length - 2] & 255) >> 4] << 4));
                byte[] bArr5 = shadows;
                byte b6 = bArrConvertOutputDecryptOnly[1];
                byte b7 = (byte) (bArr5[b6 & 15] | (bArr5[(b6 & 255) >>> 4] << 4));
                bArrConvertOutputDecryptOnly[0] = b7;
                i5 = 1;
                i6 = 0;
                z = false;
                while (length >= bArrConvertOutputDecryptOnly.length - (i9 * 2)) {
                    byte[] bArr6 = shadows;
                    byte b8 = bArrConvertOutputDecryptOnly[length];
                    i7 = bArr6[b8 & 15] | (bArr6[(b8 & 255) >>> 4] << 4);
                    i8 = length - 1;
                    b2 = bArrConvertOutputDecryptOnly[i8];
                    if (((b2 ^ i7) & 255) == 0) {
                        if (z) {
                            i5 = (b2 ^ i7) & 255;
                            z = true;
                            i6 = i8;
                        } else {
                            str = "invalid tsums in block";
                        }
                    }
                }
                bArrConvertOutputDecryptOnly[i6] = 0;
                length2 = (bArrConvertOutputDecryptOnly.length - i6) / 2;
                bArr2 = new byte[length2];
                while (i4 < length2) {
                    bArr2[i4] = bArrConvertOutputDecryptOnly[cj.a(i4, 2, i6, 1)];
                }
                this.padBits = i5 - 1;
                return bArr2;
            }
            str = "invalid forcing byte in block";
        } else {
            str = "resulting integer iS or (modulus - iS) is not congruent to 6 mod 16";
        }
        az.x(str);
        return null;
    }

    private byte[] encodeBlock(byte[] bArr, int i2, int i3) throws InvalidCipherTextException {
        int i4 = this.bitSize;
        int i5 = (i4 + 7) / 8;
        byte[] bArr2 = new byte[i5];
        int i6 = 1;
        int i7 = this.padBits + 1;
        int i8 = (i4 + 13) / 16;
        int i9 = 0;
        while (i9 < i8) {
            if (i9 > i8 - i3) {
                int i10 = i8 - i9;
                System.arraycopy(bArr, (i2 + i3) - i10, bArr2, i5 - i8, i10);
            } else {
                System.arraycopy(bArr, i2, bArr2, i5 - (i9 + i3), i3);
            }
            i9 += i3;
        }
        for (int i11 = i5 - (i8 * 2); i11 != i5; i11 += 2) {
            byte b2 = bArr2[(i11 / 2) + (i5 - i8)];
            byte[] bArr3 = shadows;
            bArr2[i11] = (byte) (bArr3[b2 & 15] | (bArr3[(b2 & 255) >>> 4] << 4));
            bArr2[i11 + 1] = b2;
        }
        int i12 = i5 - (i3 * 2);
        bArr2[i12] = (byte) (bArr2[i12] ^ i7);
        int i13 = i5 - 1;
        bArr2[i13] = (byte) ((bArr2[i13] << 4) | 6);
        int i14 = 8 - ((this.bitSize - 1) % 8);
        if (i14 != 8) {
            byte b3 = (byte) (bArr2[0] & (255 >>> i14));
            bArr2[0] = b3;
            bArr2[0] = (byte) ((128 >>> i14) | b3);
            i6 = 0;
        } else {
            bArr2[0] = 0;
            bArr2[1] = (byte) (bArr2[1] | 128);
        }
        return this.engine.processBlock(bArr2, i6, i5 - i6);
    }

    @Override // org.bouncycastle.crypto.AsymmetricBlockCipher
    public int getInputBlockSize() {
        int inputBlockSize = this.engine.getInputBlockSize();
        return this.forEncryption ? (inputBlockSize + 1) / 2 : inputBlockSize;
    }

    @Override // org.bouncycastle.crypto.AsymmetricBlockCipher
    public int getOutputBlockSize() {
        int outputBlockSize = this.engine.getOutputBlockSize();
        return this.forEncryption ? outputBlockSize : (outputBlockSize + 1) / 2;
    }

    public int getPadBits() {
        return this.padBits;
    }

    public AsymmetricBlockCipher getUnderlyingCipher() {
        return this.engine;
    }

    @Override // org.bouncycastle.crypto.AsymmetricBlockCipher
    public void init(boolean z, CipherParameters cipherParameters) {
        RSAKeyParameters rSAKeyParameters = cipherParameters instanceof ParametersWithRandom ? (RSAKeyParameters) ((ParametersWithRandom) cipherParameters).getParameters() : (RSAKeyParameters) cipherParameters;
        this.engine.init(z, cipherParameters);
        BigInteger modulus = rSAKeyParameters.getModulus();
        this.modulus = modulus;
        this.bitSize = modulus.bitLength();
        this.forEncryption = z;
    }

    @Override // org.bouncycastle.crypto.AsymmetricBlockCipher
    public byte[] processBlock(byte[] bArr, int i2, int i3) throws InvalidCipherTextException {
        return this.forEncryption ? encodeBlock(bArr, i2, i3) : decodeBlock(bArr, i2, i3);
    }

    public void setPadBits(int i2) {
        if (i2 <= 7) {
            this.padBits = i2;
        } else {
            md.n("padBits > 7");
        }
    }
}
