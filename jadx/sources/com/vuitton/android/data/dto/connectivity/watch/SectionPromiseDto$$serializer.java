package com.vuitton.android.data.dto.connectivity.watch;

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
import kotlinx.serialization.internal.StringSerializer;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001R\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"com/vuitton/android/data/dto/connectivity/watch/SectionPromiseDto.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/vuitton/android/data/dto/connectivity/watch/SectionPromiseDto;", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "a", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Deprecated
public final /* synthetic */ class SectionPromiseDto$$serializer implements GeneratedSerializer<SectionPromiseDto> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final SectionPromiseDto$$serializer f45645a;
    private static final SerialDescriptor descriptor;

    static {
        SectionPromiseDto$$serializer sectionPromiseDto$$serializer = new SectionPromiseDto$$serializer();
        f45645a = sectionPromiseDto$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vuitton.android.data.dto.connectivity.watch.SectionPromiseDto", sectionPromiseDto$$serializer, 9);
        pluginGeneratedSerialDescriptor.k("asset_my_watch", true);
        pluginGeneratedSerialDescriptor.k("asset_product_list", true);
        pluginGeneratedSerialDescriptor.k("asset_tutorial", true);
        pluginGeneratedSerialDescriptor.k("asset_watch_video", true);
        pluginGeneratedSerialDescriptor.k("asset_watchface", true);
        pluginGeneratedSerialDescriptor.k("section_faq", true);
        pluginGeneratedSerialDescriptor.k("section_tutorials", true);
        pluginGeneratedSerialDescriptor.k("section_watch_video", true);
        pluginGeneratedSerialDescriptor.k("section_watchfaces", true);
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
        Lazy[] lazyArr = SectionPromiseDto.f45637j;
        List list = null;
        boolean z = true;
        SectionWatchVideoDto sectionWatchVideoDto = null;
        int i2 = 0;
        String str = null;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        String str5 = null;
        List list2 = null;
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
                    str3 = (String) compositeDecoderB.m(serialDescriptor, 2, StringSerializer.f75684a, str3);
                    i2 |= 4;
                    break;
                case 3:
                    str4 = (String) compositeDecoderB.m(serialDescriptor, 3, StringSerializer.f75684a, str4);
                    i2 |= 8;
                    break;
                case 4:
                    str5 = (String) compositeDecoderB.m(serialDescriptor, 4, StringSerializer.f75684a, str5);
                    i2 |= 16;
                    break;
                case 5:
                    list2 = (List) compositeDecoderB.m(serialDescriptor, 5, (DeserializationStrategy) lazyArr[5].getF71699b(), list2);
                    i2 |= 32;
                    break;
                case 6:
                    list3 = (List) compositeDecoderB.m(serialDescriptor, 6, (DeserializationStrategy) lazyArr[6].getF71699b(), list3);
                    i2 |= 64;
                    break;
                case 7:
                    sectionWatchVideoDto = (SectionWatchVideoDto) compositeDecoderB.m(serialDescriptor, 7, SectionWatchVideoDto$$serializer.f45648a, sectionWatchVideoDto);
                    i2 |= 128;
                    break;
                case 8:
                    list = (List) compositeDecoderB.m(serialDescriptor, 8, (DeserializationStrategy) lazyArr[8].getF71699b(), list);
                    i2 |= 256;
                    break;
                default:
                    b21.l(iN);
                    return null;
            }
        }
        compositeDecoderB.c(serialDescriptor);
        return new SectionPromiseDto(i2, str, str2, str3, str4, str5, list2, list3, sectionWatchVideoDto, list, (SerializationConstructorMarker) null);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        SectionPromiseDto sectionPromiseDto = (SectionPromiseDto) obj;
        sectionPromiseDto.getClass();
        List list = sectionPromiseDto.f45644i;
        SectionWatchVideoDto sectionWatchVideoDto = sectionPromiseDto.f45643h;
        List list2 = sectionPromiseDto.g;
        List list3 = sectionPromiseDto.f45642f;
        String str = sectionPromiseDto.f45641e;
        String str2 = sectionPromiseDto.d;
        String str3 = sectionPromiseDto.f45640c;
        String str4 = sectionPromiseDto.f45639b;
        String str5 = sectionPromiseDto.f45638a;
        SerialDescriptor serialDescriptor = descriptor;
        CompositeEncoder compositeEncoderB = encoder.b(serialDescriptor);
        Lazy[] lazyArr = SectionPromiseDto.f45637j;
        if (compositeEncoderB.o(serialDescriptor) || str5 != null) {
            compositeEncoderB.h(serialDescriptor, 0, StringSerializer.f75684a, str5);
        }
        if (compositeEncoderB.o(serialDescriptor) || str4 != null) {
            compositeEncoderB.h(serialDescriptor, 1, StringSerializer.f75684a, str4);
        }
        if (compositeEncoderB.o(serialDescriptor) || str3 != null) {
            compositeEncoderB.h(serialDescriptor, 2, StringSerializer.f75684a, str3);
        }
        if (compositeEncoderB.o(serialDescriptor) || str2 != null) {
            compositeEncoderB.h(serialDescriptor, 3, StringSerializer.f75684a, str2);
        }
        if (compositeEncoderB.o(serialDescriptor) || str != null) {
            compositeEncoderB.h(serialDescriptor, 4, StringSerializer.f75684a, str);
        }
        if (compositeEncoderB.o(serialDescriptor) || list3 != null) {
            compositeEncoderB.h(serialDescriptor, 5, (SerializationStrategy) lazyArr[5].getF71699b(), list3);
        }
        if (compositeEncoderB.o(serialDescriptor) || list2 != null) {
            compositeEncoderB.h(serialDescriptor, 6, (SerializationStrategy) lazyArr[6].getF71699b(), list2);
        }
        if (compositeEncoderB.o(serialDescriptor) || sectionWatchVideoDto != null) {
            compositeEncoderB.h(serialDescriptor, 7, SectionWatchVideoDto$$serializer.f45648a, sectionWatchVideoDto);
        }
        if (compositeEncoderB.o(serialDescriptor) || list != null) {
            compositeEncoderB.h(serialDescriptor, 8, (SerializationStrategy) lazyArr[8].getF71699b(), list);
        }
        compositeEncoderB.c(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] e() {
        Lazy[] lazyArr = SectionPromiseDto.f45637j;
        StringSerializer stringSerializer = StringSerializer.f75684a;
        return new KSerializer[]{BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d((KSerializer) lazyArr[5].getF71699b()), BuiltinSerializersKt.d((KSerializer) lazyArr[6].getF71699b()), BuiltinSerializersKt.d(SectionWatchVideoDto$$serializer.f45648a), BuiltinSerializersKt.d((KSerializer) lazyArr[8].getF71699b())};
    }
}
