package org.bouncycastle.crypto.engines;

import defpackage.az;
import defpackage.md;
import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.InvalidCipherTextException;
import org.bouncycastle.crypto.Wrapper;
import org.bouncycastle.crypto.params.KeyParameter;
import org.bouncycastle.crypto.params.ParametersWithIV;
import org.bouncycastle.crypto.params.ParametersWithRandom;
import org.bouncycastle.util.Arrays;
import org.bouncycastle.util.Pack;

/* JADX INFO: loaded from: classes5.dex */
public class RFC5649WrapEngine implements Wrapper {
    private static final byte[] DEFAULT_IV = {-90, 89, 89, -90};
    private final BlockCipher engine;
    private final byte[] preIV = new byte[4];
    private KeyParameter param = null;
    private boolean forWrapping = true;

    public RFC5649WrapEngine(BlockCipher blockCipher) {
        this.engine = blockCipher;
    }

    private byte[] padPlaintext(byte[] bArr) {
        int length = bArr.length;
        int i2 = (8 - (length % 8)) % 8;
        byte[] bArr2 = new byte[length + i2];
        System.arraycopy(bArr, 0, bArr2, 0, length);
        if (i2 != 0) {
            System.arraycopy(new byte[i2], 0, bArr2, length, i2);
        }
        return bArr2;
    }

    private byte[] rfc3394UnwrapNoIvCheck(byte[] bArr, int i2, int i3, byte[] bArr2) {
        int i4 = i3 - 8;
        byte[] bArr3 = new byte[i4];
        byte[] bArr4 = new byte[16];
        System.arraycopy(bArr, i2, bArr4, 0, 8);
        System.arraycopy(bArr, i2 + 8, bArr3, 0, i4);
        this.engine.init(false, this.param);
        int i5 = (i3 / 8) - 1;
        for (int i6 = 5; i6 >= 0; i6--) {
            for (int i7 = i5; i7 >= 1; i7--) {
                int i8 = (i7 - 1) * 8;
                System.arraycopy(bArr3, i8, bArr4, 8, 8);
                int i9 = (i5 * i6) + i7;
                int i10 = 1;
                while (i9 != 0) {
                    int i11 = 8 - i10;
                    bArr4[i11] = (byte) (bArr4[i11] ^ ((byte) i9));
                    i9 >>>= 8;
                    i10++;
                }
                this.engine.processBlock(bArr4, 0, bArr4, 0);
                System.arraycopy(bArr4, 8, bArr3, i8, 8);
            }
        }
        System.arraycopy(bArr4, 0, bArr2, 0, 8);
        return bArr3;
    }

    @Override // org.bouncycastle.crypto.Wrapper
    public String getAlgorithmName() {
        return this.engine.getAlgorithmName();
    }

    @Override // org.bouncycastle.crypto.Wrapper
    public void init(boolean z, CipherParameters cipherParameters) {
        this.forWrapping = z;
        if (cipherParameters instanceof ParametersWithRandom) {
            cipherParameters = ((ParametersWithRandom) cipherParameters).getParameters();
        }
        if (cipherParameters instanceof KeyParameter) {
            this.param = (KeyParameter) cipherParameters;
            System.arraycopy(DEFAULT_IV, 0, this.preIV, 0, 4);
        } else if (cipherParameters instanceof ParametersWithIV) {
            ParametersWithIV parametersWithIV = (ParametersWithIV) cipherParameters;
            byte[] iv = parametersWithIV.getIV();
            if (iv.length != 4) {
                md.n("IV length not equal to 4");
            } else {
                this.param = (KeyParameter) parametersWithIV.getParameters();
                System.arraycopy(iv, 0, this.preIV, 0, 4);
            }
        }
    }

