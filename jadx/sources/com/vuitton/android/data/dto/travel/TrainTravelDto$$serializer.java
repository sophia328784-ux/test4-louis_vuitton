package com.vuitton.android.data.dto.travel;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.b21;
import java.util.List;
import kotlin.Deprecated;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.DeserializationStrategy;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerializationStrategy;
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
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001R\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"com/vuitton/android/data/dto/travel/TrainTravelDto.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/vuitton/android/data/dto/travel/TrainTravelDto;", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "a", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Deprecated
public final /* synthetic */ class TrainTravelDto$$serializer implements GeneratedSerializer<TrainTravelDto> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final TrainTravelDto$$serializer f46927a;
    private static final SerialDescriptor descriptor;

    static {
        TrainTravelDto$$serializer trainTravelDto$$serializer = new TrainTravelDto$$serializer();
        f46927a = trainTravelDto$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vuitton.android.data.dto.travel.TrainTravelDto", trainTravelDto$$serializer, 6);
        pluginGeneratedSerialDescriptor.k("booking", true);
        pluginGeneratedSerialDescriptor.k("trainNumber", true);
        pluginGeneratedSerialDescriptor.k("departure", true);
        pluginGeneratedSerialDescriptor.k("arrival", true);
        pluginGeneratedSerialDescriptor.k("travelers", true);
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
        Lazy[] lazyArr = TrainTravelDto.g;
        boolean z = true;
        int i2 = 0;
        String str = null;
        String str2 = null;
        Station station = null;
        Station station2 = null;
        List list = null;
        String strL = null;
        while (z) {
            int iN = compositeDecoderB.n(serialDescriptor);
            switch (iN) {
                case -1:
                    z = false;
                    break;
                case 0:
                    str = (String) compositeDecoderB.m(serialDescriptor, 0, StringSerializer.f75684a, str);
                    i2 |= 1;
                    break;
                case 1:
                    str2 = (String) compositeDecoderB.m(serialDescriptor, 1, StringSerializer.f75684a, str2);
                    i2 |= 2;
                    break;
                case 2:
                    station = (Station) compositeDecoderB.m(serialDescriptor, 2, Station$$serializer.f46921a, station);
                    i2 |= 4;
                    break;
                case 3:
                    station2 = (Station) compositeDecoderB.m(serialDescriptor, 3, Station$$serializer.f46921a, station2);
                    i2 |= 8;
                    break;
                case 4:
                    list = (List) compositeDecoderB.m(serialDescriptor, 4, (DeserializationStrategy) lazyArr[4].getF71699b(), list);
                    i2 |= 16;
                    break;
                case 5:
                    strL = compositeDecoderB.l(serialDescriptor, 5);
                    i2 |= 32;
                    break;
                default:
                    b21.l(iN);
                    return null;
            }
        }
        compositeDecoderB.c(serialDescriptor);
        return new TrainTravelDto(i2, str, str2, station, station2, list, strL, (SerializationConstructorMarker) null);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        TrainTravelDto trainTravelDto = (TrainTravelDto) obj;
        trainTravelDto.getClass();
        String str = trainTravelDto.f46926f;
        List list = trainTravelDto.f46925e;
        Station station = trainTravelDto.d;
        Station station2 = trainTravelDto.f46924c;
        String str2 = trainTravelDto.f46923b;
        String str3 = trainTravelDto.f46922a;
        SerialDescriptor serialDescriptor = descriptor;
        CompositeEncoder compositeEncoderB = encoder.b(serialDescriptor);
        Lazy[] lazyArr = TrainTravelDto.g;
        if (compositeEncoderB.o(serialDescriptor) || str3 != null) {
            compositeEncoderB.h(serialDescriptor, 0, StringSerializer.f75684a, str3);
        }
        if (compositeEncoderB.o(serialDescriptor) || str2 != null) {
            compositeEncoderB.h(serialDescriptor, 1, StringSerializer.f75684a, str2);
        }
        if (compositeEncoderB.o(serialDescriptor) || station2 != null) {
            compositeEncoderB.h(serialDescriptor, 2, Station$$serializer.f46921a, station2);
        }
        if (compositeEncoderB.o(serialDescriptor) || station != null) {
            compositeEncoderB.h(serialDescriptor, 3, Station$$serializer.f46921a, station);
        }
        if (compositeEncoderB.o(serialDescriptor) || list != null) {
            compositeEncoderB.h(serialDescriptor, 4, (SerializationStrategy) lazyArr[4].getF71699b(), list);
        }
        if (compositeEncoderB.o(serialDescriptor) || !Intrinsics.c(str, "train")) {
            compositeEncoderB.y(serialDescriptor, 5, str);
        }
        compositeEncoderB.c(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] e() {
        Lazy[] lazyArr = TrainTravelDto.g;
        StringSerializer stringSerializer = StringSerializer.f75684a;
        KSerializer kSerializerD = BuiltinSerializersKt.d(stringSerializer);
        KSerializer kSerializerD2 = BuiltinSerializersKt.d(stringSerializer);
        Station$$serializer station$$serializer = Station$$serializer.f46921a;
        return new KSerializer[]{kSerializerD, kSerializerD2, BuiltinSerializersKt.d(station$$serializer), BuiltinSerializersKt.d(station$$serializer), BuiltinSerializersKt.d((KSerializer) lazyArr[4].getF71699b()), stringSerializer};
    }
}
