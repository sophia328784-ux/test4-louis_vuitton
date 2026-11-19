package com.vuitton.android.data.dto.travel;

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
import kotlinx.serialization.internal.FloatSerializer;
import kotlinx.serialization.internal.GeneratedSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import kotlinx.serialization.internal.StringSerializer;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001R\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"com/vuitton/android/data/dto/travel/AirportDto.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/vuitton/android/data/dto/travel/AirportDto;", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "a", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Deprecated
public final /* synthetic */ class AirportDto$$serializer implements GeneratedSerializer<AirportDto> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final AirportDto$$serializer f46898a;
    private static final SerialDescriptor descriptor;

    static {
        AirportDto$$serializer airportDto$$serializer = new AirportDto$$serializer();
        f46898a = airportDto$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vuitton.android.data.dto.travel.AirportDto", airportDto$$serializer, 8);
        pluginGeneratedSerialDescriptor.k("iata", false);
        pluginGeneratedSerialDescriptor.k("name", false);
        pluginGeneratedSerialDescriptor.k("city", false);
        pluginGeneratedSerialDescriptor.k("stateCode", true);
        pluginGeneratedSerialDescriptor.k("countryCode", false);
        pluginGeneratedSerialDescriptor.k("timeZone", false);
        pluginGeneratedSerialDescriptor.k("latitude", false);
        pluginGeneratedSerialDescriptor.k("longitude", false);
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
        Object obj = null;
        int i2 = 0;
        String strL = null;
        String strL2 = null;
        String strL3 = null;
        String str = null;
        String strL4 = null;
        String strL5 = null;
        float fR = 0.0f;
        float fR2 = 0.0f;
        boolean z = true;
        while (z) {
            int iN = compositeDecoderB.n(serialDescriptor);
            switch (iN) {
                case -1:
                    z = false;
                    continue;
                case 0:
                    strL = compositeDecoderB.l(serialDescriptor, 0);
                    i2 |= 1;
                    break;
                case 1:
                    strL2 = compositeDecoderB.l(serialDescriptor, 1);
                    i2 |= 2;
                    break;
                case 2:
                    strL3 = compositeDecoderB.l(serialDescriptor, 2);
                    i2 |= 4;
                    break;
                case 3:
                    str = (String) compositeDecoderB.m(serialDescriptor, 3, StringSerializer.f75684a, str);
                    i2 |= 8;
                    break;
                case 4:
                    strL4 = compositeDecoderB.l(serialDescriptor, 4);
                    i2 |= 16;
                    continue;
                case 5:
                    strL5 = compositeDecoderB.l(serialDescriptor, 5);
                    i2 |= 32;
                    continue;
                case 6:
                    fR = compositeDecoderB.r(serialDescriptor, 6);
                    i2 |= 64;
                    continue;
                case 7:
                    fR2 = compositeDecoderB.r(serialDescriptor, 7);
                    i2 |= 128;
                    continue;
                default:
                    b21.l(iN);
                    return obj;
            }
            obj = null;
        }
        compositeDecoderB.c(serialDescriptor);
        return new AirportDto(i2, strL, strL2, strL3, str, strL4, strL5, fR, fR2, (SerializationConstructorMarker) null);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        AirportDto airportDto = (AirportDto) obj;
        airportDto.getClass();
        SerialDescriptor serialDescriptor = descriptor;
        CompositeEncoder compositeEncoderB = encoder.b(serialDescriptor);
        String str = airportDto.f46892a;
        String str2 = airportDto.d;
        compositeEncoderB.y(serialDescriptor, 0, str);
        compositeEncoderB.y(serialDescriptor, 1, airportDto.f46893b);
        compositeEncoderB.y(serialDescriptor, 2, airportDto.f46894c);
        if (compositeEncoderB.o(serialDescriptor) || str2 != null) {
            compositeEncoderB.h(serialDescriptor, 3, StringSerializer.f75684a, str2);
        }
        compositeEncoderB.y(serialDescriptor, 4, airportDto.f46895e);
        compositeEncoderB.y(serialDescriptor, 5, airportDto.f46896f);
        compositeEncoderB.t(serialDescriptor, 6, airportDto.g);
        compositeEncoderB.t(serialDescriptor, 7, airportDto.f46897h);
        compositeEncoderB.c(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] e() {
        StringSerializer stringSerializer = StringSerializer.f75684a;
        KSerializer kSerializerD = BuiltinSerializersKt.d(stringSerializer);
        FloatSerializer floatSerializer = FloatSerializer.f75616a;
        return new KSerializer[]{stringSerializer, stringSerializer, stringSerializer, kSerializerD, stringSerializer, stringSerializer, floatSerializer, floatSerializer};
    }
}
