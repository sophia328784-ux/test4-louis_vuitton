package com.vuitton.android.data.dto.common.editorial;

import com.batch.android.s.b;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.common.AssetDto;
import com.vuitton.android.data.dto.common.AssetDto$$serializer;
import com.vuitton.android.data.dto.linktype.ContributionLinkLegacyDto;
import com.vuitton.android.data.dto.linktype.ContributionLinkLegacyDto$$serializer;
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
import kotlinx.serialization.internal.GeneratedSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import kotlinx.serialization.internal.StringSerializer;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001R\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"com/vuitton/android/data/dto/common/editorial/EditorialModuleSlideDto.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleSlideDto;", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "a", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Deprecated
public final /* synthetic */ class EditorialModuleSlideDto$$serializer implements GeneratedSerializer<EditorialModuleSlideDto> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final EditorialModuleSlideDto$$serializer f45336a;
    private static final SerialDescriptor descriptor;

    static {
        EditorialModuleSlideDto$$serializer editorialModuleSlideDto$$serializer = new EditorialModuleSlideDto$$serializer();
        f45336a = editorialModuleSlideDto$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vuitton.android.data.dto.common.editorial.EditorialModuleSlideDto", editorialModuleSlideDto$$serializer, 5);
        pluginGeneratedSerialDescriptor.k(b.a.f24015b, false);
        pluginGeneratedSerialDescriptor.k("titles", true);
        pluginGeneratedSerialDescriptor.k("asset", false);
        pluginGeneratedSerialDescriptor.k("link", false);
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
        boolean z = true;
        int i2 = 0;
        String strL = null;
        EditorialModuleTitlesDto editorialModuleTitlesDto = null;
        AssetDto assetDto = null;
        ContributionLinkLegacyDto contributionLinkLegacyDto = null;
        TargetingDto targetingDto = null;
        while (z) {
            int iN = compositeDecoderB.n(serialDescriptor);
            if (iN == -1) {
                z = false;
            } else if (iN == 0) {
                strL = compositeDecoderB.l(serialDescriptor, 0);
                i2 |= 1;
            } else if (iN == 1) {
                editorialModuleTitlesDto = (EditorialModuleTitlesDto) compositeDecoderB.m(serialDescriptor, 1, EditorialModuleTitlesDto$$serializer.f45343a, editorialModuleTitlesDto);
                i2 |= 2;
            } else if (iN == 2) {
                assetDto = (AssetDto) compositeDecoderB.w(serialDescriptor, 2, AssetDto$$serializer.f45238a, assetDto);
                i2 |= 4;
            } else if (iN == 3) {
                contributionLinkLegacyDto = (ContributionLinkLegacyDto) compositeDecoderB.w(serialDescriptor, 3, ContributionLinkLegacyDto$$serializer.f46033a, contributionLinkLegacyDto);
                i2 |= 8;
            } else {
                if (iN != 4) {
                    b21.l(iN);
                    return null;
                }
                targetingDto = (TargetingDto) compositeDecoderB.m(serialDescriptor, 4, TargetingDto$$serializer.f45359a, targetingDto);
                i2 |= 16;
            }
        }
        compositeDecoderB.c(serialDescriptor);
        return new EditorialModuleSlideDto(i2, strL, editorialModuleTitlesDto, assetDto, contributionLinkLegacyDto, targetingDto, (SerializationConstructorMarker) null);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        EditorialModuleSlideDto editorialModuleSlideDto = (EditorialModuleSlideDto) obj;
        editorialModuleSlideDto.getClass();
        SerialDescriptor serialDescriptor = descriptor;
        CompositeEncoder compositeEncoderB = encoder.b(serialDescriptor);
        String str = editorialModuleSlideDto.f45332a;
        TargetingDto targetingDto = editorialModuleSlideDto.f45335e;
        EditorialModuleTitlesDto editorialModuleTitlesDto = editorialModuleSlideDto.f45333b;
        compositeEncoderB.y(serialDescriptor, 0, str);
        if (compositeEncoderB.o(serialDescriptor) || editorialModuleTitlesDto != null) {
            compositeEncoderB.h(serialDescriptor, 1, EditorialModuleTitlesDto$$serializer.f45343a, editorialModuleTitlesDto);
        }
        compositeEncoderB.A(serialDescriptor, 2, AssetDto$$serializer.f45238a, editorialModuleSlideDto.f45334c);
        compositeEncoderB.A(serialDescriptor, 3, ContributionLinkLegacyDto$$serializer.f46033a, editorialModuleSlideDto.d);
        if (compositeEncoderB.o(serialDescriptor) || targetingDto != null) {
            compositeEncoderB.h(serialDescriptor, 4, TargetingDto$$serializer.f45359a, targetingDto);
        }
        compositeEncoderB.c(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] e() {
        return new KSerializer[]{StringSerializer.f75684a, BuiltinSerializersKt.d(EditorialModuleTitlesDto$$serializer.f45343a), AssetDto$$serializer.f45238a, ContributionLinkLegacyDto$$serializer.f46033a, BuiltinSerializersKt.d(TargetingDto$$serializer.f45359a)};
    }
}
