package com.vuitton.android.data.dto.story;

import com.batch.android.s.b;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.b21;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlinx.serialization.KSerializer;
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
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001R\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"com/vuitton/android/data/dto/story/StoryDto.StorySlideDto.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/vuitton/android/data/dto/story/StoryDto$StorySlideDto;", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "a", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Deprecated
public final /* synthetic */ class StoryDto$StorySlideDto$$serializer implements GeneratedSerializer<StoryDto.StorySlideDto> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final StoryDto$StorySlideDto$$serializer f46886a;
    private static final SerialDescriptor descriptor;

    static {
        StoryDto$StorySlideDto$$serializer storyDto$StorySlideDto$$serializer = new StoryDto$StorySlideDto$$serializer();
        f46886a = storyDto$StorySlideDto$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vuitton.android.data.dto.story.StoryDto.StorySlideDto", storyDto$StorySlideDto$$serializer, 6);
        pluginGeneratedSerialDescriptor.k(b.a.f24015b, true);
        pluginGeneratedSerialDescriptor.k("title", true);
        pluginGeneratedSerialDescriptor.k("surtitle", true);
        pluginGeneratedSerialDescriptor.k("description", true);
        pluginGeneratedSerialDescriptor.k("asset", true);
        pluginGeneratedSerialDescriptor.k("cta", true);
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
        boolean z = true;
        int i2 = 0;
        String str = null;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        StoryDto.StoryAssetDto storyAssetDto = null;
        StoryDto.StoryCtaDto storyCtaDto = null;
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
                    str2 = (String) compositeDecoderB.m(serialDescriptor, 1, StringSerializer.f75684a, str2);
                    i2 |= 2;
                    break;
                case 2:
                    str3 = (String) compositeDecoderB.m(serialDescriptor, 2, StringSerializer.f75684a, str3);
                    i2 |= 4;
                    break;
                case 3:
                    str4 = (String) compositeDecoderB.m(serialDescriptor, 3, StringSerializer.f75684a, str4);
                    i2 |= 8;
                    break;
                case 4:
                    storyAssetDto = (StoryDto.StoryAssetDto) compositeDecoderB.m(serialDescriptor, 4, StoryDto$StoryAssetDto$$serializer.f46877a, storyAssetDto);
                    i2 |= 16;
                    break;
                case 5:
                    storyCtaDto = (StoryDto.StoryCtaDto) compositeDecoderB.m(serialDescriptor, 5, StoryDto$StoryCtaDto$$serializer.f46880a, storyCtaDto);
                    i2 |= 32;
                    break;
                default:
                    b21.l(iN);
                    return null;
            }
        }
        compositeDecoderB.c(serialDescriptor);
        return new StoryDto.StorySlideDto(i2, str, str2, str3, str4, storyAssetDto, storyCtaDto, (SerializationConstructorMarker) null);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        StoryDto.StorySlideDto storySlideDto = (StoryDto.StorySlideDto) obj;
        storySlideDto.getClass();
        StoryDto.StoryCtaDto storyCtaDto = storySlideDto.f46885f;
        StoryDto.StoryAssetDto storyAssetDto = storySlideDto.f46884e;
        String str = storySlideDto.d;
        String str2 = storySlideDto.f46883c;
        String str3 = storySlideDto.f46882b;
        String str4 = storySlideDto.f46881a;
        SerialDescriptor serialDescriptor = descriptor;
        CompositeEncoder compositeEncoderB = encoder.b(serialDescriptor);
        if (compositeEncoderB.o(serialDescriptor) || str4 != null) {
            compositeEncoderB.h(serialDescriptor, 0, StringSerializer.f75684a, str4);
        }
        if (compositeEncoderB.o(serialDescriptor) || str3 != null) {
            compositeEncoderB.h(serialDescriptor, 1, StringSerializer.f75684a, str3);
        }
        if (compositeEncoderB.o(serialDescriptor) || str2 != null) {
            compositeEncoderB.h(serialDescriptor, 2, StringSerializer.f75684a, str2);
        }
        if (compositeEncoderB.o(serialDescriptor) || str != null) {
            compositeEncoderB.h(serialDescriptor, 3, StringSerializer.f75684a, str);
        }
        if (compositeEncoderB.o(serialDescriptor) || storyAssetDto != null) {
            compositeEncoderB.h(serialDescriptor, 4, StoryDto$StoryAssetDto$$serializer.f46877a, storyAssetDto);
        }
        if (compositeEncoderB.o(serialDescriptor) || storyCtaDto != null) {
            compositeEncoderB.h(serialDescriptor, 5, StoryDto$StoryCtaDto$$serializer.f46880a, storyCtaDto);
        }
        compositeEncoderB.c(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] e() {
        StringSerializer stringSerializer = StringSerializer.f75684a;
        return new KSerializer[]{BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(StoryDto$StoryAssetDto$$serializer.f46877a), BuiltinSerializersKt.d(StoryDto$StoryCtaDto$$serializer.f46880a)};
    }
}
