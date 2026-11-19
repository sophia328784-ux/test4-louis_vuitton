package com.google.crypto.tink.mac;

import com.google.crypto.tink.KeyTemplate;
import com.google.crypto.tink.Mac;
import com.google.crypto.tink.config.internal.TinkFipsUtil;
import com.google.crypto.tink.internal.KeyTypeManager;
import com.google.crypto.tink.internal.PrimitiveConstructor;
import com.google.crypto.tink.internal.PrimitiveFactory;
import com.google.crypto.tink.proto.HashType;
import com.google.crypto.tink.proto.HmacKeyFormat;
import com.google.crypto.tink.proto.HmacParams;
import com.google.crypto.tink.proto.KeyData;
import com.google.crypto.tink.shaded.protobuf.ByteString;
import com.google.crypto.tink.shaded.protobuf.ExtensionRegistryLite;
import com.google.crypto.tink.shaded.protobuf.MessageLite;
import com.google.crypto.tink.subtle.PrfHmacJce;
import com.google.crypto.tink.subtle.PrfMac;
import com.google.crypto.tink.subtle.Random;
import com.google.crypto.tink.subtle.Validators;
import defpackage.az;
import defpackage.v40;
import java.security.GeneralSecurityException;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import javax.crypto.spec.SecretKeySpec;

/* JADX INFO: loaded from: classes2.dex */
public final class HmacKeyManager extends KeyTypeManager<com.google.crypto.tink.proto.HmacKey> {
    public static final PrimitiveConstructor d = PrimitiveConstructor.a(new az(25), HmacKey.class);

    /* JADX INFO: renamed from: com.google.crypto.tink.mac.HmacKeyManager$1, reason: invalid class name */
    public class AnonymousClass1 extends PrimitiveFactory<Mac, com.google.crypto.tink.proto.HmacKey> {
        @Override // com.google.crypto.tink.internal.PrimitiveFactory
        public final Object a(MessageLite messageLite) throws GeneralSecurityException {
            com.google.crypto.tink.proto.HmacKey hmacKey = (com.google.crypto.tink.proto.HmacKey) messageLite;
            HashType hashTypeK = hmacKey.M().K();
            SecretKeySpec secretKeySpec = new SecretKeySpec(hmacKey.L().m(), "HMAC");
            int iL = hmacKey.M().L();
            int i2 = AnonymousClass3.f34058a[hashTypeK.ordinal()];
            if (i2 == 1) {
                return new PrfMac(new PrfHmacJce("HMACSHA1", secretKeySpec), iL);
            }
            if (i2 == 2) {
                return new PrfMac(new PrfHmacJce("HMACSHA224", secretKeySpec), iL);
            }
            if (i2 == 3) {
                return new PrfMac(new PrfHmacJce("HMACSHA256", secretKeySpec), iL);
            }
            if (i2 == 4) {
                return new PrfMac(new PrfHmacJce("HMACSHA384", secretKeySpec), iL);
            }
            if (i2 == 5) {
                return new PrfMac(new PrfHmacJce("HMACSHA512", secretKeySpec), iL);
            }
            v40.j("unknown hash");
            return null;
        }
    }

    /* JADX INFO: renamed from: com.google.crypto.tink.mac.HmacKeyManager$2, reason: invalid class name */
    class AnonymousClass2 extends KeyTypeManager.KeyFactory<HmacKeyFormat, com.google.crypto.tink.proto.HmacKey> {
        @Override // com.google.crypto.tink.internal.KeyTypeManager.KeyFactory
        public final MessageLite a(MessageLite messageLite) {
            HmacKeyFormat hmacKeyFormat = (HmacKeyFormat) messageLite;
            com.google.crypto.tink.proto.HmacKey.Builder builderO = com.google.crypto.tink.proto.HmacKey.O();
            builderO.u();
            com.google.crypto.tink.proto.HmacKey.H((com.google.crypto.tink.proto.HmacKey) builderO.f34188c);
            HmacParams hmacParamsL = hmacKeyFormat.L();
            builderO.u();
            com.google.crypto.tink.proto.HmacKey.I((com.google.crypto.tink.proto.HmacKey) builderO.f34188c, hmacParamsL);
            byte[] bArrA = Random.a(hmacKeyFormat.K());
            ByteString byteStringH = ByteString.h(0, bArrA.length, bArrA);
            builderO.u();
            com.google.crypto.tink.proto.HmacKey.J((com.google.crypto.tink.proto.HmacKey) builderO.f34188c, byteStringH);
            return (com.google.crypto.tink.proto.HmacKey) builderO.build();
        }

        @Override // com.google.crypto.tink.internal.KeyTypeManager.KeyFactory
        public final Map b() {
            HashMap map = new HashMap();
            HashType hashType = HashType.SHA256;
            KeyTemplate.OutputPrefixType outputPrefixType = KeyTemplate.OutputPrefixType.TINK;
            map.put("HMAC_SHA256_128BITTAG", HmacKeyManager.h(32, 16, hashType, outputPrefixType));
            KeyTemplate.OutputPrefixType outputPrefixType2 = KeyTemplate.OutputPrefixType.RAW;
            map.put("HMAC_SHA256_128BITTAG_RAW", HmacKeyManager.h(32, 16, hashType, outputPrefixType2));
            map.put("HMAC_SHA256_256BITTAG", HmacKeyManager.h(32, 32, hashType, outputPrefixType));
            map.put("HMAC_SHA256_256BITTAG_RAW", HmacKeyManager.h(32, 32, hashType, outputPrefixType2));
            HashType hashType2 = HashType.SHA512;
            map.put("HMAC_SHA512_128BITTAG", HmacKeyManager.h(64, 16, hashType2, outputPrefixType));
            map.put("HMAC_SHA512_128BITTAG_RAW", HmacKeyManager.h(64, 16, hashType2, outputPrefixType2));
            map.put("HMAC_SHA512_256BITTAG", HmacKeyManager.h(64, 32, hashType2, outputPrefixType));
            map.put("HMAC_SHA512_256BITTAG_RAW", HmacKeyManager.h(64, 32, hashType2, outputPrefixType2));
            map.put("HMAC_SHA512_512BITTAG", HmacKeyManager.h(64, 64, hashType2, outputPrefixType));
            map.put("HMAC_SHA512_512BITTAG_RAW", HmacKeyManager.h(64, 64, hashType2, outputPrefixType2));
            return Collections.unmodifiableMap(map);
        }

