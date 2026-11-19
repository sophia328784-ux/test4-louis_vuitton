package com.vuitton.android.data.dto.common.editorial;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.common.AssetDto;
import com.vuitton.android.data.dto.common.AssetDto$$serializer;
import com.vuitton.android.data.dto.common.AssetVideoDto;
import com.vuitton.android.data.dto.common.AssetVideoDto$$serializer;
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
import kotlinx.serialization.internal.StringSerializer;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001R\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"com/vuitton/android/data/dto/common/editorial/EditorialModuleDto.LiveSectionDto.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$LiveSectionDto;", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "a", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Deprecated
public final /* synthetic */ class EditorialModuleDto$LiveSectionDto$$serializer implements GeneratedSerializer<EditorialModuleDto.LiveSectionDto> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final EditorialModuleDto$LiveSectionDto$$serializer f45315a;
    private static final SerialDescriptor descriptor;

    static {
        EditorialModuleDto$LiveSectionDto$$serializer editorialModuleDto$LiveSectionDto$$serializer = new EditorialModuleDto$LiveSectionDto$$serializer();
        f45315a = editorialModuleDto$LiveSectionDto$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vuitton.android.data.dto.common.editorial.EditorialModuleDto.LiveSectionDto", editorialModuleDto$LiveSectionDto$$serializer, 7);
        pluginGeneratedSerialDescriptor.k("title", true);
        pluginGeneratedSerialDescriptor.k("asset", false);
        pluginGeneratedSerialDescriptor.k("ratio", false);
        pluginGeneratedSerialDescriptor.k("surtitleAfter", true);
        pluginGeneratedSerialDescriptor.k("targeting", true);
        pluginGeneratedSerialDescriptor.k("video", false);
        pluginGeneratedSerialDescriptor.k("format", false);
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
        Lazy[] lazyArr = EditorialModuleDto.LiveSectionDto.f45309i;
        Object obj = null;
        boolean z = true;
        int i2 = 0;
        String str = null;
        AssetDto assetDto = null;
        RatioDto ratioDto = null;
        String str2 = null;
        TargetingDto targetingDto = null;
        AssetVideoDto assetVideoDto = null;
        LiveFormatDto liveFormatDto = null;
        while (z) {
            int iN = compositeDecoderB.n(serialDescriptor);
            switch (iN) {
                case -1:
                    z = false;
                    continue;
                case 0:
                    str = (String) compositeDecoderB.m(serialDescriptor, 0, StringSerializer.f75684a, str);
                    i2 |= 1;
                    break;
                case 1:
                    assetDto = (AssetDto) compositeDecoderB.w(serialDescriptor, 1, AssetDto$$serializer.f45238a, assetDto);
                    i2 |= 2;
                    break;
                case 2:
                    ratioDto = (RatioDto) compositeDecoderB.w(serialDescriptor, 2, (DeserializationStrategy) lazyArr[2].getF71699b(), ratioDto);
                    i2 |= 4;
                    break;
                case 3:
                    str2 = (String) compositeDecoderB.m(serialDescriptor, 3, StringSerializer.f75684a, str2);
                    i2 |= 8;
                    break;
                case 4:
                    targetingDto = (TargetingDto) compositeDecoderB.m(serialDescriptor, 4, TargetingDto$$serializer.f45359a, targetingDto);
                    i2 |= 16;
                    break;
                case 5:
                    assetVideoDto = (AssetVideoDto) compositeDecoderB.w(serialDescriptor, 5, AssetVideoDto$$serializer.f45250a, assetVideoDto);
                    i2 |= 32;
                    break;
                case 6:
                    liveFormatDto = (LiveFormatDto) compositeDecoderB.w(serialDescriptor, 6, (DeserializationStrategy) lazyArr[6].getF71699b(), liveFormatDto);
                    i2 |= 64;
                    break;
                default:
                    b21.l(iN);
                    return obj;
            }
            obj = null;
        }
        compositeDecoderB.c(serialDescriptor);
        return new EditorialModuleDto.LiveSectionDto(i2, str, assetDto, ratioDto, str2, targetingDto, assetVideoDto, liveFormatDto, (SerializationConstructorMarker) null);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        EditorialModuleDto.LiveSectionDto liveSectionDto = (EditorialModuleDto.LiveSectionDto) obj;
        liveSectionDto.getClass();
        String str = liveSectionDto.f45310b;
        SerialDescriptor serialDescriptor = descriptor;
        CompositeEncoder compositeEncoderB = encoder.b(serialDescriptor);
        Lazy[] lazyArr = EditorialModuleDto.LiveSectionDto.f45309i;
        if (compositeEncoderB.o(serialDescriptor) || str != null) {
            compositeEncoderB.h(serialDescriptor, 0, StringSerializer.f75684a, str);
        }
        AssetDto$$serializer assetDto$$serializer = AssetDto$$serializer.f45238a;
        AssetDto assetDto = liveSectionDto.f45311c;
        TargetingDto targetingDto = liveSectionDto.f45313f;
        String str2 = liveSectionDto.f45312e;
        compositeEncoderB.A(serialDescriptor, 1, assetDto$$serializer, assetDto);
        compositeEncoderB.A(serialDescriptor, 2, (SerializationStrategy) lazyArr[2].getF71699b(), liveSectionDto.d);
        if (compositeEncoderB.o(serialDescriptor) || str2 != null) {
            compositeEncoderB.h(serialDescriptor, 3, StringSerializer.f75684a, str2);
        }
        if (compositeEncoderB.o(serialDescriptor) || targetingDto != null) {
            compositeEncoderB.h(serialDescriptor, 4, TargetingDto$$serializer.f45359a, targetingDto);
        }
        compositeEncoderB.A(serialDescriptor, 5, AssetVideoDto$$serializer.f45250a, liveSectionDto.g);
        compositeEncoderB.A(serialDescriptor, 6, (SerializationStrategy) lazyArr[6].getF71699b(), liveSectionDto.f45314h);
        compositeEncoderB.c(serialDescriptor);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] e() {
        Lazy[] lazyArr = EditorialModuleDto.LiveSectionDto.f45309i;
        StringSerializer stringSerializer = StringSerializer.f75684a;
        return new KSerializer[]{BuiltinSerializersKt.d(stringSerializer), AssetDto$$serializer.f45238a, lazyArr[2].getF71699b(), BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(TargetingDto$$serializer.f45359a), AssetVideoDto$$serializer.f45250a, lazyArr[6].getF71699b()};
    }
}
