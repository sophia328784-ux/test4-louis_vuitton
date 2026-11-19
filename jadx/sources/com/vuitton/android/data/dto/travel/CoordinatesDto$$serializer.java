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
import kotlinx.serialization.internal.DoubleSerializer;
import kotlinx.serialization.internal.GeneratedSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001R\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"com/vuitton/android/data/dto/travel/CoordinatesDto.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/vuitton/android/data/dto/travel/CoordinatesDto;", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "a", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Deprecated
public final /* synthetic */ class CoordinatesDto$$serializer implements GeneratedSerializer<CoordinatesDto> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final CoordinatesDto$$serializer f46901a;
    private static final SerialDescriptor descriptor;

    static {
        CoordinatesDto$$serializer coordinatesDto$$serializer = new CoordinatesDto$$serializer();
        f46901a = coordinatesDto$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vuitton.android.data.dto.travel.CoordinatesDto", coordinatesDto$$serializer, 2);
        pluginGeneratedSerialDescriptor.k("latitude", true);
        pluginGeneratedSerialDescriptor.k("longitude", true);
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
        Double d = null;
        Double d2 = null;
        while (z) {
            int iN = compositeDecoderB.n(serialDescriptor);
            if (iN == -1) {
                z = false;
            } else if (iN == 0) {
                d = (Double) compositeDecoderB.m(serialDescriptor, 0, DoubleSerializer.f75602a, d);
                i2 |= 1;
            } else {
                if (iN != 1) {
                    b21.l(iN);
                    return null;
                }
                d2 = (Double) compositeDecoderB.m(serialDescriptor, 1, DoubleSerializer.f75602a, d2);
                i2 |= 2;
            }
        }
        compositeDecoderB.c(serialDescriptor);
        return new CoordinatesDto(i2, d, d2, (SerializationConstructorMarker) null);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        CoordinatesDto coordinatesDto = (CoordinatesDto) obj;
        coordinatesDto.getClass();
        Double d = coordinatesDto.f46900b;
        Double d2 = coordinatesDto.f46899a;
        SerialDescriptor serialDescriptor = descriptor;
        CompositeEncoder compositeEncoderB = encoder.b(serialDescriptor);
        if (compositeEncoderB.o(serialDescriptor) || d2 != null) {
            compositeEncoderB.h(serialDescriptor, 0, DoubleSerializer.f75602a, d2);
        }
        if (compositeEncoderB.o(serialDescriptor) || d != null) {
            compositeEncoderB.h(serialDescriptor, 1, DoubleSerializer.f75602a, d);
        }
        compositeEncoderB.c(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] e() {
        DoubleSerializer doubleSerializer = DoubleSerializer.f75602a;
        return new KSerializer[]{BuiltinSerializersKt.d(doubleSerializer), BuiltinSerializersKt.d(doubleSerializer)};
    }
}
