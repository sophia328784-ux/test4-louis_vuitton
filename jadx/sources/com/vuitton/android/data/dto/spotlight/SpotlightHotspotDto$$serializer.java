package com.vuitton.android.data.dto.spotlight;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.common.AssetDto;
import com.vuitton.android.data.dto.common.AssetDto$$serializer;
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
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001R\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"com/vuitton/android/data/dto/spotlight/SpotlightHotspotDto.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/vuitton/android/data/dto/spotlight/SpotlightHotspotDto;", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "a", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Deprecated
public final /* synthetic */ class SpotlightHotspotDto$$serializer implements GeneratedSerializer<SpotlightHotspotDto> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final SpotlightHotspotDto$$serializer f46813a;
    private static final SerialDescriptor descriptor;

    static {
        SpotlightHotspotDto$$serializer spotlightHotspotDto$$serializer = new SpotlightHotspotDto$$serializer();
        f46813a = spotlightHotspotDto$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vuitton.android.data.dto.spotlight.SpotlightHotspotDto", spotlightHotspotDto$$serializer, 4);
        pluginGeneratedSerialDescriptor.k("identifier", false);
        pluginGeneratedSerialDescriptor.k("position", false);
        pluginGeneratedSerialDescriptor.k("asset", false);
        pluginGeneratedSerialDescriptor.k("content", false);
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
        SpotlightPositionDto spotlightPositionDto = null;
        AssetDto assetDto = null;
        SpotlightHotspotContentDto spotlightHotspotContentDto = null;
        while (z) {
            int iN = compositeDecoderB.n(serialDescriptor);
            if (iN == -1) {
                z = false;
            } else if (iN == 0) {
                strL = compositeDecoderB.l(serialDescriptor, 0);
                i2 |= 1;
            } else if (iN == 1) {
                spotlightPositionDto = (SpotlightPositionDto) compositeDecoderB.w(serialDescriptor, 1, SpotlightPositionDto$$serializer.f46816a, spotlightPositionDto);
                i2 |= 2;
            } else if (iN == 2) {
                assetDto = (AssetDto) compositeDecoderB.w(serialDescriptor, 2, AssetDto$$serializer.f45238a, assetDto);
                i2 |= 4;
            } else {
                if (iN != 3) {
                    b21.l(iN);
                    return null;
                }
                spotlightHotspotContentDto = (SpotlightHotspotContentDto) compositeDecoderB.w(serialDescriptor, 3, SpotlightHotspotContentDto$$serializer.f46805a, spotlightHotspotContentDto);
                i2 |= 8;
            }
        }
        compositeDecoderB.c(serialDescriptor);
        return new SpotlightHotspotDto(i2, strL, spotlightPositionDto, assetDto, spotlightHotspotContentDto, null);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        SpotlightHotspotDto spotlightHotspotDto = (SpotlightHotspotDto) obj;
        spotlightHotspotDto.getClass();
        SerialDescriptor serialDescriptor = descriptor;
        CompositeEncoder compositeEncoderB = encoder.b(serialDescriptor);
        compositeEncoderB.y(serialDescriptor, 0, spotlightHotspotDto.f46810a);
        compositeEncoderB.A(serialDescriptor, 1, SpotlightPositionDto$$serializer.f46816a, spotlightHotspotDto.f46811b);
        compositeEncoderB.A(serialDescriptor, 2, AssetDto$$serializer.f45238a, spotlightHotspotDto.f46812c);
        compositeEncoderB.A(serialDescriptor, 3, SpotlightHotspotContentDto$$serializer.f46805a, spotlightHotspotDto.d);
        compositeEncoderB.c(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] e() {
        return new KSerializer[]{StringSerializer.f75684a, SpotlightPositionDto$$serializer.f46816a, AssetDto$$serializer.f45238a, SpotlightHotspotContentDto$$serializer.f46805a};
    }
}
