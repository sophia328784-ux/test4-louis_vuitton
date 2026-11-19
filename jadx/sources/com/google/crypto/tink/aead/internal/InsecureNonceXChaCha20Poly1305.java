package com.google.crypto.tink.aead.internal;

import java.security.GeneralSecurityException;

/* JADX INFO: loaded from: classes2.dex */
public final class InsecureNonceXChaCha20Poly1305 extends InsecureNonceChaCha20Poly1305Base {
    public InsecureNonceXChaCha20Poly1305(byte[] bArr) throws GeneralSecurityException {
        super(bArr);
    }

    @Override // com.google.crypto.tink.aead.internal.InsecureNonceChaCha20Poly1305Base
    public final InsecureNonceChaCha20Base d(int i2, byte[] bArr) {
        return new InsecureNonceXChaCha20(bArr, i2);
    }
}
