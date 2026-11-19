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
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001R\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"com/vuitton/android/data/dto/immersivearticle/ImmersiveArticleEventDataDto.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleEventDataDto;", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "a", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Deprecated
public final /* synthetic */ class ImmersiveArticleEventDataDto$$serializer implements GeneratedSerializer<ImmersiveArticleEventDataDto> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ImmersiveArticleEventDataDto$$serializer f45833a;
    private static final SerialDescriptor descriptor;

    static {
        ImmersiveArticleEventDataDto$$serializer immersiveArticleEventDataDto$$serializer = new ImmersiveArticleEventDataDto$$serializer();
        f45833a = immersiveArticleEventDataDto$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vuitton.android.data.dto.immersivearticle.ImmersiveArticleEventDataDto", immersiveArticleEventDataDto$$serializer, 6);
        pluginGeneratedSerialDescriptor.k("titlesDuringCountdown", false);
        pluginGeneratedSerialDescriptor.k("titlesAfterCountdown", false);
        pluginGeneratedSerialDescriptor.k("asset", false);
        pluginGeneratedSerialDescriptor.k("ratio", false);
        pluginGeneratedSerialDescriptor.k("content", true);
        pluginGeneratedSerialDescriptor.k("deadline", false);
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
        Lazy[] lazyArr = ImmersiveArticleEventDataDto.g;
        boolean z = true;
        int i2 = 0;
        ImmersiveArticleTitlesDto immersiveArticleTitlesDto = null;
        ImmersiveArticleTitlesDto immersiveArticleTitlesDto2 = null;
        AssetDto assetDto = null;
        ImmersiveArticleSizeCardDto immersiveArticleSizeCardDto = null;
        ImmersiveArticleEventContentDto immersiveArticleEventContentDto = null;
        String strL = null;
        while (z) {
            int iN = compositeDecoderB.n(serialDescriptor);
            switch (iN) {
                case -1:
                    z = false;
                    break;
                case 0:
                    immersiveArticleTitlesDto = (ImmersiveArticleTitlesDto) compositeDecoderB.w(serialDescriptor, 0, ImmersiveArticleTitlesDto$$serializer.f45946a, immersiveArticleTitlesDto);
                    i2 |= 1;
                    break;
                case 1:
                    immersiveArticleTitlesDto2 = (ImmersiveArticleTitlesDto) compositeDecoderB.w(serialDescriptor, 1, ImmersiveArticleTitlesDto$$serializer.f45946a, immersiveArticleTitlesDto2);
                    i2 |= 2;
                    break;
                case 2:
                    assetDto = (AssetDto) compositeDecoderB.w(serialDescriptor, 2, AssetDto$$serializer.f45238a, assetDto);
                    i2 |= 4;
                    break;
                case 3:
                    immersiveArticleSizeCardDto = (ImmersiveArticleSizeCardDto) compositeDecoderB.w(serialDescriptor, 3, (DeserializationStrategy) lazyArr[3].getF71699b(), immersiveArticleSizeCardDto);
                    i2 |= 8;
                    break;
                case 4:
                    immersiveArticleEventContentDto = (ImmersiveArticleEventContentDto) compositeDecoderB.m(serialDescriptor, 4, ImmersiveArticleEventContentDto$$serializer.f45827a, immersiveArticleEventContentDto);
                    i2 |= 16;
                    break;
                case 5:
                    strL = compositeDecoderB.l(serialDescriptor, 5);
                    i2 |= 32;
                    break;
                default:
                    b21.l(iN);
                    return null;
            }
        }
        compositeDecoderB.c(serialDescriptor);
        return new ImmersiveArticleEventDataDto(i2, immersiveArticleTitlesDto, immersiveArticleTitlesDto2, assetDto, immersiveArticleSizeCardDto, immersiveArticleEventContentDto, strL, (SerializationConstructorMarker) null);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        ImmersiveArticleEventDataDto immersiveArticleEventDataDto = (ImmersiveArticleEventDataDto) obj;
        immersiveArticleEventDataDto.getClass();
        SerialDescriptor serialDescriptor = descriptor;
        CompositeEncoder compositeEncoderB = encoder.b(serialDescriptor);
        Lazy[] lazyArr = ImmersiveArticleEventDataDto.g;
        ImmersiveArticleTitlesDto$$serializer immersiveArticleTitlesDto$$serializer = ImmersiveArticleTitlesDto$$serializer.f45946a;
        ImmersiveArticleTitlesDto immersiveArticleTitlesDto = immersiveArticleEventDataDto.f45828a;
        ImmersiveArticleEventContentDto immersiveArticleEventContentDto = immersiveArticleEventDataDto.f45831e;
        compositeEncoderB.A(serialDescriptor, 0, immersiveArticleTitlesDto$$serializer, immersiveArticleTitlesDto);
        compositeEncoderB.A(serialDescriptor, 1, immersiveArticleTitlesDto$$serializer, immersiveArticleEventDataDto.f45829b);
        compositeEncoderB.A(serialDescriptor, 2, AssetDto$$serializer.f45238a, immersiveArticleEventDataDto.f45830c);
        compositeEncoderB.A(serialDescriptor, 3, (SerializationStrategy) lazyArr[3].getF71699b(), immersiveArticleEventDataDto.d);
        if (compositeEncoderB.o(serialDescriptor) || immersiveArticleEventContentDto != null) {
            compositeEncoderB.h(serialDescriptor, 4, ImmersiveArticleEventContentDto$$serializer.f45827a, immersiveArticleEventContentDto);
        }
        compositeEncoderB.y(serialDescriptor, 5, immersiveArticleEventDataDto.f45832f);
        compositeEncoderB.c(serialDescriptor);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] e() {
        Lazy[] lazyArr = ImmersiveArticleEventDataDto.g;
        ImmersiveArticleTitlesDto$$serializer immersiveArticleTitlesDto$$serializer = ImmersiveArticleTitlesDto$$serializer.f45946a;
        return new KSerializer[]{immersiveArticleTitlesDto$$serializer, immersiveArticleTitlesDto$$serializer, AssetDto$$serializer.f45238a, lazyArr[3].getF71699b(), BuiltinSerializersKt.d(ImmersiveArticleEventContentDto$$serializer.f45827a), StringSerializer.f75684a};
    }
}
