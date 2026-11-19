package com.google.crypto.tink.daead;

import com.google.crypto.tink.DeterministicAead;
import com.google.crypto.tink.KeyTemplate;
import com.google.crypto.tink.internal.KeyTypeManager;
import com.google.crypto.tink.internal.PrimitiveFactory;
import com.google.crypto.tink.proto.AesSivKey;
import com.google.crypto.tink.proto.AesSivKeyFormat;
import com.google.crypto.tink.proto.KeyData;
import com.google.crypto.tink.shaded.protobuf.ByteString;
import com.google.crypto.tink.shaded.protobuf.ExtensionRegistryLite;
import com.google.crypto.tink.shaded.protobuf.MessageLite;
import com.google.crypto.tink.subtle.AesSiv;
import com.google.crypto.tink.subtle.Random;
import com.google.crypto.tink.subtle.Validators;
import java.security.GeneralSecurityException;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class AesSivKeyManager extends KeyTypeManager<AesSivKey> {

    /* JADX INFO: renamed from: com.google.crypto.tink.daead.AesSivKeyManager$1, reason: invalid class name */
    class AnonymousClass1 extends PrimitiveFactory<DeterministicAead, AesSivKey> {
        @Override // com.google.crypto.tink.internal.PrimitiveFactory
        public final Object a(MessageLite messageLite) {
            return new AesSiv(((AesSivKey) messageLite).J().m());
        }
    }

    /* JADX INFO: renamed from: com.google.crypto.tink.daead.AesSivKeyManager$2, reason: invalid class name */
    class AnonymousClass2 extends KeyTypeManager.KeyFactory<AesSivKeyFormat, AesSivKey> {
        @Override // com.google.crypto.tink.internal.KeyTypeManager.KeyFactory
        public final MessageLite a(MessageLite messageLite) {
            AesSivKey.Builder builderL = AesSivKey.L();
            byte[] bArrA = Random.a(((AesSivKeyFormat) messageLite).I());
            ByteString byteStringH = ByteString.h(0, bArrA.length, bArrA);
            builderL.u();
            AesSivKey.I((AesSivKey) builderL.f34188c, byteStringH);
            builderL.u();
            AesSivKey.H((AesSivKey) builderL.f34188c);
            return (AesSivKey) builderL.build();
        }

        @Override // com.google.crypto.tink.internal.KeyTypeManager.KeyFactory
        public final Map b() {
            HashMap map = new HashMap();
            AesSivKeyFormat.Builder builderJ = AesSivKeyFormat.J();
            builderJ.u();
            AesSivKeyFormat.H((AesSivKeyFormat) builderJ.f34188c);
            map.put("AES256_SIV", new KeyTypeManager.KeyFactory.KeyFormat((AesSivKeyFormat) builderJ.build(), KeyTemplate.OutputPrefixType.TINK));
            AesSivKeyFormat.Builder builderJ2 = AesSivKeyFormat.J();
            builderJ2.u();
            AesSivKeyFormat.H((AesSivKeyFormat) builderJ2.f34188c);
            map.put("AES256_SIV_RAW", new KeyTypeManager.KeyFactory.KeyFormat((AesSivKeyFormat) builderJ2.build(), KeyTemplate.OutputPrefixType.RAW));
            return Collections.unmodifiableMap(map);
        }

        @Override // com.google.crypto.tink.internal.KeyTypeManager.KeyFactory
        public final MessageLite c(ByteString byteString) {
            return AesSivKeyFormat.K(ExtensionRegistryLite.b(), byteString);
        }

        @Override // com.google.crypto.tink.internal.KeyTypeManager.KeyFactory
        public final void d(MessageLite messageLite) throws InvalidAlgorithmParameterException {
            AesSivKeyFormat aesSivKeyFormat = (AesSivKeyFormat) messageLite;
            if (aesSivKeyFormat.I() == 64) {
                return;
            }
            throw new InvalidAlgorithmParameterException("invalid key size: " + aesSivKeyFormat.I() + ". Valid keys must have 64 bytes.");
        }
    }

    public AesSivKeyManager() {
        super(AesSivKey.class, new AnonymousClass1(DeterministicAead.class));
    }

    @Override // com.google.crypto.tink.internal.KeyTypeManager
    public final String b() {
        return "type.googleapis.com/google.crypto.tink.AesSivKey";
    }

    @Override // com.google.crypto.tink.internal.KeyTypeManager
    public final KeyTypeManager.KeyFactory d() {
        return new AnonymousClass2(AesSivKeyFormat.class);
    }

    @Override // com.google.crypto.tink.internal.KeyTypeManager
    public final KeyData.KeyMaterialType e() {
        return KeyData.KeyMaterialType.SYMMETRIC;
    }

    @Override // com.google.crypto.tink.internal.KeyTypeManager
    public final MessageLite f(ByteString byteString) {
        return AesSivKey.M(ExtensionRegistryLite.b(), byteString);
    }

    @Override // com.google.crypto.tink.internal.KeyTypeManager
    public final void g(MessageLite messageLite) throws GeneralSecurityException {
        AesSivKey aesSivKey = (AesSivKey) messageLite;
        Validators.c(aesSivKey.K());
        if (aesSivKey.J().size() == 64) {
            return;
        }
        throw new InvalidKeyException("invalid key size: " + aesSivKey.J().size() + ". Valid keys must have 64 bytes.");
    }
}
