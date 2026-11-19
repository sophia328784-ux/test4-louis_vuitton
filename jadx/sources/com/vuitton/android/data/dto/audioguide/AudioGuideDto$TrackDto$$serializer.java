package com.vuitton.android.data.dto.audioguide;

import com.batch.android.s.b;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.common.AssetImageDto;
import com.vuitton.android.data.dto.common.AssetImageDto$$serializer;
import com.vuitton.android.data.dto.common.SoundDto;
import com.vuitton.android.data.dto.common.SoundDto$$serializer;
import defpackage.b21;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import kotlinx.serialization.internal.GeneratedSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.StringSerializer;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001R\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"com/vuitton/android/data/dto/audioguide/AudioGuideDto.TrackDto.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto$TrackDto;", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "a", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Deprecated
public final /* synthetic */ class AudioGuideDto$TrackDto$$serializer implements GeneratedSerializer<AudioGuideDto.TrackDto> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final AudioGuideDto$TrackDto$$serializer f44524a;
    private static final SerialDescriptor descriptor;

    static {
        AudioGuideDto$TrackDto$$serializer audioGuideDto$TrackDto$$serializer = new AudioGuideDto$TrackDto$$serializer();
        f44524a = audioGuideDto$TrackDto$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vuitton.android.data.dto.audioguide.AudioGuideDto.TrackDto", audioGuideDto$TrackDto$$serializer, 6);
        pluginGeneratedSerialDescriptor.k(b.a.f24015b, false);
        pluginGeneratedSerialDescriptor.k("title", false);
        pluginGeneratedSerialDescriptor.k("label", false);
        pluginGeneratedSerialDescriptor.k("thumbnailImage", false);
        pluginGeneratedSerialDescriptor.k("trackImage", false);
        pluginGeneratedSerialDescriptor.k("sound", false);
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
        String strL = null;
        String strL2 = null;
        String strL3 = null;
        AssetImageDto assetImageDto = null;
        AssetImageDto assetImageDto2 = null;
        SoundDto soundDto = null;
        while (z) {
            int iN = compositeDecoderB.n(serialDescriptor);
            switch (iN) {
                case -1:
                    z = false;
                    break;
                case 0:
                    strL = compositeDecoderB.l(serialDescriptor, 0);
                    i2 |= 1;
                    break;
                case 1:
                    strL2 = compositeDecoderB.l(serialDescriptor, 1);
                    i2 |= 2;
                    break;
                case 2:
                    strL3 = compositeDecoderB.l(serialDescriptor, 2);
                    i2 |= 4;
                    break;
                case 3:
                    assetImageDto = (AssetImageDto) compositeDecoderB.w(serialDescriptor, 3, AssetImageDto$$serializer.f45243a, assetImageDto);
                    i2 |= 8;
                    break;
                case 4:
                    assetImageDto2 = (AssetImageDto) compositeDecoderB.w(serialDescriptor, 4, AssetImageDto$$serializer.f45243a, assetImageDto2);
                    i2 |= 16;
                    break;
                case 5:
                    soundDto = (SoundDto) compositeDecoderB.w(serialDescriptor, 5, SoundDto$$serializer.f45267a, soundDto);
                    i2 |= 32;
                    break;
                default:
                    b21.l(iN);
                    return null;
            }
        }
        compositeDecoderB.c(serialDescriptor);
        return new AudioGuideDto.TrackDto(i2, strL, strL2, strL3, assetImageDto, assetImageDto2, soundDto, null);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        AudioGuideDto.TrackDto trackDto = (AudioGuideDto.TrackDto) obj;
        trackDto.getClass();
        SerialDescriptor serialDescriptor = descriptor;
        CompositeEncoder compositeEncoderB = encoder.b(serialDescriptor);
        compositeEncoderB.y(serialDescriptor, 0, trackDto.f44519a);
        compositeEncoderB.y(serialDescriptor, 1, trackDto.f44520b);
        compositeEncoderB.y(serialDescriptor, 2, trackDto.f44521c);
        AssetImageDto$$serializer assetImageDto$$serializer = AssetImageDto$$serializer.f45243a;
        compositeEncoderB.A(serialDescriptor, 3, assetImageDto$$serializer, trackDto.d);
        compositeEncoderB.A(serialDescriptor, 4, assetImageDto$$serializer, trackDto.f44522e);
        compositeEncoderB.A(serialDescriptor, 5, SoundDto$$serializer.f45267a, trackDto.f44523f);
        compositeEncoderB.c(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] e() {
        StringSerializer stringSerializer = StringSerializer.f75684a;
        AssetImageDto$$serializer assetImageDto$$serializer = AssetImageDto$$serializer.f45243a;
        return new KSerializer[]{stringSerializer, stringSerializer, stringSerializer, assetImageDto$$serializer, assetImageDto$$serializer, SoundDto$$serializer.f45267a};
    }
}
