package com.dynamicyield.sdk.wrapper.core.models.choose.response;

import com.batch.android.s.b;
import com.dynamicyield.sdk.wrapper.core.managers.serialization.customSerialization.CustomJsonPayloadSerializer;
import com.networkbench.agent.impl.harvest.ConfigurationName;
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
import kotlinx.serialization.internal.BooleanSerializer;
import kotlinx.serialization.internal.GeneratedSerializer;
import kotlinx.serialization.internal.IntSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.StringSerializer;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001R\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"com/dynamicyield/sdk/wrapper/core/models/choose/response/CustomVariation.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/CustomVariation;", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "a", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", "DY-Sdk_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
@Deprecated
public /* synthetic */ class CustomVariation$$serializer implements GeneratedSerializer<CustomVariation> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final CustomVariation$$serializer f26081a;
    private static final SerialDescriptor descriptor;

    static {
        CustomVariation$$serializer customVariation$$serializer = new CustomVariation$$serializer();
        f26081a = customVariation$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.dynamicyield.sdk.wrapper.core.models.choose.response.CustomVariation", customVariation$$serializer, 5);
        pluginGeneratedSerialDescriptor.k("decisionId", true);
        pluginGeneratedSerialDescriptor.k("analyticsMetadata", true);
        pluginGeneratedSerialDescriptor.k(b.a.f24015b, false);
        pluginGeneratedSerialDescriptor.k(ConfigurationName.PING_PAYLOAD, false);
        pluginGeneratedSerialDescriptor.k("rolloutFlag", true);
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
        int iJ = 0;
        String str = null;
        AnalyticsMetadata analyticsMetadata = null;
        CustomJsonPayload customJsonPayload = null;
        Boolean bool = null;
        while (z) {
            int iN = compositeDecoderB.n(serialDescriptor);
            if (iN == -1) {
                z = false;
            } else if (iN == 0) {
                str = (String) compositeDecoderB.m(serialDescriptor, 0, StringSerializer.f75684a, str);
                i2 |= 1;
            } else if (iN == 1) {
                analyticsMetadata = (AnalyticsMetadata) compositeDecoderB.m(serialDescriptor, 1, AnalyticsMetadata$$serializer.f26046a, analyticsMetadata);
                i2 |= 2;
            } else if (iN == 2) {
                iJ = compositeDecoderB.j(serialDescriptor, 2);
                i2 |= 4;
            } else if (iN == 3) {
                customJsonPayload = (CustomJsonPayload) compositeDecoderB.w(serialDescriptor, 3, CustomJsonPayloadSerializer.f25947a, customJsonPayload);
                i2 |= 8;
            } else {
                if (iN != 4) {
                    b21.l(iN);
                    return null;
                }
                bool = (Boolean) compositeDecoderB.m(serialDescriptor, 4, BooleanSerializer.f75574a, bool);
                i2 |= 16;
            }
        }
        compositeDecoderB.c(serialDescriptor);
        return new CustomVariation(i2, str, analyticsMetadata, iJ, customJsonPayload, bool, null);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        CustomVariation customVariation = (CustomVariation) obj;
        customVariation.getClass();
        SerialDescriptor serialDescriptor = descriptor;
        CompositeEncoder compositeEncoderB = encoder.b(serialDescriptor);
        Variation.b(customVariation, compositeEncoderB, serialDescriptor);
        int i2 = customVariation.d;
        Boolean bool = customVariation.f26080f;
        compositeEncoderB.u(2, i2, serialDescriptor);
        compositeEncoderB.A(serialDescriptor, 3, CustomJsonPayloadSerializer.f25947a, customVariation.f26079e);
        if (compositeEncoderB.o(serialDescriptor) || bool != null) {
            compositeEncoderB.h(serialDescriptor, 4, BooleanSerializer.f75574a, bool);
        }
        compositeEncoderB.c(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] e() {
        return new KSerializer[]{BuiltinSerializersKt.d(StringSerializer.f75684a), BuiltinSerializersKt.d(AnalyticsMetadata$$serializer.f26046a), IntSerializer.f75624a, CustomJsonPayloadSerializer.f25947a, BuiltinSerializersKt.d(BooleanSerializer.f75574a)};
    }
}
