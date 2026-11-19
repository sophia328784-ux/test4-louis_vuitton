package org.bouncycastle.crypto.engines;

import defpackage.a;
import defpackage.b21;
import defpackage.md;
import defpackage.mt;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.CryptoServicesRegistrar;
import org.bouncycastle.crypto.StreamCipher;
import org.bouncycastle.crypto.constraints.DefaultServiceProperties;
import org.bouncycastle.crypto.params.KeyParameter;

/* JADX INFO: loaded from: classes5.dex */
public class RC4Engine implements StreamCipher {
    private static final int STATE_LENGTH = 256;
    private boolean forEncryption;
    private byte[] engineState = null;
    private int x = 0;
    private int y = 0;
    private byte[] workingKey = null;

    public RC4Engine() {
        CryptoServicesRegistrar.checkConstraints(new DefaultServiceProperties(getAlgorithmName(), 20));
    }

    private void setKey(byte[] bArr) {
        this.workingKey = bArr;
        this.x = 0;
        this.y = 0;
        if (this.engineState == null) {
            this.engineState = new byte[256];
        }
        for (int i2 = 0; i2 < 256; i2++) {
            this.engineState[i2] = (byte) i2;
        }
        int length = 0;
        int i3 = 0;
        for (int i4 = 0; i4 < 256; i4++) {
            int i5 = bArr[length] & 255;
            byte[] bArr2 = this.engineState;
            byte b2 = bArr2[i4];
            i3 = (i5 + b2 + i3) & 255;
            bArr2[i4] = bArr2[i3];
            bArr2[i3] = b2;
            length = (length + 1) % bArr.length;
        }
    }

    @Override // org.bouncycastle.crypto.StreamCipher
    public String getAlgorithmName() {
        return "RC4";
    }

    @Override // org.bouncycastle.crypto.StreamCipher
    public void init(boolean z, CipherParameters cipherParameters) {
        if (!(cipherParameters instanceof KeyParameter)) {
            md.n(a.l("invalid parameter passed to RC4 init - ", cipherParameters));
            return;
        }
        byte[] key = ((KeyParameter) cipherParameters).getKey();
        this.workingKey = key;
        this.forEncryption = z;
        setKey(key);
        CryptoServicesRegistrar.checkConstraints(new DefaultServiceProperties(getAlgorithmName(), 20, cipherParameters, Utils.getPurpose(z)));
    }

    @Override // org.bouncycastle.crypto.StreamCipher
    public int processBytes(byte[] bArr, int i2, int i3, byte[] bArr2, int i4) {
        if (i2 + i3 > bArr.length) {
            b21.q("input buffer too short");
            return 0;
        }
        if (i4 + i3 > bArr2.length) {
            mt.n("output buffer too short");
            return 0;
        }
        for (int i5 = 0; i5 < i3; i5++) {
            int i6 = (this.x + 1) & 255;
            this.x = i6;
            byte[] bArr3 = this.engineState;
            byte b2 = bArr3[i6];
            int i7 = (this.y + b2) & 255;
            this.y = i7;
            bArr3[i6] = bArr3[i7];
            bArr3[i7] = b2;
            bArr2[i5 + i4] = (byte) (bArr3[(bArr3[i6] + b2) & 255] ^ bArr[i5 + i2]);
        }
        return i3;
    }

    @Override // org.bouncycastle.crypto.StreamCipher
    public void reset() {
        setKey(this.workingKey);
    }

    @Override // org.bouncycastle.crypto.StreamCipher
    public byte returnByte(byte b2) {
        int i2 = (this.x + 1) & 255;
        this.x = i2;
        byte[] bArr = this.engineState;
        byte b3 = bArr[i2];
        int i3 = (this.y + b3) & 255;
        this.y = i3;
        bArr[i2] = bArr[i3];
        bArr[i3] = b3;
        return (byte) (bArr[(bArr[i2] + b3) & 255] ^ b2);
    }
}
