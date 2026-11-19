package com.google.crypto.tink.mac;

import com.google.crypto.tink.KeyTemplate;
import com.google.crypto.tink.Mac;
import com.google.crypto.tink.internal.KeyTypeManager;
import com.google.crypto.tink.internal.PrimitiveConstructor;
import com.google.crypto.tink.internal.PrimitiveFactory;
import com.google.crypto.tink.proto.AesCmacKeyFormat;
import com.google.crypto.tink.proto.AesCmacParams;
import com.google.crypto.tink.proto.KeyData;
import com.google.crypto.tink.shaded.protobuf.ByteString;
import com.google.crypto.tink.shaded.protobuf.ExtensionRegistryLite;
import com.google.crypto.tink.shaded.protobuf.MessageLite;
import com.google.crypto.tink.subtle.PrfAesCmac;
import com.google.crypto.tink.subtle.PrfMac;
import com.google.crypto.tink.subtle.Random;
import com.google.crypto.tink.subtle.Validators;
import defpackage.v40;
import defpackage.x1;
import java.security.GeneralSecurityException;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class AesCmacKeyManager extends KeyTypeManager<com.google.crypto.tink.proto.AesCmacKey> {
    public static final PrimitiveConstructor d = PrimitiveConstructor.a(new x1(14), AesCmacKey.class);

    /* JADX INFO: renamed from: com.google.crypto.tink.mac.AesCmacKeyManager$1, reason: invalid class name */
    class AnonymousClass1 extends PrimitiveFactory<Mac, com.google.crypto.tink.proto.AesCmacKey> {
        @Override // com.google.crypto.tink.internal.PrimitiveFactory
        public final Object a(MessageLite messageLite) {
            com.google.crypto.tink.proto.AesCmacKey aesCmacKey = (com.google.crypto.tink.proto.AesCmacKey) messageLite;
            return new PrfMac(new PrfAesCmac(aesCmacKey.K().m()), aesCmacKey.L().J());
        }
    }

    /* JADX INFO: renamed from: com.google.crypto.tink.mac.AesCmacKeyManager$2, reason: invalid class name */
    class AnonymousClass2 extends KeyTypeManager.KeyFactory<AesCmacKeyFormat, com.google.crypto.tink.proto.AesCmacKey> {
        @Override // com.google.crypto.tink.internal.KeyTypeManager.KeyFactory
        public final MessageLite a(MessageLite messageLite) {
            AesCmacKeyFormat aesCmacKeyFormat = (AesCmacKeyFormat) messageLite;
            com.google.crypto.tink.proto.AesCmacKey.Builder builderN = com.google.crypto.tink.proto.AesCmacKey.N();
            builderN.u();
            com.google.crypto.tink.proto.AesCmacKey.H((com.google.crypto.tink.proto.AesCmacKey) builderN.f34188c);
            byte[] bArrA = Random.a(aesCmacKeyFormat.J());
            ByteString byteStringH = ByteString.h(0, bArrA.length, bArrA);
            builderN.u();
            com.google.crypto.tink.proto.AesCmacKey.I((com.google.crypto.tink.proto.AesCmacKey) builderN.f34188c, byteStringH);
            AesCmacParams aesCmacParamsK = aesCmacKeyFormat.K();
            builderN.u();
            com.google.crypto.tink.proto.AesCmacKey.J((com.google.crypto.tink.proto.AesCmacKey) builderN.f34188c, aesCmacParamsK);
            return (com.google.crypto.tink.proto.AesCmacKey) builderN.build();
        }

        @Override // com.google.crypto.tink.internal.KeyTypeManager.KeyFactory
        public final Map b() {
            HashMap map = new HashMap();
            AesCmacKeyFormat.Builder builderL = AesCmacKeyFormat.L();
            builderL.u();
            AesCmacKeyFormat.H((AesCmacKeyFormat) builderL.f34188c);
            AesCmacParams.Builder builderK = AesCmacParams.K();
            builderK.u();
            AesCmacParams.H((AesCmacParams) builderK.f34188c);
            AesCmacParams aesCmacParams = (AesCmacParams) builderK.build();
            builderL.u();
            AesCmacKeyFormat.I((AesCmacKeyFormat) builderL.f34188c, aesCmacParams);
            AesCmacKeyFormat aesCmacKeyFormat = (AesCmacKeyFormat) builderL.build();
            KeyTemplate.OutputPrefixType outputPrefixType = KeyTemplate.OutputPrefixType.TINK;
            map.put("AES_CMAC", new KeyTypeManager.KeyFactory.KeyFormat(aesCmacKeyFormat, outputPrefixType));
            AesCmacKeyFormat.Builder builderL2 = AesCmacKeyFormat.L();
            builderL2.u();
            AesCmacKeyFormat.H((AesCmacKeyFormat) builderL2.f34188c);
            AesCmacParams.Builder builderK2 = AesCmacParams.K();
            builderK2.u();
            AesCmacParams.H((AesCmacParams) builderK2.f34188c);
            AesCmacParams aesCmacParams2 = (AesCmacParams) builderK2.build();
            builderL2.u();
            AesCmacKeyFormat.I((AesCmacKeyFormat) builderL2.f34188c, aesCmacParams2);
            map.put("AES256_CMAC", new KeyTypeManager.KeyFactory.KeyFormat((AesCmacKeyFormat) builderL2.build(), outputPrefixType));
            AesCmacKeyFormat.Builder builderL3 = AesCmacKeyFormat.L();
            builderL3.u();
            AesCmacKeyFormat.H((AesCmacKeyFormat) builderL3.f34188c);
            AesCmacParams.Builder builderK3 = AesCmacParams.K();
            builderK3.u();
            AesCmacParams.H((AesCmacParams) builderK3.f34188c);
            AesCmacParams aesCmacParams3 = (AesCmacParams) builderK3.build();
            builderL3.u();
            AesCmacKeyFormat.I((AesCmacKeyFormat) builderL3.f34188c, aesCmacParams3);
            map.put("AES256_CMAC_RAW", new KeyTypeManager.KeyFactory.KeyFormat((AesCmacKeyFormat) builderL3.build(), KeyTemplate.OutputPrefixType.RAW));
            return Collections.unmodifiableMap(map);
        }

        @Override // com.google.crypto.tink.internal.KeyTypeManager.KeyFactory
        public final MessageLite c(ByteString byteString) {
            return AesCmacKeyFormat.M(ExtensionRegistryLite.b(), byteString);
        }

        @Override // com.google.crypto.tink.internal.KeyTypeManager.KeyFactory
        public final void d(MessageLite messageLite) throws GeneralSecurityException {
            AesCmacKeyFormat aesCmacKeyFormat = (AesCmacKeyFormat) messageLite;
            AesCmacKeyManager.h(aesCmacKeyFormat.K());
            if (aesCmacKeyFormat.J() == 32) {
                return;
            }
            v40.j("AesCmacKey size wrong, must be 32 bytes");
        }
    }

    public static void h(AesCmacParams aesCmacParams) throws GeneralSecurityException {
        if (aesCmacParams.J() < 10) {
            v40.j("tag size too short");
        } else {
            if (aesCmacParams.J() <= 16) {
                return;
            }
            v40.j("tag size too long");
        }
    }

    @Override // com.google.crypto.tink.internal.KeyTypeManager
    public final String b() {
        return "type.googleapis.com/google.crypto.tink.AesCmacKey";
    }

    @Override // com.google.crypto.tink.internal.KeyTypeManager
    public final KeyTypeManager.KeyFactory d() {
        return new AnonymousClass2(AesCmacKeyFormat.class);
    }

    @Override // com.google.crypto.tink.internal.KeyTypeManager
    public final KeyData.KeyMaterialType e() {
        return KeyData.KeyMaterialType.SYMMETRIC;
    }

    @Override // com.google.crypto.tink.internal.KeyTypeManager
    public final MessageLite f(ByteString byteString) {
        return com.google.crypto.tink.proto.AesCmacKey.O(ExtensionRegistryLite.b(), byteString);
    }

    @Override // com.google.crypto.tink.internal.KeyTypeManager
    public final void g(MessageLite messageLite) throws GeneralSecurityException {
        com.google.crypto.tink.proto.AesCmacKey aesCmacKey = (com.google.crypto.tink.proto.AesCmacKey) messageLite;
        Validators.c(aesCmacKey.M());
        if (aesCmacKey.K().size() == 32) {
            h(aesCmacKey.L());
        } else {
            v40.j("AesCmacKey size wrong, must be 32 bytes");
        }
    }
}
