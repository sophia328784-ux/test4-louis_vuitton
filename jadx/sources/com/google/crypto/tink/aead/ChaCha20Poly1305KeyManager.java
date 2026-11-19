package com.google.crypto.tink.aead;

import com.google.crypto.tink.Aead;
import com.google.crypto.tink.KeyTemplate;
import com.google.crypto.tink.internal.KeyTypeManager;
import com.google.crypto.tink.internal.PrimitiveFactory;
import com.google.crypto.tink.proto.ChaCha20Poly1305KeyFormat;
import com.google.crypto.tink.proto.KeyData;
import com.google.crypto.tink.shaded.protobuf.ByteString;
import com.google.crypto.tink.shaded.protobuf.ExtensionRegistryLite;
import com.google.crypto.tink.shaded.protobuf.MessageLite;
import com.google.crypto.tink.subtle.ChaCha20Poly1305;
import com.google.crypto.tink.subtle.Random;
import com.google.crypto.tink.subtle.Validators;
import defpackage.v40;
import java.security.GeneralSecurityException;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class ChaCha20Poly1305KeyManager extends KeyTypeManager<com.google.crypto.tink.proto.ChaCha20Poly1305Key> {

    /* JADX INFO: renamed from: com.google.crypto.tink.aead.ChaCha20Poly1305KeyManager$1, reason: invalid class name */
    class AnonymousClass1 extends PrimitiveFactory<Aead, com.google.crypto.tink.proto.ChaCha20Poly1305Key> {
        @Override // com.google.crypto.tink.internal.PrimitiveFactory
        public final Object a(MessageLite messageLite) {
            return new ChaCha20Poly1305(((com.google.crypto.tink.proto.ChaCha20Poly1305Key) messageLite).J().m());
        }
    }

    /* JADX INFO: renamed from: com.google.crypto.tink.aead.ChaCha20Poly1305KeyManager$2, reason: invalid class name */
    class AnonymousClass2 extends KeyTypeManager.KeyFactory<ChaCha20Poly1305KeyFormat, com.google.crypto.tink.proto.ChaCha20Poly1305Key> {
        @Override // com.google.crypto.tink.internal.KeyTypeManager.KeyFactory
        public final MessageLite a(MessageLite messageLite) {
            com.google.crypto.tink.proto.ChaCha20Poly1305Key.Builder builderL = com.google.crypto.tink.proto.ChaCha20Poly1305Key.L();
            builderL.u();
            com.google.crypto.tink.proto.ChaCha20Poly1305Key.H((com.google.crypto.tink.proto.ChaCha20Poly1305Key) builderL.f34188c);
            byte[] bArrA = Random.a(32);
            ByteString byteStringH = ByteString.h(0, bArrA.length, bArrA);
            builderL.u();
            com.google.crypto.tink.proto.ChaCha20Poly1305Key.I((com.google.crypto.tink.proto.ChaCha20Poly1305Key) builderL.f34188c, byteStringH);
            return (com.google.crypto.tink.proto.ChaCha20Poly1305Key) builderL.build();
        }

        @Override // com.google.crypto.tink.internal.KeyTypeManager.KeyFactory
        public final Map b() {
            HashMap map = new HashMap();
            map.put("CHACHA20_POLY1305", new KeyTypeManager.KeyFactory.KeyFormat(ChaCha20Poly1305KeyFormat.H(), KeyTemplate.OutputPrefixType.TINK));
            map.put("CHACHA20_POLY1305_RAW", new KeyTypeManager.KeyFactory.KeyFormat(ChaCha20Poly1305KeyFormat.H(), KeyTemplate.OutputPrefixType.RAW));
            return Collections.unmodifiableMap(map);
        }

        @Override // com.google.crypto.tink.internal.KeyTypeManager.KeyFactory
        public final MessageLite c(ByteString byteString) {
            return ChaCha20Poly1305KeyFormat.I(ExtensionRegistryLite.b(), byteString);
        }

        @Override // com.google.crypto.tink.internal.KeyTypeManager.KeyFactory
        public final /* bridge */ /* synthetic */ void d(MessageLite messageLite) {
        }
    }

    public ChaCha20Poly1305KeyManager() {
        super(com.google.crypto.tink.proto.ChaCha20Poly1305Key.class, new AnonymousClass1(Aead.class));
    }

    @Override // com.google.crypto.tink.internal.KeyTypeManager
    public final String b() {
        return "type.googleapis.com/google.crypto.tink.ChaCha20Poly1305Key";
    }

    @Override // com.google.crypto.tink.internal.KeyTypeManager
    public final KeyTypeManager.KeyFactory d() {
        return new AnonymousClass2(ChaCha20Poly1305KeyFormat.class);
    }

    @Override // com.google.crypto.tink.internal.KeyTypeManager
    public final KeyData.KeyMaterialType e() {
        return KeyData.KeyMaterialType.SYMMETRIC;
    }

    @Override // com.google.crypto.tink.internal.KeyTypeManager
    public final MessageLite f(ByteString byteString) {
        return com.google.crypto.tink.proto.ChaCha20Poly1305Key.M(ExtensionRegistryLite.b(), byteString);
    }

    @Override // com.google.crypto.tink.internal.KeyTypeManager
    public final void g(MessageLite messageLite) throws GeneralSecurityException {
        com.google.crypto.tink.proto.ChaCha20Poly1305Key chaCha20Poly1305Key = (com.google.crypto.tink.proto.ChaCha20Poly1305Key) messageLite;
        Validators.c(chaCha20Poly1305Key.K());
        if (chaCha20Poly1305Key.J().size() == 32) {
            return;
        }
        v40.j("invalid ChaCha20Poly1305Key: incorrect key length");
    }
}
