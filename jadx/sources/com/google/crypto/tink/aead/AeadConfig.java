package com.google.crypto.tink.aead;

import com.google.crypto.tink.Registry;
import com.google.crypto.tink.config.internal.TinkFipsUtil;
import com.google.crypto.tink.internal.MutableSerializationRegistry;
import com.google.crypto.tink.internal.ParametersSerializer;
import com.google.crypto.tink.mac.MacConfig;
import com.google.crypto.tink.proto.RegistryConfig;
import java.security.GeneralSecurityException;
import java.security.NoSuchAlgorithmException;
import javax.crypto.Cipher;
import javax.crypto.NoSuchPaddingException;

/* JADX INFO: loaded from: classes2.dex */
public abstract class AeadConfig {
    static {
        new AesCtrHmacAeadKeyManager();
        new AesGcmKeyManager();
        new AesGcmSivKeyManager();
        new AesEaxKeyManager();
        new KmsAeadKeyManager();
        new KmsEnvelopeAeadKeyManager();
        new ChaCha20Poly1305KeyManager();
        new XChaCha20Poly1305KeyManager();
        int i2 = RegistryConfig.CONFIG_NAME_FIELD_NUMBER;
        try {
            a();
        } catch (GeneralSecurityException e2) {
            throw new ExceptionInInitializerError(e2);
        }
    }

    public static void a() {
        Registry.h(AeadWrapper.f33879b);
        MacConfig.a();
        Registry.f(new AesCtrHmacAeadKeyManager(), true);
        Registry.f(new AesGcmKeyManager(), true);
        ParametersSerializer parametersSerializer = AesGcmProtoSerialization.f33911a;
        MutableSerializationRegistry mutableSerializationRegistry = MutableSerializationRegistry.f34002b;
        mutableSerializationRegistry.e(AesGcmProtoSerialization.f33911a);
        mutableSerializationRegistry.d(AesGcmProtoSerialization.f33912b);
        mutableSerializationRegistry.c(AesGcmProtoSerialization.f33913c);
        mutableSerializationRegistry.b(AesGcmProtoSerialization.d);
        if (TinkFipsUtil.a()) {
            return;
        }
        Registry.f(new AesEaxKeyManager(), true);
        mutableSerializationRegistry.e(AesEaxProtoSerialization.f33895a);
        mutableSerializationRegistry.d(AesEaxProtoSerialization.f33896b);
        mutableSerializationRegistry.c(AesEaxProtoSerialization.f33897c);
        mutableSerializationRegistry.b(AesEaxProtoSerialization.d);
        try {
            Cipher.getInstance("AES/GCM-SIV/NoPadding");
            Registry.f(new AesGcmSivKeyManager(), true);
            mutableSerializationRegistry.e(AesGcmSivProtoSerialization.f33925a);
            mutableSerializationRegistry.d(AesGcmSivProtoSerialization.f33926b);
            mutableSerializationRegistry.c(AesGcmSivProtoSerialization.f33927c);
            mutableSerializationRegistry.b(AesGcmSivProtoSerialization.d);
        } catch (NoSuchAlgorithmException | NoSuchPaddingException unused) {
        }
        Registry.f(new ChaCha20Poly1305KeyManager(), true);
        ParametersSerializer parametersSerializer2 = ChaCha20Poly1305ProtoSerialization.f33933a;
        MutableSerializationRegistry mutableSerializationRegistry2 = MutableSerializationRegistry.f34002b;
        mutableSerializationRegistry2.e(ChaCha20Poly1305ProtoSerialization.f33933a);
        mutableSerializationRegistry2.d(ChaCha20Poly1305ProtoSerialization.f33934b);
        mutableSerializationRegistry2.c(ChaCha20Poly1305ProtoSerialization.f33935c);
        mutableSerializationRegistry2.b(ChaCha20Poly1305ProtoSerialization.d);
        Registry.f(new KmsAeadKeyManager(), true);
        Registry.f(new KmsEnvelopeAeadKeyManager(), true);
        Registry.f(new XChaCha20Poly1305KeyManager(), true);
        mutableSerializationRegistry2.e(XChaCha20Poly1305ProtoSerialization.f33944a);
        mutableSerializationRegistry2.d(XChaCha20Poly1305ProtoSerialization.f33945b);
        mutableSerializationRegistry2.c(XChaCha20Poly1305ProtoSerialization.f33946c);
        mutableSerializationRegistry2.b(XChaCha20Poly1305ProtoSerialization.d);
    }
}
