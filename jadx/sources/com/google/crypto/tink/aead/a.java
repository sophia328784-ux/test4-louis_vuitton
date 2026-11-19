package com.google.crypto.tink.aead;

import com.google.crypto.tink.Key;
import com.google.crypto.tink.SecretKeyAccess;
import com.google.crypto.tink.internal.KeyParser;
import com.google.crypto.tink.internal.ParametersSerializer;
import com.google.crypto.tink.internal.ProtoKeySerialization;
import com.google.crypto.tink.shaded.protobuf.ExtensionRegistryLite;
import com.google.crypto.tink.shaded.protobuf.InvalidProtocolBufferException;
import com.google.crypto.tink.util.SecretBytes;
import defpackage.md;
import defpackage.v40;
import java.security.GeneralSecurityException;
import java.security.InvalidAlgorithmParameterException;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class a implements KeyParser.KeyParsingFunction {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f33948a;

    @Override // com.google.crypto.tink.internal.KeyParser.KeyParsingFunction
    public final Key a(ProtoKeySerialization protoKeySerialization) throws GeneralSecurityException {
        int i2 = this.f33948a;
        SecretKeyAccess secretKeyAccess = SecretKeyAccess.f33876a;
        switch (i2) {
            case 0:
                ParametersSerializer parametersSerializer = AesEaxProtoSerialization.f33895a;
                if (!protoKeySerialization.f34017a.equals("type.googleapis.com/google.crypto.tink.AesEaxKey")) {
                    md.n("Wrong type URL in call to AesEaxParameters.parseParameters");
                    return null;
                }
                try {
                    com.google.crypto.tink.proto.AesEaxKey aesEaxKeyO = com.google.crypto.tink.proto.AesEaxKey.O(ExtensionRegistryLite.b(), protoKeySerialization.f34019c);
                    if (aesEaxKeyO.M() != 0) {
                        throw new GeneralSecurityException("Only version 0 keys are accepted");
                    }
                    AesEaxParameters.Builder builder = new AesEaxParameters.Builder();
                    builder.f33889a = null;
                    builder.f33890b = null;
                    builder.f33891c = null;
                    builder.d = AesEaxParameters.Variant.d;
                    int size = aesEaxKeyO.K().size();
                    if (size != 16 && size != 24 && size != 32) {
                        throw new InvalidAlgorithmParameterException(String.format("Invalid key size %d; only 16-byte, 24-byte and 32-byte AES keys are supported", Integer.valueOf(size)));
                    }
                    builder.f33889a = Integer.valueOf(size);
                    int iJ = aesEaxKeyO.L().J();
                    if (iJ != 12 && iJ != 16) {
                        throw new GeneralSecurityException(String.format("Invalid IV size in bytes %d; acceptable values have 12 or 16 bytes", Integer.valueOf(iJ)));
                    }
                    builder.f33890b = Integer.valueOf(iJ);
                    builder.f33891c = 16;
                    builder.d = AesEaxProtoSerialization.a(protoKeySerialization.f34020e);
                    AesEaxParameters aesEaxParametersA = builder.a();
                    AesEaxKey.Builder builder2 = new AesEaxKey.Builder();
                    builder2.f33884b = null;
                    builder2.f33885c = null;
                    builder2.f33883a = aesEaxParametersA;
                    builder2.f33884b = SecretBytes.a(aesEaxKeyO.K().m(), secretKeyAccess);
                    builder2.f33885c = protoKeySerialization.f34021f;
                    return builder2.a();
                } catch (InvalidProtocolBufferException unused) {
                    v40.j("Parsing AesEaxcKey failed");
                    return null;
                }
            case 1:
                ParametersSerializer parametersSerializer2 = AesGcmProtoSerialization.f33911a;
                if (!protoKeySerialization.f34017a.equals("type.googleapis.com/google.crypto.tink.AesGcmKey")) {
                    md.n("Wrong type URL in call to AesGcmParameters.parseParameters");
                    return null;
                }
                try {
                    com.google.crypto.tink.proto.AesGcmKey aesGcmKeyM = com.google.crypto.tink.proto.AesGcmKey.M(ExtensionRegistryLite.b(), protoKeySerialization.f34019c);
                    if (aesGcmKeyM.K() != 0) {
                        throw new GeneralSecurityException("Only version 0 keys are accepted");
                    }
                    AesGcmParameters.Builder builder3 = new AesGcmParameters.Builder();
                    builder3.f33905a = null;
                    builder3.f33906b = null;
                    builder3.f33907c = null;
                    builder3.d = AesGcmParameters.Variant.d;
                    int size2 = aesGcmKeyM.J().size();
                    if (size2 != 16 && size2 != 24 && size2 != 32) {
                        throw new InvalidAlgorithmParameterException(String.format("Invalid key size %d; only 16-byte, 24-byte and 32-byte AES keys are supported", Integer.valueOf(size2)));
                    }
                    builder3.f33905a = Integer.valueOf(size2);
                    builder3.f33906b = 12;
                    builder3.f33907c = 16;
                    builder3.d = AesGcmProtoSerialization.a(protoKeySerialization.f34020e);
                    AesGcmParameters aesGcmParametersA = builder3.a();
                    AesGcmKey.Builder builder4 = new AesGcmKey.Builder();
                    builder4.f33900b = null;
                    builder4.f33901c = null;
                    builder4.f33899a = aesGcmParametersA;
                    builder4.f33900b = SecretBytes.a(aesGcmKeyM.J().m(), secretKeyAccess);
                    builder4.f33901c = protoKeySerialization.f34021f;
                    return builder4.a();
                } catch (InvalidProtocolBufferException unused2) {
                    v40.j("Parsing AesGcmKey failed");
                    return null;
                }
            case 2:
                ParametersSerializer parametersSerializer3 = AesGcmSivProtoSerialization.f33925a;
                if (!protoKeySerialization.f34017a.equals("type.googleapis.com/google.crypto.tink.AesGcmSivKey")) {
                    md.n("Wrong type URL in call to AesGcmSivParameters.parseParameters");
                    return null;
                }
                try {
                    com.google.crypto.tink.proto.AesGcmSivKey aesGcmSivKeyM = com.google.crypto.tink.proto.AesGcmSivKey.M(ExtensionRegistryLite.b(), protoKeySerialization.f34019c);
                    if (aesGcmSivKeyM.K() != 0) {
                        throw new GeneralSecurityException("Only version 0 keys are accepted");
                    }
                    AesGcmSivParameters.Builder builder5 = new AesGcmSivParameters.Builder();
                    builder5.f33920a = null;
                    builder5.f33921b = AesGcmSivParameters.Variant.d;
                    int size3 = aesGcmSivKeyM.J().size();
                    if (size3 != 16 && size3 != 32) {
                        throw new InvalidAlgorithmParameterException(String.format("Invalid key size %d; only 16-byte and 32-byte AES keys are supported", Integer.valueOf(size3)));
                    }
                    builder5.f33920a = Integer.valueOf(size3);
                    builder5.f33921b = AesGcmSivProtoSerialization.a(protoKeySerialization.f34020e);
                    Integer num = builder5.f33920a;
                    if (num == null) {
                        throw new GeneralSecurityException("Key size is not set");
                    }
                    AesGcmSivParameters aesGcmSivParameters = new AesGcmSivParameters(num.intValue(), builder5.f33921b);
                    AesGcmSivKey.Builder builder6 = new AesGcmSivKey.Builder();
                    builder6.f33916b = null;
                    builder6.f33917c = null;
                    builder6.f33915a = aesGcmSivParameters;
                    builder6.f33916b = SecretBytes.a(aesGcmSivKeyM.J().m(), secretKeyAccess);
                    builder6.f33917c = protoKeySerialization.f34021f;
                    return builder6.a();
                } catch (InvalidProtocolBufferException unused3) {
                    v40.j("Parsing AesGcmSivKey failed");
                    return null;
                }
            case 3:
                ParametersSerializer parametersSerializer4 = ChaCha20Poly1305ProtoSerialization.f33933a;
                if (!protoKeySerialization.f34017a.equals("type.googleapis.com/google.crypto.tink.ChaCha20Poly1305Key")) {
                    md.n("Wrong type URL in call to ChaCha20Poly1305Parameters.parseParameters");
                    return null;
                }
                try {
                    com.google.crypto.tink.proto.ChaCha20Poly1305Key chaCha20Poly1305KeyM = com.google.crypto.tink.proto.ChaCha20Poly1305Key.M(ExtensionRegistryLite.b(), protoKeySerialization.f34019c);
                    if (chaCha20Poly1305KeyM.K() == 0) {
                        return ChaCha20Poly1305Key.a(ChaCha20Poly1305ProtoSerialization.a(protoKeySerialization.f34020e), SecretBytes.a(chaCha20Poly1305KeyM.J().m(), secretKeyAccess), protoKeySerialization.f34021f);
                    }
                    throw new GeneralSecurityException("Only version 0 keys are accepted");
                } catch (InvalidProtocolBufferException unused4) {
                    v40.j("Parsing ChaCha20Poly1305Key failed");
                    return null;
                }
            default:
                ParametersSerializer parametersSerializer5 = XChaCha20Poly1305ProtoSerialization.f33944a;
                if (!protoKeySerialization.f34017a.equals("type.googleapis.com/google.crypto.tink.XChaCha20Poly1305Key")) {
                    md.n("Wrong type URL in call to XChaCha20Poly1305Parameters.parseParameters");
                    return null;
                }
                try {
                    com.google.crypto.tink.proto.XChaCha20Poly1305Key xChaCha20Poly1305KeyM = com.google.crypto.tink.proto.XChaCha20Poly1305Key.M(ExtensionRegistryLite.b(), protoKeySerialization.f34019c);
                    if (xChaCha20Poly1305KeyM.K() == 0) {
                        return XChaCha20Poly1305Key.a(XChaCha20Poly1305ProtoSerialization.a(protoKeySerialization.f34020e), SecretBytes.a(xChaCha20Poly1305KeyM.J().m(), secretKeyAccess), protoKeySerialization.f34021f);
                    }
                    throw new GeneralSecurityException("Only version 0 keys are accepted");
                } catch (InvalidProtocolBufferException unused5) {
                    v40.j("Parsing XChaCha20Poly1305Key failed");
                    return null;
                }
        }
    }
}
