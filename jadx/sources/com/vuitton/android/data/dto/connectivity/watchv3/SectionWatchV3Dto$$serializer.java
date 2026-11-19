package com.vuitton.android.data.dto.connectivity.watchv3;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.connectivity.watch.SectionWatchVideoDto;
import com.vuitton.android.data.dto.connectivity.watch.SectionWatchVideoDto$$serializer;
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
import kotlinx.serialization.internal.StringSerializer;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001R\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"com/vuitton/android/data/dto/connectivity/watchv3/SectionWatchV3Dto.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/vuitton/android/data/dto/connectivity/watchv3/SectionWatchV3Dto;", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "a", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Deprecated
public final /* synthetic */ class SectionWatchV3Dto$$serializer implements GeneratedSerializer<SectionWatchV3Dto> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final SectionWatchV3Dto$$serializer f45682a;
    private static final SerialDescriptor descriptor;

    static {
        SectionWatchV3Dto$$serializer sectionWatchV3Dto$$serializer = new SectionWatchV3Dto$$serializer();
        f45682a = sectionWatchV3Dto$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vuitton.android.data.dto.connectivity.watchv3.SectionWatchV3Dto", sectionWatchV3Dto$$serializer, 6);
        pluginGeneratedSerialDescriptor.k("asset_tutorial", true);
        pluginGeneratedSerialDescriptor.k("asset_watch_video", true);
        pluginGeneratedSerialDescriptor.k("section_faq", true);
        pluginGeneratedSerialDescriptor.k("section_tutorials", true);
        pluginGeneratedSerialDescriptor.k("section_watch_video", true);
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
        Lazy[] lazyArr = SectionWatchV3Dto.g;
        boolean z = true;
        int i2 = 0;
        String str = null;
        String str2 = null;
        List list = null;
        List list2 = null;
        SectionWatchVideoDto sectionWatchVideoDto = null;
        List list3 = null;
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
                    list = (List) compositeDecoderB.m(serialDescriptor, 2, (DeserializationStrategy) lazyArr[2].getF71699b(), list);
                    i2 |= 4;
                    break;
                case 3:
                    list2 = (List) compositeDecoderB.m(serialDescriptor, 3, (DeserializationStrategy) lazyArr[3].getF71699b(), list2);
                    i2 |= 8;
                    break;
                case 4:
                    sectionWatchVideoDto = (SectionWatchVideoDto) compositeDecoderB.m(serialDescriptor, 4, SectionWatchVideoDto$$serializer.f45648a, sectionWatchVideoDto);
                    i2 |= 16;
                    break;
                case 5:
                    list3 = (List) compositeDecoderB.m(serialDescriptor, 5, (DeserializationStrategy) lazyArr[5].getF71699b(), list3);
                    i2 |= 32;
                    break;
                default:
                    b21.l(iN);
                    return null;
            }
        }
        compositeDecoderB.c(serialDescriptor);
        return new SectionWatchV3Dto(i2, str, str2, list, list2, sectionWatchVideoDto, list3, (SerializationConstructorMarker) null);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        SectionWatchV3Dto sectionWatchV3Dto = (SectionWatchV3Dto) obj;
        sectionWatchV3Dto.getClass();
        List list = sectionWatchV3Dto.f45681f;
        SectionWatchVideoDto sectionWatchVideoDto = sectionWatchV3Dto.f45680e;
        List list2 = sectionWatchV3Dto.d;
        List list3 = sectionWatchV3Dto.f45679c;
        String str = sectionWatchV3Dto.f45678b;
        String str2 = sectionWatchV3Dto.f45677a;
        SerialDescriptor serialDescriptor = descriptor;
        CompositeEncoder compositeEncoderB = encoder.b(serialDescriptor);
        Lazy[] lazyArr = SectionWatchV3Dto.g;
        if (compositeEncoderB.o(serialDescriptor) || str2 != null) {
            compositeEncoderB.h(serialDescriptor, 0, StringSerializer.f75684a, str2);
        }
        if (compositeEncoderB.o(serialDescriptor) || str != null) {
            compositeEncoderB.h(serialDescriptor, 1, StringSerializer.f75684a, str);
        }
        if (compositeEncoderB.o(serialDescriptor) || list3 != null) {
            compositeEncoderB.h(serialDescriptor, 2, (SerializationStrategy) lazyArr[2].getF71699b(), list3);
        }
        if (compositeEncoderB.o(serialDescriptor) || list2 != null) {
            compositeEncoderB.h(serialDescriptor, 3, (SerializationStrategy) lazyArr[3].getF71699b(), list2);
        }
        if (compositeEncoderB.o(serialDescriptor) || sectionWatchVideoDto != null) {
            compositeEncoderB.h(serialDescriptor, 4, SectionWatchVideoDto$$serializer.f45648a, sectionWatchVideoDto);
        }
        if (compositeEncoderB.o(serialDescriptor) || list != null) {
            compositeEncoderB.h(serialDescriptor, 5, (SerializationStrategy) lazyArr[5].getF71699b(), list);
        }
        compositeEncoderB.c(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] e() {
        Lazy[] lazyArr = SectionWatchV3Dto.g;
        StringSerializer stringSerializer = StringSerializer.f75684a;
        return new KSerializer[]{BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d((KSerializer) lazyArr[2].getF71699b()), BuiltinSerializersKt.d((KSerializer) lazyArr[3].getF71699b()), BuiltinSerializersKt.d(SectionWatchVideoDto$$serializer.f45648a), BuiltinSerializersKt.d((KSerializer) lazyArr[5].getF71699b())};
    }
}
