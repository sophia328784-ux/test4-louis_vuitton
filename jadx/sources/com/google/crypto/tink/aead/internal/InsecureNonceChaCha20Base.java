package com.google.crypto.tink.aead.internal;

import com.google.crypto.tink.subtle.Bytes;
import defpackage.wp;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.security.GeneralSecurityException;
import java.security.InvalidKeyException;

/* JADX INFO: loaded from: classes2.dex */
abstract class InsecureNonceChaCha20Base {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int[] f33953a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f33954b;

    public InsecureNonceChaCha20Base(byte[] bArr, int i2) throws InvalidKeyException {
        if (bArr.length != 32) {
            wp.d("The key length in bytes must be 32.");
            throw null;
        }
        this.f33953a = ChaCha20Util.c(bArr);
        this.f33954b = i2;
    }

    public final ByteBuffer a(int i2, byte[] bArr) {
        int[] iArrB = b(i2, ChaCha20Util.c(bArr));
        int[] iArr = (int[]) iArrB.clone();
        ChaCha20Util.b(iArr);
        for (int i3 = 0; i3 < iArrB.length; i3++) {
            iArrB[i3] = iArrB[i3] + iArr[i3];
        }
        ByteBuffer byteBufferOrder = ByteBuffer.allocate(64).order(ByteOrder.LITTLE_ENDIAN);
        byteBufferOrder.asIntBuffer().put(iArrB, 0, 16);
        return byteBufferOrder;
    }

    public abstract int[] b(int i2, int[] iArr);

    public abstract int c();

    public final void d(byte[] bArr, ByteBuffer byteBuffer, ByteBuffer byteBuffer2) throws GeneralSecurityException {
        if (bArr.length != c()) {
            throw new GeneralSecurityException("The nonce length (in bytes) must be " + c());
        }
        int iRemaining = byteBuffer2.remaining();
        int i2 = iRemaining / 64;
        int i3 = i2 + 1;
        for (int i4 = 0; i4 < i3; i4++) {
            ByteBuffer byteBufferA = a(this.f33954b + i4, bArr);
            if (i4 == i2) {
                Bytes.b(byteBuffer, byteBuffer2, byteBufferA, iRemaining % 64);
            } else {
                Bytes.b(byteBuffer, byteBuffer2, byteBufferA, 64);
            }
        }
    }
}
