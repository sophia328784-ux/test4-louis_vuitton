package org.bouncycastle.crypto.fpe;

import defpackage.b21;
import defpackage.md;
import defpackage.mt;
import defpackage.r81;
import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.params.FPEParameters;
import org.bouncycastle.util.Pack;

/* JADX INFO: loaded from: classes5.dex */
public abstract class FPEEngine {
    protected final BlockCipher baseCipher;
    protected boolean forEncryption;
    protected FPEParameters fpeParameters;

    public FPEEngine(BlockCipher blockCipher) {
        this.baseCipher = blockCipher;
    }

    public static byte[] toByteArray(short[] sArr) {
        byte[] bArr = new byte[sArr.length * 2];
        for (int i2 = 0; i2 != sArr.length; i2++) {
            Pack.shortToBigEndian(sArr[i2], bArr, i2 * 2);
        }
        return bArr;
    }

    public static short[] toShortArray(byte[] bArr) {
        if ((bArr.length & 1) != 0) {
            md.n("data must be an even number of bytes for a wide radix");
            return null;
        }
        int length = bArr.length / 2;
        short[] sArr = new short[length];
        for (int i2 = 0; i2 != length; i2++) {
            sArr[i2] = Pack.bigEndianToShort(bArr, i2 * 2);
        }
        return sArr;
    }

    public abstract int decryptBlock(byte[] bArr, int i2, int i3, byte[] bArr2, int i4);

    public abstract int encryptBlock(byte[] bArr, int i2, int i3, byte[] bArr2, int i4);

    public abstract String getAlgorithmName();

    public abstract void init(boolean z, CipherParameters cipherParameters);

    public int processBlock(byte[] bArr, int i2, int i3, byte[] bArr2, int i4) {
        if (this.fpeParameters == null) {
            md.k("FPE engine not initialized");
            return 0;
        }
        if (i3 < 0) {
            md.n("input length cannot be negative");
            return 0;
        }
        if (bArr == null || bArr2 == null) {
            r81.d("buffer value is null");
            return 0;
        }
        if (bArr.length < i2 + i3) {
            b21.q("input buffer too short");
            return 0;
        }
        if (bArr2.length >= i4 + i3) {
            return this.forEncryption ? encryptBlock(bArr, i2, i3, bArr2, i4) : decryptBlock(bArr, i2, i3, bArr2, i4);
        }
        mt.n("output buffer too short");
        return 0;
    }
}