        @Override // com.google.crypto.tink.internal.KeyTypeManager.KeyFactory
        public final MessageLite c(ByteString byteString) {
            return HmacKeyFormat.N(ExtensionRegistryLite.b(), byteString);
        }

        @Override // com.google.crypto.tink.internal.KeyTypeManager.KeyFactory
        public final void d(MessageLite messageLite) throws GeneralSecurityException {
            HmacKeyFormat hmacKeyFormat = (HmacKeyFormat) messageLite;
            if (hmacKeyFormat.K() >= 16) {
                HmacKeyManager.j(hmacKeyFormat.L());
            } else {
                v40.j("key too short");
            }
        }
    }

    /* JADX INFO: renamed from: com.google.crypto.tink.mac.HmacKeyManager$3, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass3 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f34058a;

        static {
            int[] iArr = new int[HashType.values().length];
            f34058a = iArr;
            try {
                iArr[HashType.SHA1.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f34058a[HashType.SHA224.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f34058a[HashType.SHA256.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f34058a[HashType.SHA384.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f34058a[HashType.SHA512.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    public HmacKeyManager() {
        super(com.google.crypto.tink.proto.HmacKey.class, new AnonymousClass1(Mac.class));
    }

    public static KeyTypeManager.KeyFactory.KeyFormat h(int i2, int i3, HashType hashType, KeyTemplate.OutputPrefixType outputPrefixType) {
        HmacKeyFormat.Builder builderM = HmacKeyFormat.M();
        HmacParams.Builder builderM2 = HmacParams.M();
        builderM2.u();
        HmacParams.H((HmacParams) builderM2.f34188c, hashType);
        builderM2.u();
        HmacParams.I((HmacParams) builderM2.f34188c, i3);
        HmacParams hmacParams = (HmacParams) builderM2.build();
        builderM.u();
        HmacKeyFormat.H((HmacKeyFormat) builderM.f34188c, hmacParams);
        builderM.u();
        HmacKeyFormat.I((HmacKeyFormat) builderM.f34188c, i2);
        return new KeyTypeManager.KeyFactory.KeyFormat((HmacKeyFormat) builderM.build(), outputPrefixType);
    }

    public static void i(com.google.crypto.tink.proto.HmacKey hmacKey) throws GeneralSecurityException {
        Validators.c(hmacKey.N());
        if (hmacKey.L().size() >= 16) {
            j(hmacKey.M());
        } else {
            v40.j("key too short");
        }
    }

    public static void j(HmacParams hmacParams) throws GeneralSecurityException {
        if (hmacParams.L() < 10) {
            v40.j("tag size too small");
            return;
        }
        int i2 = AnonymousClass3.f34058a[hmacParams.K().ordinal()];
        if (i2 == 1) {
            if (hmacParams.L() <= 20) {
                return;
            }
            v40.j("tag size too big");
            return;
        }
        if (i2 == 2) {
            if (hmacParams.L() <= 28) {
                return;
            }
            v40.j("tag size too big");
            return;
        }
        if (i2 == 3) {
            if (hmacParams.L() <= 32) {
                return;
            }
            v40.j("tag size too big");
        } else if (i2 == 4) {
            if (hmacParams.L() <= 48) {
                return;
            }
            v40.j("tag size too big");
        } else if (i2 != 5) {
            v40.j("unknown hash type");
        } else {
            if (hmacParams.L() <= 64) {
                return;
            }
            v40.j("tag size too big");
        }
    }

    @Override // com.google.crypto.tink.internal.KeyTypeManager
    public final TinkFipsUtil.AlgorithmFipsCompatibility a() {
        return TinkFipsUtil.AlgorithmFipsCompatibility.ALGORITHM_REQUIRES_BORINGCRYPTO;
    }

    @Override // com.google.crypto.tink.internal.KeyTypeManager
    public final String b() {
        return "type.googleapis.com/google.crypto.tink.HmacKey";
    }

    @Override // com.google.crypto.tink.internal.KeyTypeManager
    public final KeyTypeManager.KeyFactory d() {
        return new AnonymousClass2(HmacKeyFormat.class);
    }

    @Override // com.google.crypto.tink.internal.KeyTypeManager
    public final KeyData.KeyMaterialType e() {
        return KeyData.KeyMaterialType.SYMMETRIC;
    }

    @Override // com.google.crypto.tink.internal.KeyTypeManager
    public final MessageLite f(ByteString byteString) {
        return com.google.crypto.tink.proto.HmacKey.P(ExtensionRegistryLite.b(), byteString);
    }

    @Override // com.google.crypto.tink.internal.KeyTypeManager
    public final /* bridge */ /* synthetic */ void g(MessageLite messageLite) throws GeneralSecurityException {
        i((com.google.crypto.tink.proto.HmacKey) messageLite);
    }
}
