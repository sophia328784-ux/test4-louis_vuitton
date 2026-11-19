package com.vuitton.android.data.dto.immersivearticle;

import com.networkbench.agent.impl.harvest.ConfigurationName;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.common.AssetDto;
import com.vuitton.android.data.dto.common.AssetDto$$serializer;
import com.vuitton.android.data.dto.linktype.LinkTypeDto;
import com.vuitton.android.data.dto.linktype.LinkTypeDtoSerializer;
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
import kotlinx.serialization.internal.StringSerializer;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001R\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"com/vuitton/android/data/dto/immersivearticle/ImmersiveArticleCtaDataDto.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleCtaDataDto;", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "a", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Deprecated
public final /* synthetic */ class ImmersiveArticleCtaDataDto$$serializer implements GeneratedSerializer<ImmersiveArticleCtaDataDto> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ImmersiveArticleCtaDataDto$$serializer f45811a;
    private static final SerialDescriptor descriptor;

    static {
        ImmersiveArticleCtaDataDto$$serializer immersiveArticleCtaDataDto$$serializer = new ImmersiveArticleCtaDataDto$$serializer();
        f45811a = immersiveArticleCtaDataDto$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vuitton.android.data.dto.immersivearticle.ImmersiveArticleCtaDataDto", immersiveArticleCtaDataDto$$serializer, 11);
        pluginGeneratedSerialDescriptor.k("title", true);
        pluginGeneratedSerialDescriptor.k("titleFont", true);
        pluginGeneratedSerialDescriptor.k("surtitle", true);
        pluginGeneratedSerialDescriptor.k("surtitleFont", true);
        pluginGeneratedSerialDescriptor.k("ratio", true);
        pluginGeneratedSerialDescriptor.k("video", true);
        pluginGeneratedSerialDescriptor.k("looks", true);
        pluginGeneratedSerialDescriptor.k("link", true);
        pluginGeneratedSerialDescriptor.k("linkType", true);
        pluginGeneratedSerialDescriptor.k("asset", true);
        pluginGeneratedSerialDescriptor.k(ConfigurationName.DOWNLOAD_PLUGIN_URL, true);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    @Override // kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    /* JADX INFO: renamed from: a */
    public final SerialDescriptor getF19838b() {
        return descriptor;
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public final Object b(Decoder decoder) {
        Lazy[] lazyArr;
        decoder.getClass();
        SerialDescriptor serialDescriptor = descriptor;
        CompositeDecoder compositeDecoderB = decoder.b(serialDescriptor);
        Lazy[] lazyArr2 = ImmersiveArticleCtaDataDto.l;
        String str = null;
        AssetDto assetDto = null;
        LinkTypeDto linkTypeDto = null;
        boolean z = true;
        String str2 = null;
        int i2 = 0;
        String str3 = null;
        ImmersiveArticleFontDto immersiveArticleFontDto = null;
        String str4 = null;
        ImmersiveArticleFontDto immersiveArticleFontDto2 = null;
        ImmersiveArticleSizeCardDto immersiveArticleSizeCardDto = null;
        ImmersiveArticleVideoDto immersiveArticleVideoDto = null;
        List list = null;
        while (true) {
            while (true) {
                if (!z) {
                    compositeDecoderB.c(serialDescriptor);
                    return new ImmersiveArticleCtaDataDto(i2, str3, immersiveArticleFontDto, str4, immersiveArticleFontDto2, immersiveArticleSizeCardDto, immersiveArticleVideoDto, list, str2, linkTypeDto, assetDto, str, (SerializationConstructorMarker) null);
                }
                int iN = compositeDecoderB.n(serialDescriptor);
                switch (iN) {
                    case -1:
                        z = false;
                        continue;
                        break;
                    case 0:
                        str3 = (String) compositeDecoderB.m(serialDescriptor, 0, StringSerializer.f75684a, str3);
                        i2 |= 1;
                        lazyArr2 = lazyArr2;
                        z = z;
                        continue;
                        break;
                    case 1:
                        lazyArr = lazyArr2;
                        immersiveArticleFontDto = (ImmersiveArticleFontDto) compositeDecoderB.m(serialDescriptor, 1, (DeserializationStrategy) lazyArr[1].getF71699b(), immersiveArticleFontDto);
                        i2 |= 2;
                        break;
                    case 2:
                        lazyArr = lazyArr2;
                        str4 = (String) compositeDecoderB.m(serialDescriptor, 2, StringSerializer.f75684a, str4);
                        i2 |= 4;
                        break;
                    case 3:
                        lazyArr = lazyArr2;
                        immersiveArticleFontDto2 = (ImmersiveArticleFontDto) compositeDecoderB.m(serialDescriptor, 3, (DeserializationStrategy) lazyArr[3].getF71699b(), immersiveArticleFontDto2);
                        i2 |= 8;
                        break;
                    case 4:
                        lazyArr = lazyArr2;
                        immersiveArticleSizeCardDto = (ImmersiveArticleSizeCardDto) compositeDecoderB.m(serialDescriptor, 4, (DeserializationStrategy) lazyArr[4].getF71699b(), immersiveArticleSizeCardDto);
                        i2 |= 16;
                        break;
                    case 5:
                        lazyArr = lazyArr2;
                        immersiveArticleVideoDto = (ImmersiveArticleVideoDto) compositeDecoderB.m(serialDescriptor, 5, ImmersiveArticleVideoDto$$serializer.f45958a, immersiveArticleVideoDto);
                        i2 |= 32;
                        break;
                    case 6:
                        lazyArr = lazyArr2;
                        list = (List) compositeDecoderB.m(serialDescriptor, 6, (DeserializationStrategy) lazyArr[6].getF71699b(), list);
                        i2 |= 64;
                        break;
                    case 7:
                        lazyArr = lazyArr2;
                        str2 = (String) compositeDecoderB.m(serialDescriptor, 7, StringSerializer.f75684a, str2);
                        i2 |= 128;
                        break;
                    case 8:
                        lazyArr = lazyArr2;
                        linkTypeDto = (LinkTypeDto) compositeDecoderB.m(serialDescriptor, 8, LinkTypeDtoSerializer.f46099a, linkTypeDto);
                        i2 |= 256;
                        break;
                    case 9:
                        lazyArr = lazyArr2;
                        assetDto = (AssetDto) compositeDecoderB.m(serialDescriptor, 9, AssetDto$$serializer.f45238a, assetDto);
                        i2 |= 512;
                        break;
                    case 10:
                        lazyArr = lazyArr2;
                        str = (String) compositeDecoderB.m(serialDescriptor, 10, StringSerializer.f75684a, str);
                        i2 |= 1024;
                        break;
                    default:
                        b21.l(iN);
                        return null;
                }
                lazyArr2 = lazyArr;
                z = z;
            }
        }
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        ImmersiveArticleCtaDataDto immersiveArticleCtaDataDto = (ImmersiveArticleCtaDataDto) obj;
        immersiveArticleCtaDataDto.getClass();
        String str = immersiveArticleCtaDataDto.f45810k;
        AssetDto assetDto = immersiveArticleCtaDataDto.f45809j;
        LinkTypeDto linkTypeDto = immersiveArticleCtaDataDto.f45808i;
        String str2 = immersiveArticleCtaDataDto.f45807h;
        List list = immersiveArticleCtaDataDto.g;
        ImmersiveArticleVideoDto immersiveArticleVideoDto = immersiveArticleCtaDataDto.f45806f;
        ImmersiveArticleSizeCardDto immersiveArticleSizeCardDto = immersiveArticleCtaDataDto.f45805e;
        ImmersiveArticleFontDto immersiveArticleFontDto = immersiveArticleCtaDataDto.d;
        String str3 = immersiveArticleCtaDataDto.f45804c;
        ImmersiveArticleFontDto immersiveArticleFontDto2 = immersiveArticleCtaDataDto.f45803b;
        String str4 = immersiveArticleCtaDataDto.f45802a;
        SerialDescriptor serialDescriptor = descriptor;
        CompositeEncoder compositeEncoderB = encoder.b(serialDescriptor);
        Lazy[] lazyArr = ImmersiveArticleCtaDataDto.l;
        if (compositeEncoderB.o(serialDescriptor) || str4 != null) {
            compositeEncoderB.h(serialDescriptor, 0, StringSerializer.f75684a, str4);
        }
        if (compositeEncoderB.o(serialDescriptor) || immersiveArticleFontDto2 != null) {
            compositeEncoderB.h(serialDescriptor, 1, (SerializationStrategy) lazyArr[1].getF71699b(), immersiveArticleFontDto2);
        }
        if (compositeEncoderB.o(serialDescriptor) || str3 != null) {
            compositeEncoderB.h(serialDescriptor, 2, StringSerializer.f75684a, str3);
        }
        if (compositeEncoderB.o(serialDescriptor) || immersiveArticleFontDto != null) {
            compositeEncoderB.h(serialDescriptor, 3, (SerializationStrategy) lazyArr[3].getF71699b(), immersiveArticleFontDto);
        }
        if (compositeEncoderB.o(serialDescriptor) || immersiveArticleSizeCardDto != null) {
            compositeEncoderB.h(serialDescriptor, 4, (SerializationStrategy) lazyArr[4].getF71699b(), immersiveArticleSizeCardDto);
        }
        if (compositeEncoderB.o(serialDescriptor) || immersiveArticleVideoDto != null) {
            compositeEncoderB.h(serialDescriptor, 5, ImmersiveArticleVideoDto$$serializer.f45958a, immersiveArticleVideoDto);
        }
        if (compositeEncoderB.o(serialDescriptor) || list != null) {
            compositeEncoderB.h(serialDescriptor, 6, (SerializationStrategy) lazyArr[6].getF71699b(), list);
        }
        if (compositeEncoderB.o(serialDescriptor) || str2 != null) {
            compositeEncoderB.h(serialDescriptor, 7, StringSerializer.f75684a, str2);
        }
        if (compositeEncoderB.o(serialDescriptor) || linkTypeDto != null) {
            compositeEncoderB.h(serialDescriptor, 8, LinkTypeDtoSerializer.f46099a, linkTypeDto);
        }
        if (compositeEncoderB.o(serialDescriptor) || assetDto != null) {
            compositeEncoderB.h(serialDescriptor, 9, AssetDto$$serializer.f45238a, assetDto);
        }
        if (compositeEncoderB.o(serialDescriptor) || str != null) {
            compositeEncoderB.h(serialDescriptor, 10, StringSerializer.f75684a, str);
        }
        compositeEncoderB.c(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] e() {
        Lazy[] lazyArr = ImmersiveArticleCtaDataDto.l;
        StringSerializer stringSerializer = StringSerializer.f75684a;
        return new KSerializer[]{BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d((KSerializer) lazyArr[1].getF71699b()), BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d((KSerializer) lazyArr[3].getF71699b()), BuiltinSerializersKt.d((KSerializer) lazyArr[4].getF71699b()), BuiltinSerializersKt.d(ImmersiveArticleVideoDto$$serializer.f45958a), BuiltinSerializersKt.d((KSerializer) lazyArr[6].getF71699b()), BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(LinkTypeDtoSerializer.f46099a), BuiltinSerializersKt.d(AssetDto$$serializer.f45238a), BuiltinSerializersKt.d(stringSerializer)};
    }
}
