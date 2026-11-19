package com.google.crypto.tink.aead.internal;

import defpackage.d20;
import java.security.InvalidKeyException;

/* JADX INFO: loaded from: classes2.dex */
public class InsecureNonceChaCha20 extends InsecureNonceChaCha20Base {
    public InsecureNonceChaCha20(byte[] bArr, int i2) throws InvalidKeyException {
        super(bArr, i2);
    }

    @Override // com.google.crypto.tink.aead.internal.InsecureNonceChaCha20Base
    public final int[] b(int i2, int[] iArr) {
        if (iArr.length != 3) {
            d20.j("ChaCha20 uses 96-bit nonces, but got a %d-bit nonce", new Object[]{Integer.valueOf(iArr.length * 32)});
            return null;
        }
        int[] iArr2 = new int[16];
        int[] iArr3 = ChaCha20Util.f33949a;
        System.arraycopy(iArr3, 0, iArr2, 0, iArr3.length);
        System.arraycopy(this.f33953a, 0, iArr2, iArr3.length, 8);
        iArr2[12] = i2;
        System.arraycopy(iArr, 0, iArr2, 13, iArr.length);
        return iArr2;
    }

    @Override // com.google.crypto.tink.aead.internal.InsecureNonceChaCha20Base
    public final int c() {
        return 12;
    }
}
