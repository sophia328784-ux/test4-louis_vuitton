package com.vuitton.android.data.dto.common.editorial;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.linktype.ContributionLinkLegacyDto;
import com.vuitton.android.data.dto.linktype.ContributionLinkLegacyDto$$serializer;
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
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001R\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"com/vuitton/android/data/dto/common/editorial/EditorialModuleDto.CarouselLargeSingleSectionDto.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$CarouselLargeSingleSectionDto;", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "a", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Deprecated
public final /* synthetic */ class EditorialModuleDto$CarouselLargeSingleSectionDto$$serializer implements GeneratedSerializer<EditorialModuleDto.CarouselLargeSingleSectionDto> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final EditorialModuleDto$CarouselLargeSingleSectionDto$$serializer f45286a;
    private static final SerialDescriptor descriptor;

    static {
        EditorialModuleDto$CarouselLargeSingleSectionDto$$serializer editorialModuleDto$CarouselLargeSingleSectionDto$$serializer = new EditorialModuleDto$CarouselLargeSingleSectionDto$$serializer();
        f45286a = editorialModuleDto$CarouselLargeSingleSectionDto$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vuitton.android.data.dto.common.editorial.EditorialModuleDto.CarouselLargeSingleSectionDto", editorialModuleDto$CarouselLargeSingleSectionDto$$serializer, 4);
        pluginGeneratedSerialDescriptor.k("titles", true);
        pluginGeneratedSerialDescriptor.k("slides", false);
        pluginGeneratedSerialDescriptor.k("targeting", true);
        pluginGeneratedSerialDescriptor.k("link", false);
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
        Lazy[] lazyArr = EditorialModuleDto.CarouselLargeSingleSectionDto.f45282f;
        boolean z = true;
        int i2 = 0;
        EditorialModuleTitlesDto editorialModuleTitlesDto = null;
        List list = null;
        TargetingDto targetingDto = null;
        ContributionLinkLegacyDto contributionLinkLegacyDto = null;
        while (z) {
            int iN = compositeDecoderB.n(serialDescriptor);
            if (iN == -1) {
                z = false;
            } else if (iN == 0) {
                editorialModuleTitlesDto = (EditorialModuleTitlesDto) compositeDecoderB.m(serialDescriptor, 0, EditorialModuleTitlesDto$$serializer.f45343a, editorialModuleTitlesDto);
                i2 |= 1;
            } else if (iN == 1) {
                list = (List) compositeDecoderB.w(serialDescriptor, 1, (DeserializationStrategy) lazyArr[1].getF71699b(), list);
                i2 |= 2;
            } else if (iN == 2) {
                targetingDto = (TargetingDto) compositeDecoderB.m(serialDescriptor, 2, TargetingDto$$serializer.f45359a, targetingDto);
                i2 |= 4;
            } else {
                if (iN != 3) {
                    b21.l(iN);
                    return null;
                }
                contributionLinkLegacyDto = (ContributionLinkLegacyDto) compositeDecoderB.w(serialDescriptor, 3, ContributionLinkLegacyDto$$serializer.f46033a, contributionLinkLegacyDto);
                i2 |= 8;
            }
        }
        compositeDecoderB.c(serialDescriptor);
        return new EditorialModuleDto.CarouselLargeSingleSectionDto(i2, editorialModuleTitlesDto, list, targetingDto, contributionLinkLegacyDto, (SerializationConstructorMarker) null);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        EditorialModuleDto.CarouselLargeSingleSectionDto carouselLargeSingleSectionDto = (EditorialModuleDto.CarouselLargeSingleSectionDto) obj;
        carouselLargeSingleSectionDto.getClass();
        EditorialModuleTitlesDto editorialModuleTitlesDto = carouselLargeSingleSectionDto.f45283b;
        SerialDescriptor serialDescriptor = descriptor;
        CompositeEncoder compositeEncoderB = encoder.b(serialDescriptor);
        Lazy[] lazyArr = EditorialModuleDto.CarouselLargeSingleSectionDto.f45282f;
        if (compositeEncoderB.o(serialDescriptor) || editorialModuleTitlesDto != null) {
            compositeEncoderB.h(serialDescriptor, 0, EditorialModuleTitlesDto$$serializer.f45343a, editorialModuleTitlesDto);
        }
        SerializationStrategy serializationStrategy = (SerializationStrategy) lazyArr[1].getF71699b();
        List list = carouselLargeSingleSectionDto.f45284c;
        TargetingDto targetingDto = carouselLargeSingleSectionDto.d;
        compositeEncoderB.A(serialDescriptor, 1, serializationStrategy, list);
        if (compositeEncoderB.o(serialDescriptor) || targetingDto != null) {
            compositeEncoderB.h(serialDescriptor, 2, TargetingDto$$serializer.f45359a, targetingDto);
        }
        compositeEncoderB.A(serialDescriptor, 3, ContributionLinkLegacyDto$$serializer.f46033a, carouselLargeSingleSectionDto.f45285e);
        compositeEncoderB.c(serialDescriptor);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] e() {
        return new KSerializer[]{BuiltinSerializersKt.d(EditorialModuleTitlesDto$$serializer.f45343a), EditorialModuleDto.CarouselLargeSingleSectionDto.f45282f[1].getF71699b(), BuiltinSerializersKt.d(TargetingDto$$serializer.f45359a), ContributionLinkLegacyDto$$serializer.f46033a};
    }
}