    @Override // org.bouncycastle.crypto.Wrapper
    public byte[] unwrap(byte[] bArr, int i2, int i3) throws InvalidCipherTextException {
        byte[] bArrRfc3394UnwrapNoIvCheck;
        if (this.forWrapping) {
            md.k("not set for unwrapping");
            return null;
        }
        int i4 = i3 / 8;
        if (i4 * 8 != i3) {
            az.x("unwrap data must be a multiple of 8 bytes");
            return null;
        }
        if (i4 <= 1) {
            az.x("unwrap data must be at least 16 bytes");
            return null;
        }
        byte[] bArr2 = new byte[i3];
        System.arraycopy(bArr, i2, bArr2, 0, i3);
        byte[] bArr3 = new byte[i3];
        byte[] bArr4 = new byte[8];
        if (i4 == 2) {
            this.engine.init(false, this.param);
            int blockSize = this.engine.getBlockSize();
            for (int i5 = 0; i5 < i3; i5 += blockSize) {
                this.engine.processBlock(bArr2, i5, bArr3, i5);
            }
            System.arraycopy(bArr3, 0, bArr4, 0, 8);
            int i6 = i3 - 8;
            bArrRfc3394UnwrapNoIvCheck = new byte[i6];
            System.arraycopy(bArr3, 8, bArrRfc3394UnwrapNoIvCheck, 0, i6);
        } else {
            bArrRfc3394UnwrapNoIvCheck = rfc3394UnwrapNoIvCheck(bArr, i2, i3, bArr4);
        }
        int i7 = 4;
        byte[] bArr5 = new byte[4];
        System.arraycopy(bArr4, 0, bArr5, 0, 4);
        int iBigEndianToInt = Pack.bigEndianToInt(bArr4, 4);
        boolean zConstantTimeAreEqual = Arrays.constantTimeAreEqual(bArr5, this.preIV);
        int length = bArrRfc3394UnwrapNoIvCheck.length;
        if (iBigEndianToInt <= length - 8) {
            zConstantTimeAreEqual = false;
        }
        if (iBigEndianToInt > length) {
            zConstantTimeAreEqual = false;
        }
        int i8 = length - iBigEndianToInt;
        if (i8 >= 8 || i8 < 0) {
            zConstantTimeAreEqual = false;
        } else {
            i7 = i8;
        }
        byte[] bArr6 = new byte[i7];
        System.arraycopy(bArrRfc3394UnwrapNoIvCheck, bArrRfc3394UnwrapNoIvCheck.length - i7, bArr6, 0, i7);
        if (!Arrays.constantTimeAreEqual(bArr6, new byte[i7])) {
            zConstantTimeAreEqual = false;
        }
        if (!zConstantTimeAreEqual) {
            az.x("checksum failed");
            return null;
        }
        byte[] bArr7 = new byte[iBigEndianToInt];
        System.arraycopy(bArrRfc3394UnwrapNoIvCheck, 0, bArr7, 0, iBigEndianToInt);
        return bArr7;
    }

    @Override // org.bouncycastle.crypto.Wrapper
    public byte[] wrap(byte[] bArr, int i2, int i3) {
        if (!this.forWrapping) {
            md.k("not set for wrapping");
            return null;
        }
        byte[] bArr2 = new byte[8];
        System.arraycopy(this.preIV, 0, bArr2, 0, 4);
        Pack.intToBigEndian(i3, bArr2, 4);
        byte[] bArr3 = new byte[i3];
        System.arraycopy(bArr, i2, bArr3, 0, i3);
        byte[] bArrPadPlaintext = padPlaintext(bArr3);
        if (bArrPadPlaintext.length != 8) {
            RFC3394WrapEngine rFC3394WrapEngine = new RFC3394WrapEngine(this.engine);
            rFC3394WrapEngine.init(true, new ParametersWithIV(this.param, bArr2));
            return rFC3394WrapEngine.wrap(bArrPadPlaintext, 0, bArrPadPlaintext.length);
        }
        int length = bArrPadPlaintext.length + 8;
        byte[] bArr4 = new byte[length];
        System.arraycopy(bArr2, 0, bArr4, 0, 8);
        System.arraycopy(bArrPadPlaintext, 0, bArr4, 8, bArrPadPlaintext.length);
        this.engine.init(true, this.param);
        int blockSize = this.engine.getBlockSize();
        for (int i4 = 0; i4 < length; i4 += blockSize) {
            this.engine.processBlock(bArr4, i4, bArr4, i4);
        }
        return bArr4;
    }
}
