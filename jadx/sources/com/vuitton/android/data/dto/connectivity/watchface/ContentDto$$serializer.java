package com.vuitton.android.data.dto.connectivity.watchface;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.b21;
import java.util.ArrayList;
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
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001R\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"com/vuitton/android/data/dto/connectivity/watchface/ContentDto.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/vuitton/android/data/dto/connectivity/watchface/ContentDto;", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "a", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Deprecated
public final /* synthetic */ class ContentDto$$serializer implements GeneratedSerializer<ContentDto> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ContentDto$$serializer f45676a;
    private static final SerialDescriptor descriptor;

    static {
        ContentDto$$serializer contentDto$$serializer = new ContentDto$$serializer();
        f45676a = contentDto$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vuitton.android.data.dto.connectivity.watchface.ContentDto", contentDto$$serializer, 8);
        pluginGeneratedSerialDescriptor.k("asset_videoplaceholder", true);
        pluginGeneratedSerialDescriptor.k("asset_bottom", true);
        pluginGeneratedSerialDescriptor.k("asset_ho_to_get", true);
        pluginGeneratedSerialDescriptor.k("asset_ho_to_get_subtitles", true);
        pluginGeneratedSerialDescriptor.k("asset_text", true);
        pluginGeneratedSerialDescriptor.k("asset_top", true);
        pluginGeneratedSerialDescriptor.k("asset_video", true);
        pluginGeneratedSerialDescriptor.k("asset_video_subtitles", true);
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
        Lazy[] lazyArr = ContentDto.f45669i;
        Object obj = null;
        boolean z = true;
        String str = null;
        String str2 = null;
        ArrayList arrayList = null;
        String str3 = null;
        String str4 = null;
        String str5 = null;
        ArrayList arrayList2 = null;
        String str6 = null;
        int i2 = 0;
        while (z) {
            int iN = compositeDecoderB.n(serialDescriptor);
            switch (iN) {
                case -1:
                    z = false;
                    break;
                case 0:
                    str2 = (String) compositeDecoderB.m(serialDescriptor, 0, StringSerializer.f75684a, str2);
                    i2 |= 1;
                    break;
                case 1:
                    arrayList = (ArrayList) compositeDecoderB.m(serialDescriptor, 1, (DeserializationStrategy) lazyArr[1].getF71699b(), arrayList);
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
                    str5 = (String) compositeDecoderB.m(serialDescriptor, 4, StringSerializer.f75684a, str5);
                    i2 |= 16;
                    break;
                case 5:
                    arrayList2 = (ArrayList) compositeDecoderB.m(serialDescriptor, 5, (DeserializationStrategy) lazyArr[5].getF71699b(), arrayList2);
                    i2 |= 32;
                    break;
                case 6:
                    str6 = (String) compositeDecoderB.m(serialDescriptor, 6, StringSerializer.f75684a, str6);
                    i2 |= 64;
                    break;
                case 7:
                    str = (String) compositeDecoderB.m(serialDescriptor, 7, StringSerializer.f75684a, str);
                    i2 |= 128;
                    break;
                default:
                    b21.l(iN);
                    return obj;
            }
            obj = null;
        }
        compositeDecoderB.c(serialDescriptor);
        return new ContentDto(i2, str2, arrayList, str3, str4, str5, arrayList2, str6, str, (SerializationConstructorMarker) null);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        ContentDto contentDto = (ContentDto) obj;
        contentDto.getClass();
        String str = contentDto.f45675h;
        String str2 = contentDto.g;
        ArrayList arrayList = contentDto.f45674f;
        String str3 = contentDto.f45673e;
        String str4 = contentDto.d;
        String str5 = contentDto.f45672c;
        ArrayList arrayList2 = contentDto.f45671b;
        String str6 = contentDto.f45670a;
        SerialDescriptor serialDescriptor = descriptor;
        CompositeEncoder compositeEncoderB = encoder.b(serialDescriptor);
        Lazy[] lazyArr = ContentDto.f45669i;
        if (compositeEncoderB.o(serialDescriptor) || str6 != null) {
            compositeEncoderB.h(serialDescriptor, 0, StringSerializer.f75684a, str6);
        }
        if (compositeEncoderB.o(serialDescriptor) || arrayList2 != null) {
            compositeEncoderB.h(serialDescriptor, 1, (SerializationStrategy) lazyArr[1].getF71699b(), arrayList2);
        }
        if (compositeEncoderB.o(serialDescriptor) || str5 != null) {
            compositeEncoderB.h(serialDescriptor, 2, StringSerializer.f75684a, str5);
        }
        if (compositeEncoderB.o(serialDescriptor) || str4 != null) {
            compositeEncoderB.h(serialDescriptor, 3, StringSerializer.f75684a, str4);
        }
        if (compositeEncoderB.o(serialDescriptor) || str3 != null) {
            compositeEncoderB.h(serialDescriptor, 4, StringSerializer.f75684a, str3);
        }
        if (compositeEncoderB.o(serialDescriptor) || arrayList != null) {
            compositeEncoderB.h(serialDescriptor, 5, (SerializationStrategy) lazyArr[5].getF71699b(), arrayList);
        }
        if (compositeEncoderB.o(serialDescriptor) || str2 != null) {
            compositeEncoderB.h(serialDescriptor, 6, StringSerializer.f75684a, str2);
        }
        if (compositeEncoderB.o(serialDescriptor) || str != null) {
            compositeEncoderB.h(serialDescriptor, 7, StringSerializer.f75684a, str);
        }
        compositeEncoderB.c(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] e() {
        Lazy[] lazyArr = ContentDto.f45669i;
        StringSerializer stringSerializer = StringSerializer.f75684a;
        return new KSerializer[]{BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d((KSerializer) lazyArr[1].getF71699b()), BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d((KSerializer) lazyArr[5].getF71699b()), BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(stringSerializer)};
    }
}
