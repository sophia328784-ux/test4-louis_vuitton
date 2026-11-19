package com.vuitton.android.data.dto.common.editorial;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.common.AssetImageDto;
import com.vuitton.android.data.dto.common.AssetImageDto$$serializer;
import com.vuitton.android.data.dto.common.IconDto;
import com.vuitton.android.data.dto.linktype.ContributionLinkDto;
import com.vuitton.android.data.dto.linktype.ContributionLinkDtoSerializer;
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
import kotlinx.serialization.internal.StringSerializer;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001R\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"com/vuitton/android/data/dto/common/editorial/EditorialModuleDto.PushCardSectionDto.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$PushCardSectionDto;", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "a", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Deprecated
public final /* synthetic */ class EditorialModuleDto$PushCardSectionDto$$serializer implements GeneratedSerializer<EditorialModuleDto.PushCardSectionDto> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final EditorialModuleDto$PushCardSectionDto$$serializer f45325a;
    private static final SerialDescriptor descriptor;

    static {
        EditorialModuleDto$PushCardSectionDto$$serializer editorialModuleDto$PushCardSectionDto$$serializer = new EditorialModuleDto$PushCardSectionDto$$serializer();
        f45325a = editorialModuleDto$PushCardSectionDto$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vuitton.android.data.dto.common.editorial.EditorialModuleDto.PushCardSectionDto", editorialModuleDto$PushCardSectionDto$$serializer, 5);
        pluginGeneratedSerialDescriptor.k("title", false);
        pluginGeneratedSerialDescriptor.k("description", false);
        pluginGeneratedSerialDescriptor.k("link", false);
        pluginGeneratedSerialDescriptor.k("icon", false);
        pluginGeneratedSerialDescriptor.k("image", false);
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
        Lazy[] lazyArr = EditorialModuleDto.PushCardSectionDto.g;
        boolean z = true;
        int i2 = 0;
        String strL = null;
        String strL2 = null;
        ContributionLinkDto contributionLinkDto = null;
        IconDto iconDto = null;
        AssetImageDto assetImageDto = null;
        while (z) {
            int iN = compositeDecoderB.n(serialDescriptor);
            if (iN == -1) {
                z = false;
            } else if (iN == 0) {
                strL = compositeDecoderB.l(serialDescriptor, 0);
                i2 |= 1;
            } else if (iN == 1) {
                strL2 = compositeDecoderB.l(serialDescriptor, 1);
                i2 |= 2;
            } else if (iN == 2) {
                contributionLinkDto = (ContributionLinkDto) compositeDecoderB.w(serialDescriptor, 2, ContributionLinkDtoSerializer.f46019c, contributionLinkDto);
                i2 |= 4;
            } else if (iN == 3) {
                iconDto = (IconDto) compositeDecoderB.m(serialDescriptor, 3, (DeserializationStrategy) lazyArr[3].getF71699b(), iconDto);
                i2 |= 8;
            } else {
                if (iN != 4) {
                    b21.l(iN);
                    return null;
                }
                assetImageDto = (AssetImageDto) compositeDecoderB.m(serialDescriptor, 4, AssetImageDto$$serializer.f45243a, assetImageDto);
                i2 |= 16;
            }
        }
        compositeDecoderB.c(serialDescriptor);
        return new EditorialModuleDto.PushCardSectionDto(i2, strL, strL2, contributionLinkDto, iconDto, assetImageDto, null);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        EditorialModuleDto.PushCardSectionDto pushCardSectionDto = (EditorialModuleDto.PushCardSectionDto) obj;
        pushCardSectionDto.getClass();
        SerialDescriptor serialDescriptor = descriptor;
        CompositeEncoder compositeEncoderB = encoder.b(serialDescriptor);
        Lazy[] lazyArr = EditorialModuleDto.PushCardSectionDto.g;
        compositeEncoderB.y(serialDescriptor, 0, pushCardSectionDto.f45321b);
        compositeEncoderB.y(serialDescriptor, 1, pushCardSectionDto.f45322c);
        compositeEncoderB.A(serialDescriptor, 2, ContributionLinkDtoSerializer.f46019c, pushCardSectionDto.d);
        compositeEncoderB.h(serialDescriptor, 3, (SerializationStrategy) lazyArr[3].getF71699b(), pushCardSectionDto.f45323e);
        compositeEncoderB.h(serialDescriptor, 4, AssetImageDto$$serializer.f45243a, pushCardSectionDto.f45324f);
        compositeEncoderB.c(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] e() {
        KSerializer kSerializerD = BuiltinSerializersKt.d((KSerializer) EditorialModuleDto.PushCardSectionDto.g[3].getF71699b());
        KSerializer kSerializerD2 = BuiltinSerializersKt.d(AssetImageDto$$serializer.f45243a);
        StringSerializer stringSerializer = StringSerializer.f75684a;
        return new KSerializer[]{stringSerializer, stringSerializer, ContributionLinkDtoSerializer.f46019c, kSerializerD, kSerializerD2};
    }
}
