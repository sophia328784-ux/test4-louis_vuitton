package com.vuitton.android.data.dto.product.availability;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.b21;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import kotlinx.serialization.internal.DoubleSerializer;
import kotlinx.serialization.internal.GeneratedSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.StringSerializer;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001R\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"com/vuitton/android/data/dto/product/availability/PlaceGeocodingDto.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/vuitton/android/data/dto/product/availability/PlaceGeocodingDto;", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "a", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Deprecated
public final /* synthetic */ class PlaceGeocodingDto$$serializer implements GeneratedSerializer<PlaceGeocodingDto> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final PlaceGeocodingDto$$serializer f46430a;
    private static final SerialDescriptor descriptor;

    static {
        PlaceGeocodingDto$$serializer placeGeocodingDto$$serializer = new PlaceGeocodingDto$$serializer();
        f46430a = placeGeocodingDto$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vuitton.android.data.dto.product.availability.PlaceGeocodingDto", placeGeocodingDto$$serializer, 7);
        pluginGeneratedSerialDescriptor.k("address", false);
        pluginGeneratedSerialDescriptor.k("centerLatitude", false);
        pluginGeneratedSerialDescriptor.k("centerLongitude", false);
        pluginGeneratedSerialDescriptor.k("northEastLatitude", false);
        pluginGeneratedSerialDescriptor.k("northEastLongitude", false);
        pluginGeneratedSerialDescriptor.k("southWestLatitude", false);
        pluginGeneratedSerialDescriptor.k("southWestLongitude", false);
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
        int i2 = 0;
        String strL = null;
        double dC = 0.0d;
        double dC2 = 0.0d;
        double dC3 = 0.0d;
        double dC4 = 0.0d;
        double dC5 = 0.0d;
        double dC6 = 0.0d;
        boolean z = true;
        while (z) {
            int iN = compositeDecoderB.n(serialDescriptor);
            switch (iN) {
                case -1:
                    z = false;
                    break;
                case 0:
                    strL = compositeDecoderB.l(serialDescriptor, 0);
                    i2 |= 1;
                    break;
                case 1:
                    dC = compositeDecoderB.C(serialDescriptor, 1);
                    i2 |= 2;
                    break;
                case 2:
                    dC2 = compositeDecoderB.C(serialDescriptor, 2);
                    i2 |= 4;
                    break;
                case 3:
                    dC3 = compositeDecoderB.C(serialDescriptor, 3);
                    i2 |= 8;
                    break;
                case 4:
                    dC4 = compositeDecoderB.C(serialDescriptor, 4);
                    i2 |= 16;
                    break;
                case 5:
                    dC5 = compositeDecoderB.C(serialDescriptor, 5);
                    i2 |= 32;
                    break;
                case 6:
                    dC6 = compositeDecoderB.C(serialDescriptor, 6);
                    i2 |= 64;
                    break;
                default:
                    b21.l(iN);
                    return null;
            }
        }
        compositeDecoderB.c(serialDescriptor);
        return new PlaceGeocodingDto(i2, strL, dC, dC2, dC3, dC4, dC5, dC6, null);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        PlaceGeocodingDto placeGeocodingDto = (PlaceGeocodingDto) obj;
        placeGeocodingDto.getClass();
        SerialDescriptor serialDescriptor = descriptor;
        CompositeEncoder compositeEncoderB = encoder.b(serialDescriptor);
        compositeEncoderB.y(serialDescriptor, 0, placeGeocodingDto.f46425a);
        compositeEncoderB.C(serialDescriptor, 1, placeGeocodingDto.f46426b);
        compositeEncoderB.C(serialDescriptor, 2, placeGeocodingDto.f46427c);
        compositeEncoderB.C(serialDescriptor, 3, placeGeocodingDto.d);
        compositeEncoderB.C(serialDescriptor, 4, placeGeocodingDto.f46428e);
        compositeEncoderB.C(serialDescriptor, 5, placeGeocodingDto.f46429f);
        compositeEncoderB.C(serialDescriptor, 6, placeGeocodingDto.g);
        compositeEncoderB.c(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] e() {
        DoubleSerializer doubleSerializer = DoubleSerializer.f75602a;
        return new KSerializer[]{StringSerializer.f75684a, doubleSerializer, doubleSerializer, doubleSerializer, doubleSerializer, doubleSerializer, doubleSerializer};
    }
}
