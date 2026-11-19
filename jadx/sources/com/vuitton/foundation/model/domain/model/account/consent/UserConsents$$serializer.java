package com.vuitton.foundation.model.domain.model.account.consent;

import defpackage.b21;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.builtins.BuiltinSerializersKt;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import kotlinx.serialization.internal.GeneratedSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001R\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"com/vuitton/foundation/model/domain/model/account/consent/UserConsents.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/vuitton/foundation/model/domain/model/account/consent/UserConsents;", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "a", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
@Deprecated
public final /* synthetic */ class UserConsents$$serializer implements GeneratedSerializer<UserConsents> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final UserConsents$$serializer f66294a;
    private static final SerialDescriptor descriptor;

    static {
        UserConsents$$serializer userConsents$$serializer = new UserConsents$$serializer();
        f66294a = userConsents$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vuitton.foundation.model.domain.model.account.consent.UserConsents", userConsents$$serializer, 2);
        pluginGeneratedSerialDescriptor.k("kisa", false);
        pluginGeneratedSerialDescriptor.k("marketing", false);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    @Override // kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    /* JADX INFO: renamed from: a */
    public final SerialDescriptor getF19838b() {
        return descriptor;
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public final Object b(Decoder decoder) {
        decoder.getClass();
        SerialDescriptor serialDescriptor = descriptor;
        CompositeDecoder compositeDecoderB = decoder.b(serialDescriptor);
        boolean z = true;
        int i2 = 0;
        KisaConsents kisaConsents = null;
        MarketingConsents marketingConsents = null;
        while (z) {
            int iN = compositeDecoderB.n(serialDescriptor);
            if (iN == -1) {
                z = false;
            } else if (iN == 0) {
                kisaConsents = (KisaConsents) compositeDecoderB.m(serialDescriptor, 0, KisaConsents$$serializer.f66274a, kisaConsents);
                i2 |= 1;
            } else {
                if (iN != 1) {
                    b21.l(iN);
                    return null;
                }
                marketingConsents = (MarketingConsents) compositeDecoderB.m(serialDescriptor, 1, MarketingConsents$$serializer.f66286a, marketingConsents);
                i2 |= 2;
            }
        }
        compositeDecoderB.c(serialDescriptor);
        return new UserConsents(i2, kisaConsents, marketingConsents, null);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        UserConsents userConsents = (UserConsents) obj;
        userConsents.getClass();
        SerialDescriptor serialDescriptor = descriptor;
        CompositeEncoder compositeEncoderB = encoder.b(serialDescriptor);
        compositeEncoderB.h(serialDescriptor, 0, KisaConsents$$serializer.f66274a, userConsents.f66292a);
        compositeEncoderB.h(serialDescriptor, 1, MarketingConsents$$serializer.f66286a, userConsents.f66293b);
        compositeEncoderB.c(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] e() {
        return new KSerializer[]{BuiltinSerializersKt.d(KisaConsents$$serializer.f66274a), BuiltinSerializersKt.d(MarketingConsents$$serializer.f66286a)};
    }
}
