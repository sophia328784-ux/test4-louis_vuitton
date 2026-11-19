package com.vuitton.android.data.dto.connectivity.horizon;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.connectivity.common.FaqVideoDto;
import com.vuitton.android.data.dto.connectivity.common.FaqVideoDto$$serializer;
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
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001R\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"com/vuitton/android/data/dto/connectivity/horizon/HorizonSpeakerSectionDto.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/vuitton/android/data/dto/connectivity/horizon/HorizonSpeakerSectionDto;", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "a", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Deprecated
public final /* synthetic */ class HorizonSpeakerSectionDto$$serializer implements GeneratedSerializer<HorizonSpeakerSectionDto> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final HorizonSpeakerSectionDto$$serializer f45584a;
    private static final SerialDescriptor descriptor;

    static {
        HorizonSpeakerSectionDto$$serializer horizonSpeakerSectionDto$$serializer = new HorizonSpeakerSectionDto$$serializer();
        f45584a = horizonSpeakerSectionDto$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vuitton.android.data.dto.connectivity.horizon.HorizonSpeakerSectionDto", horizonSpeakerSectionDto$$serializer, 4);
        pluginGeneratedSerialDescriptor.k("faq", true);
        pluginGeneratedSerialDescriptor.k("skus", true);
        pluginGeneratedSerialDescriptor.k("tutorial", true);
        pluginGeneratedSerialDescriptor.k("video", true);
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
        Lazy[] lazyArr = HorizonSpeakerSectionDto.f45580e;
        boolean z = true;
        int i2 = 0;
        List list = null;
        List list2 = null;
        List list3 = null;
        FaqVideoDto faqVideoDto = null;
        while (z) {
            int iN = compositeDecoderB.n(serialDescriptor);
            if (iN == -1) {
                z = false;
            } else if (iN == 0) {
                list = (List) compositeDecoderB.m(serialDescriptor, 0, (DeserializationStrategy) lazyArr[0].getF71699b(), list);
                i2 |= 1;
            } else if (iN == 1) {
                list2 = (List) compositeDecoderB.m(serialDescriptor, 1, (DeserializationStrategy) lazyArr[1].getF71699b(), list2);
                i2 |= 2;
            } else if (iN == 2) {
                list3 = (List) compositeDecoderB.m(serialDescriptor, 2, (DeserializationStrategy) lazyArr[2].getF71699b(), list3);
                i2 |= 4;
            } else {
                if (iN != 3) {
                    b21.l(iN);
                    return null;
                }
                faqVideoDto = (FaqVideoDto) compositeDecoderB.m(serialDescriptor, 3, FaqVideoDto$$serializer.f45570a, faqVideoDto);
                i2 |= 8;
            }
        }
        compositeDecoderB.c(serialDescriptor);
        return new HorizonSpeakerSectionDto(i2, list, list2, list3, faqVideoDto, (SerializationConstructorMarker) null);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        HorizonSpeakerSectionDto horizonSpeakerSectionDto = (HorizonSpeakerSectionDto) obj;
        horizonSpeakerSectionDto.getClass();
        FaqVideoDto faqVideoDto = horizonSpeakerSectionDto.d;
        List list = horizonSpeakerSectionDto.f45583c;
        List list2 = horizonSpeakerSectionDto.f45582b;
        List list3 = horizonSpeakerSectionDto.f45581a;
        SerialDescriptor serialDescriptor = descriptor;
        CompositeEncoder compositeEncoderB = encoder.b(serialDescriptor);
        Lazy[] lazyArr = HorizonSpeakerSectionDto.f45580e;
        if (compositeEncoderB.o(serialDescriptor) || list3 != null) {
            compositeEncoderB.h(serialDescriptor, 0, (SerializationStrategy) lazyArr[0].getF71699b(), list3);
        }
        if (compositeEncoderB.o(serialDescriptor) || list2 != null) {
            compositeEncoderB.h(serialDescriptor, 1, (SerializationStrategy) lazyArr[1].getF71699b(), list2);
        }
        if (compositeEncoderB.o(serialDescriptor) || list != null) {
            compositeEncoderB.h(serialDescriptor, 2, (SerializationStrategy) lazyArr[2].getF71699b(), list);
        }
        if (compositeEncoderB.o(serialDescriptor) || faqVideoDto != null) {
            compositeEncoderB.h(serialDescriptor, 3, FaqVideoDto$$serializer.f45570a, faqVideoDto);
        }
        compositeEncoderB.c(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] e() {
        Lazy[] lazyArr = HorizonSpeakerSectionDto.f45580e;
        return new KSerializer[]{BuiltinSerializersKt.d((KSerializer) lazyArr[0].getF71699b()), BuiltinSerializersKt.d((KSerializer) lazyArr[1].getF71699b()), BuiltinSerializersKt.d((KSerializer) lazyArr[2].getF71699b()), BuiltinSerializersKt.d(FaqVideoDto$$serializer.f45570a)};
    }
}
