package com.vuitton.android.data.dto.common.editorial;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.common.AssetDto;
import com.vuitton.android.data.dto.common.AssetDto$$serializer;
import com.vuitton.android.data.dto.linktype.ContributionLinkLegacyDto;
import com.vuitton.android.data.dto.linktype.ContributionLinkLegacyDto$$serializer;
import defpackage.b21;
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
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001R\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"com/vuitton/android/data/dto/common/editorial/EditorialModuleDto.CardSectionDto.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$CardSectionDto;", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "a", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Deprecated
public final /* synthetic */ class EditorialModuleDto$CardSectionDto$$serializer implements GeneratedSerializer<EditorialModuleDto.CardSectionDto> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final EditorialModuleDto$CardSectionDto$$serializer f45277a;
    private static final SerialDescriptor descriptor;

    static {
        EditorialModuleDto$CardSectionDto$$serializer editorialModuleDto$CardSectionDto$$serializer = new EditorialModuleDto$CardSectionDto$$serializer();
        f45277a = editorialModuleDto$CardSectionDto$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vuitton.android.data.dto.common.editorial.EditorialModuleDto.CardSectionDto", editorialModuleDto$CardSectionDto$$serializer, 6);
        pluginGeneratedSerialDescriptor.k("titles", true);
        pluginGeneratedSerialDescriptor.k("link", true);
        pluginGeneratedSerialDescriptor.k("asset", false);
        pluginGeneratedSerialDescriptor.k("assetLayout", false);
        pluginGeneratedSerialDescriptor.k("ratio", false);
        pluginGeneratedSerialDescriptor.k("targeting", true);
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
        Lazy[] lazyArr = EditorialModuleDto.CardSectionDto.f45272h;
        boolean z = true;
        int i2 = 0;
        EditorialModuleTitlesDto editorialModuleTitlesDto = null;
        ContributionLinkLegacyDto contributionLinkLegacyDto = null;
        AssetDto assetDto = null;
        AssetLayoutDto assetLayoutDto = null;
        RatioDto ratioDto = null;
        TargetingDto targetingDto = null;
        while (z) {
            int iN = compositeDecoderB.n(serialDescriptor);
            switch (iN) {
                case -1:
                    z = false;
                    break;
                case 0:
                    editorialModuleTitlesDto = (EditorialModuleTitlesDto) compositeDecoderB.m(serialDescriptor, 0, EditorialModuleTitlesDto$$serializer.f45343a, editorialModuleTitlesDto);
                    i2 |= 1;
                    break;
                case 1:
                    contributionLinkLegacyDto = (ContributionLinkLegacyDto) compositeDecoderB.m(serialDescriptor, 1, ContributionLinkLegacyDto$$serializer.f46033a, contributionLinkLegacyDto);
                    i2 |= 2;
                    break;
                case 2:
                    assetDto = (AssetDto) compositeDecoderB.w(serialDescriptor, 2, AssetDto$$serializer.f45238a, assetDto);
                    i2 |= 4;
                    break;
                case 3:
                    assetLayoutDto = (AssetLayoutDto) compositeDecoderB.w(serialDescriptor, 3, (DeserializationStrategy) lazyArr[3].getF71699b(), assetLayoutDto);
                    i2 |= 8;
                    break;
                case 4:
                    ratioDto = (RatioDto) compositeDecoderB.w(serialDescriptor, 4, (DeserializationStrategy) lazyArr[4].getF71699b(), ratioDto);
                    i2 |= 16;
                    break;
                case 5:
                    targetingDto = (TargetingDto) compositeDecoderB.m(serialDescriptor, 5, TargetingDto$$serializer.f45359a, targetingDto);
                    i2 |= 32;
                    break;
                default:
                    b21.l(iN);
                    return null;
            }
        }
        compositeDecoderB.c(serialDescriptor);
        return new EditorialModuleDto.CardSectionDto(i2, editorialModuleTitlesDto, contributionLinkLegacyDto, assetDto, assetLayoutDto, ratioDto, targetingDto, (SerializationConstructorMarker) null);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        EditorialModuleDto.CardSectionDto cardSectionDto = (EditorialModuleDto.CardSectionDto) obj;
        cardSectionDto.getClass();
        ContributionLinkLegacyDto contributionLinkLegacyDto = cardSectionDto.f45274c;
        EditorialModuleTitlesDto editorialModuleTitlesDto = cardSectionDto.f45273b;
        SerialDescriptor serialDescriptor = descriptor;
        CompositeEncoder compositeEncoderB = encoder.b(serialDescriptor);
        Lazy[] lazyArr = EditorialModuleDto.CardSectionDto.f45272h;
        if (compositeEncoderB.o(serialDescriptor) || editorialModuleTitlesDto != null) {
            compositeEncoderB.h(serialDescriptor, 0, EditorialModuleTitlesDto$$serializer.f45343a, editorialModuleTitlesDto);
        }
        if (compositeEncoderB.o(serialDescriptor) || contributionLinkLegacyDto != null) {
            compositeEncoderB.h(serialDescriptor, 1, ContributionLinkLegacyDto$$serializer.f46033a, contributionLinkLegacyDto);
        }
        AssetDto$$serializer assetDto$$serializer = AssetDto$$serializer.f45238a;
        AssetDto assetDto = cardSectionDto.d;
        TargetingDto targetingDto = cardSectionDto.g;
        compositeEncoderB.A(serialDescriptor, 2, assetDto$$serializer, assetDto);
        compositeEncoderB.A(serialDescriptor, 3, (SerializationStrategy) lazyArr[3].getF71699b(), cardSectionDto.f45275e);
        compositeEncoderB.A(serialDescriptor, 4, (SerializationStrategy) lazyArr[4].getF71699b(), cardSectionDto.f45276f);
        if (compositeEncoderB.o(serialDescriptor) || targetingDto != null) {
            compositeEncoderB.h(serialDescriptor, 5, TargetingDto$$serializer.f45359a, targetingDto);
        }
        compositeEncoderB.c(serialDescriptor);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] e() {
        Lazy[] lazyArr = EditorialModuleDto.CardSectionDto.f45272h;
        return new KSerializer[]{BuiltinSerializersKt.d(EditorialModuleTitlesDto$$serializer.f45343a), BuiltinSerializersKt.d(ContributionLinkLegacyDto$$serializer.f46033a), AssetDto$$serializer.f45238a, lazyArr[3].getF71699b(), lazyArr[4].getF71699b(), BuiltinSerializersKt.d(TargetingDto$$serializer.f45359a)};
    }
}
