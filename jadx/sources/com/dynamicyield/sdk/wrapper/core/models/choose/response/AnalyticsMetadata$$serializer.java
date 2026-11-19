package com.dynamicyield.sdk.wrapper.core.models.choose.response;

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
import kotlinx.serialization.internal.IntSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import kotlinx.serialization.internal.StringSerializer;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001R\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"com/dynamicyield/sdk/wrapper/core/models/choose/response/AnalyticsMetadata.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/AnalyticsMetadata;", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "a", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", "DY-Sdk_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
@Deprecated
public /* synthetic */ class AnalyticsMetadata$$serializer implements GeneratedSerializer<AnalyticsMetadata> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final AnalyticsMetadata$$serializer f26046a;
    private static final SerialDescriptor descriptor;

    static {
        AnalyticsMetadata$$serializer analyticsMetadata$$serializer = new AnalyticsMetadata$$serializer();
        f26046a = analyticsMetadata$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.dynamicyield.sdk.wrapper.core.models.choose.response.AnalyticsMetadata", analyticsMetadata$$serializer, 6);
        pluginGeneratedSerialDescriptor.k("campaignId", true);
        pluginGeneratedSerialDescriptor.k("campaignName", true);
        pluginGeneratedSerialDescriptor.k("experienceId", true);
        pluginGeneratedSerialDescriptor.k("experienceName", true);
        pluginGeneratedSerialDescriptor.k("variationId", true);
        pluginGeneratedSerialDescriptor.k("variationName", true);
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
        Integer num = null;
        String str = null;
        Integer num2 = null;
        String str2 = null;
        Integer num3 = null;
        String str3 = null;
        while (z) {
            int iN = compositeDecoderB.n(serialDescriptor);
            switch (iN) {
                case -1:
                    z = false;
                    break;
                case 0:
                    num = (Integer) compositeDecoderB.m(serialDescriptor, 0, IntSerializer.f75624a, num);
                    i2 |= 1;
                    break;
                case 1:
                    str = (String) compositeDecoderB.m(serialDescriptor, 1, StringSerializer.f75684a, str);
                    i2 |= 2;
                    break;
                case 2:
                    num2 = (Integer) compositeDecoderB.m(serialDescriptor, 2, IntSerializer.f75624a, num2);
                    i2 |= 4;
                    break;
                case 3:
                    str2 = (String) compositeDecoderB.m(serialDescriptor, 3, StringSerializer.f75684a, str2);
                    i2 |= 8;
                    break;
                case 4:
                    num3 = (Integer) compositeDecoderB.m(serialDescriptor, 4, IntSerializer.f75624a, num3);
                    i2 |= 16;
                    break;
                case 5:
                    str3 = (String) compositeDecoderB.m(serialDescriptor, 5, StringSerializer.f75684a, str3);
                    i2 |= 32;
                    break;
                default:
                    b21.l(iN);
                    return null;
            }
        }
        compositeDecoderB.c(serialDescriptor);
        return new AnalyticsMetadata(i2, num, str, num2, str2, num3, str3, (SerializationConstructorMarker) null);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        AnalyticsMetadata analyticsMetadata = (AnalyticsMetadata) obj;
        analyticsMetadata.getClass();
        String str = analyticsMetadata.f26045f;
        Integer num = analyticsMetadata.f26044e;
        String str2 = analyticsMetadata.d;
        Integer num2 = analyticsMetadata.f26043c;
        String str3 = analyticsMetadata.f26042b;
        Integer num3 = analyticsMetadata.f26041a;
        SerialDescriptor serialDescriptor = descriptor;
        CompositeEncoder compositeEncoderB = encoder.b(serialDescriptor);
        if (compositeEncoderB.o(serialDescriptor) || num3 != null) {
            compositeEncoderB.h(serialDescriptor, 0, IntSerializer.f75624a, num3);
        }
        if (compositeEncoderB.o(serialDescriptor) || str3 != null) {
            compositeEncoderB.h(serialDescriptor, 1, StringSerializer.f75684a, str3);
        }
        if (compositeEncoderB.o(serialDescriptor) || num2 != null) {
            compositeEncoderB.h(serialDescriptor, 2, IntSerializer.f75624a, num2);
        }
        if (compositeEncoderB.o(serialDescriptor) || str2 != null) {
            compositeEncoderB.h(serialDescriptor, 3, StringSerializer.f75684a, str2);
        }
        if (compositeEncoderB.o(serialDescriptor) || num != null) {
            compositeEncoderB.h(serialDescriptor, 4, IntSerializer.f75624a, num);
        }
        if (compositeEncoderB.o(serialDescriptor) || str != null) {
            compositeEncoderB.h(serialDescriptor, 5, StringSerializer.f75684a, str);
        }
        compositeEncoderB.c(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] e() {
        IntSerializer intSerializer = IntSerializer.f75624a;
        KSerializer kSerializerD = BuiltinSerializersKt.d(intSerializer);
        StringSerializer stringSerializer = StringSerializer.f75684a;
        return new KSerializer[]{kSerializerD, BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(intSerializer), BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(intSerializer), BuiltinSerializersKt.d(stringSerializer)};
    }
}
