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

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001R\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"com/vuitton/android/data/dto/immersivearticle/ImmersiveArticleVideoDataDto.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleVideoDataDto;", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "a", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Deprecated
public final /* synthetic */ class ImmersiveArticleVideoDataDto$$serializer implements GeneratedSerializer<ImmersiveArticleVideoDataDto> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ImmersiveArticleVideoDataDto$$serializer f45954a;
    private static final SerialDescriptor descriptor;

    static {
        ImmersiveArticleVideoDataDto$$serializer immersiveArticleVideoDataDto$$serializer = new ImmersiveArticleVideoDataDto$$serializer();
        f45954a = immersiveArticleVideoDataDto$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vuitton.android.data.dto.immersivearticle.ImmersiveArticleVideoDataDto", immersiveArticleVideoDataDto$$serializer, 2);
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
        Lazy[] lazyArr = ImmersiveArticleVideoDataDto.f45951c;
        boolean z = true;
        int i2 = 0;
        ImmersiveArticleSizeCardDto immersiveArticleSizeCardDto = null;
        AssetDto assetDto = null;
        while (z) {
            int iN = compositeDecoderB.n(serialDescriptor);
            if (iN == -1) {
                z = false;
            } else if (iN == 0) {
                immersiveArticleSizeCardDto = (ImmersiveArticleSizeCardDto) compositeDecoderB.m(serialDescriptor, 0, (DeserializationStrategy) lazyArr[0].getF71699b(), immersiveArticleSizeCardDto);
                i2 |= 1;
            } else {
                if (iN != 1) {
                    b21.l(iN);
                    return null;
                }
                assetDto = (AssetDto) compositeDecoderB.m(serialDescriptor, 1, AssetDto$$serializer.f45238a, assetDto);
                i2 |= 2;
            }
        }
        compositeDecoderB.c(serialDescriptor);
        return new ImmersiveArticleVideoDataDto(i2, immersiveArticleSizeCardDto, assetDto, (SerializationConstructorMarker) null);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        ImmersiveArticleVideoDataDto immersiveArticleVideoDataDto = (ImmersiveArticleVideoDataDto) obj;
        immersiveArticleVideoDataDto.getClass();
        AssetDto assetDto = immersiveArticleVideoDataDto.f45953b;
        ImmersiveArticleSizeCardDto immersiveArticleSizeCardDto = immersiveArticleVideoDataDto.f45952a;
        SerialDescriptor serialDescriptor = descriptor;
        CompositeEncoder compositeEncoderB = encoder.b(serialDescriptor);
        Lazy[] lazyArr = ImmersiveArticleVideoDataDto.f45951c;
        if (compositeEncoderB.o(serialDescriptor) || immersiveArticleSizeCardDto != null) {
            compositeEncoderB.h(serialDescriptor, 0, (SerializationStrategy) lazyArr[0].getF71699b(), immersiveArticleSizeCardDto);
        }
        if (compositeEncoderB.o(serialDescriptor) || assetDto != null) {
            compositeEncoderB.h(serialDescriptor, 1, AssetDto$$serializer.f45238a, assetDto);
        }
        compositeEncoderB.c(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] e() {
        return new KSerializer[]{BuiltinSerializersKt.d((KSerializer) ImmersiveArticleVideoDataDto.f45951c[0].getF71699b()), BuiltinSerializersKt.d(AssetDto$$serializer.f45238a)};
    }
}
