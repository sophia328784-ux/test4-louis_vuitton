package com.google.crypto.tink.aead;

import com.google.crypto.tink.Aead;
import com.google.crypto.tink.KeyTemplate;
import com.google.crypto.tink.Mac;
import com.google.crypto.tink.config.internal.TinkFipsUtil;
import com.google.crypto.tink.internal.KeyTypeManager;
import com.google.crypto.tink.internal.PrimitiveFactory;
import com.google.crypto.tink.mac.HmacKeyManager;
import com.google.crypto.tink.proto.AesCtrHmacAeadKey;
import com.google.crypto.tink.proto.AesCtrHmacAeadKeyFormat;
import com.google.crypto.tink.proto.AesCtrKey;
import com.google.crypto.tink.proto.AesCtrKeyFormat;
import com.google.crypto.tink.proto.AesCtrParams;
import com.google.crypto.tink.proto.HashType;
import com.google.crypto.tink.proto.HmacKey;
import com.google.crypto.tink.proto.HmacKeyFormat;
import com.google.crypto.tink.proto.HmacParams;
import com.google.crypto.tink.proto.KeyData;
import com.google.crypto.tink.shaded.protobuf.ByteString;
import com.google.crypto.tink.shaded.protobuf.ExtensionRegistryLite;
import com.google.crypto.tink.shaded.protobuf.MessageLite;
import com.google.crypto.tink.subtle.EncryptThenAuthenticate;
import com.google.crypto.tink.subtle.IndCpaCipher;
import com.google.crypto.tink.subtle.Validators;
import defpackage.v40;
import java.security.GeneralSecurityException;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class AesCtrHmacAeadKeyManager extends KeyTypeManager<AesCtrHmacAeadKey> {

    /* JADX INFO: renamed from: com.google.crypto.tink.aead.AesCtrHmacAeadKeyManager$1, reason: invalid class name */
    class AnonymousClass1 extends PrimitiveFactory<Aead, AesCtrHmacAeadKey> {
        @Override // com.google.crypto.tink.internal.PrimitiveFactory
        public final Object a(MessageLite messageLite) {
            AesCtrHmacAeadKey aesCtrHmacAeadKey = (AesCtrHmacAeadKey) messageLite;
            return new EncryptThenAuthenticate((IndCpaCipher) new AesCtrKeyManager().c(aesCtrHmacAeadKey.K(), IndCpaCipher.class), (Mac) new HmacKeyManager().c(aesCtrHmacAeadKey.L(), Mac.class), aesCtrHmacAeadKey.L().M().L());
        }
    }

    /* JADX INFO: renamed from: com.google.crypto.tink.aead.AesCtrHmacAeadKeyManager$2, reason: invalid class name */
    class AnonymousClass2 extends KeyTypeManager.KeyFactory<AesCtrHmacAeadKeyFormat, AesCtrHmacAeadKey> {
        @Override // com.google.crypto.tink.internal.KeyTypeManager.KeyFactory
        public final MessageLite a(MessageLite messageLite) {
            AesCtrHmacAeadKeyFormat aesCtrHmacAeadKeyFormat = (AesCtrHmacAeadKeyFormat) messageLite;
            AesCtrKey aesCtrKey = (AesCtrKey) new AesCtrKeyManager.AnonymousClass2(new AesCtrKeyManager()).a(aesCtrHmacAeadKeyFormat.J());
            HmacKey hmacKey = (HmacKey) new HmacKeyManager().d().a(aesCtrHmacAeadKeyFormat.K());
            AesCtrHmacAeadKey.Builder builderN = AesCtrHmacAeadKey.N();
            builderN.u();
            AesCtrHmacAeadKey.I((AesCtrHmacAeadKey) builderN.f34188c, aesCtrKey);
            builderN.u();
            AesCtrHmacAeadKey.J((AesCtrHmacAeadKey) builderN.f34188c, hmacKey);
            builderN.u();
            AesCtrHmacAeadKey.H((AesCtrHmacAeadKey) builderN.f34188c);
            return (AesCtrHmacAeadKey) builderN.build();
        }

        @Override // com.google.crypto.tink.internal.KeyTypeManager.KeyFactory
        public final Map b() {
            HashMap map = new HashMap();
            HashType hashType = HashType.SHA256;
            KeyTemplate.OutputPrefixType outputPrefixType = KeyTemplate.OutputPrefixType.TINK;
            map.put("AES128_CTR_HMAC_SHA256", AesCtrHmacAeadKeyManager.h(16, 16, hashType, outputPrefixType));
            KeyTemplate.OutputPrefixType outputPrefixType2 = KeyTemplate.OutputPrefixType.RAW;
            map.put("AES128_CTR_HMAC_SHA256_RAW", AesCtrHmacAeadKeyManager.h(16, 16, hashType, outputPrefixType2));
            map.put("AES256_CTR_HMAC_SHA256", AesCtrHmacAeadKeyManager.h(32, 32, hashType, outputPrefixType));
            map.put("AES256_CTR_HMAC_SHA256_RAW", AesCtrHmacAeadKeyManager.h(32, 32, hashType, outputPrefixType2));
            return Collections.unmodifiableMap(map);
        }

        @Override // com.google.crypto.tink.internal.KeyTypeManager.KeyFactory
        public final MessageLite c(ByteString byteString) {
            return AesCtrHmacAeadKeyFormat.M(ExtensionRegistryLite.b(), byteString);
        }

        @Override // com.google.crypto.tink.internal.KeyTypeManager.KeyFactory
        public final void d(MessageLite messageLite) throws GeneralSecurityException {
            AesCtrHmacAeadKeyFormat aesCtrHmacAeadKeyFormat = (AesCtrHmacAeadKeyFormat) messageLite;
            new AesCtrKeyManager.AnonymousClass2(new AesCtrKeyManager()).d(aesCtrHmacAeadKeyFormat.J());
            new HmacKeyManager().d().d(aesCtrHmacAeadKeyFormat.K());
            Validators.a(aesCtrHmacAeadKeyFormat.J().K());
        }
    }

    public AesCtrHmacAeadKeyManager() {
        super(AesCtrHmacAeadKey.class, new AnonymousClass1(Aead.class));
    }

    public static KeyTypeManager.KeyFactory.KeyFormat h(int i2, int i3, HashType hashType, KeyTemplate.OutputPrefixType outputPrefixType) {
        AesCtrKeyFormat.Builder builderM = AesCtrKeyFormat.M();
        AesCtrParams.Builder builderK = AesCtrParams.K();
        builderK.u();
        AesCtrParams.H((AesCtrParams) builderK.f34188c);
        AesCtrParams aesCtrParams = (AesCtrParams) builderK.build();
        builderM.u();
        AesCtrKeyFormat.H((AesCtrKeyFormat) builderM.f34188c, aesCtrParams);
        builderM.u();
        AesCtrKeyFormat.I((AesCtrKeyFormat) builderM.f34188c, i2);
        AesCtrKeyFormat aesCtrKeyFormat = (AesCtrKeyFormat) builderM.build();
        HmacKeyFormat.Builder builderM2 = HmacKeyFormat.M();
        HmacParams.Builder builderM3 = HmacParams.M();
        builderM3.u();
        HmacParams.H((HmacParams) builderM3.f34188c, hashType);
        builderM3.u();
        HmacParams.I((HmacParams) builderM3.f34188c, i3);
        HmacParams hmacParams = (HmacParams) builderM3.build();
        builderM2.u();
        HmacKeyFormat.H((HmacKeyFormat) builderM2.f34188c, hmacParams);
        builderM2.u();
        HmacKeyFormat.I((HmacKeyFormat) builderM2.f34188c, 32);
        HmacKeyFormat hmacKeyFormat = (HmacKeyFormat) builderM2.build();
        AesCtrHmacAeadKeyFormat.Builder builderL = AesCtrHmacAeadKeyFormat.L();
        builderL.u();
        AesCtrHmacAeadKeyFormat.H((AesCtrHmacAeadKeyFormat) builderL.f34188c, aesCtrKeyFormat);
        builderL.u();
        AesCtrHmacAeadKeyFormat.I((AesCtrHmacAeadKeyFormat) builderL.f34188c, hmacKeyFormat);
        return new KeyTypeManager.KeyFactory.KeyFormat((AesCtrHmacAeadKeyFormat) builderL.build(), outputPrefixType);
    }

    @Override // com.google.crypto.tink.internal.KeyTypeManager
    public final TinkFipsUtil.AlgorithmFipsCompatibility a() {
        return TinkFipsUtil.AlgorithmFipsCompatibility.ALGORITHM_REQUIRES_BORINGCRYPTO;
    }

    @Override // com.google.crypto.tink.internal.KeyTypeManager
    public final String b() {
        return "type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey";
    }

    @Override // com.google.crypto.tink.internal.KeyTypeManager
    public final KeyTypeManager.KeyFactory d() {
        return new AnonymousClass2(AesCtrHmacAeadKeyFormat.class);
    }

    @Override // com.google.crypto.tink.internal.KeyTypeManager
    public final KeyData.KeyMaterialType e() {
        return KeyData.KeyMaterialType.SYMMETRIC;
    }

    @Override // com.google.crypto.tink.internal.KeyTypeManager
    public final MessageLite f(ByteString byteString) {
        return AesCtrHmacAeadKey.O(ExtensionRegistryLite.b(), byteString);
    }

    @Override // com.google.crypto.tink.internal.KeyTypeManager
    public final void g(MessageLite messageLite) throws GeneralSecurityException {
        AesCtrHmacAeadKey aesCtrHmacAeadKey = (AesCtrHmacAeadKey) messageLite;
        Validators.c(aesCtrHmacAeadKey.M());
        new AesCtrKeyManager();
        AesCtrKey aesCtrKeyK = aesCtrHmacAeadKey.K();
        Validators.c(aesCtrKeyK.N());
        Validators.a(aesCtrKeyK.L().size());
        AesCtrParams aesCtrParamsM = aesCtrKeyK.M();
        if (aesCtrParamsM.J() < 12 || aesCtrParamsM.J() > 16) {
            v40.j("invalid IV size");
        } else {
            new HmacKeyManager();
            HmacKeyManager.i(aesCtrHmacAeadKey.L());
        }
    }
}
