package com.vuitton.android.data.dto.common.editorial;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.b21;
import java.util.List;
import kotlin.Deprecated;
import kotlin.Lazy;
import kotlin.Metadata;
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

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001R\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"com/vuitton/android/data/dto/common/editorial/EditorialModuleDto.CarouselSmallSectionDto.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$CarouselSmallSectionDto;", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "a", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Deprecated
public final /* synthetic */ class EditorialModuleDto$CarouselSmallSectionDto$$serializer implements GeneratedSerializer<EditorialModuleDto.CarouselSmallSectionDto> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final EditorialModuleDto$CarouselSmallSectionDto$$serializer f45294a;
    private static final SerialDescriptor descriptor;

    static {
        EditorialModuleDto$CarouselSmallSectionDto$$serializer editorialModuleDto$CarouselSmallSectionDto$$serializer = new EditorialModuleDto$CarouselSmallSectionDto$$serializer();
        f45294a = editorialModuleDto$CarouselSmallSectionDto$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vuitton.android.data.dto.common.editorial.EditorialModuleDto.CarouselSmallSectionDto", editorialModuleDto$CarouselSmallSectionDto$$serializer, 3);
        pluginGeneratedSerialDescriptor.k("header", true);
        pluginGeneratedSerialDescriptor.k("algorithm", false);
        pluginGeneratedSerialDescriptor.k("skus", true);
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
        Lazy[] lazyArr = EditorialModuleDto.CarouselSmallSectionDto.f45291e;
        boolean z = true;
        int i2 = 0;
        HeaderDto headerDto = null;
        AlgorithmTypeDto algorithmTypeDto = null;
        List list = null;
        while (z) {
            int iN = compositeDecoderB.n(serialDescriptor);
            if (iN == -1) {
                z = false;
            } else if (iN == 0) {
                headerDto = (HeaderDto) compositeDecoderB.m(serialDescriptor, 0, HeaderDto$$serializer.f45356a, headerDto);
                i2 |= 1;
            } else if (iN == 1) {
                algorithmTypeDto = (AlgorithmTypeDto) compositeDecoderB.w(serialDescriptor, 1, (DeserializationStrategy) lazyArr[1].getF71699b(), algorithmTypeDto);
                i2 |= 2;
            } else {
                if (iN != 2) {
                    b21.l(iN);
                    return null;
                }
                list = (List) compositeDecoderB.m(serialDescriptor, 2, (DeserializationStrategy) lazyArr[2].getF71699b(), list);
                i2 |= 4;
            }
        }
        compositeDecoderB.c(serialDescriptor);
        return new EditorialModuleDto.CarouselSmallSectionDto(i2, headerDto, algorithmTypeDto, list, (SerializationConstructorMarker) null);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        EditorialModuleDto.CarouselSmallSectionDto carouselSmallSectionDto = (EditorialModuleDto.CarouselSmallSectionDto) obj;
        carouselSmallSectionDto.getClass();
        HeaderDto headerDto = carouselSmallSectionDto.f45292b;
        SerialDescriptor serialDescriptor = descriptor;
        CompositeEncoder compositeEncoderB = encoder.b(serialDescriptor);
        Lazy[] lazyArr = EditorialModuleDto.CarouselSmallSectionDto.f45291e;
        if (compositeEncoderB.o(serialDescriptor) || headerDto != null) {
            compositeEncoderB.h(serialDescriptor, 0, HeaderDto$$serializer.f45356a, headerDto);
        }
        SerializationStrategy serializationStrategy = (SerializationStrategy) lazyArr[1].getF71699b();
        AlgorithmTypeDto algorithmTypeDto = carouselSmallSectionDto.f45293c;
        List list = carouselSmallSectionDto.d;
        compositeEncoderB.A(serialDescriptor, 1, serializationStrategy, algorithmTypeDto);
        if (compositeEncoderB.o(serialDescriptor) || list != null) {
            compositeEncoderB.h(serialDescriptor, 2, (SerializationStrategy) lazyArr[2].getF71699b(), list);
        }
        compositeEncoderB.c(serialDescriptor);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] e() {
        Lazy[] lazyArr = EditorialModuleDto.CarouselSmallSectionDto.f45291e;
        return new KSerializer[]{BuiltinSerializersKt.d(HeaderDto$$serializer.f45356a), lazyArr[1].getF71699b(), BuiltinSerializersKt.d((KSerializer) lazyArr[2].getF71699b())};
    }
}
