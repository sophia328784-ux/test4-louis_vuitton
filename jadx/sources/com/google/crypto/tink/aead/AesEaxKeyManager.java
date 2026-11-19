package com.google.crypto.tink.aead;

import com.google.crypto.tink.Aead;
import com.google.crypto.tink.KeyTemplate;
import com.google.crypto.tink.internal.KeyTypeManager;
import com.google.crypto.tink.internal.PrimitiveFactory;
import com.google.crypto.tink.proto.AesEaxKeyFormat;
import com.google.crypto.tink.proto.AesEaxParams;
import com.google.crypto.tink.proto.KeyData;
import com.google.crypto.tink.shaded.protobuf.ByteString;
import com.google.crypto.tink.shaded.protobuf.ExtensionRegistryLite;
import com.google.crypto.tink.shaded.protobuf.MessageLite;
import com.google.crypto.tink.subtle.AesEaxJce;
import com.google.crypto.tink.subtle.Random;
import com.google.crypto.tink.subtle.Validators;
import defpackage.v40;
import java.security.GeneralSecurityException;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class AesEaxKeyManager extends KeyTypeManager<com.google.crypto.tink.proto.AesEaxKey> {

    /* JADX INFO: renamed from: com.google.crypto.tink.aead.AesEaxKeyManager$1, reason: invalid class name */
    class AnonymousClass1 extends PrimitiveFactory<Aead, com.google.crypto.tink.proto.AesEaxKey> {
        @Override // com.google.crypto.tink.internal.PrimitiveFactory
        public final Object a(MessageLite messageLite) {
            com.google.crypto.tink.proto.AesEaxKey aesEaxKey = (com.google.crypto.tink.proto.AesEaxKey) messageLite;
            return new AesEaxJce(aesEaxKey.K().m(), aesEaxKey.L().J());
        }
    }

    /* JADX INFO: renamed from: com.google.crypto.tink.aead.AesEaxKeyManager$2, reason: invalid class name */
    class AnonymousClass2 extends KeyTypeManager.KeyFactory<AesEaxKeyFormat, com.google.crypto.tink.proto.AesEaxKey> {
        @Override // com.google.crypto.tink.internal.KeyTypeManager.KeyFactory
        public final MessageLite a(MessageLite messageLite) {
            AesEaxKeyFormat aesEaxKeyFormat = (AesEaxKeyFormat) messageLite;
            com.google.crypto.tink.proto.AesEaxKey.Builder builderN = com.google.crypto.tink.proto.AesEaxKey.N();
            byte[] bArrA = Random.a(aesEaxKeyFormat.J());
            ByteString byteStringH = ByteString.h(0, bArrA.length, bArrA);
            builderN.u();
            com.google.crypto.tink.proto.AesEaxKey.J((com.google.crypto.tink.proto.AesEaxKey) builderN.f34188c, byteStringH);
            AesEaxParams aesEaxParamsK = aesEaxKeyFormat.K();
            builderN.u();
            com.google.crypto.tink.proto.AesEaxKey.I((com.google.crypto.tink.proto.AesEaxKey) builderN.f34188c, aesEaxParamsK);
            builderN.u();
            com.google.crypto.tink.proto.AesEaxKey.H((com.google.crypto.tink.proto.AesEaxKey) builderN.f34188c);
            return (com.google.crypto.tink.proto.AesEaxKey) builderN.build();
        }

        @Override // com.google.crypto.tink.internal.KeyTypeManager.KeyFactory
        public final Map b() {
            HashMap map = new HashMap();
            KeyTemplate.OutputPrefixType outputPrefixType = KeyTemplate.OutputPrefixType.TINK;
            map.put("AES128_EAX", AesEaxKeyManager.h(16, outputPrefixType));
            KeyTemplate.OutputPrefixType outputPrefixType2 = KeyTemplate.OutputPrefixType.RAW;
            map.put("AES128_EAX_RAW", AesEaxKeyManager.h(16, outputPrefixType2));
            map.put("AES256_EAX", AesEaxKeyManager.h(32, outputPrefixType));
            map.put("AES256_EAX_RAW", AesEaxKeyManager.h(32, outputPrefixType2));
            return Collections.unmodifiableMap(map);
        }

        @Override // com.google.crypto.tink.internal.KeyTypeManager.KeyFactory
        public final MessageLite c(ByteString byteString) {
            return AesEaxKeyFormat.M(ExtensionRegistryLite.b(), byteString);
        }

        @Override // com.google.crypto.tink.internal.KeyTypeManager.KeyFactory
        public final void d(MessageLite messageLite) throws GeneralSecurityException {
            AesEaxKeyFormat aesEaxKeyFormat = (AesEaxKeyFormat) messageLite;
            Validators.a(aesEaxKeyFormat.J());
            if (aesEaxKeyFormat.K().J() == 12 || aesEaxKeyFormat.K().J() == 16) {
                return;
            }
            v40.j("invalid IV size; acceptable values have 12 or 16 bytes");
        }
    }

    public AesEaxKeyManager() {
        super(com.google.crypto.tink.proto.AesEaxKey.class, new AnonymousClass1(Aead.class));
    }

    public static KeyTypeManager.KeyFactory.KeyFormat h(int i2, KeyTemplate.OutputPrefixType outputPrefixType) {
        AesEaxKeyFormat.Builder builderL = AesEaxKeyFormat.L();
        builderL.u();
        AesEaxKeyFormat.I((AesEaxKeyFormat) builderL.f34188c, i2);
        AesEaxParams.Builder builderK = AesEaxParams.K();
        builderK.u();
        AesEaxParams.H((AesEaxParams) builderK.f34188c);
        AesEaxParams aesEaxParams = (AesEaxParams) builderK.build();
        builderL.u();
        AesEaxKeyFormat.H((AesEaxKeyFormat) builderL.f34188c, aesEaxParams);
        return new KeyTypeManager.KeyFactory.KeyFormat((AesEaxKeyFormat) builderL.build(), outputPrefixType);
    }

    @Override // com.google.crypto.tink.internal.KeyTypeManager
    public final String b() {
        return "type.googleapis.com/google.crypto.tink.AesEaxKey";
    }

    @Override // com.google.crypto.tink.internal.KeyTypeManager
    public final KeyTypeManager.KeyFactory d() {
        return new AnonymousClass2(AesEaxKeyFormat.class);
    }

    @Override // com.google.crypto.tink.internal.KeyTypeManager
    public final KeyData.KeyMaterialType e() {
        return KeyData.KeyMaterialType.SYMMETRIC;
    }

    @Override // com.google.crypto.tink.internal.KeyTypeManager
    public final MessageLite f(ByteString byteString) {
        return com.google.crypto.tink.proto.AesEaxKey.O(ExtensionRegistryLite.b(), byteString);
    }

    @Override // com.google.crypto.tink.internal.KeyTypeManager
    public final void g(MessageLite messageLite) throws GeneralSecurityException {
        com.google.crypto.tink.proto.AesEaxKey aesEaxKey = (com.google.crypto.tink.proto.AesEaxKey) messageLite;
        Validators.c(aesEaxKey.M());
        Validators.a(aesEaxKey.K().size());
        if (aesEaxKey.L().J() == 12 || aesEaxKey.L().J() == 16) {
            return;
        }
        v40.j("invalid IV size; acceptable values have 12 or 16 bytes");
    }
}
