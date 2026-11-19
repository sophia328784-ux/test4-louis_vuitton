package org.bouncycastle.crypto.prng;

import defpackage.md;
import org.bouncycastle.crypto.BlockCipher;

/* JADX INFO: loaded from: classes5.dex */
public class X931RNG {
    private static final int BLOCK128_MAX_BITS_REQUEST = 262144;
    private static final long BLOCK128_RESEED_MAX = 8388608;
    private static final int BLOCK64_MAX_BITS_REQUEST = 4096;
    private static final long BLOCK64_RESEED_MAX = 32768;
    private final byte[] DT;
    private final byte[] I;
    private final byte[] R;
    private byte[] V;
    private final BlockCipher engine;
    private final EntropySource entropySource;
    private long reseedCounter = 1;

    public X931RNG(BlockCipher blockCipher, byte[] bArr, EntropySource entropySource) {
        this.engine = blockCipher;
        this.entropySource = entropySource;
        byte[] bArr2 = new byte[blockCipher.getBlockSize()];
        this.DT = bArr2;
        System.arraycopy(bArr, 0, bArr2, 0, bArr2.length);
        this.I = new byte[blockCipher.getBlockSize()];
        this.R = new byte[blockCipher.getBlockSize()];
    }

    private void increment(byte[] bArr) {
        for (int length = bArr.length - 1; length >= 0; length--) {
            byte b2 = (byte) (bArr[length] + 1);
            bArr[length] = b2;
            if (b2 != 0) {
                return;
            }
        }
    }

    private static boolean isTooLarge(byte[] bArr, int i2) {
        return bArr != null && bArr.length > i2;
    }

    private void process(byte[] bArr, byte[] bArr2, byte[] bArr3) {
        for (int i2 = 0; i2 != bArr.length; i2++) {
            bArr[i2] = (byte) (bArr2[i2] ^ bArr3[i2]);
        }
        this.engine.processBlock(bArr, 0, bArr, 0);
    }

    public int generate(byte[] bArr, boolean z) {
        int length = this.R.length;
        long j2 = this.reseedCounter;
        if (length == 8) {
            if (j2 > BLOCK64_RESEED_MAX) {
                return -1;
            }
            if (isTooLarge(bArr, 512)) {
                md.n("Number of bits per request limited to 4096");
                return 0;
            }
        } else {
            if (j2 > BLOCK128_RESEED_MAX) {
                return -1;
            }
            if (isTooLarge(bArr, 32768)) {
                md.n("Number of bits per request limited to 262144");
                return 0;
            }
        }
        if (z || this.V == null) {
            byte[] entropy = this.entropySource.getEntropy();
            this.V = entropy;
            if (entropy.length != this.engine.getBlockSize()) {
                md.k("Insufficient entropy returned");
                return 0;
            }
        }
        int length2 = bArr.length / this.R.length;
        for (int i2 = 0; i2 < length2; i2++) {
            this.engine.processBlock(this.DT, 0, this.I, 0);
            process(this.R, this.I, this.V);
            process(this.V, this.R, this.I);
            byte[] bArr2 = this.R;
            System.arraycopy(bArr2, 0, bArr, bArr2.length * i2, bArr2.length);
            increment(this.DT);
        }
        int length3 = bArr.length - (this.R.length * length2);
        if (length3 > 0) {
            this.engine.processBlock(this.DT, 0, this.I, 0);
            process(this.R, this.I, this.V);
            process(this.V, this.R, this.I);
            byte[] bArr3 = this.R;
            System.arraycopy(bArr3, 0, bArr, length2 * bArr3.length, length3);
            increment(this.DT);
        }
        this.reseedCounter++;
        return bArr.length * 8;
    }

    public EntropySource getEntropySource() {
        return this.entropySource;
    }

    public void reseed() {
        byte[] entropy = this.entropySource.getEntropy();
        this.V = entropy;
        if (entropy.length == this.engine.getBlockSize()) {
            this.reseedCounter = 1L;
        } else {
            md.k("Insufficient entropy returned");
        }
    }
}
