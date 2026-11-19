package com.vuitton.android.data.dto.immersivearticle;

import com.networkbench.agent.impl.harvest.ConfigurationName;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
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
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001R\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"com/vuitton/android/data/dto/immersivearticle/ImmersiveArticlePageDto.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticlePageDto;", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "a", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Deprecated
public final /* synthetic */ class ImmersiveArticlePageDto$$serializer implements GeneratedSerializer<ImmersiveArticlePageDto> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ImmersiveArticlePageDto$$serializer f45876a;
    private static final SerialDescriptor descriptor;

    static {
        ImmersiveArticlePageDto$$serializer immersiveArticlePageDto$$serializer = new ImmersiveArticlePageDto$$serializer();
        f45876a = immersiveArticlePageDto$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vuitton.android.data.dto.immersivearticle.ImmersiveArticlePageDto", immersiveArticlePageDto$$serializer, 7);
        pluginGeneratedSerialDescriptor.k(ConfigurationName.KEY, true);
        pluginGeneratedSerialDescriptor.k("title", true);
        pluginGeneratedSerialDescriptor.k("theme", true);
        pluginGeneratedSerialDescriptor.k("ctaTheme", true);
        pluginGeneratedSerialDescriptor.k("sections", true);
        pluginGeneratedSerialDescriptor.k("audio", true);
        pluginGeneratedSerialDescriptor.k("banner", true);
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
        Lazy[] lazyArr = ImmersiveArticlePageDto.f45870h;
        Object obj = null;
        boolean z = true;
        int i2 = 0;
        String str = null;
        String str2 = null;
        ImmersiveArticleThemeDto immersiveArticleThemeDto = null;
        ImmersiveArticleThemeDto immersiveArticleThemeDto2 = null;
        List list = null;
        ImmersiveAudioDto immersiveAudioDto = null;
        ImmersiveArticleBannerDto immersiveArticleBannerDto = null;
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
                    str2 = (String) compositeDecoderB.m(serialDescriptor, 1, StringSerializer.f75684a, str2);
                    i2 |= 2;
                    break;
                case 2:
                    immersiveArticleThemeDto = (ImmersiveArticleThemeDto) compositeDecoderB.m(serialDescriptor, 2, ImmersiveArticleThemeDto$$serializer.f45943a, immersiveArticleThemeDto);
                    i2 |= 4;
                    break;
                case 3:
                    immersiveArticleThemeDto2 = (ImmersiveArticleThemeDto) compositeDecoderB.m(serialDescriptor, 3, ImmersiveArticleThemeDto$$serializer.f45943a, immersiveArticleThemeDto2);
                    i2 |= 8;
                    break;
                case 4:
                    list = (List) compositeDecoderB.m(serialDescriptor, 4, (DeserializationStrategy) lazyArr[4].getF71699b(), list);
                    i2 |= 16;
                    break;
                case 5:
                    immersiveAudioDto = (ImmersiveAudioDto) compositeDecoderB.m(serialDescriptor, 5, ImmersiveAudioDto$$serializer.f45976a, immersiveAudioDto);
                    i2 |= 32;
                    break;
                case 6:
                    immersiveArticleBannerDto = (ImmersiveArticleBannerDto) compositeDecoderB.m(serialDescriptor, 6, ImmersiveArticleBannerDto$$serializer.f45793a, immersiveArticleBannerDto);
                    i2 |= 64;
                    break;
                default:
                    b21.l(iN);
                    return obj;
            }
            obj = null;
        }
        compositeDecoderB.c(serialDescriptor);
        return new ImmersiveArticlePageDto(i2, str, str2, immersiveArticleThemeDto, immersiveArticleThemeDto2, list, immersiveAudioDto, immersiveArticleBannerDto, (SerializationConstructorMarker) null);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        ImmersiveArticlePageDto immersiveArticlePageDto = (ImmersiveArticlePageDto) obj;
        immersiveArticlePageDto.getClass();
        ImmersiveArticleBannerDto immersiveArticleBannerDto = immersiveArticlePageDto.g;
        ImmersiveAudioDto immersiveAudioDto = immersiveArticlePageDto.f45875f;
        List list = immersiveArticlePageDto.f45874e;
        ImmersiveArticleThemeDto immersiveArticleThemeDto = immersiveArticlePageDto.d;
        ImmersiveArticleThemeDto immersiveArticleThemeDto2 = immersiveArticlePageDto.f45873c;
        String str = immersiveArticlePageDto.f45872b;
        String str2 = immersiveArticlePageDto.f45871a;
        SerialDescriptor serialDescriptor = descriptor;
        CompositeEncoder compositeEncoderB = encoder.b(serialDescriptor);
        Lazy[] lazyArr = ImmersiveArticlePageDto.f45870h;
        if (compositeEncoderB.o(serialDescriptor) || str2 != null) {
            compositeEncoderB.h(serialDescriptor, 0, StringSerializer.f75684a, str2);
        }
        if (compositeEncoderB.o(serialDescriptor) || str != null) {
            compositeEncoderB.h(serialDescriptor, 1, StringSerializer.f75684a, str);
        }
        if (compositeEncoderB.o(serialDescriptor) || immersiveArticleThemeDto2 != null) {
            compositeEncoderB.h(serialDescriptor, 2, ImmersiveArticleThemeDto$$serializer.f45943a, immersiveArticleThemeDto2);
        }
        if (compositeEncoderB.o(serialDescriptor) || immersiveArticleThemeDto != null) {
            compositeEncoderB.h(serialDescriptor, 3, ImmersiveArticleThemeDto$$serializer.f45943a, immersiveArticleThemeDto);
        }
        if (compositeEncoderB.o(serialDescriptor) || list != null) {
            compositeEncoderB.h(serialDescriptor, 4, (SerializationStrategy) lazyArr[4].getF71699b(), list);
        }
        if (compositeEncoderB.o(serialDescriptor) || immersiveAudioDto != null) {
            compositeEncoderB.h(serialDescriptor, 5, ImmersiveAudioDto$$serializer.f45976a, immersiveAudioDto);
        }
        if (compositeEncoderB.o(serialDescriptor) || immersiveArticleBannerDto != null) {
            compositeEncoderB.h(serialDescriptor, 6, ImmersiveArticleBannerDto$$serializer.f45793a, immersiveArticleBannerDto);
        }
        compositeEncoderB.c(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] e() {
        Lazy[] lazyArr = ImmersiveArticlePageDto.f45870h;
        StringSerializer stringSerializer = StringSerializer.f75684a;
        KSerializer kSerializerD = BuiltinSerializersKt.d(stringSerializer);
        KSerializer kSerializerD2 = BuiltinSerializersKt.d(stringSerializer);
        ImmersiveArticleThemeDto$$serializer immersiveArticleThemeDto$$serializer = ImmersiveArticleThemeDto$$serializer.f45943a;
        return new KSerializer[]{kSerializerD, kSerializerD2, BuiltinSerializersKt.d(immersiveArticleThemeDto$$serializer), BuiltinSerializersKt.d(immersiveArticleThemeDto$$serializer), BuiltinSerializersKt.d((KSerializer) lazyArr[4].getF71699b()), BuiltinSerializersKt.d(ImmersiveAudioDto$$serializer.f45976a), BuiltinSerializersKt.d(ImmersiveArticleBannerDto$$serializer.f45793a)};
    }
}
