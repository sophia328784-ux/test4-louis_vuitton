package com.vuitton.android.data.dto.profile.twist;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
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
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001R\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"com/vuitton/android/data/dto/profile/twist/MarketingConsentsPatchDto.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/vuitton/android/data/dto/profile/twist/MarketingConsentsPatchDto;", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "a", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Deprecated
public final /* synthetic */ class MarketingConsentsPatchDto$$serializer implements GeneratedSerializer<MarketingConsentsPatchDto> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final MarketingConsentsPatchDto$$serializer f46735a;
    private static final SerialDescriptor descriptor;

    static {
        MarketingConsentsPatchDto$$serializer marketingConsentsPatchDto$$serializer = new MarketingConsentsPatchDto$$serializer();
        f46735a = marketingConsentsPatchDto$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vuitton.android.data.dto.profile.twist.MarketingConsentsPatchDto", marketingConsentsPatchDto$$serializer, 7);
        pluginGeneratedSerialDescriptor.k("callConsent", true);
        pluginGeneratedSerialDescriptor.k("mailsConsent", true);
        pluginGeneratedSerialDescriptor.k("newsletterEmailsConsent", true);
        pluginGeneratedSerialDescriptor.k("smsConsent", true);
        pluginGeneratedSerialDescriptor.k("marketingSmsConsent", true);
        pluginGeneratedSerialDescriptor.k("partnerEmailsConsent", true);
        pluginGeneratedSerialDescriptor.k("emailTrackingConsent", true);
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
        Boolean bool = null;
        Boolean bool2 = null;
        Boolean bool3 = null;
        Boolean bool4 = null;
        Boolean bool5 = null;
        Boolean bool6 = null;
        Boolean bool7 = null;
        while (z) {
            int iN = compositeDecoderB.n(serialDescriptor);
            switch (iN) {
                case -1:
                    z = false;
                    break;
                case 0:
                    bool = (Boolean) compositeDecoderB.m(serialDescriptor, 0, BooleanSerializer.f75574a, bool);
                    i2 |= 1;
                    break;
                case 1:
                    bool2 = (Boolean) compositeDecoderB.m(serialDescriptor, 1, BooleanSerializer.f75574a, bool2);
                    i2 |= 2;
                    break;
                case 2:
                    bool3 = (Boolean) compositeDecoderB.m(serialDescriptor, 2, BooleanSerializer.f75574a, bool3);
                    i2 |= 4;
                    break;
                case 3:
                    bool4 = (Boolean) compositeDecoderB.m(serialDescriptor, 3, BooleanSerializer.f75574a, bool4);
                    i2 |= 8;
                    break;
                case 4:
                    bool5 = (Boolean) compositeDecoderB.m(serialDescriptor, 4, BooleanSerializer.f75574a, bool5);
                    i2 |= 16;
                    break;
                case 5:
                    bool6 = (Boolean) compositeDecoderB.m(serialDescriptor, 5, BooleanSerializer.f75574a, bool6);
                    i2 |= 32;
                    break;
                case 6:
                    bool7 = (Boolean) compositeDecoderB.m(serialDescriptor, 6, BooleanSerializer.f75574a, bool7);
                    i2 |= 64;
                    break;
                default:
                    b21.l(iN);
                    return null;
            }
        }
        compositeDecoderB.c(serialDescriptor);
        return new MarketingConsentsPatchDto(i2, bool, bool2, bool3, bool4, bool5, bool6, bool7, (SerializationConstructorMarker) null);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        MarketingConsentsPatchDto marketingConsentsPatchDto = (MarketingConsentsPatchDto) obj;
        marketingConsentsPatchDto.getClass();
        Boolean bool = marketingConsentsPatchDto.g;
        Boolean bool2 = marketingConsentsPatchDto.f46734f;
        Boolean bool3 = marketingConsentsPatchDto.f46733e;
        Boolean bool4 = marketingConsentsPatchDto.d;
        Boolean bool5 = marketingConsentsPatchDto.f46732c;
        Boolean bool6 = marketingConsentsPatchDto.f46731b;
        Boolean bool7 = marketingConsentsPatchDto.f46730a;
        SerialDescriptor serialDescriptor = descriptor;
        CompositeEncoder compositeEncoderB = encoder.b(serialDescriptor);
        if (compositeEncoderB.o(serialDescriptor) || bool7 != null) {
            compositeEncoderB.h(serialDescriptor, 0, BooleanSerializer.f75574a, bool7);
        }
        if (compositeEncoderB.o(serialDescriptor) || bool6 != null) {
            compositeEncoderB.h(serialDescriptor, 1, BooleanSerializer.f75574a, bool6);
        }
        if (compositeEncoderB.o(serialDescriptor) || bool5 != null) {
            compositeEncoderB.h(serialDescriptor, 2, BooleanSerializer.f75574a, bool5);
        }
        if (compositeEncoderB.o(serialDescriptor) || bool4 != null) {
            compositeEncoderB.h(serialDescriptor, 3, BooleanSerializer.f75574a, bool4);
        }
        if (compositeEncoderB.o(serialDescriptor) || bool3 != null) {
            compositeEncoderB.h(serialDescriptor, 4, BooleanSerializer.f75574a, bool3);
        }
        if (compositeEncoderB.o(serialDescriptor) || bool2 != null) {
            compositeEncoderB.h(serialDescriptor, 5, BooleanSerializer.f75574a, bool2);
        }
        if (compositeEncoderB.o(serialDescriptor) || bool != null) {
            compositeEncoderB.h(serialDescriptor, 6, BooleanSerializer.f75574a, bool);
        }
        compositeEncoderB.c(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] e() {
        BooleanSerializer booleanSerializer = BooleanSerializer.f75574a;
        return new KSerializer[]{BuiltinSerializersKt.d(booleanSerializer), BuiltinSerializersKt.d(booleanSerializer), BuiltinSerializersKt.d(booleanSerializer), BuiltinSerializersKt.d(booleanSerializer), BuiltinSerializersKt.d(booleanSerializer), BuiltinSerializersKt.d(booleanSerializer), BuiltinSerializersKt.d(booleanSerializer)};
    }
}
