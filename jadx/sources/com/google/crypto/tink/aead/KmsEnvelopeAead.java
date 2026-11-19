package com.google.crypto.tink.aead;

import com.google.crypto.tink.Aead;
import com.google.crypto.tink.KeyManager;
import com.google.crypto.tink.Registry;
import com.google.crypto.tink.proto.KeyTemplate;
import com.google.crypto.tink.shaded.protobuf.MessageLite;
import java.nio.BufferUnderflowException;
import java.nio.ByteBuffer;
import java.security.GeneralSecurityException;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes2.dex */
public final class KmsEnvelopeAead implements Aead {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final byte[] f33937c = new byte[0];

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final KeyTemplate f33938a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Aead f33939b;

    public KmsEnvelopeAead(KeyTemplate keyTemplate, Aead aead) {
        this.f33938a = keyTemplate;
        this.f33939b = aead;
    }

    @Override // com.google.crypto.tink.Aead
    public final byte[] a(byte[] bArr, byte[] bArr2) {
        MessageLite messageLiteA;
        KeyTemplate keyTemplate = this.f33938a;
        AtomicReference atomicReference = Registry.f33873a;
        synchronized (Registry.class) {
            KeyManager keyManagerD = Registry.d(keyTemplate.M());
            if (!((Boolean) Registry.f33875c.get(keyTemplate.M())).booleanValue()) {
                throw new GeneralSecurityException("newKey-operation not permitted for key type " + keyTemplate.M());
            }
            messageLiteA = keyManagerD.a(keyTemplate.N());
        }
        byte[] byteArray = messageLiteA.toByteArray();
        byte[] bArrA = this.f33939b.a(byteArray, f33937c);
        byte[] bArrA2 = ((Aead) Registry.c(this.f33938a.M(), byteArray)).a(bArr, bArr2);
        return ByteBuffer.allocate(bArrA.length + 4 + bArrA2.length).putInt(bArrA.length).put(bArrA).put(bArrA2).array();
    }

    @Override // com.google.crypto.tink.Aead
    public final byte[] decrypt(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        try {
            ByteBuffer byteBufferWrap = ByteBuffer.wrap(bArr);
            int i2 = byteBufferWrap.getInt();
            if (i2 <= 0 || i2 > bArr.length - 4) {
                throw new GeneralSecurityException("invalid ciphertext");
            }
            byte[] bArr3 = new byte[i2];
            byteBufferWrap.get(bArr3, 0, i2);
            byte[] bArr4 = new byte[byteBufferWrap.remaining()];
            byteBufferWrap.get(bArr4, 0, byteBufferWrap.remaining());
            return ((Aead) Registry.c(this.f33938a.M(), this.f33939b.decrypt(bArr3, f33937c))).decrypt(bArr4, bArr2);
        } catch (IndexOutOfBoundsException | NegativeArraySizeException | BufferUnderflowException e2) {
            throw new GeneralSecurityException("invalid ciphertext", e2);
        }
    }
}
