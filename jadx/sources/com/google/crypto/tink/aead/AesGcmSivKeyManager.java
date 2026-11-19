package com.google.crypto.tink.aead;

import com.google.crypto.tink.Aead;
import com.google.crypto.tink.KeyTemplate;
import com.google.crypto.tink.aead.subtle.AesGcmSiv;
import com.google.crypto.tink.internal.KeyTypeManager;
import com.google.crypto.tink.internal.PrimitiveFactory;
import com.google.crypto.tink.proto.AesGcmSivKeyFormat;
import com.google.crypto.tink.proto.KeyData;
import com.google.crypto.tink.shaded.protobuf.ByteString;
import com.google.crypto.tink.shaded.protobuf.ExtensionRegistryLite;
import com.google.crypto.tink.shaded.protobuf.MessageLite;
import com.google.crypto.tink.subtle.Random;
import com.google.crypto.tink.subtle.Validators;
import java.security.GeneralSecurityException;
import java.security.InvalidAlgorithmParameterException;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class AesGcmSivKeyManager extends KeyTypeManager<com.google.crypto.tink.proto.AesGcmSivKey> {

    /* JADX INFO: renamed from: com.google.crypto.tink.aead.AesGcmSivKeyManager$1, reason: invalid class name */
    class AnonymousClass1 extends PrimitiveFactory<Aead, com.google.crypto.tink.proto.AesGcmSivKey> {
        @Override // com.google.crypto.tink.internal.PrimitiveFactory
        public final Object a(MessageLite messageLite) {
            return new AesGcmSiv(((com.google.crypto.tink.proto.AesGcmSivKey) messageLite).J().m());
        }
    }

    /* JADX INFO: renamed from: com.google.crypto.tink.aead.AesGcmSivKeyManager$2, reason: invalid class name */
    class AnonymousClass2 extends KeyTypeManager.KeyFactory<AesGcmSivKeyFormat, com.google.crypto.tink.proto.AesGcmSivKey> {
        @Override // com.google.crypto.tink.internal.KeyTypeManager.KeyFactory
        public final MessageLite a(MessageLite messageLite) {
            com.google.crypto.tink.proto.AesGcmSivKey.Builder builderL = com.google.crypto.tink.proto.AesGcmSivKey.L();
            byte[] bArrA = Random.a(((AesGcmSivKeyFormat) messageLite).I());
            ByteString byteStringH = ByteString.h(0, bArrA.length, bArrA);
            builderL.u();
            com.google.crypto.tink.proto.AesGcmSivKey.I((com.google.crypto.tink.proto.AesGcmSivKey) builderL.f34188c, byteStringH);
            builderL.u();
            com.google.crypto.tink.proto.AesGcmSivKey.H((com.google.crypto.tink.proto.AesGcmSivKey) builderL.f34188c);
            return (com.google.crypto.tink.proto.AesGcmSivKey) builderL.build();
        }

        @Override // com.google.crypto.tink.internal.KeyTypeManager.KeyFactory
        public final Map b() {
            HashMap map = new HashMap();
            KeyTemplate.OutputPrefixType outputPrefixType = KeyTemplate.OutputPrefixType.TINK;
            map.put("AES128_GCM_SIV", AesGcmSivKeyManager.h(16, outputPrefixType));
            KeyTemplate.OutputPrefixType outputPrefixType2 = KeyTemplate.OutputPrefixType.RAW;
            map.put("AES128_GCM_SIV_RAW", AesGcmSivKeyManager.h(16, outputPrefixType2));
            map.put("AES256_GCM_SIV", AesGcmSivKeyManager.h(32, outputPrefixType));
            map.put("AES256_GCM_SIV_RAW", AesGcmSivKeyManager.h(32, outputPrefixType2));
            return Collections.unmodifiableMap(map);
        }

        @Override // com.google.crypto.tink.internal.KeyTypeManager.KeyFactory
        public final MessageLite c(ByteString byteString) {
            return AesGcmSivKeyFormat.K(ExtensionRegistryLite.b(), byteString);
        }

        @Override // com.google.crypto.tink.internal.KeyTypeManager.KeyFactory
        public final void d(MessageLite messageLite) throws InvalidAlgorithmParameterException {
            Validators.a(((AesGcmSivKeyFormat) messageLite).I());
        }
    }

    public AesGcmSivKeyManager() {
        super(com.google.crypto.tink.proto.AesGcmSivKey.class, new AnonymousClass1(Aead.class));
    }

    public static KeyTypeManager.KeyFactory.KeyFormat h(int i2, KeyTemplate.OutputPrefixType outputPrefixType) {
        AesGcmSivKeyFormat.Builder builderJ = AesGcmSivKeyFormat.J();
        builderJ.u();
        AesGcmSivKeyFormat.H((AesGcmSivKeyFormat) builderJ.f34188c, i2);
        return new KeyTypeManager.KeyFactory.KeyFormat((AesGcmSivKeyFormat) builderJ.build(), outputPrefixType);
    }

    @Override // com.google.crypto.tink.internal.KeyTypeManager
    public final String b() {
        return "type.googleapis.com/google.crypto.tink.AesGcmSivKey";
    }

    @Override // com.google.crypto.tink.internal.KeyTypeManager
    public final KeyTypeManager.KeyFactory d() {
        return new AnonymousClass2(AesGcmSivKeyFormat.class);
    }

    @Override // com.google.crypto.tink.internal.KeyTypeManager
    public final KeyData.KeyMaterialType e() {
        return KeyData.KeyMaterialType.SYMMETRIC;
    }

    @Override // com.google.crypto.tink.internal.KeyTypeManager
    public final MessageLite f(ByteString byteString) {
        return com.google.crypto.tink.proto.AesGcmSivKey.M(ExtensionRegistryLite.b(), byteString);
    }

    @Override // com.google.crypto.tink.internal.KeyTypeManager
    public final void g(MessageLite messageLite) throws GeneralSecurityException {
        com.google.crypto.tink.proto.AesGcmSivKey aesGcmSivKey = (com.google.crypto.tink.proto.AesGcmSivKey) messageLite;
        Validators.c(aesGcmSivKey.K());
        Validators.a(aesGcmSivKey.J().size());
    }
}
