package com.vuitton.android.data.dto.product.vto;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.common.AssetImageDto;
import com.vuitton.android.data.dto.common.AssetImageDto$$serializer;
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
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001R\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"com/vuitton/android/data/dto/product/vto/TutorialDto.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/vuitton/android/data/dto/product/vto/TutorialDto;", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "a", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Deprecated
public final /* synthetic */ class TutorialDto$$serializer implements GeneratedSerializer<TutorialDto> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final TutorialDto$$serializer f46575a;
    private static final SerialDescriptor descriptor;

    static {
        TutorialDto$$serializer tutorialDto$$serializer = new TutorialDto$$serializer();
        f46575a = tutorialDto$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vuitton.android.data.dto.product.vto.TutorialDto", tutorialDto$$serializer, 7);
        pluginGeneratedSerialDescriptor.k("sku", false);
        pluginGeneratedSerialDescriptor.k("productId", true);
        pluginGeneratedSerialDescriptor.k("title", false);
        pluginGeneratedSerialDescriptor.k("surtitle", false);
        pluginGeneratedSerialDescriptor.k("image", true);
        pluginGeneratedSerialDescriptor.k("introduction", true);
        pluginGeneratedSerialDescriptor.k("sections", false);
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
        Lazy[] lazyArr = TutorialDto.f46569h;
        Object obj = null;
        boolean z = true;
        int i2 = 0;
        String strL = null;
        String str = null;
        String strL2 = null;
        String strL3 = null;
        AssetImageDto assetImageDto = null;
        String str2 = null;
        List list = null;
        while (z) {
            int iN = compositeDecoderB.n(serialDescriptor);
            switch (iN) {
                case -1:
                    z = false;
                    continue;
                case 0:
                    strL = compositeDecoderB.l(serialDescriptor, 0);
                    i2 |= 1;
                    break;
                case 1:
                    str = (String) compositeDecoderB.m(serialDescriptor, 1, StringSerializer.f75684a, str);
                    i2 |= 2;
                    break;
                case 2:
                    strL2 = compositeDecoderB.l(serialDescriptor, 2);
                    i2 |= 4;
                    break;
                case 3:
                    strL3 = compositeDecoderB.l(serialDescriptor, 3);
                    i2 |= 8;
                    break;
                case 4:
                    assetImageDto = (AssetImageDto) compositeDecoderB.m(serialDescriptor, 4, AssetImageDto$$serializer.f45243a, assetImageDto);
                    i2 |= 16;
                    break;
                case 5:
                    str2 = (String) compositeDecoderB.m(serialDescriptor, 5, StringSerializer.f75684a, str2);
                    i2 |= 32;
                    break;
                case 6:
                    list = (List) compositeDecoderB.w(serialDescriptor, 6, (DeserializationStrategy) lazyArr[6].getF71699b(), list);
                    i2 |= 64;
                    break;
                default:
                    b21.l(iN);
                    return obj;
            }
            obj = null;
        }
        compositeDecoderB.c(serialDescriptor);
        return new TutorialDto(i2, strL, str, strL2, strL3, assetImageDto, str2, list, (SerializationConstructorMarker) null);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        TutorialDto tutorialDto = (TutorialDto) obj;
        tutorialDto.getClass();
        SerialDescriptor serialDescriptor = descriptor;
        CompositeEncoder compositeEncoderB = encoder.b(serialDescriptor);
        Lazy[] lazyArr = TutorialDto.f46569h;
        String str = tutorialDto.f46570a;
        String str2 = tutorialDto.f46574f;
        AssetImageDto assetImageDto = tutorialDto.f46573e;
        String str3 = tutorialDto.f46571b;
        compositeEncoderB.y(serialDescriptor, 0, str);
        if (compositeEncoderB.o(serialDescriptor) || str3 != null) {
            compositeEncoderB.h(serialDescriptor, 1, StringSerializer.f75684a, str3);
        }
        compositeEncoderB.y(serialDescriptor, 2, tutorialDto.f46572c);
        compositeEncoderB.y(serialDescriptor, 3, tutorialDto.d);
        if (compositeEncoderB.o(serialDescriptor) || assetImageDto != null) {
            compositeEncoderB.h(serialDescriptor, 4, AssetImageDto$$serializer.f45243a, assetImageDto);
        }
        if (compositeEncoderB.o(serialDescriptor) || str2 != null) {
            compositeEncoderB.h(serialDescriptor, 5, StringSerializer.f75684a, str2);
        }
        compositeEncoderB.A(serialDescriptor, 6, (SerializationStrategy) lazyArr[6].getF71699b(), tutorialDto.g);
        compositeEncoderB.c(serialDescriptor);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] e() {
        Lazy[] lazyArr = TutorialDto.f46569h;
        StringSerializer stringSerializer = StringSerializer.f75684a;
        return new KSerializer[]{stringSerializer, BuiltinSerializersKt.d(stringSerializer), stringSerializer, stringSerializer, BuiltinSerializersKt.d(AssetImageDto$$serializer.f45243a), BuiltinSerializersKt.d(stringSerializer), lazyArr[6].getF71699b()};
    }
}
