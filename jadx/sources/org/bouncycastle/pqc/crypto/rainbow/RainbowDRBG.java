package org.bouncycastle.pqc.crypto.rainbow;

import java.security.SecureRandom;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.crypto.engines.AESEngine;
import org.bouncycastle.crypto.params.KeyParameter;
import org.bouncycastle.util.Arrays;

/* JADX INFO: loaded from: classes5.dex */
class RainbowDRBG extends SecureRandom {
    private Digest hashAlgo;
    private byte[] key;
    private byte[] seed;
    private byte[] v;

    public RainbowDRBG(byte[] bArr, Digest digest) {
        this.seed = bArr;
        this.hashAlgo = digest;
        init(256);
    }

    private void AES256_CTR_DRBG_Update(byte[] bArr, byte[] bArr2, byte[] bArr3) {
        byte[] bArr4 = new byte[48];
        for (int i2 = 0; i2 < 3; i2++) {
            for (int i3 = 15; i3 >= 0; i3--) {
                byte b2 = bArr3[i3];
                if ((b2 & 255) != 255) {
                    bArr3[i3] = (byte) (b2 + 1);
                    break;
                }
                bArr3[i3] = 0;
            }
            AES256_ECB(bArr2, bArr3, bArr4, i2 * 16);
        }
        if (bArr != null) {
            for (int i4 = 0; i4 < 48; i4++) {
                bArr4[i4] = (byte) (bArr4[i4] ^ bArr[i4]);
            }
        }
        System.arraycopy(bArr4, 0, bArr2, 0, bArr2.length);
        System.arraycopy(bArr4, 32, bArr3, 0, bArr3.length);
    }

    private void AES256_ECB(byte[] bArr, byte[] bArr2, byte[] bArr3, int i2) {
        try {
            AESEngine aESEngine = new AESEngine();
            aESEngine.init(true, new KeyParameter(bArr));
            for (int i3 = 0; i3 != bArr2.length; i3 += 16) {
                aESEngine.processBlock(bArr2, i3, bArr3, i2 + i3);
            }
        } catch (Throwable th) {
            throw new IllegalStateException("drbg failure: " + th.getMessage(), th);
        }
    }

    private void init(int i2) {
        byte[] bArr = this.seed;
        if (bArr.length >= 48) {
            randombytes_init(bArr, i2);
        } else {
            randombytes_init(Arrays.concatenate(this.seed, RainbowUtil.hash(this.hashAlgo, bArr, 48 - bArr.length)), i2);
        }
    }

    private void randombytes_init(byte[] bArr, int i2) {
        byte[] bArr2 = new byte[48];
        System.arraycopy(bArr, 0, bArr2, 0, 48);
        byte[] bArr3 = new byte[32];
        this.key = bArr3;
        byte[] bArr4 = new byte[16];
        this.v = bArr4;
        AES256_CTR_DRBG_Update(bArr2, bArr3, bArr4);
    }

    @Override // java.security.SecureRandom, java.util.Random
    public void nextBytes(byte[] bArr) {
        byte[] bArr2 = new byte[16];
        int length = bArr.length;
        int i2 = 0;
        while (length > 0) {
            for (int i3 = 15; i3 >= 0; i3--) {
                byte[] bArr3 = this.v;
                byte b2 = bArr3[i3];
                if ((b2 & 255) != 255) {
                    bArr3[i3] = (byte) (b2 + 1);
                    break;
                }
                bArr3[i3] = 0;
            }
            AES256_ECB(this.key, this.v, bArr2, 0);
            if (length > 15) {
                System.arraycopy(bArr2, 0, bArr, i2, 16);
                i2 += 16;
                length -= 16;
            } else {
                System.arraycopy(bArr2, 0, bArr, i2, length);
                length = 0;
            }
        }
        AES256_CTR_DRBG_Update(null, this.key, this.v);
    }
}
