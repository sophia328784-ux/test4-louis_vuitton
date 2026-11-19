package com.vuitton.foundation.model.domain.model.audioguide;

import com.batch.android.s.b;
import com.vuitton.foundation.model.domain.model.common.FeatureTheme;
import defpackage.b21;
import kotlin.Deprecated;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlinx.serialization.DeserializationStrategy;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerializationStrategy;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import kotlinx.serialization.internal.GeneratedSerializer;
import kotlinx.serialization.internal.LongSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import kotlinx.serialization.internal.StringSerializer;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001R\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"com/vuitton/foundation/model/domain/model/audioguide/AudioGuideAccessData.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuideAccessData;", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "a", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
@Deprecated
public final /* synthetic */ class AudioGuideAccessData$$serializer implements GeneratedSerializer<AudioGuideAccessData> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final AudioGuideAccessData$$serializer f66576a;
    private static final SerialDescriptor descriptor;

    static {
        AudioGuideAccessData$$serializer audioGuideAccessData$$serializer = new AudioGuideAccessData$$serializer();
        f66576a = audioGuideAccessData$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vuitton.foundation.model.domain.model.audioguide.AudioGuideAccessData", audioGuideAccessData$$serializer, 6);
        pluginGeneratedSerialDescriptor.k(b.a.f24015b, false);
        pluginGeneratedSerialDescriptor.k("endAccessTimeStamp", true);
        pluginGeneratedSerialDescriptor.k("backgroundColor", false);
        pluginGeneratedSerialDescriptor.k("theme", false);
        pluginGeneratedSerialDescriptor.k("title", false);
        pluginGeneratedSerialDescriptor.k("imageUrl", false);
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
        Lazy[] lazyArr = AudioGuideAccessData.g;
        int i2 = 0;
        String strL = null;
        String strL2 = null;
        FeatureTheme featureTheme = null;
        String strL3 = null;
        String strL4 = null;
        long jF = 0;
        boolean z = true;
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
                    jF = compositeDecoderB.f(serialDescriptor, 1);
                    i2 |= 2;
                    break;
                case 2:
                    strL2 = compositeDecoderB.l(serialDescriptor, 2);
                    i2 |= 4;
                    break;
                case 3:
                    featureTheme = (FeatureTheme) compositeDecoderB.w(serialDescriptor, 3, (DeserializationStrategy) lazyArr[3].getF71699b(), featureTheme);
                    i2 |= 8;
                    break;
                case 4:
                    strL3 = compositeDecoderB.l(serialDescriptor, 4);
                    i2 |= 16;
                    break;
                case 5:
                    strL4 = compositeDecoderB.l(serialDescriptor, 5);
                    i2 |= 32;
                    break;
                default:
                    b21.l(iN);
                    return null;
            }
        }
        compositeDecoderB.c(serialDescriptor);
        return new AudioGuideAccessData(i2, strL, jF, strL2, featureTheme, strL3, strL4, (SerializationConstructorMarker) null);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        AudioGuideAccessData audioGuideAccessData = (AudioGuideAccessData) obj;
        audioGuideAccessData.getClass();
        SerialDescriptor serialDescriptor = descriptor;
        CompositeEncoder compositeEncoderB = encoder.b(serialDescriptor);
        Lazy[] lazyArr = AudioGuideAccessData.g;
        String str = audioGuideAccessData.f66571a;
        long j2 = audioGuideAccessData.f66572b;
        compositeEncoderB.y(serialDescriptor, 0, str);
        if (compositeEncoderB.o(serialDescriptor) || j2 != 0) {
            compositeEncoderB.D(serialDescriptor, 1, j2);
        }
        compositeEncoderB.y(serialDescriptor, 2, audioGuideAccessData.f66573c);
        compositeEncoderB.A(serialDescriptor, 3, (SerializationStrategy) lazyArr[3].getF71699b(), audioGuideAccessData.d);
        compositeEncoderB.y(serialDescriptor, 4, audioGuideAccessData.f66574e);
        compositeEncoderB.y(serialDescriptor, 5, audioGuideAccessData.f66575f);
        compositeEncoderB.c(serialDescriptor);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] e() {
        Lazy[] lazyArr = AudioGuideAccessData.g;
        StringSerializer stringSerializer = StringSerializer.f75684a;
        return new KSerializer[]{stringSerializer, LongSerializer.f75635a, stringSerializer, lazyArr[3].getF71699b(), stringSerializer, stringSerializer};
    }
}
