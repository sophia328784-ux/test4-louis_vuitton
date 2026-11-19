package com.google.crypto.tink.mac;

import com.google.crypto.tink.Mac;
import com.google.crypto.tink.Registry;
import com.google.crypto.tink.config.internal.TinkFipsUtil;
import com.google.crypto.tink.internal.MutablePrimitiveRegistry;
import com.google.crypto.tink.internal.MutableSerializationRegistry;
import com.google.crypto.tink.internal.ParametersSerializer;
import com.google.crypto.tink.proto.RegistryConfig;
import java.security.GeneralSecurityException;

/* JADX INFO: loaded from: classes2.dex */
public abstract class MacConfig {
    static {
        new HmacKeyManager();
        int i2 = RegistryConfig.CONFIG_NAME_FIELD_NUMBER;
        try {
            a();
        } catch (GeneralSecurityException e2) {
            throw new ExceptionInInitializerError(e2);
        }
    }

    public static void a() {
        Registry.h(MacWrapper.f34081c);
        Registry.h(ChunkedMacWrapper.f34052a);
        Registry.f(new HmacKeyManager(), true);
        ParametersSerializer parametersSerializer = HmacProtoSerialization.f34074a;
        MutableSerializationRegistry mutableSerializationRegistry = MutableSerializationRegistry.f34002b;
        mutableSerializationRegistry.e(HmacProtoSerialization.f34074a);
        mutableSerializationRegistry.d(HmacProtoSerialization.f34075b);
        mutableSerializationRegistry.c(HmacProtoSerialization.f34076c);
        mutableSerializationRegistry.b(HmacProtoSerialization.d);
        MutablePrimitiveRegistry mutablePrimitiveRegistry = MutablePrimitiveRegistry.f34000b;
        mutablePrimitiveRegistry.b(HmacKeyManager.d);
        if (TinkFipsUtil.a()) {
            return;
        }
        Registry.f(new AesCmacKeyManager(com.google.crypto.tink.proto.AesCmacKey.class, new AesCmacKeyManager.AnonymousClass1(Mac.class)), true);
        mutableSerializationRegistry.e(AesCmacProtoSerialization.f34048a);
        mutableSerializationRegistry.d(AesCmacProtoSerialization.f34049b);
        mutableSerializationRegistry.c(AesCmacProtoSerialization.f34050c);
        mutableSerializationRegistry.b(AesCmacProtoSerialization.d);
        mutablePrimitiveRegistry.b(AesCmacKeyManager.d);
    }
}
