package com.google.crypto.tink;

/* JADX INFO: loaded from: classes2.dex */
public interface Aead {
    byte[] a(byte[] bArr, byte[] bArr2);

    byte[] decrypt(byte[] bArr, byte[] bArr2);
}
