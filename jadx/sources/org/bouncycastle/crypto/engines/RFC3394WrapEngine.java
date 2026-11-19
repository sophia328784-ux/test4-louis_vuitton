package org.bouncycastle.crypto.engines;

import defpackage.b21;
import defpackage.md;
import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.Wrapper;
import org.bouncycastle.crypto.params.KeyParameter;
import org.bouncycastle.crypto.params.ParametersWithIV;
import org.bouncycastle.crypto.params.ParametersWithRandom;

/* JADX INFO: loaded from: classes5.dex */
public class RFC3394WrapEngine implements Wrapper {
    private static final byte[] DEFAULT_IV = {-90, -90, -90, -90, -90, -90, -90, -90};
    private final BlockCipher engine;
    private boolean forWrapping;
    private final byte[] iv;
    private KeyParameter param;
    private final boolean wrapCipherMode;

    public RFC3394WrapEngine(BlockCipher blockCipher, boolean z) {
        this.iv = new byte[8];
        this.param = null;
        this.forWrapping = true;
        this.engine = blockCipher;
        this.wrapCipherMode = !z;
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
            System.arraycopy(DEFAULT_IV, 0, this.iv, 0, 8);
        } else if (cipherParameters instanceof ParametersWithIV) {
            ParametersWithIV parametersWithIV = (ParametersWithIV) cipherParameters;
            byte[] iv = parametersWithIV.getIV();
            if (iv.length != 8) {
                md.n("IV not equal to 8");
            } else {
                this.param = (KeyParameter) parametersWithIV.getParameters();
                System.arraycopy(iv, 0, this.iv, 0, 8);
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x00ac, code lost:
    
        if (org.bouncycastle.util.Arrays.constantTimeAreEqual(r8, r5) != false) goto L40;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x00af, code lost:
    
        defpackage.az.x("checksum failed");
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x00b2, code lost:
    
        return null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x0107, code lost:
    
        if (org.bouncycastle.util.Arrays.constantTimeAreEqual(r8, r1) != false) goto L40;
     */
    @Override // org.bouncycastle.crypto.Wrapper
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public byte[] unwrap(byte[] r20, int r21, int r22) throws org.bouncycastle.crypto.InvalidCipherTextException {
        /*
            Method dump skipped, instruction units count: 281
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.bouncycastle.crypto.engines.RFC3394WrapEngine.unwrap(byte[], int, int):byte[]");
    }

    @Override // org.bouncycastle.crypto.Wrapper
    public byte[] wrap(byte[] bArr, int i2, int i3) {
        String str;
        if (!this.forWrapping) {
            md.k("not set for wrapping");
            return null;
        }
        if (i3 >= 8) {
            int i4 = i3 / 8;
            if (i4 * 8 == i3) {
                this.engine.init(this.wrapCipherMode, this.param);
                byte[] bArr2 = this.iv;
                byte[] bArr3 = new byte[bArr2.length + i3];
                System.arraycopy(bArr2, 0, bArr3, 0, bArr2.length);
                System.arraycopy(bArr, i2, bArr3, this.iv.length, i3);
                if (i4 == 1) {
                    this.engine.processBlock(bArr3, 0, bArr3, 0);
                    return bArr3;
                }
                byte[] bArr4 = new byte[this.iv.length + 8];
                for (int i5 = 0; i5 != 6; i5++) {
                    for (int i6 = 1; i6 <= i4; i6++) {
                        System.arraycopy(bArr3, 0, bArr4, 0, this.iv.length);
                        int i7 = i6 * 8;
                        System.arraycopy(bArr3, i7, bArr4, this.iv.length, 8);
                        this.engine.processBlock(bArr4, 0, bArr4, 0);
                        int i8 = (i4 * i5) + i6;
                        int i9 = 1;
                        while (i8 != 0) {
                            int length = this.iv.length - i9;
                            bArr4[length] = (byte) (((byte) i8) ^ bArr4[length]);
                            i8 >>>= 8;
                            i9++;
                        }
                        System.arraycopy(bArr4, 0, bArr3, 0, 8);
                        System.arraycopy(bArr4, 8, bArr3, i7, 8);
                    }
                }
                return bArr3;
            }
            str = "wrap data must be a multiple of 8 bytes";
        } else {
            str = "wrap data must be at least 8 bytes";
        }
        b21.q(str);
        return null;
    }

    public RFC3394WrapEngine(BlockCipher blockCipher) {
        this(blockCipher, false);
    }
}
