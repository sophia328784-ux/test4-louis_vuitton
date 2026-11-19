package com.vuitton.android.data.dto.spotlight;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.common.AssetDto;
import com.vuitton.android.data.dto.common.AssetDto$$serializer;
import com.vuitton.android.data.dto.common.AssetVideoDto;
import com.vuitton.android.data.dto.common.AssetVideoDto$$serializer;
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
import kotlinx.serialization.internal.FloatSerializer;
import kotlinx.serialization.internal.GeneratedSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import kotlinx.serialization.internal.StringSerializer;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001R\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"com/vuitton/android/data/dto/spotlight/SpotlightSlideDto.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/vuitton/android/data/dto/spotlight/SpotlightSlideDto;", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "a", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Deprecated
public final /* synthetic */ class SpotlightSlideDto$$serializer implements GeneratedSerializer<SpotlightSlideDto> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final SpotlightSlideDto$$serializer f46825a;
    private static final SerialDescriptor descriptor;

    static {
        SpotlightSlideDto$$serializer spotlightSlideDto$$serializer = new SpotlightSlideDto$$serializer();
        f46825a = spotlightSlideDto$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vuitton.android.data.dto.spotlight.SpotlightSlideDto", spotlightSlideDto$$serializer, 9);
        pluginGeneratedSerialDescriptor.k("identifier", false);
        pluginGeneratedSerialDescriptor.k("title", false);
        pluginGeneratedSerialDescriptor.k("asset", false);
        pluginGeneratedSerialDescriptor.k("assetRatio", false);
        pluginGeneratedSerialDescriptor.k("introVideo", true);
        pluginGeneratedSerialDescriptor.k("outroVideo", true);
        pluginGeneratedSerialDescriptor.k("hotspots", false);
        pluginGeneratedSerialDescriptor.k("theme", false);
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
        Lazy[] lazyArr = SpotlightSlideDto.f46817j;
        float fR = 0.0f;
        SpotlightCtaDto spotlightCtaDto = null;
        boolean z = true;
        FeatureThemeDto featureThemeDto = null;
        int i2 = 0;
        String strL = null;
        String strL2 = null;
        AssetDto assetDto = null;
        AssetVideoDto assetVideoDto = null;
        AssetVideoDto assetVideoDto2 = null;
        List list = null;
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
                    assetDto = (AssetDto) compositeDecoderB.w(serialDescriptor, 2, AssetDto$$serializer.f45238a, assetDto);
                    i2 |= 4;
                    break;
                case 3:
                    fR = compositeDecoderB.r(serialDescriptor, 3);
                    i2 |= 8;
                    break;
                case 4:
                    assetVideoDto = (AssetVideoDto) compositeDecoderB.m(serialDescriptor, 4, AssetVideoDto$$serializer.f45250a, assetVideoDto);
                    i2 |= 16;
                    break;
                case 5:
                    assetVideoDto2 = (AssetVideoDto) compositeDecoderB.m(serialDescriptor, 5, AssetVideoDto$$serializer.f45250a, assetVideoDto2);
                    i2 |= 32;
                    break;
                case 6:
                    list = (List) compositeDecoderB.w(serialDescriptor, 6, (DeserializationStrategy) lazyArr[6].getF71699b(), list);
                    i2 |= 64;
                    break;
                case 7:
                    featureThemeDto = (FeatureThemeDto) compositeDecoderB.w(serialDescriptor, 7, (DeserializationStrategy) lazyArr[7].getF71699b(), featureThemeDto);
                    i2 |= 128;
                    break;
                case 8:
                    spotlightCtaDto = (SpotlightCtaDto) compositeDecoderB.m(serialDescriptor, 8, SpotlightCtaDto$$serializer.f46798a, spotlightCtaDto);
                    i2 |= 256;
                    break;
                default:
                    b21.l(iN);
                    return null;
            }
        }
        compositeDecoderB.c(serialDescriptor);
        return new SpotlightSlideDto(i2, strL, strL2, assetDto, fR, assetVideoDto, assetVideoDto2, list, featureThemeDto, spotlightCtaDto, (SerializationConstructorMarker) null);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        SpotlightSlideDto spotlightSlideDto = (SpotlightSlideDto) obj;
        spotlightSlideDto.getClass();
        SerialDescriptor serialDescriptor = descriptor;
        CompositeEncoder compositeEncoderB = encoder.b(serialDescriptor);
        Lazy[] lazyArr = SpotlightSlideDto.f46817j;
        String str = spotlightSlideDto.f46818a;
        SpotlightCtaDto spotlightCtaDto = spotlightSlideDto.f46824i;
        AssetVideoDto assetVideoDto = spotlightSlideDto.f46822f;
        AssetVideoDto assetVideoDto2 = spotlightSlideDto.f46821e;
        compositeEncoderB.y(serialDescriptor, 0, str);
        compositeEncoderB.y(serialDescriptor, 1, spotlightSlideDto.f46819b);
        compositeEncoderB.A(serialDescriptor, 2, AssetDto$$serializer.f45238a, spotlightSlideDto.f46820c);
        compositeEncoderB.t(serialDescriptor, 3, spotlightSlideDto.d);
        if (compositeEncoderB.o(serialDescriptor) || assetVideoDto2 != null) {
            compositeEncoderB.h(serialDescriptor, 4, AssetVideoDto$$serializer.f45250a, assetVideoDto2);
        }
        if (compositeEncoderB.o(serialDescriptor) || assetVideoDto != null) {
            compositeEncoderB.h(serialDescriptor, 5, AssetVideoDto$$serializer.f45250a, assetVideoDto);
        }
        compositeEncoderB.A(serialDescriptor, 6, (SerializationStrategy) lazyArr[6].getF71699b(), spotlightSlideDto.g);
        compositeEncoderB.A(serialDescriptor, 7, (SerializationStrategy) lazyArr[7].getF71699b(), spotlightSlideDto.f46823h);
        if (compositeEncoderB.o(serialDescriptor) || spotlightCtaDto != null) {
            compositeEncoderB.h(serialDescriptor, 8, SpotlightCtaDto$$serializer.f46798a, spotlightCtaDto);
        }
        compositeEncoderB.c(serialDescriptor);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] e() {
        Lazy[] lazyArr = SpotlightSlideDto.f46817j;
        StringSerializer stringSerializer = StringSerializer.f75684a;
        AssetVideoDto$$serializer assetVideoDto$$serializer = AssetVideoDto$$serializer.f45250a;
        return new KSerializer[]{stringSerializer, stringSerializer, AssetDto$$serializer.f45238a, FloatSerializer.f75616a, BuiltinSerializersKt.d(assetVideoDto$$serializer), BuiltinSerializersKt.d(assetVideoDto$$serializer), lazyArr[6].getF71699b(), lazyArr[7].getF71699b(), BuiltinSerializersKt.d(SpotlightCtaDto$$serializer.f46798a)};
    }
}
