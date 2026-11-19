package com.google.crypto.tink.subtle;

import com.google.crypto.tink.Aead;
import com.google.crypto.tink.Mac;
import defpackage.v40;
import java.nio.ByteBuffer;
import java.security.GeneralSecurityException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class EncryptThenAuthenticate implements Aead {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final IndCpaCipher f34302a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Mac f34303b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f34304c;

    public EncryptThenAuthenticate(IndCpaCipher indCpaCipher, Mac mac, int i2) {
        this.f34302a = indCpaCipher;
        this.f34303b = mac;
        this.f34304c = i2;
    }

    @Override // com.google.crypto.tink.Aead
    public final byte[] a(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        byte[] bArrEncrypt = this.f34302a.encrypt(bArr);
        if (bArr2 == null) {
            bArr2 = new byte[0];
        }
        return Bytes.a(bArrEncrypt, this.f34303b.b(Bytes.a(bArr2, bArrEncrypt, Arrays.copyOf(ByteBuffer.allocate(8).putLong(((long) bArr2.length) * 8).array(), 8))));
    }

    @Override // com.google.crypto.tink.Aead
    public final byte[] decrypt(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        int length = bArr.length;
        int i2 = this.f34304c;
        if (length < i2) {
            v40.j("ciphertext too short");
            return null;
        }
        byte[] bArrCopyOfRange = Arrays.copyOfRange(bArr, 0, bArr.length - i2);
        byte[] bArrCopyOfRange2 = Arrays.copyOfRange(bArr, bArr.length - i2, bArr.length);
        if (bArr2 == null) {
            bArr2 = new byte[0];
        }
        this.f34303b.a(bArrCopyOfRange2, Bytes.a(bArr2, bArrCopyOfRange, Arrays.copyOf(ByteBuffer.allocate(8).putLong(((long) bArr2.length) * 8).array(), 8)));
        return this.f34302a.a(bArrCopyOfRange);
    }
}
