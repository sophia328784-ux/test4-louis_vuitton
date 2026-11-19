package org.bouncycastle.crypto.params;

import defpackage.md;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.util.Arrays;

/* JADX INFO: loaded from: classes5.dex */
public class KeyParameter implements CipherParameters {
    private byte[] key;

    public KeyParameter(byte[] bArr, int i2, int i3) {
        this(i3);
        System.arraycopy(bArr, i2, this.key, 0, i3);
    }

    public void copyTo(byte[] bArr, int i2, int i3) {
        byte[] bArr2 = this.key;
        if (bArr2.length == i3) {
            System.arraycopy(bArr2, 0, bArr, i2, i3);
        } else {
            md.n("len");
        }
    }

    public byte[] getKey() {
        return this.key;
    }

    public int getKeyLength() {
        return this.key.length;
    }

    public KeyParameter reverse() {
        KeyParameter keyParameter = new KeyParameter(this.key.length);
        Arrays.reverse(this.key, keyParameter.key);
        return keyParameter;
    }

    public KeyParameter(byte[] bArr) {
        this(bArr, 0, bArr.length);
    }

    private KeyParameter(int i2) {
        this.key = new byte[i2];
    }
}
