package com.google.crypto.tink.mac;

import com.google.crypto.tink.Key;
import com.google.crypto.tink.SecretKeyAccess;
import com.google.crypto.tink.internal.KeyParser;
import com.google.crypto.tink.internal.ParametersSerializer;
import com.google.crypto.tink.internal.ProtoKeySerialization;
import com.google.crypto.tink.shaded.protobuf.ExtensionRegistryLite;
import com.google.crypto.tink.shaded.protobuf.InvalidProtocolBufferException;
import com.google.crypto.tink.util.SecretBytes;
import defpackage.md;
import defpackage.pq0;
import defpackage.v40;
import java.security.GeneralSecurityException;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class a implements KeyParser.KeyParsingFunction {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f34085a;

    @Override // com.google.crypto.tink.internal.KeyParser.KeyParsingFunction
    public final Key a(ProtoKeySerialization protoKeySerialization) throws GeneralSecurityException {
        int i2 = this.f34085a;
        SecretKeyAccess secretKeyAccess = SecretKeyAccess.f33876a;
        switch (i2) {
            case 0:
                ParametersSerializer parametersSerializer = AesCmacProtoSerialization.f34048a;
                if (!protoKeySerialization.f34017a.equals("type.googleapis.com/google.crypto.tink.AesCmacKey")) {
                    md.n("Wrong type URL in call to AesCmacParameters.parseParameters");
                    return null;
                }
                try {
                    com.google.crypto.tink.proto.AesCmacKey aesCmacKeyO = com.google.crypto.tink.proto.AesCmacKey.O(ExtensionRegistryLite.b(), protoKeySerialization.f34019c);
                    if (aesCmacKeyO.M() != 0) {
                        throw new GeneralSecurityException("Only version 0 keys are accepted");
                    }
                    AesCmacParameters.Builder builder = new AesCmacParameters.Builder();
                    builder.f34041a = null;
                    builder.f34042b = null;
                    builder.f34043c = AesCmacParameters.Variant.f34046e;
                    builder.b(aesCmacKeyO.K().size());
                    int iJ = aesCmacKeyO.L().J();
                    if (iJ < 10 || 16 < iJ) {
                        throw new GeneralSecurityException(pq0.k(iJ, "Invalid tag size for AesCmacParameters: "));
                    }
                    builder.f34042b = Integer.valueOf(iJ);
                    builder.f34043c = AesCmacProtoSerialization.a(protoKeySerialization.f34020e);
                    AesCmacParameters aesCmacParametersA = builder.a();
                    AesCmacKey.Builder builder2 = new AesCmacKey.Builder();
                    builder2.f34036b = null;
                    builder2.f34037c = null;
                    builder2.f34035a = aesCmacParametersA;
                    builder2.f34036b = SecretBytes.a(aesCmacKeyO.K().m(), secretKeyAccess);
                    builder2.f34037c = protoKeySerialization.f34021f;
                    return builder2.a();
                } catch (InvalidProtocolBufferException | IllegalArgumentException unused) {
                    v40.j("Parsing AesCmacKey failed");
                    return null;
                }
            default:
                ParametersSerializer parametersSerializer2 = HmacProtoSerialization.f34074a;
                if (!protoKeySerialization.f34017a.equals("type.googleapis.com/google.crypto.tink.HmacKey")) {
                    md.n("Wrong type URL in call to HmacProtoSerialization.parseKey");
                    return null;
                }
                try {
                    com.google.crypto.tink.proto.HmacKey hmacKeyP = com.google.crypto.tink.proto.HmacKey.P(ExtensionRegistryLite.b(), protoKeySerialization.f34019c);
                    if (hmacKeyP.N() != 0) {
                        throw new GeneralSecurityException("Only version 0 keys are accepted");
                    }
                    HmacParameters.Builder builder3 = new HmacParameters.Builder();
                    builder3.f34062a = null;
                    builder3.f34063b = null;
                    builder3.f34064c = null;
                    builder3.d = HmacParameters.Variant.f34072e;
                    builder3.f34062a = Integer.valueOf(hmacKeyP.L().size());
                    builder3.f34063b = Integer.valueOf(hmacKeyP.M().L());
                    builder3.f34064c = HmacProtoSerialization.a(hmacKeyP.M().K());
                    builder3.d = HmacProtoSerialization.b(protoKeySerialization.f34020e);
                    HmacParameters hmacParametersA = builder3.a();
                    HmacKey.Builder builder4 = new HmacKey.Builder();
                    builder4.f34056b = null;
                    builder4.f34057c = null;
                    builder4.f34055a = hmacParametersA;
                    builder4.f34056b = SecretBytes.a(hmacKeyP.L().m(), secretKeyAccess);
                    builder4.f34057c = protoKeySerialization.f34021f;
                    return builder4.a();
                } catch (InvalidProtocolBufferException | IllegalArgumentException unused2) {
                    v40.j("Parsing HmacKey failed");
                    return null;
                }
        }
    }
}
