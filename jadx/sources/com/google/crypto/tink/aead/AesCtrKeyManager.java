package com.google.crypto.tink.aead;

import com.google.crypto.tink.internal.KeyTypeManager;
import com.google.crypto.tink.internal.PrimitiveFactory;
import com.google.crypto.tink.proto.AesCtrKey;
import com.google.crypto.tink.proto.AesCtrKeyFormat;
import com.google.crypto.tink.proto.AesCtrParams;
import com.google.crypto.tink.proto.KeyData;
import com.google.crypto.tink.shaded.protobuf.ByteString;
import com.google.crypto.tink.shaded.protobuf.ExtensionRegistryLite;
import com.google.crypto.tink.shaded.protobuf.MessageLite;
import com.google.crypto.tink.subtle.AesCtrJceCipher;
import com.google.crypto.tink.subtle.IndCpaCipher;
import com.google.crypto.tink.subtle.Random;
import com.google.crypto.tink.subtle.Validators;
import defpackage.v40;
import java.security.GeneralSecurityException;

/* JADX INFO: loaded from: classes2.dex */
public class AesCtrKeyManager extends KeyTypeManager<AesCtrKey> {

    /* JADX INFO: renamed from: com.google.crypto.tink.aead.AesCtrKeyManager$1, reason: invalid class name */
    class AnonymousClass1 extends PrimitiveFactory<IndCpaCipher, AesCtrKey> {
        @Override // com.google.crypto.tink.internal.PrimitiveFactory
        public final Object a(MessageLite messageLite) {
            AesCtrKey aesCtrKey = (AesCtrKey) messageLite;
            return new AesCtrJceCipher(aesCtrKey.L().m(), aesCtrKey.M().J());
        }
    }

    /* JADX INFO: renamed from: com.google.crypto.tink.aead.AesCtrKeyManager$2, reason: invalid class name */
    class AnonymousClass2 extends KeyTypeManager.KeyFactory<AesCtrKeyFormat, AesCtrKey> {
        public AnonymousClass2(AesCtrKeyManager aesCtrKeyManager) {
            super(AesCtrKeyFormat.class);
        }

        @Override // com.google.crypto.tink.internal.KeyTypeManager.KeyFactory
        public final MessageLite a(MessageLite messageLite) {
            AesCtrKeyFormat aesCtrKeyFormat = (AesCtrKeyFormat) messageLite;
            AesCtrKey.Builder builderO = AesCtrKey.O();
            AesCtrParams aesCtrParamsL = aesCtrKeyFormat.L();
            builderO.u();
            AesCtrKey.I((AesCtrKey) builderO.f34188c, aesCtrParamsL);
            byte[] bArrA = Random.a(aesCtrKeyFormat.K());
            ByteString byteStringH = ByteString.h(0, bArrA.length, bArrA);
            builderO.u();
            AesCtrKey.J((AesCtrKey) builderO.f34188c, byteStringH);
            builderO.u();
            AesCtrKey.H((AesCtrKey) builderO.f34188c);
            return (AesCtrKey) builderO.build();
        }

        @Override // com.google.crypto.tink.internal.KeyTypeManager.KeyFactory
        public final MessageLite c(ByteString byteString) {
            return AesCtrKeyFormat.N(ExtensionRegistryLite.b(), byteString);
        }

        @Override // com.google.crypto.tink.internal.KeyTypeManager.KeyFactory
        public final void d(MessageLite messageLite) throws GeneralSecurityException {
            AesCtrKeyFormat aesCtrKeyFormat = (AesCtrKeyFormat) messageLite;
            Validators.a(aesCtrKeyFormat.K());
            AesCtrParams aesCtrParamsL = aesCtrKeyFormat.L();
            if (aesCtrParamsL.J() < 12 || aesCtrParamsL.J() > 16) {
                v40.j("invalid IV size");
            }
        }
    }

    public AesCtrKeyManager() {
        super(AesCtrKey.class, new AnonymousClass1(IndCpaCipher.class));
    }

    @Override // com.google.crypto.tink.internal.KeyTypeManager
    public final String b() {
        return "type.googleapis.com/google.crypto.tink.AesCtrKey";
    }

    @Override // com.google.crypto.tink.internal.KeyTypeManager
    public final KeyTypeManager.KeyFactory d() {
        return new AnonymousClass2(this);
    }

    @Override // com.google.crypto.tink.internal.KeyTypeManager
    public final KeyData.KeyMaterialType e() {
        return KeyData.KeyMaterialType.SYMMETRIC;
    }

    @Override // com.google.crypto.tink.internal.KeyTypeManager
    public final MessageLite f(ByteString byteString) {
        return AesCtrKey.P(ExtensionRegistryLite.b(), byteString);
    }

    @Override // com.google.crypto.tink.internal.KeyTypeManager
    public final void g(MessageLite messageLite) throws GeneralSecurityException {
        AesCtrKey aesCtrKey = (AesCtrKey) messageLite;
        Validators.c(aesCtrKey.N());
        Validators.a(aesCtrKey.L().size());
        AesCtrParams aesCtrParamsM = aesCtrKey.M();
        if (aesCtrParamsM.J() < 12 || aesCtrParamsM.J() > 16) {
            v40.j("invalid IV size");
        }
    }
}
