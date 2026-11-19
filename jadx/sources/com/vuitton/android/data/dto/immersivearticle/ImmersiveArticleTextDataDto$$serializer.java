package com.vuitton.android.data.dto.immersivearticle;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.common.AssetDto;
import com.vuitton.android.data.dto.common.AssetDto$$serializer;
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
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001R\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"com/vuitton/android/data/dto/immersivearticle/ImmersiveArticleTextDataDto.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleTextDataDto;", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "a", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Deprecated
public final /* synthetic */ class ImmersiveArticleTextDataDto$$serializer implements GeneratedSerializer<ImmersiveArticleTextDataDto> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ImmersiveArticleTextDataDto$$serializer f45933a;
    private static final SerialDescriptor descriptor;

    static {
        ImmersiveArticleTextDataDto$$serializer immersiveArticleTextDataDto$$serializer = new ImmersiveArticleTextDataDto$$serializer();
        f45933a = immersiveArticleTextDataDto$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vuitton.android.data.dto.immersivearticle.ImmersiveArticleTextDataDto", immersiveArticleTextDataDto$$serializer, 12);
        pluginGeneratedSerialDescriptor.k("title", false);
        pluginGeneratedSerialDescriptor.k("titleFont", true);
        pluginGeneratedSerialDescriptor.k("surtitle", true);
        pluginGeneratedSerialDescriptor.k("surtitleFont", true);
        pluginGeneratedSerialDescriptor.k("description", true);
        pluginGeneratedSerialDescriptor.k("descriptionFont", true);
        pluginGeneratedSerialDescriptor.k("ratio", true);
        pluginGeneratedSerialDescriptor.k("size", true);
        pluginGeneratedSerialDescriptor.k("alignment", true);
        pluginGeneratedSerialDescriptor.k("asset", true);
        pluginGeneratedSerialDescriptor.k("ctaList", true);
        pluginGeneratedSerialDescriptor.k("disclaimer", true);
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
        Lazy[] lazyArr = ImmersiveArticleTextDataDto.m;
        ImmersiveArticleTextDisclaimerDto immersiveArticleTextDisclaimerDto = null;
        List list = null;
        AssetDto assetDto = null;
        ImmersiveArticleTextModuleAlignmentDto immersiveArticleTextModuleAlignmentDto = null;
        boolean z = true;
        ImmersiveArticleTextModuleTypeDto immersiveArticleTextModuleTypeDto = null;
        int i2 = 0;
        String str = null;
        ImmersiveArticleFontDto immersiveArticleFontDto = null;
        String str2 = null;
        ImmersiveArticleFontDto immersiveArticleFontDto2 = null;
        String str3 = null;
        ImmersiveArticleFontDto immersiveArticleFontDto3 = null;
        ImmersiveArticleSizeCardDto immersiveArticleSizeCardDto = null;
        while (true) {
            while (true) {
                if (!z) {
                    compositeDecoderB.c(serialDescriptor);
                    return new ImmersiveArticleTextDataDto(i2, str, immersiveArticleFontDto, str2, immersiveArticleFontDto2, str3, immersiveArticleFontDto3, immersiveArticleSizeCardDto, immersiveArticleTextModuleTypeDto, immersiveArticleTextModuleAlignmentDto, assetDto, list, immersiveArticleTextDisclaimerDto, (SerializationConstructorMarker) null);
                }
                int iN = compositeDecoderB.n(serialDescriptor);
                switch (iN) {
                    case -1:
                        z = false;
                        continue;
                        break;
                    case 0:
                        str = (String) compositeDecoderB.m(serialDescriptor, 0, StringSerializer.f75684a, str);
                        i2 |= 1;
                        z = z;
                        continue;
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
                        str3 = (String) compositeDecoderB.m(serialDescriptor, 4, StringSerializer.f75684a, str3);
                        i2 |= 16;
                        break;
                    case 5:
                        immersiveArticleFontDto3 = (ImmersiveArticleFontDto) compositeDecoderB.m(serialDescriptor, 5, (DeserializationStrategy) lazyArr[5].getF71699b(), immersiveArticleFontDto3);
                        i2 |= 32;
                        break;
                    case 6:
                        immersiveArticleSizeCardDto = (ImmersiveArticleSizeCardDto) compositeDecoderB.m(serialDescriptor, 6, (DeserializationStrategy) lazyArr[6].getF71699b(), immersiveArticleSizeCardDto);
                        i2 |= 64;
                        break;
                    case 7:
                        immersiveArticleTextModuleTypeDto = (ImmersiveArticleTextModuleTypeDto) compositeDecoderB.m(serialDescriptor, 7, (DeserializationStrategy) lazyArr[7].getF71699b(), immersiveArticleTextModuleTypeDto);
                        i2 |= 128;
                        break;
                    case 8:
                        immersiveArticleTextModuleAlignmentDto = (ImmersiveArticleTextModuleAlignmentDto) compositeDecoderB.m(serialDescriptor, 8, (DeserializationStrategy) lazyArr[8].getF71699b(), immersiveArticleTextModuleAlignmentDto);
                        i2 |= 256;
                        break;
                    case 9:
                        assetDto = (AssetDto) compositeDecoderB.m(serialDescriptor, 9, AssetDto$$serializer.f45238a, assetDto);
                        i2 |= 512;
                        break;
                    case 10:
                        list = (List) compositeDecoderB.m(serialDescriptor, 10, (DeserializationStrategy) lazyArr[10].getF71699b(), list);
                        i2 |= 1024;
                        break;
                    case 11:
                        immersiveArticleTextDisclaimerDto = (ImmersiveArticleTextDisclaimerDto) compositeDecoderB.m(serialDescriptor, 11, ImmersiveArticleTextDisclaimerDto$$serializer.f45936a, immersiveArticleTextDisclaimerDto);
                        i2 |= 2048;
                        break;
                    default:
                        b21.l(iN);
                        return null;
                }
                z = z;
                str = str;
            }
            immersiveArticleTextDisclaimerDto = immersiveArticleTextDisclaimerDto;
        }
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        ImmersiveArticleTextDataDto immersiveArticleTextDataDto = (ImmersiveArticleTextDataDto) obj;
        immersiveArticleTextDataDto.getClass();
        SerialDescriptor serialDescriptor = descriptor;
        CompositeEncoder compositeEncoderB = encoder.b(serialDescriptor);
        Lazy[] lazyArr = ImmersiveArticleTextDataDto.m;
        StringSerializer stringSerializer = StringSerializer.f75684a;
        String str = immersiveArticleTextDataDto.f45924a;
        ImmersiveArticleTextDisclaimerDto immersiveArticleTextDisclaimerDto = immersiveArticleTextDataDto.l;
        List list = immersiveArticleTextDataDto.f45932k;
        AssetDto assetDto = immersiveArticleTextDataDto.f45931j;
        ImmersiveArticleTextModuleAlignmentDto immersiveArticleTextModuleAlignmentDto = immersiveArticleTextDataDto.f45930i;
        ImmersiveArticleTextModuleTypeDto immersiveArticleTextModuleTypeDto = immersiveArticleTextDataDto.f45929h;
        ImmersiveArticleSizeCardDto immersiveArticleSizeCardDto = immersiveArticleTextDataDto.g;
        ImmersiveArticleFontDto immersiveArticleFontDto = immersiveArticleTextDataDto.f45928f;
        String str2 = immersiveArticleTextDataDto.f45927e;
        ImmersiveArticleFontDto immersiveArticleFontDto2 = immersiveArticleTextDataDto.d;
        String str3 = immersiveArticleTextDataDto.f45926c;
        ImmersiveArticleFontDto immersiveArticleFontDto3 = immersiveArticleTextDataDto.f45925b;
        compositeEncoderB.h(serialDescriptor, 0, stringSerializer, str);
        if (compositeEncoderB.o(serialDescriptor) || immersiveArticleFontDto3 != null) {
            compositeEncoderB.h(serialDescriptor, 1, (SerializationStrategy) lazyArr[1].getF71699b(), immersiveArticleFontDto3);
        }
        if (compositeEncoderB.o(serialDescriptor) || str3 != null) {
            compositeEncoderB.h(serialDescriptor, 2, stringSerializer, str3);
        }
        if (compositeEncoderB.o(serialDescriptor) || immersiveArticleFontDto2 != null) {
            compositeEncoderB.h(serialDescriptor, 3, (SerializationStrategy) lazyArr[3].getF71699b(), immersiveArticleFontDto2);
        }
        if (compositeEncoderB.o(serialDescriptor) || str2 != null) {
            compositeEncoderB.h(serialDescriptor, 4, stringSerializer, str2);
        }
        if (compositeEncoderB.o(serialDescriptor) || immersiveArticleFontDto != null) {
            compositeEncoderB.h(serialDescriptor, 5, (SerializationStrategy) lazyArr[5].getF71699b(), immersiveArticleFontDto);
        }
        if (compositeEncoderB.o(serialDescriptor) || immersiveArticleSizeCardDto != null) {
            compositeEncoderB.h(serialDescriptor, 6, (SerializationStrategy) lazyArr[6].getF71699b(), immersiveArticleSizeCardDto);
        }
        if (compositeEncoderB.o(serialDescriptor) || immersiveArticleTextModuleTypeDto != null) {
            compositeEncoderB.h(serialDescriptor, 7, (SerializationStrategy) lazyArr[7].getF71699b(), immersiveArticleTextModuleTypeDto);
        }
        if (compositeEncoderB.o(serialDescriptor) || immersiveArticleTextModuleAlignmentDto != null) {
            compositeEncoderB.h(serialDescriptor, 8, (SerializationStrategy) lazyArr[8].getF71699b(), immersiveArticleTextModuleAlignmentDto);
        }
        if (compositeEncoderB.o(serialDescriptor) || assetDto != null) {
            compositeEncoderB.h(serialDescriptor, 9, AssetDto$$serializer.f45238a, assetDto);
        }
        if (compositeEncoderB.o(serialDescriptor) || list != null) {
            compositeEncoderB.h(serialDescriptor, 10, (SerializationStrategy) lazyArr[10].getF71699b(), list);
        }
        if (compositeEncoderB.o(serialDescriptor) || immersiveArticleTextDisclaimerDto != null) {
            compositeEncoderB.h(serialDescriptor, 11, ImmersiveArticleTextDisclaimerDto$$serializer.f45936a, immersiveArticleTextDisclaimerDto);
        }
        compositeEncoderB.c(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] e() {
        Lazy[] lazyArr = ImmersiveArticleTextDataDto.m;
        StringSerializer stringSerializer = StringSerializer.f75684a;
        return new KSerializer[]{BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d((KSerializer) lazyArr[1].getF71699b()), BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d((KSerializer) lazyArr[3].getF71699b()), BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d((KSerializer) lazyArr[5].getF71699b()), BuiltinSerializersKt.d((KSerializer) lazyArr[6].getF71699b()), BuiltinSerializersKt.d((KSerializer) lazyArr[7].getF71699b()), BuiltinSerializersKt.d((KSerializer) lazyArr[8].getF71699b()), BuiltinSerializersKt.d(AssetDto$$serializer.f45238a), BuiltinSerializersKt.d((KSerializer) lazyArr[10].getF71699b()), BuiltinSerializersKt.d(ImmersiveArticleTextDisclaimerDto$$serializer.f45936a)};
    }
}
