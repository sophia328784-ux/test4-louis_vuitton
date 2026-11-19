package com.dynamicyield.sdk.wrapper.core.models.event;

import com.dynamicyield.sdk.wrapper.core.enums.VideoProgressType;
import defpackage.b21;
import java.util.List;
import kotlin.Deprecated;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.UInt;
import kotlinx.serialization.DeserializationStrategy;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerializationStrategy;
import kotlinx.serialization.builtins.BuiltinSerializersKt;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import kotlinx.serialization.internal.BooleanSerializer;
import kotlinx.serialization.internal.GeneratedSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.StringSerializer;
import kotlinx.serialization.internal.UIntSerializer;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001R\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"com/dynamicyield/sdk/wrapper/core/models/event/VideoWatchEventProperties.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/dynamicyield/sdk/wrapper/core/models/event/VideoWatchEventProperties;", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "a", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", "DY-Sdk_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
@Deprecated
public /* synthetic */ class VideoWatchEventProperties$$serializer implements GeneratedSerializer<VideoWatchEventProperties> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final VideoWatchEventProperties$$serializer f26384a;
    private static final SerialDescriptor descriptor;

    static {
        VideoWatchEventProperties$$serializer videoWatchEventProperties$$serializer = new VideoWatchEventProperties$$serializer();
        f26384a = videoWatchEventProperties$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.dynamicyield.sdk.wrapper.core.models.event.VideoWatchEventProperties", videoWatchEventProperties$$serializer, 6);
        pluginGeneratedSerialDescriptor.k("dyType", false);
        pluginGeneratedSerialDescriptor.k("itemId", false);
        pluginGeneratedSerialDescriptor.k("categories", true);
        pluginGeneratedSerialDescriptor.k("autoplay", false);
        pluginGeneratedSerialDescriptor.k("progress", false);
        pluginGeneratedSerialDescriptor.k("progressPercent", false);
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
        Lazy[] lazyArr = VideoWatchEventProperties.g;
        boolean z = true;
        int i2 = 0;
        boolean zY = false;
        String strL = null;
        String strL2 = null;
        List list = null;
        VideoProgressType videoProgressType = null;
        UInt uInt = null;
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
                    list = (List) compositeDecoderB.m(serialDescriptor, 2, (DeserializationStrategy) lazyArr[2].getF71699b(), list);
                    i2 |= 4;
                    break;
                case 3:
                    zY = compositeDecoderB.y(serialDescriptor, 3);
                    i2 |= 8;
                    break;
                case 4:
                    videoProgressType = (VideoProgressType) compositeDecoderB.w(serialDescriptor, 4, (DeserializationStrategy) lazyArr[4].getF71699b(), videoProgressType);
                    i2 |= 16;
                    break;
                case 5:
                    uInt = (UInt) compositeDecoderB.w(serialDescriptor, 5, UIntSerializer.f75700a, uInt);
                    i2 |= 32;
                    break;
                default:
                    b21.l(iN);
                    return null;
            }
        }
        compositeDecoderB.c(serialDescriptor);
        return new VideoWatchEventProperties(i2, strL, strL2, list, zY, videoProgressType, uInt, null, null);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        VideoWatchEventProperties videoWatchEventProperties = (VideoWatchEventProperties) obj;
        videoWatchEventProperties.getClass();
        SerialDescriptor serialDescriptor = descriptor;
        CompositeEncoder compositeEncoderB = encoder.b(serialDescriptor);
        compositeEncoderB.y(serialDescriptor, 0, videoWatchEventProperties.f26338a);
        Lazy[] lazyArr = VideoWatchEventProperties.g;
        String str = videoWatchEventProperties.f26380b;
        List list = videoWatchEventProperties.f26381c;
        compositeEncoderB.y(serialDescriptor, 1, str);
        if (compositeEncoderB.o(serialDescriptor) || list != null) {
            compositeEncoderB.h(serialDescriptor, 2, (SerializationStrategy) lazyArr[2].getF71699b(), list);
        }
        compositeEncoderB.x(serialDescriptor, 3, videoWatchEventProperties.d);
        compositeEncoderB.A(serialDescriptor, 4, (SerializationStrategy) lazyArr[4].getF71699b(), videoWatchEventProperties.f26382e);
        compositeEncoderB.A(serialDescriptor, 5, UIntSerializer.f75700a, new UInt(videoWatchEventProperties.f26383f));
        compositeEncoderB.c(serialDescriptor);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] e() {
        Lazy[] lazyArr = VideoWatchEventProperties.g;
        StringSerializer stringSerializer = StringSerializer.f75684a;
        return new KSerializer[]{stringSerializer, stringSerializer, BuiltinSerializersKt.d((KSerializer) lazyArr[2].getF71699b()), BooleanSerializer.f75574a, lazyArr[4].getF71699b(), UIntSerializer.f75700a};
    }
}
