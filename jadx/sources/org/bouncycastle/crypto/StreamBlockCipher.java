package org.bouncycastle.crypto;

import defpackage.b21;
import defpackage.mt;

/* JADX INFO: loaded from: classes5.dex */
public abstract class StreamBlockCipher extends DefaultMultiBlockCipher implements StreamCipher {
    private final BlockCipher cipher;

    public StreamBlockCipher(BlockCipher blockCipher) {
        this.cipher = blockCipher;
    }

    public abstract byte calculateByte(byte b2);

    public BlockCipher getUnderlyingCipher() {
        return this.cipher;
    }

    @Override // org.bouncycastle.crypto.StreamCipher
    public int processBytes(byte[] bArr, int i2, int i3, byte[] bArr2, int i4) throws DataLengthException {
        int i5 = i2 + i3;
        if (i5 > bArr.length) {
            b21.q("input buffer too small");
            return 0;
        }
        if (i4 + i3 > bArr2.length) {
            mt.n("output buffer too short");
            return 0;
        }
        while (i2 < i5) {
            bArr2[i4] = calculateByte(bArr[i2]);
            i4++;
            i2++;
        }
        return i3;
    }

    @Override // org.bouncycastle.crypto.StreamCipher
    public final byte returnByte(byte b2) {
        return calculateByte(b2);
    }
}
