package org.bouncycastle.crypto.hpke;

import defpackage.az;
import defpackage.md;
import org.bouncycastle.crypto.InvalidCipherTextException;
import org.bouncycastle.crypto.engines.AESEngine;
import org.bouncycastle.crypto.modes.AEADCipher;
import org.bouncycastle.crypto.modes.ChaCha20Poly1305;
import org.bouncycastle.crypto.modes.GCMBlockCipher;
import org.bouncycastle.crypto.params.KeyParameter;
import org.bouncycastle.crypto.params.ParametersWithIV;
import org.bouncycastle.util.Arrays;
import org.bouncycastle.util.Pack;

/* JADX INFO: loaded from: classes5.dex */
public class AEAD {
    private final short aeadId;
    private final byte[] baseNonce;
    private AEADCipher cipher;
    private final byte[] key;
    private long seq = 0;

    public AEAD(short s, byte[] bArr, byte[] bArr2) {
        AEADCipher gCMBlockCipher;
        this.key = bArr;
        this.baseNonce = bArr2;
        this.aeadId = s;
        if (s == 1 || s == 2) {
            gCMBlockCipher = new GCMBlockCipher(new AESEngine());
        } else if (s != 3) {
            return;
        } else {
            gCMBlockCipher = new ChaCha20Poly1305();
        }
        this.cipher = gCMBlockCipher;
    }

    private byte[] ComputeNonce() {
        byte[] bArrLongToBigEndian = Pack.longToBigEndian(this.seq);
        byte[] bArr = this.baseNonce;
        int length = bArr.length;
        byte[] bArrClone = Arrays.clone(bArr);
        for (int i2 = 0; i2 < 8; i2++) {
            int i3 = (length - 8) + i2;
            bArrClone[i3] = (byte) (bArrClone[i3] ^ bArrLongToBigEndian[i2]);
        }
        return bArrClone;
    }

    public byte[] open(byte[] bArr, byte[] bArr2, int i2, int i3) throws InvalidCipherTextException {
        if (i2 < 0 || i2 > bArr2.length) {
            az.v("Invalid offset");
            return null;
        }
        if (i2 + i3 > bArr2.length) {
            az.v("Invalid length");
            return null;
        }
        short s = this.aeadId;
        if (s != 1 && s != 2 && s != 3) {
            md.k("Export only mode, cannot be used to seal/open");
            return null;
        }
        this.cipher.init(false, new ParametersWithIV(new KeyParameter(this.key), ComputeNonce()));
        this.cipher.processAADBytes(bArr, 0, bArr.length);
        byte[] bArr3 = new byte[this.cipher.getOutputSize(i3)];
        this.cipher.doFinal(bArr3, this.cipher.processBytes(bArr2, i2, i3, bArr3, 0));
        this.seq++;
        return bArr3;
    }

    public byte[] seal(byte[] bArr, byte[] bArr2, int i2, int i3) throws InvalidCipherTextException {
        if (i2 < 0 || i2 > bArr2.length) {
            az.v("Invalid offset");
            return null;
        }
        if (i2 + i3 > bArr2.length) {
            az.v("Invalid length");
            return null;
        }
        short s = this.aeadId;
        if (s != 1 && s != 2 && s != 3) {
            md.k("Export only mode, cannot be used to seal/open");
            return null;
        }
        this.cipher.init(true, new ParametersWithIV(new KeyParameter(this.key), ComputeNonce()));
        this.cipher.processAADBytes(bArr, 0, bArr.length);
        byte[] bArr3 = new byte[this.cipher.getOutputSize(i3)];
        this.cipher.doFinal(bArr3, this.cipher.processBytes(bArr2, i2, i3, bArr3, 0));
        this.seq++;
        return bArr3;
    }

    public byte[] open(byte[] bArr, byte[] bArr2) throws InvalidCipherTextException {
        return open(bArr, bArr2, 0, bArr2.length);
    }

    public byte[] seal(byte[] bArr, byte[] bArr2) throws InvalidCipherTextException {
        return seal(bArr, bArr2, 0, bArr2.length);
    }
}
