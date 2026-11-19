package com.vuitton.android.data.dto.spotlight;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.b21;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import kotlinx.serialization.internal.FloatSerializer;
import kotlinx.serialization.internal.GeneratedSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001R\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"com/vuitton/android/data/dto/spotlight/SpotlightPositionDto.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/vuitton/android/data/dto/spotlight/SpotlightPositionDto;", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "a", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Deprecated
public final /* synthetic */ class SpotlightPositionDto$$serializer implements GeneratedSerializer<SpotlightPositionDto> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final SpotlightPositionDto$$serializer f46816a;
    private static final SerialDescriptor descriptor;

    static {
        SpotlightPositionDto$$serializer spotlightPositionDto$$serializer = new SpotlightPositionDto$$serializer();
        f46816a = spotlightPositionDto$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vuitton.android.data.dto.spotlight.SpotlightPositionDto", spotlightPositionDto$$serializer, 2);
        pluginGeneratedSerialDescriptor.k("top", false);
        pluginGeneratedSerialDescriptor.k("left", false);
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
        float fR = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        boolean z = true;
        int i2 = 0;
        float fR2 = 0.0f;
        while (z) {
            int iN = compositeDecoderB.n(serialDescriptor);
            if (iN == -1) {
                z = false;
            } else if (iN == 0) {
                fR = compositeDecoderB.r(serialDescriptor, 0);
                i2 |= 1;
            } else {
                if (iN != 1) {
                    b21.l(iN);
                    return null;
                }
                fR2 = compositeDecoderB.r(serialDescriptor, 1);
                i2 |= 2;
            }
        }
        compositeDecoderB.c(serialDescriptor);
        return new SpotlightPositionDto(i2, fR, fR2, null);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        SpotlightPositionDto spotlightPositionDto = (SpotlightPositionDto) obj;
        spotlightPositionDto.getClass();
        SerialDescriptor serialDescriptor = descriptor;
        CompositeEncoder compositeEncoderB = encoder.b(serialDescriptor);
        compositeEncoderB.t(serialDescriptor, 0, spotlightPositionDto.f46814a);
        compositeEncoderB.t(serialDescriptor, 1, spotlightPositionDto.f46815b);
        compositeEncoderB.c(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] e() {
        FloatSerializer floatSerializer = FloatSerializer.f75616a;
        return new KSerializer[]{floatSerializer, floatSerializer};
    }
}
