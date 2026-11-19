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

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001R\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"com/vuitton/android/data/dto/profile/twist/KisaConsentsDto.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/vuitton/android/data/dto/profile/twist/KisaConsentsDto;", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "a", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Deprecated
public final /* synthetic */ class KisaConsentsDto$$serializer implements GeneratedSerializer<KisaConsentsDto> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final KisaConsentsDto$$serializer f46716a;
    private static final SerialDescriptor descriptor;

    static {
        KisaConsentsDto$$serializer kisaConsentsDto$$serializer = new KisaConsentsDto$$serializer();
        f46716a = kisaConsentsDto$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vuitton.android.data.dto.profile.twist.KisaConsentsDto", kisaConsentsDto$$serializer, 8);
        pluginGeneratedSerialDescriptor.k("newsletterPersonalData", false);
        pluginGeneratedSerialDescriptor.k("storeAppointmentPersonalData", false);
        pluginGeneratedSerialDescriptor.k("lvTermsAndUseConsent", false);
        pluginGeneratedSerialDescriptor.k("mainPersonalDataConsent", false);
        pluginGeneratedSerialDescriptor.k("additionalPersonalDataConsent", false);
        pluginGeneratedSerialDescriptor.k("thirdPartiesPersonalDataConsent", false);
        pluginGeneratedSerialDescriptor.k("promotionPersonalDataConsent", false);
        pluginGeneratedSerialDescriptor.k("requiredAgeConsent", false);
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
        boolean zY = false;
        boolean zY2 = false;
        boolean zY3 = false;
        boolean zY4 = false;
        boolean zY5 = false;
        boolean zY6 = false;
        Boolean bool = null;
        Boolean bool2 = null;
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
                    zY = compositeDecoderB.y(serialDescriptor, 2);
                    i2 |= 4;
                    break;
                case 3:
                    zY2 = compositeDecoderB.y(serialDescriptor, 3);
                    i2 |= 8;
                    break;
                case 4:
                    zY3 = compositeDecoderB.y(serialDescriptor, 4);
                    i2 |= 16;
                    break;
                case 5:
                    zY4 = compositeDecoderB.y(serialDescriptor, 5);
                    i2 |= 32;
                    break;
                case 6:
                    zY5 = compositeDecoderB.y(serialDescriptor, 6);
                    i2 |= 64;
                    break;
                case 7:
                    zY6 = compositeDecoderB.y(serialDescriptor, 7);
                    i2 |= 128;
                    break;
                default:
                    b21.l(iN);
                    return null;
            }
        }
        compositeDecoderB.c(serialDescriptor);
        return new KisaConsentsDto(i2, bool, bool2, zY, zY2, zY3, zY4, zY5, zY6, null);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        KisaConsentsDto kisaConsentsDto = (KisaConsentsDto) obj;
        kisaConsentsDto.getClass();
        SerialDescriptor serialDescriptor = descriptor;
        CompositeEncoder compositeEncoderB = encoder.b(serialDescriptor);
        BooleanSerializer booleanSerializer = BooleanSerializer.f75574a;
        compositeEncoderB.h(serialDescriptor, 0, booleanSerializer, kisaConsentsDto.f46710a);
        compositeEncoderB.h(serialDescriptor, 1, booleanSerializer, kisaConsentsDto.f46711b);
        compositeEncoderB.x(serialDescriptor, 2, kisaConsentsDto.f46712c);
        compositeEncoderB.x(serialDescriptor, 3, kisaConsentsDto.d);
        compositeEncoderB.x(serialDescriptor, 4, kisaConsentsDto.f46713e);
        compositeEncoderB.x(serialDescriptor, 5, kisaConsentsDto.f46714f);
        compositeEncoderB.x(serialDescriptor, 6, kisaConsentsDto.g);
        compositeEncoderB.x(serialDescriptor, 7, kisaConsentsDto.f46715h);
        compositeEncoderB.c(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] e() {
        BooleanSerializer booleanSerializer = BooleanSerializer.f75574a;
        return new KSerializer[]{BuiltinSerializersKt.d(booleanSerializer), BuiltinSerializersKt.d(booleanSerializer), booleanSerializer, booleanSerializer, booleanSerializer, booleanSerializer, booleanSerializer, booleanSerializer};
    }
}
