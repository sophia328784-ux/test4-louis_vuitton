package com.vuitton.android.data.dto.travel;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.core.platform.serialization.SimpleDateSerializer;
import defpackage.b21;
import java.util.Date;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.builtins.BuiltinSerializersKt;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import kotlinx.serialization.internal.GeneratedSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import kotlinx.serialization.internal.StringSerializer;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001R\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"com/vuitton/android/data/dto/travel/HotelTravelDto.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/vuitton/android/data/dto/travel/HotelTravelDto;", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "a", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Deprecated
public final /* synthetic */ class HotelTravelDto$$serializer implements GeneratedSerializer<HotelTravelDto> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final HotelTravelDto$$serializer f46915a;
    private static final SerialDescriptor descriptor;

    static {
        HotelTravelDto$$serializer hotelTravelDto$$serializer = new HotelTravelDto$$serializer();
        f46915a = hotelTravelDto$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vuitton.android.data.dto.travel.HotelTravelDto", hotelTravelDto$$serializer, 9);
        pluginGeneratedSerialDescriptor.k("booking", true);
        pluginGeneratedSerialDescriptor.k("address", true);
        pluginGeneratedSerialDescriptor.k("hotelName", true);
        pluginGeneratedSerialDescriptor.k("city", true);
        pluginGeneratedSerialDescriptor.k("checkIn", true);
        pluginGeneratedSerialDescriptor.k("checkOut", true);
        pluginGeneratedSerialDescriptor.k("coords", true);
        pluginGeneratedSerialDescriptor.k("phone", true);
        pluginGeneratedSerialDescriptor.k("type", true);
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
        boolean z = true;
        int i2 = 0;
        String str = null;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        Date date = null;
        Date date2 = null;
        CoordinatesDto coordinatesDto = null;
        String str5 = null;
        String strL = null;
        while (z) {
            int iN = compositeDecoderB.n(serialDescriptor);
            switch (iN) {
                case -1:
                    z = false;
                    continue;
                case 0:
                    str = (String) compositeDecoderB.m(serialDescriptor, 0, StringSerializer.f75684a, str);
                    i2 |= 1;
                    break;
                case 1:
                    str2 = (String) compositeDecoderB.m(serialDescriptor, 1, StringSerializer.f75684a, str2);
                    i2 |= 2;
                    break;
                case 2:
                    str3 = (String) compositeDecoderB.m(serialDescriptor, 2, StringSerializer.f75684a, str3);
                    i2 |= 4;
                    break;
                case 3:
                    str4 = (String) compositeDecoderB.m(serialDescriptor, 3, StringSerializer.f75684a, str4);
                    i2 |= 8;
                    break;
                case 4:
                    date = (Date) compositeDecoderB.m(serialDescriptor, 4, SimpleDateSerializer.f43523b, date);
                    i2 |= 16;
                    break;
                case 5:
                    date2 = (Date) compositeDecoderB.m(serialDescriptor, 5, SimpleDateSerializer.f43523b, date2);
                    i2 |= 32;
                    break;
                case 6:
                    coordinatesDto = (CoordinatesDto) compositeDecoderB.m(serialDescriptor, 6, CoordinatesDto$$serializer.f46901a, coordinatesDto);
                    i2 |= 64;
                    break;
                case 7:
                    str5 = (String) compositeDecoderB.m(serialDescriptor, 7, StringSerializer.f75684a, str5);
                    i2 |= 128;
                    break;
                case 8:
                    strL = compositeDecoderB.l(serialDescriptor, 8);
                    i2 |= 256;
                    continue;
                default:
                    b21.l(iN);
                    return obj;
            }
            obj = null;
        }
        compositeDecoderB.c(serialDescriptor);
        return new HotelTravelDto(i2, str, str2, str3, str4, date, date2, coordinatesDto, str5, strL, (SerializationConstructorMarker) null);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        HotelTravelDto hotelTravelDto = (HotelTravelDto) obj;
        hotelTravelDto.getClass();
        String str = hotelTravelDto.f46914i;
        String str2 = hotelTravelDto.f46913h;
        CoordinatesDto coordinatesDto = hotelTravelDto.g;
        Date date = hotelTravelDto.f46912f;
        Date date2 = hotelTravelDto.f46911e;
        String str3 = hotelTravelDto.d;
        String str4 = hotelTravelDto.f46910c;
        String str5 = hotelTravelDto.f46909b;
        String str6 = hotelTravelDto.f46908a;
        SerialDescriptor serialDescriptor = descriptor;
        CompositeEncoder compositeEncoderB = encoder.b(serialDescriptor);
        if (compositeEncoderB.o(serialDescriptor) || str6 != null) {
            compositeEncoderB.h(serialDescriptor, 0, StringSerializer.f75684a, str6);
        }
        if (compositeEncoderB.o(serialDescriptor) || str5 != null) {
            compositeEncoderB.h(serialDescriptor, 1, StringSerializer.f75684a, str5);
        }
        if (compositeEncoderB.o(serialDescriptor) || str4 != null) {
            compositeEncoderB.h(serialDescriptor, 2, StringSerializer.f75684a, str4);
        }
        if (compositeEncoderB.o(serialDescriptor) || str3 != null) {
            compositeEncoderB.h(serialDescriptor, 3, StringSerializer.f75684a, str3);
        }
        if (compositeEncoderB.o(serialDescriptor) || date2 != null) {
            compositeEncoderB.h(serialDescriptor, 4, SimpleDateSerializer.f43523b, date2);
        }
        if (compositeEncoderB.o(serialDescriptor) || date != null) {
            compositeEncoderB.h(serialDescriptor, 5, SimpleDateSerializer.f43523b, date);
        }
        if (compositeEncoderB.o(serialDescriptor) || coordinatesDto != null) {
            compositeEncoderB.h(serialDescriptor, 6, CoordinatesDto$$serializer.f46901a, coordinatesDto);
        }
        if (compositeEncoderB.o(serialDescriptor) || str2 != null) {
            compositeEncoderB.h(serialDescriptor, 7, StringSerializer.f75684a, str2);
        }
        if (compositeEncoderB.o(serialDescriptor) || !Intrinsics.c(str, "hotel")) {
            compositeEncoderB.y(serialDescriptor, 8, str);
        }
        compositeEncoderB.c(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] e() {
        StringSerializer stringSerializer = StringSerializer.f75684a;
        KSerializer kSerializerD = BuiltinSerializersKt.d(stringSerializer);
        KSerializer kSerializerD2 = BuiltinSerializersKt.d(stringSerializer);
        KSerializer kSerializerD3 = BuiltinSerializersKt.d(stringSerializer);
        KSerializer kSerializerD4 = BuiltinSerializersKt.d(stringSerializer);
        SimpleDateSerializer simpleDateSerializer = SimpleDateSerializer.f43523b;
        return new KSerializer[]{kSerializerD, kSerializerD2, kSerializerD3, kSerializerD4, BuiltinSerializersKt.d(simpleDateSerializer), BuiltinSerializersKt.d(simpleDateSerializer), BuiltinSerializersKt.d(CoordinatesDto$$serializer.f46901a), BuiltinSerializersKt.d(stringSerializer), stringSerializer};
    }
}
