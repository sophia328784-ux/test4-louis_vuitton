package com.vuitton.android.data.dto.product.vto;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.foundation.model.domain.model.product.SkuId;
import com.vuitton.foundation.model.domain.model.product.SkuId$$serializer;
import defpackage.b21;
import defpackage.cj;
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
import kotlinx.serialization.internal.BooleanSerializer;
import kotlinx.serialization.internal.GeneratedSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.StringSerializer;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001R\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"com/vuitton/android/data/dto/product/vto/TryOnProductDto.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/vuitton/android/data/dto/product/vto/TryOnProductDto;", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "a", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Deprecated
public final /* synthetic */ class TryOnProductDto$$serializer implements GeneratedSerializer<TryOnProductDto> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final TryOnProductDto$$serializer f46565a;
    private static final SerialDescriptor descriptor;

    static {
        TryOnProductDto$$serializer tryOnProductDto$$serializer = new TryOnProductDto$$serializer();
        f46565a = tryOnProductDto$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vuitton.android.data.dto.product.vto.TryOnProductDto", tryOnProductDto$$serializer, 10);
        pluginGeneratedSerialDescriptor.k("sku", false);
        pluginGeneratedSerialDescriptor.k("vtoId", false);
        pluginGeneratedSerialDescriptor.k("type", false);
        pluginGeneratedSerialDescriptor.k("stackingType", true);
        pluginGeneratedSerialDescriptor.k("isDualEnabled", false);
        pluginGeneratedSerialDescriptor.k("name", false);
        pluginGeneratedSerialDescriptor.k("color", false);
        pluginGeneratedSerialDescriptor.k("looks", true);
        pluginGeneratedSerialDescriptor.k("hasTutorial", false);
        pluginGeneratedSerialDescriptor.k("isLimitedEdition", false);
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
        Lazy[] lazyArr = TryOnProductDto.f46556k;
        Object obj = null;
        boolean z = true;
        List list = null;
        String str = null;
        String strL = null;
        BeautyProductTypeDto beautyProductTypeDto = null;
        BeautyProductTypeDto beautyProductTypeDto2 = null;
        String strL2 = null;
        ColorDto colorDto = null;
        int i2 = 0;
        boolean zY = false;
        boolean zY2 = false;
        boolean zY3 = false;
        while (z) {
            int iN = compositeDecoderB.n(serialDescriptor);
            switch (iN) {
                case -1:
                    z = false;
                    continue;
                case 0:
                    SkuId skuId = (SkuId) compositeDecoderB.w(serialDescriptor, 0, SkuId$$serializer.f67934a, str != null ? new SkuId(str) : null);
                    i2 |= 1;
                    str = skuId != null ? skuId.f67933a : null;
                    break;
                case 1:
                    strL = compositeDecoderB.l(serialDescriptor, 1);
                    i2 |= 2;
                    break;
                case 2:
                    beautyProductTypeDto = (BeautyProductTypeDto) compositeDecoderB.w(serialDescriptor, 2, (DeserializationStrategy) lazyArr[2].getF71699b(), beautyProductTypeDto);
                    i2 |= 4;
                    break;
                case 3:
                    beautyProductTypeDto2 = (BeautyProductTypeDto) compositeDecoderB.m(serialDescriptor, 3, (DeserializationStrategy) lazyArr[3].getF71699b(), beautyProductTypeDto2);
                    i2 |= 8;
                    break;
                case 4:
                    zY = compositeDecoderB.y(serialDescriptor, 4);
                    i2 |= 16;
                    break;
                case 5:
                    strL2 = compositeDecoderB.l(serialDescriptor, 5);
                    i2 |= 32;
                    break;
                case 6:
                    colorDto = (ColorDto) compositeDecoderB.w(serialDescriptor, 6, ColorDto$$serializer.f46505a, colorDto);
                    i2 |= 64;
                    break;
                case 7:
                    list = (List) compositeDecoderB.m(serialDescriptor, 7, (DeserializationStrategy) lazyArr[7].getF71699b(), list);
                    i2 |= 128;
                    break;
                case 8:
                    zY2 = compositeDecoderB.y(serialDescriptor, 8);
                    i2 |= 256;
                    break;
                case 9:
                    zY3 = compositeDecoderB.y(serialDescriptor, 9);
                    i2 |= 512;
                    break;
                default:
                    b21.l(iN);
                    return obj;
            }
            obj = null;
        }
        compositeDecoderB.c(serialDescriptor);
        return new TryOnProductDto(i2, str, strL, beautyProductTypeDto, beautyProductTypeDto2, zY, strL2, colorDto, list, zY2, zY3, null, null);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        TryOnProductDto tryOnProductDto = (TryOnProductDto) obj;
        tryOnProductDto.getClass();
        SerialDescriptor serialDescriptor = descriptor;
        CompositeEncoder compositeEncoderB = encoder.b(serialDescriptor);
        Lazy[] lazyArr = TryOnProductDto.f46556k;
        SkuId$$serializer skuId$$serializer = SkuId$$serializer.f67934a;
        String str = tryOnProductDto.f46557a;
        List list = tryOnProductDto.f46562h;
        BeautyProductTypeDto beautyProductTypeDto = tryOnProductDto.d;
        cj.B(str, compositeEncoderB, serialDescriptor, 0, skuId$$serializer);
        compositeEncoderB.y(serialDescriptor, 1, tryOnProductDto.f46558b);
        compositeEncoderB.A(serialDescriptor, 2, (SerializationStrategy) lazyArr[2].getF71699b(), tryOnProductDto.f46559c);
        if (compositeEncoderB.o(serialDescriptor) || beautyProductTypeDto != null) {
            compositeEncoderB.h(serialDescriptor, 3, (SerializationStrategy) lazyArr[3].getF71699b(), beautyProductTypeDto);
        }
        compositeEncoderB.x(serialDescriptor, 4, tryOnProductDto.f46560e);
        compositeEncoderB.y(serialDescriptor, 5, tryOnProductDto.f46561f);
        compositeEncoderB.A(serialDescriptor, 6, ColorDto$$serializer.f46505a, tryOnProductDto.g);
        if (compositeEncoderB.o(serialDescriptor) || list != null) {
            compositeEncoderB.h(serialDescriptor, 7, (SerializationStrategy) lazyArr[7].getF71699b(), list);
        }
        compositeEncoderB.x(serialDescriptor, 8, tryOnProductDto.f46563i);
        compositeEncoderB.x(serialDescriptor, 9, tryOnProductDto.f46564j);
        compositeEncoderB.c(serialDescriptor);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] e() {
        Lazy[] lazyArr = TryOnProductDto.f46556k;
        StringSerializer stringSerializer = StringSerializer.f75684a;
        BooleanSerializer booleanSerializer = BooleanSerializer.f75574a;
        return new KSerializer[]{SkuId$$serializer.f67934a, stringSerializer, lazyArr[2].getF71699b(), BuiltinSerializersKt.d((KSerializer) lazyArr[3].getF71699b()), booleanSerializer, stringSerializer, ColorDto$$serializer.f46505a, BuiltinSerializersKt.d((KSerializer) lazyArr[7].getF71699b()), booleanSerializer, booleanSerializer};
    }
}
