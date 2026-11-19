package com.vuitton.android.data.dto.audioguide;

import com.batch.android.s.b;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.common.AssetImageDto;
import com.vuitton.android.data.dto.common.AssetImageDto$$serializer;
import com.vuitton.android.data.dto.common.FeatureThemeDto;
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
import kotlinx.serialization.internal.IntSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import kotlinx.serialization.internal.StringSerializer;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001R\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"com/vuitton/android/data/dto/audioguide/AudioGuideDto.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto;", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "a", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Deprecated
public final /* synthetic */ class AudioGuideDto$$serializer implements GeneratedSerializer<AudioGuideDto> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final AudioGuideDto$$serializer f44505a;
    private static final SerialDescriptor descriptor;

    static {
        AudioGuideDto$$serializer audioGuideDto$$serializer = new AudioGuideDto$$serializer();
        f44505a = audioGuideDto$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vuitton.android.data.dto.audioguide.AudioGuideDto", audioGuideDto$$serializer, 14);
        pluginGeneratedSerialDescriptor.k(b.a.f24015b, false);
        pluginGeneratedSerialDescriptor.k("title", false);
        pluginGeneratedSerialDescriptor.k("subtitle", true);
        pluginGeneratedSerialDescriptor.k("image", false);
        pluginGeneratedSerialDescriptor.k("backgroundColor", false);
        pluginGeneratedSerialDescriptor.k("theme", false);
        pluginGeneratedSerialDescriptor.k("accessDurationHours", false);
        pluginGeneratedSerialDescriptor.k("immersiveArticleId", true);
        pluginGeneratedSerialDescriptor.k("selectedLanguageCode", false);
        pluginGeneratedSerialDescriptor.k("availableLanguages", false);
        pluginGeneratedSerialDescriptor.k("card", true);
        pluginGeneratedSerialDescriptor.k("summary", false);
        pluginGeneratedSerialDescriptor.k("tracks", false);
        pluginGeneratedSerialDescriptor.k("creditsInformation", true);
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
        Lazy[] lazyArr = AudioGuideDto.o;
        List list = null;
        AudioGuideDto.SummaryDto summaryDto = null;
        AudioGuideDto.AudioGuideCardDto audioGuideCardDto = null;
        List list2 = null;
        AudioGuideDto.CreditsDto creditsDto = null;
        String str = null;
        int i2 = 0;
        String strL = null;
        String strL2 = null;
        String str2 = null;
        AssetImageDto assetImageDto = null;
        String strL3 = null;
        FeatureThemeDto featureThemeDto = null;
        int iJ = 0;
        String strL4 = null;
        boolean z = true;
        while (z) {
            int iN = compositeDecoderB.n(serialDescriptor);
            switch (iN) {
                case -1:
                    strL2 = strL2;
                    z = false;
                    strL2 = strL2;
                    break;
                case 0:
                    strL2 = strL2;
                    i2 |= 1;
                    strL = compositeDecoderB.l(serialDescriptor, 0);
                    strL2 = strL2;
                    break;
                case 1:
                    strL2 = compositeDecoderB.l(serialDescriptor, 1);
                    i2 |= 2;
                    strL = strL;
                    break;
                case 2:
                    str2 = (String) compositeDecoderB.m(serialDescriptor, 2, StringSerializer.f75684a, str2);
                    i2 |= 4;
                    strL = strL;
                    strL2 = strL2;
                    break;
                case 3:
                    assetImageDto = (AssetImageDto) compositeDecoderB.w(serialDescriptor, 3, AssetImageDto$$serializer.f45243a, assetImageDto);
                    i2 |= 8;
                    strL = strL;
                    strL2 = strL2;
                    break;
                case 4:
                    strL3 = compositeDecoderB.l(serialDescriptor, 4);
                    i2 |= 16;
                    strL = strL;
                    break;
                case 5:
                    featureThemeDto = (FeatureThemeDto) compositeDecoderB.w(serialDescriptor, 5, (DeserializationStrategy) lazyArr[5].getF71699b(), featureThemeDto);
                    i2 |= 32;
                    strL = strL;
                    strL2 = strL2;
                    break;
                case 6:
                    iJ = compositeDecoderB.j(serialDescriptor, 6);
                    i2 |= 64;
                    strL = strL;
                    break;
                case 7:
                    str = (String) compositeDecoderB.m(serialDescriptor, 7, StringSerializer.f75684a, str);
                    i2 |= 128;
                    strL = strL;
                    strL2 = strL2;
                    break;
                case 8:
                    strL4 = compositeDecoderB.l(serialDescriptor, 8);
                    i2 |= 256;
                    strL = strL;
                    break;
                case 9:
                    list2 = (List) compositeDecoderB.w(serialDescriptor, 9, (DeserializationStrategy) lazyArr[9].getF71699b(), list2);
                    i2 |= 512;
                    strL = strL;
                    strL2 = strL2;
                    break;
                case 10:
                    audioGuideCardDto = (AudioGuideDto.AudioGuideCardDto) compositeDecoderB.m(serialDescriptor, 10, AudioGuideDto$AudioGuideCardDto$$serializer.f44509a, audioGuideCardDto);
                    i2 |= 1024;
                    strL = strL;
                    strL2 = strL2;
                    break;
                case 11:
                    summaryDto = (AudioGuideDto.SummaryDto) compositeDecoderB.w(serialDescriptor, 11, AudioGuideDto$SummaryDto$$serializer.f44518a, summaryDto);
                    i2 |= 2048;
                    strL = strL;
                    strL2 = strL2;
                    break;
                case 12:
                    list = (List) compositeDecoderB.w(serialDescriptor, 12, (DeserializationStrategy) lazyArr[12].getF71699b(), list);
                    i2 |= 4096;
                    strL = strL;
                    strL2 = strL2;
                    break;
                case 13:
                    creditsDto = (AudioGuideDto.CreditsDto) compositeDecoderB.m(serialDescriptor, 13, AudioGuideDto$CreditsDto$$serializer.f44515a, creditsDto);
                    i2 |= 8192;
                    strL = strL;
                    strL2 = strL2;
                    break;
                default:
                    b21.l(iN);
                    return null;
            }
        }
        compositeDecoderB.c(serialDescriptor);
        return new AudioGuideDto(i2, strL, strL2, str2, assetImageDto, strL3, featureThemeDto, iJ, str, strL4, list2, audioGuideCardDto, summaryDto, list, creditsDto, (SerializationConstructorMarker) null);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        AudioGuideDto audioGuideDto = (AudioGuideDto) obj;
        audioGuideDto.getClass();
        SerialDescriptor serialDescriptor = descriptor;
        CompositeEncoder compositeEncoderB = encoder.b(serialDescriptor);
        Lazy[] lazyArr = AudioGuideDto.o;
        String str = audioGuideDto.f44496a;
        AudioGuideDto.CreditsDto creditsDto = audioGuideDto.n;
        AudioGuideDto.AudioGuideCardDto audioGuideCardDto = audioGuideDto.f44504k;
        String str2 = audioGuideDto.f44501h;
        String str3 = audioGuideDto.f44498c;
        compositeEncoderB.y(serialDescriptor, 0, str);
        compositeEncoderB.y(serialDescriptor, 1, audioGuideDto.f44497b);
        if (compositeEncoderB.o(serialDescriptor) || str3 != null) {
            compositeEncoderB.h(serialDescriptor, 2, StringSerializer.f75684a, str3);
        }
        compositeEncoderB.A(serialDescriptor, 3, AssetImageDto$$serializer.f45243a, audioGuideDto.d);
        compositeEncoderB.y(serialDescriptor, 4, audioGuideDto.f44499e);
        compositeEncoderB.A(serialDescriptor, 5, (SerializationStrategy) lazyArr[5].getF71699b(), audioGuideDto.f44500f);
        compositeEncoderB.u(6, audioGuideDto.g, serialDescriptor);
        if (compositeEncoderB.o(serialDescriptor) || str2 != null) {
            compositeEncoderB.h(serialDescriptor, 7, StringSerializer.f75684a, str2);
        }
        compositeEncoderB.y(serialDescriptor, 8, audioGuideDto.f44502i);
        compositeEncoderB.A(serialDescriptor, 9, (SerializationStrategy) lazyArr[9].getF71699b(), audioGuideDto.f44503j);
        if (compositeEncoderB.o(serialDescriptor) || audioGuideCardDto != null) {
            compositeEncoderB.h(serialDescriptor, 10, AudioGuideDto$AudioGuideCardDto$$serializer.f44509a, audioGuideCardDto);
        }
        compositeEncoderB.A(serialDescriptor, 11, AudioGuideDto$SummaryDto$$serializer.f44518a, audioGuideDto.l);
        compositeEncoderB.A(serialDescriptor, 12, (SerializationStrategy) lazyArr[12].getF71699b(), audioGuideDto.m);
        if (compositeEncoderB.o(serialDescriptor) || creditsDto != null) {
            compositeEncoderB.h(serialDescriptor, 13, AudioGuideDto$CreditsDto$$serializer.f44515a, creditsDto);
        }
        compositeEncoderB.c(serialDescriptor);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] e() {
        Lazy[] lazyArr = AudioGuideDto.o;
        StringSerializer stringSerializer = StringSerializer.f75684a;
        return new KSerializer[]{stringSerializer, stringSerializer, BuiltinSerializersKt.d(stringSerializer), AssetImageDto$$serializer.f45243a, stringSerializer, lazyArr[5].getF71699b(), IntSerializer.f75624a, BuiltinSerializersKt.d(stringSerializer), stringSerializer, lazyArr[9].getF71699b(), BuiltinSerializersKt.d(AudioGuideDto$AudioGuideCardDto$$serializer.f44509a), AudioGuideDto$SummaryDto$$serializer.f44518a, lazyArr[12].getF71699b(), BuiltinSerializersKt.d(AudioGuideDto$CreditsDto$$serializer.f44515a)};
    }
}
