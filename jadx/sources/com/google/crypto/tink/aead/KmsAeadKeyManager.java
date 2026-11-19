package com.google.crypto.tink.aead;

import com.google.crypto.tink.Aead;
import com.google.crypto.tink.KmsClients;
import com.google.crypto.tink.internal.KeyTypeManager;
import com.google.crypto.tink.internal.PrimitiveFactory;
import com.google.crypto.tink.proto.KeyData;
import com.google.crypto.tink.proto.KmsAeadKey;
import com.google.crypto.tink.proto.KmsAeadKeyFormat;
import com.google.crypto.tink.shaded.protobuf.ByteString;
import com.google.crypto.tink.shaded.protobuf.ExtensionRegistryLite;
import com.google.crypto.tink.shaded.protobuf.MessageLite;
import com.google.crypto.tink.subtle.Validators;
import java.security.GeneralSecurityException;

/* JADX INFO: loaded from: classes2.dex */
public class KmsAeadKeyManager extends KeyTypeManager<KmsAeadKey> {

    /* JADX INFO: renamed from: com.google.crypto.tink.aead.KmsAeadKeyManager$1, reason: invalid class name */
    class AnonymousClass1 extends PrimitiveFactory<Aead, KmsAeadKey> {
        @Override // com.google.crypto.tink.internal.PrimitiveFactory
        public final Object a(MessageLite messageLite) {
            String strI = ((KmsAeadKey) messageLite).J().I();
            return KmsClients.a(strI).b(strI);
        }
    }

    /* JADX INFO: renamed from: com.google.crypto.tink.aead.KmsAeadKeyManager$2, reason: invalid class name */
    class AnonymousClass2 extends KeyTypeManager.KeyFactory<KmsAeadKeyFormat, KmsAeadKey> {
        @Override // com.google.crypto.tink.internal.KeyTypeManager.KeyFactory
        public final MessageLite a(MessageLite messageLite) {
            KmsAeadKey.Builder builderL = KmsAeadKey.L();
            builderL.u();
            KmsAeadKey.I((KmsAeadKey) builderL.f34188c, (KmsAeadKeyFormat) messageLite);
            builderL.u();
            KmsAeadKey.H((KmsAeadKey) builderL.f34188c);
            return (KmsAeadKey) builderL.build();
        }

        @Override // com.google.crypto.tink.internal.KeyTypeManager.KeyFactory
        public final MessageLite c(ByteString byteString) {
            return KmsAeadKeyFormat.J(ExtensionRegistryLite.b(), byteString);
        }

        @Override // com.google.crypto.tink.internal.KeyTypeManager.KeyFactory
        public final /* bridge */ /* synthetic */ void d(MessageLite messageLite) {
        }
    }

    public KmsAeadKeyManager() {
        super(KmsAeadKey.class, new AnonymousClass1(Aead.class));
    }

    @Override // com.google.crypto.tink.internal.KeyTypeManager
    public final String b() {
        return "type.googleapis.com/google.crypto.tink.KmsAeadKey";
    }

    @Override // com.google.crypto.tink.internal.KeyTypeManager
    public final KeyTypeManager.KeyFactory d() {
        return new AnonymousClass2(KmsAeadKeyFormat.class);
    }

    @Override // com.google.crypto.tink.internal.KeyTypeManager
    public final KeyData.KeyMaterialType e() {
        return KeyData.KeyMaterialType.REMOTE;
    }

    @Override // com.google.crypto.tink.internal.KeyTypeManager
    public final MessageLite f(ByteString byteString) {
        return KmsAeadKey.M(ExtensionRegistryLite.b(), byteString);
    }

    @Override // com.google.crypto.tink.internal.KeyTypeManager
    public final void g(MessageLite messageLite) throws GeneralSecurityException {
        Validators.c(((KmsAeadKey) messageLite).K());
    }
}
