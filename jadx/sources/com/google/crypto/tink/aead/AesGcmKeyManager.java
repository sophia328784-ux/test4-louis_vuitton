package com.google.crypto.tink.aead;

import com.google.crypto.tink.Aead;
import com.google.crypto.tink.KeyTemplate;
import com.google.crypto.tink.config.internal.TinkFipsUtil;
import com.google.crypto.tink.internal.KeyTypeManager;
import com.google.crypto.tink.internal.PrimitiveFactory;
import com.google.crypto.tink.proto.AesGcmKeyFormat;
import com.google.crypto.tink.proto.KeyData;
import com.google.crypto.tink.shaded.protobuf.ByteString;
import com.google.crypto.tink.shaded.protobuf.ExtensionRegistryLite;
import com.google.crypto.tink.shaded.protobuf.MessageLite;
import com.google.crypto.tink.subtle.AesGcmJce;
import com.google.crypto.tink.subtle.Random;
import com.google.crypto.tink.subtle.Validators;
import java.security.GeneralSecurityException;
import java.security.InvalidAlgorithmParameterException;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class AesGcmKeyManager extends KeyTypeManager<com.google.crypto.tink.proto.AesGcmKey> {

    /* JADX INFO: renamed from: com.google.crypto.tink.aead.AesGcmKeyManager$1, reason: invalid class name */
    class AnonymousClass1 extends PrimitiveFactory<Aead, com.google.crypto.tink.proto.AesGcmKey> {
        @Override // com.google.crypto.tink.internal.PrimitiveFactory
        public final Object a(MessageLite messageLite) {
            return new AesGcmJce(((com.google.crypto.tink.proto.AesGcmKey) messageLite).J().m());
        }
    }

    /* JADX INFO: renamed from: com.google.crypto.tink.aead.AesGcmKeyManager$2, reason: invalid class name */
    class AnonymousClass2 extends KeyTypeManager.KeyFactory<AesGcmKeyFormat, com.google.crypto.tink.proto.AesGcmKey> {
        @Override // com.google.crypto.tink.internal.KeyTypeManager.KeyFactory
        public final MessageLite a(MessageLite messageLite) {
            com.google.crypto.tink.proto.AesGcmKey.Builder builderL = com.google.crypto.tink.proto.AesGcmKey.L();
            byte[] bArrA = Random.a(((AesGcmKeyFormat) messageLite).I());
            ByteString byteStringH = ByteString.h(0, bArrA.length, bArrA);
            builderL.u();
            com.google.crypto.tink.proto.AesGcmKey.I((com.google.crypto.tink.proto.AesGcmKey) builderL.f34188c, byteStringH);
            builderL.u();
            com.google.crypto.tink.proto.AesGcmKey.H((com.google.crypto.tink.proto.AesGcmKey) builderL.f34188c);
            return (com.google.crypto.tink.proto.AesGcmKey) builderL.build();
        }

        @Override // com.google.crypto.tink.internal.KeyTypeManager.KeyFactory
        public final Map b() {
            HashMap map = new HashMap();
            KeyTemplate.OutputPrefixType outputPrefixType = KeyTemplate.OutputPrefixType.TINK;
            map.put("AES128_GCM", AesGcmKeyManager.h(16, outputPrefixType));
            KeyTemplate.OutputPrefixType outputPrefixType2 = KeyTemplate.OutputPrefixType.RAW;
            map.put("AES128_GCM_RAW", AesGcmKeyManager.h(16, outputPrefixType2));
            map.put("AES256_GCM", AesGcmKeyManager.h(32, outputPrefixType));
            map.put("AES256_GCM_RAW", AesGcmKeyManager.h(32, outputPrefixType2));
            return Collections.unmodifiableMap(map);
        }

        @Override // com.google.crypto.tink.internal.KeyTypeManager.KeyFactory
        public final MessageLite c(ByteString byteString) {
            return AesGcmKeyFormat.K(ExtensionRegistryLite.b(), byteString);
        }

        @Override // com.google.crypto.tink.internal.KeyTypeManager.KeyFactory
        public final void d(MessageLite messageLite) throws InvalidAlgorithmParameterException {
            Validators.a(((AesGcmKeyFormat) messageLite).I());
        }
    }

    public AesGcmKeyManager() {
        super(com.google.crypto.tink.proto.AesGcmKey.class, new AnonymousClass1(Aead.class));
    }

    public static KeyTypeManager.KeyFactory.KeyFormat h(int i2, KeyTemplate.OutputPrefixType outputPrefixType) {
        AesGcmKeyFormat.Builder builderJ = AesGcmKeyFormat.J();
        builderJ.u();
        AesGcmKeyFormat.H((AesGcmKeyFormat) builderJ.f34188c, i2);
        return new KeyTypeManager.KeyFactory.KeyFormat((AesGcmKeyFormat) builderJ.build(), outputPrefixType);
    }

    @Override // com.google.crypto.tink.internal.KeyTypeManager
    public final TinkFipsUtil.AlgorithmFipsCompatibility a() {
        return TinkFipsUtil.AlgorithmFipsCompatibility.ALGORITHM_REQUIRES_BORINGCRYPTO;
    }

    @Override // com.google.crypto.tink.internal.KeyTypeManager
    public final String b() {
        return "type.googleapis.com/google.crypto.tink.AesGcmKey";
    }

    @Override // com.google.crypto.tink.internal.KeyTypeManager
    public final KeyTypeManager.KeyFactory d() {
        return new AnonymousClass2(AesGcmKeyFormat.class);
    }

    @Override // com.google.crypto.tink.internal.KeyTypeManager
    public final KeyData.KeyMaterialType e() {
        return KeyData.KeyMaterialType.SYMMETRIC;
    }

    @Override // com.google.crypto.tink.internal.KeyTypeManager
    public final MessageLite f(ByteString byteString) {
        return com.google.crypto.tink.proto.AesGcmKey.M(ExtensionRegistryLite.b(), byteString);
    }

    @Override // com.google.crypto.tink.internal.KeyTypeManager
    public final void g(MessageLite messageLite) throws GeneralSecurityException {
        com.google.crypto.tink.proto.AesGcmKey aesGcmKey = (com.google.crypto.tink.proto.AesGcmKey) messageLite;
        Validators.c(aesGcmKey.K());
        Validators.a(aesGcmKey.J().size());
    }
}
