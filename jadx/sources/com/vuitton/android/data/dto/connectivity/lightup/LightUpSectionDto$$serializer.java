package com.vuitton.android.data.dto.connectivity.lightup;

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
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001R\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"com/vuitton/android/data/dto/connectivity/lightup/LightUpSectionDto.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/vuitton/android/data/dto/connectivity/lightup/LightUpSectionDto;", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "a", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Deprecated
public final /* synthetic */ class LightUpSectionDto$$serializer implements GeneratedSerializer<LightUpSectionDto> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final LightUpSectionDto$$serializer f45594a;
    private static final SerialDescriptor descriptor;

    static {
        LightUpSectionDto$$serializer lightUpSectionDto$$serializer = new LightUpSectionDto$$serializer();
        f45594a = lightUpSectionDto$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vuitton.android.data.dto.connectivity.lightup.LightUpSectionDto", lightUpSectionDto$$serializer, 4);
        pluginGeneratedSerialDescriptor.k("faq_keepall", true);
        pluginGeneratedSerialDescriptor.k("faq_trainer", true);
        pluginGeneratedSerialDescriptor.k("faq_trunk", true);
        pluginGeneratedSerialDescriptor.k("home_page_content", true);
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
        Lazy[] lazyArr = LightUpSectionDto.f45590e;
        boolean z = true;
        int i2 = 0;
        List list = null;
        List list2 = null;
        List list3 = null;
        HomePageContentDto homePageContentDto = null;
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
                homePageContentDto = (HomePageContentDto) compositeDecoderB.m(serialDescriptor, 3, HomePageContentDto$$serializer.f45586a, homePageContentDto);
                i2 |= 8;
            }
        }
        compositeDecoderB.c(serialDescriptor);
        return new LightUpSectionDto(i2, list, list2, list3, homePageContentDto, (SerializationConstructorMarker) null);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        LightUpSectionDto lightUpSectionDto = (LightUpSectionDto) obj;
        lightUpSectionDto.getClass();
        HomePageContentDto homePageContentDto = lightUpSectionDto.d;
        List list = lightUpSectionDto.f45593c;
        List list2 = lightUpSectionDto.f45592b;
        List list3 = lightUpSectionDto.f45591a;
        SerialDescriptor serialDescriptor = descriptor;
        CompositeEncoder compositeEncoderB = encoder.b(serialDescriptor);
        Lazy[] lazyArr = LightUpSectionDto.f45590e;
        if (compositeEncoderB.o(serialDescriptor) || list3 != null) {
            compositeEncoderB.h(serialDescriptor, 0, (SerializationStrategy) lazyArr[0].getF71699b(), list3);
        }
        if (compositeEncoderB.o(serialDescriptor) || list2 != null) {
            compositeEncoderB.h(serialDescriptor, 1, (SerializationStrategy) lazyArr[1].getF71699b(), list2);
        }
        if (compositeEncoderB.o(serialDescriptor) || list != null) {
            compositeEncoderB.h(serialDescriptor, 2, (SerializationStrategy) lazyArr[2].getF71699b(), list);
        }
        if (compositeEncoderB.o(serialDescriptor) || homePageContentDto != null) {
            compositeEncoderB.h(serialDescriptor, 3, HomePageContentDto$$serializer.f45586a, homePageContentDto);
        }
        compositeEncoderB.c(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] e() {
        Lazy[] lazyArr = LightUpSectionDto.f45590e;
        return new KSerializer[]{BuiltinSerializersKt.d((KSerializer) lazyArr[0].getF71699b()), BuiltinSerializersKt.d((KSerializer) lazyArr[1].getF71699b()), BuiltinSerializersKt.d((KSerializer) lazyArr[2].getF71699b()), BuiltinSerializersKt.d(HomePageContentDto$$serializer.f45586a)};
    }
}
