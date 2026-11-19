package com.vuitton.android.data.dto.immersivearticle;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.common.AssetImageDto;
import com.vuitton.android.data.dto.common.AssetImageDto$$serializer;
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
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001R\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"com/vuitton/android/data/dto/immersivearticle/ImmersiveArticleAssetDto.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleAssetDto;", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "a", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Deprecated
public final /* synthetic */ class ImmersiveArticleAssetDto$$serializer implements GeneratedSerializer<ImmersiveArticleAssetDto> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ImmersiveArticleAssetDto$$serializer f45778a;
    private static final SerialDescriptor descriptor;

    static {
        ImmersiveArticleAssetDto$$serializer immersiveArticleAssetDto$$serializer = new ImmersiveArticleAssetDto$$serializer();
        f45778a = immersiveArticleAssetDto$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vuitton.android.data.dto.immersivearticle.ImmersiveArticleAssetDto", immersiveArticleAssetDto$$serializer, 4);
        pluginGeneratedSerialDescriptor.k("image", true);
        pluginGeneratedSerialDescriptor.k("video", true);
        pluginGeneratedSerialDescriptor.k("caption", true);
        pluginGeneratedSerialDescriptor.k("ratio", true);
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
        Lazy[] lazyArr = ImmersiveArticleAssetDto.f45774e;
        boolean z = true;
        int i2 = 0;
        AssetImageDto assetImageDto = null;
        AssetVideoDto assetVideoDto = null;
        String str = null;
        ImmersiveArticleSizeCardDto immersiveArticleSizeCardDto = null;
        while (z) {
            int iN = compositeDecoderB.n(serialDescriptor);
            if (iN == -1) {
                z = false;
            } else if (iN == 0) {
                assetImageDto = (AssetImageDto) compositeDecoderB.m(serialDescriptor, 0, AssetImageDto$$serializer.f45243a, assetImageDto);
                i2 |= 1;
            } else if (iN == 1) {
                assetVideoDto = (AssetVideoDto) compositeDecoderB.m(serialDescriptor, 1, AssetVideoDto$$serializer.f45250a, assetVideoDto);
                i2 |= 2;
            } else if (iN == 2) {
                str = (String) compositeDecoderB.m(serialDescriptor, 2, StringSerializer.f75684a, str);
                i2 |= 4;
            } else {
                if (iN != 3) {
                    b21.l(iN);
                    return null;
                }
                immersiveArticleSizeCardDto = (ImmersiveArticleSizeCardDto) compositeDecoderB.m(serialDescriptor, 3, (DeserializationStrategy) lazyArr[3].getF71699b(), immersiveArticleSizeCardDto);
                i2 |= 8;
            }
        }
        compositeDecoderB.c(serialDescriptor);
        return new ImmersiveArticleAssetDto(i2, assetImageDto, assetVideoDto, str, immersiveArticleSizeCardDto, (SerializationConstructorMarker) null);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        ImmersiveArticleAssetDto immersiveArticleAssetDto = (ImmersiveArticleAssetDto) obj;
        immersiveArticleAssetDto.getClass();
        ImmersiveArticleSizeCardDto immersiveArticleSizeCardDto = immersiveArticleAssetDto.d;
        String str = immersiveArticleAssetDto.f45777c;
        AssetVideoDto assetVideoDto = immersiveArticleAssetDto.f45776b;
        AssetImageDto assetImageDto = immersiveArticleAssetDto.f45775a;
        SerialDescriptor serialDescriptor = descriptor;
        CompositeEncoder compositeEncoderB = encoder.b(serialDescriptor);
        Lazy[] lazyArr = ImmersiveArticleAssetDto.f45774e;
        if (compositeEncoderB.o(serialDescriptor) || assetImageDto != null) {
            compositeEncoderB.h(serialDescriptor, 0, AssetImageDto$$serializer.f45243a, assetImageDto);
        }
        if (compositeEncoderB.o(serialDescriptor) || assetVideoDto != null) {
            compositeEncoderB.h(serialDescriptor, 1, AssetVideoDto$$serializer.f45250a, assetVideoDto);
        }
        if (compositeEncoderB.o(serialDescriptor) || str != null) {
            compositeEncoderB.h(serialDescriptor, 2, StringSerializer.f75684a, str);
        }
        if (compositeEncoderB.o(serialDescriptor) || immersiveArticleSizeCardDto != null) {
            compositeEncoderB.h(serialDescriptor, 3, (SerializationStrategy) lazyArr[3].getF71699b(), immersiveArticleSizeCardDto);
        }
        compositeEncoderB.c(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] e() {
        return new KSerializer[]{BuiltinSerializersKt.d(AssetImageDto$$serializer.f45243a), BuiltinSerializersKt.d(AssetVideoDto$$serializer.f45250a), BuiltinSerializersKt.d(StringSerializer.f75684a), BuiltinSerializersKt.d((KSerializer) ImmersiveArticleAssetDto.f45774e[3].getF71699b())};
    }
}
