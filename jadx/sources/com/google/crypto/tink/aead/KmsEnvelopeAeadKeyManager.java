package com.google.crypto.tink.aead;

import com.google.crypto.tink.Aead;
import com.google.crypto.tink.KmsClients;
import com.google.crypto.tink.internal.KeyTypeManager;
import com.google.crypto.tink.internal.PrimitiveFactory;
import com.google.crypto.tink.proto.KeyData;
import com.google.crypto.tink.proto.KmsEnvelopeAeadKey;
import com.google.crypto.tink.proto.KmsEnvelopeAeadKeyFormat;
import com.google.crypto.tink.shaded.protobuf.ByteString;
import com.google.crypto.tink.shaded.protobuf.ExtensionRegistryLite;
import com.google.crypto.tink.shaded.protobuf.MessageLite;
import com.google.crypto.tink.subtle.Validators;
import defpackage.v40;
import java.security.GeneralSecurityException;

/* JADX INFO: loaded from: classes2.dex */
public class KmsEnvelopeAeadKeyManager extends KeyTypeManager<KmsEnvelopeAeadKey> {

    /* JADX INFO: renamed from: com.google.crypto.tink.aead.KmsEnvelopeAeadKeyManager$1, reason: invalid class name */
    class AnonymousClass1 extends PrimitiveFactory<Aead, KmsEnvelopeAeadKey> {
        @Override // com.google.crypto.tink.internal.PrimitiveFactory
        public final Object a(MessageLite messageLite) {
            KmsEnvelopeAeadKey kmsEnvelopeAeadKey = (KmsEnvelopeAeadKey) messageLite;
            String strJ = kmsEnvelopeAeadKey.J().J();
            return new KmsEnvelopeAead(kmsEnvelopeAeadKey.J().I(), KmsClients.a(strJ).b(strJ));
        }
    }

    /* JADX INFO: renamed from: com.google.crypto.tink.aead.KmsEnvelopeAeadKeyManager$2, reason: invalid class name */
    class AnonymousClass2 extends KeyTypeManager.KeyFactory<KmsEnvelopeAeadKeyFormat, KmsEnvelopeAeadKey> {
        @Override // com.google.crypto.tink.internal.KeyTypeManager.KeyFactory
        public final MessageLite a(MessageLite messageLite) {
            KmsEnvelopeAeadKey.Builder builderL = KmsEnvelopeAeadKey.L();
            builderL.u();
            KmsEnvelopeAeadKey.I((KmsEnvelopeAeadKey) builderL.f34188c, (KmsEnvelopeAeadKeyFormat) messageLite);
            builderL.u();
            KmsEnvelopeAeadKey.H((KmsEnvelopeAeadKey) builderL.f34188c);
            return (KmsEnvelopeAeadKey) builderL.build();
        }

        @Override // com.google.crypto.tink.internal.KeyTypeManager.KeyFactory
        public final MessageLite c(ByteString byteString) {
            return KmsEnvelopeAeadKeyFormat.L(ExtensionRegistryLite.b(), byteString);
        }

        @Override // com.google.crypto.tink.internal.KeyTypeManager.KeyFactory
        public final void d(MessageLite messageLite) throws GeneralSecurityException {
            KmsEnvelopeAeadKeyFormat kmsEnvelopeAeadKeyFormat = (KmsEnvelopeAeadKeyFormat) messageLite;
            if (kmsEnvelopeAeadKeyFormat.J().isEmpty() || !kmsEnvelopeAeadKeyFormat.K()) {
                v40.j("invalid key format: missing KEK URI or DEK template");
            }
        }
    }

    public KmsEnvelopeAeadKeyManager() {
        super(KmsEnvelopeAeadKey.class, new AnonymousClass1(Aead.class));
    }

    @Override // com.google.crypto.tink.internal.KeyTypeManager
    public final String b() {
        return "type.googleapis.com/google.crypto.tink.KmsEnvelopeAeadKey";
    }

    @Override // com.google.crypto.tink.internal.KeyTypeManager
    public final KeyTypeManager.KeyFactory d() {
        return new AnonymousClass2(KmsEnvelopeAeadKeyFormat.class);
    }

    @Override // com.google.crypto.tink.internal.KeyTypeManager
    public final KeyData.KeyMaterialType e() {
        return KeyData.KeyMaterialType.REMOTE;
    }

    @Override // com.google.crypto.tink.internal.KeyTypeManager
    public final MessageLite f(ByteString byteString) {
        return KmsEnvelopeAeadKey.M(ExtensionRegistryLite.b(), byteString);
    }

    @Override // com.google.crypto.tink.internal.KeyTypeManager
    public final void g(MessageLite messageLite) throws GeneralSecurityException {
        Validators.c(((KmsEnvelopeAeadKey) messageLite).K());
    }
}
