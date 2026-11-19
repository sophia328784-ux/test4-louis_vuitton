package com.vuitton.android.data.dto.immersivearticle;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.common.AssetDto;
import com.vuitton.android.data.dto.common.AssetDto$$serializer;
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
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001R\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"com/vuitton/android/data/dto/immersivearticle/ImmersiveArticleAssetDataDto.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleAssetDataDto;", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "a", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Deprecated
public final /* synthetic */ class ImmersiveArticleAssetDataDto$$serializer implements GeneratedSerializer<ImmersiveArticleAssetDataDto> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ImmersiveArticleAssetDataDto$$serializer f45773a;
    private static final SerialDescriptor descriptor;

    static {
        ImmersiveArticleAssetDataDto$$serializer immersiveArticleAssetDataDto$$serializer = new ImmersiveArticleAssetDataDto$$serializer();
        f45773a = immersiveArticleAssetDataDto$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vuitton.android.data.dto.immersivearticle.ImmersiveArticleAssetDataDto", immersiveArticleAssetDataDto$$serializer, 6);
        pluginGeneratedSerialDescriptor.k("title", true);
        pluginGeneratedSerialDescriptor.k("titleFont", true);
        pluginGeneratedSerialDescriptor.k("surtitle", true);
        pluginGeneratedSerialDescriptor.k("surtitleFont", true);
        pluginGeneratedSerialDescriptor.k("ratio", true);
        pluginGeneratedSerialDescriptor.k("asset", true);
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
        Lazy[] lazyArr = ImmersiveArticleAssetDataDto.g;
        boolean z = true;
        int i2 = 0;
        String str = null;
        ImmersiveArticleFontDto immersiveArticleFontDto = null;
        String str2 = null;
        ImmersiveArticleFontDto immersiveArticleFontDto2 = null;
        ImmersiveArticleSizeCardDto immersiveArticleSizeCardDto = null;
        AssetDto assetDto = null;
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
                    immersiveArticleFontDto = (ImmersiveArticleFontDto) compositeDecoderB.m(serialDescriptor, 1, (DeserializationStrategy) lazyArr[1].getF71699b(), immersiveArticleFontDto);
                    i2 |= 2;
                    break;
                case 2:
                    str2 = (String) compositeDecoderB.m(serialDescriptor, 2, StringSerializer.f75684a, str2);
                    i2 |= 4;
                    break;
                case 3:
                    immersiveArticleFontDto2 = (ImmersiveArticleFontDto) compositeDecoderB.m(serialDescriptor, 3, (DeserializationStrategy) lazyArr[3].getF71699b(), immersiveArticleFontDto2);
                    i2 |= 8;
                    break;
                case 4:
                    immersiveArticleSizeCardDto = (ImmersiveArticleSizeCardDto) compositeDecoderB.m(serialDescriptor, 4, (DeserializationStrategy) lazyArr[4].getF71699b(), immersiveArticleSizeCardDto);
                    i2 |= 16;
                    break;
                case 5:
                    assetDto = (AssetDto) compositeDecoderB.m(serialDescriptor, 5, AssetDto$$serializer.f45238a, assetDto);
                    i2 |= 32;
                    break;
                default:
                    b21.l(iN);
                    return null;
            }
        }
        compositeDecoderB.c(serialDescriptor);
        return new ImmersiveArticleAssetDataDto(i2, str, immersiveArticleFontDto, str2, immersiveArticleFontDto2, immersiveArticleSizeCardDto, assetDto, (SerializationConstructorMarker) null);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        ImmersiveArticleAssetDataDto immersiveArticleAssetDataDto = (ImmersiveArticleAssetDataDto) obj;
        immersiveArticleAssetDataDto.getClass();
        AssetDto assetDto = immersiveArticleAssetDataDto.f45772f;
        ImmersiveArticleSizeCardDto immersiveArticleSizeCardDto = immersiveArticleAssetDataDto.f45771e;
        ImmersiveArticleFontDto immersiveArticleFontDto = immersiveArticleAssetDataDto.d;
        String str = immersiveArticleAssetDataDto.f45770c;
        ImmersiveArticleFontDto immersiveArticleFontDto2 = immersiveArticleAssetDataDto.f45769b;
        String str2 = immersiveArticleAssetDataDto.f45768a;
        SerialDescriptor serialDescriptor = descriptor;
        CompositeEncoder compositeEncoderB = encoder.b(serialDescriptor);
        Lazy[] lazyArr = ImmersiveArticleAssetDataDto.g;
        if (compositeEncoderB.o(serialDescriptor) || str2 != null) {
            compositeEncoderB.h(serialDescriptor, 0, StringSerializer.f75684a, str2);
        }
        if (compositeEncoderB.o(serialDescriptor) || immersiveArticleFontDto2 != null) {
            compositeEncoderB.h(serialDescriptor, 1, (SerializationStrategy) lazyArr[1].getF71699b(), immersiveArticleFontDto2);
        }
        if (compositeEncoderB.o(serialDescriptor) || str != null) {
            compositeEncoderB.h(serialDescriptor, 2, StringSerializer.f75684a, str);
        }
        if (compositeEncoderB.o(serialDescriptor) || immersiveArticleFontDto != null) {
            compositeEncoderB.h(serialDescriptor, 3, (SerializationStrategy) lazyArr[3].getF71699b(), immersiveArticleFontDto);
        }
        if (compositeEncoderB.o(serialDescriptor) || immersiveArticleSizeCardDto != null) {
            compositeEncoderB.h(serialDescriptor, 4, (SerializationStrategy) lazyArr[4].getF71699b(), immersiveArticleSizeCardDto);
        }
        if (compositeEncoderB.o(serialDescriptor) || assetDto != null) {
            compositeEncoderB.h(serialDescriptor, 5, AssetDto$$serializer.f45238a, assetDto);
        }
        compositeEncoderB.c(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] e() {
        Lazy[] lazyArr = ImmersiveArticleAssetDataDto.g;
        StringSerializer stringSerializer = StringSerializer.f75684a;
        return new KSerializer[]{BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d((KSerializer) lazyArr[1].getF71699b()), BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d((KSerializer) lazyArr[3].getF71699b()), BuiltinSerializersKt.d((KSerializer) lazyArr[4].getF71699b()), BuiltinSerializersKt.d(AssetDto$$serializer.f45238a)};
    }
}
