package com.vuitton.android.data.dto.pdp;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.foundation.model.domain.model.product.ProductId;
import com.vuitton.foundation.model.domain.model.product.ProductId$$serializer;
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
import kotlinx.serialization.internal.GeneratedSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.StringSerializer;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001R\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"com/vuitton/android/data/dto/pdp/ModelSizeVariationDto.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/vuitton/android/data/dto/pdp/ModelSizeVariationDto;", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "a", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Deprecated
public final /* synthetic */ class ModelSizeVariationDto$$serializer implements GeneratedSerializer<ModelSizeVariationDto> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ModelSizeVariationDto$$serializer f46228a;
    private static final SerialDescriptor descriptor;

    static {
        ModelSizeVariationDto$$serializer modelSizeVariationDto$$serializer = new ModelSizeVariationDto$$serializer();
        f46228a = modelSizeVariationDto$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vuitton.android.data.dto.pdp.ModelSizeVariationDto", modelSizeVariationDto$$serializer, 6);
        pluginGeneratedSerialDescriptor.k("skuId", false);
        pluginGeneratedSerialDescriptor.k("productId", true);
        pluginGeneratedSerialDescriptor.k("name", false);
        pluginGeneratedSerialDescriptor.k("mediaUrl", true);
        pluginGeneratedSerialDescriptor.k("wearings", false);
        pluginGeneratedSerialDescriptor.k("dimensions", false);
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
        Lazy[] lazyArr = ModelSizeVariationDto.g;
        boolean z = true;
        int i2 = 0;
        String str = null;
        String str2 = null;
        String strL = null;
        String str3 = null;
        List list = null;
        DimensionsDto dimensionsDto = null;
        while (z) {
            int iN = compositeDecoderB.n(serialDescriptor);
            switch (iN) {
                case -1:
                    z = false;
                    break;
                case 0:
                    SkuId skuId = (SkuId) compositeDecoderB.w(serialDescriptor, 0, SkuId$$serializer.f67934a, str != null ? new SkuId(str) : null);
                    str = skuId != null ? skuId.f67933a : null;
                    i2 |= 1;
                    break;
                case 1:
                    ProductId productId = (ProductId) compositeDecoderB.m(serialDescriptor, 1, ProductId$$serializer.f67906a, str2 != null ? new ProductId(str2) : null);
                    str2 = productId != null ? productId.f67905a : null;
                    i2 |= 2;
                    break;
                case 2:
                    strL = compositeDecoderB.l(serialDescriptor, 2);
                    i2 |= 4;
                    break;
                case 3:
                    str3 = (String) compositeDecoderB.m(serialDescriptor, 3, StringSerializer.f75684a, str3);
                    i2 |= 8;
                    break;
                case 4:
                    list = (List) compositeDecoderB.w(serialDescriptor, 4, (DeserializationStrategy) lazyArr[4].getF71699b(), list);
                    i2 |= 16;
                    break;
                case 5:
                    dimensionsDto = (DimensionsDto) compositeDecoderB.w(serialDescriptor, 5, DimensionsDto$$serializer.f46201a, dimensionsDto);
                    i2 |= 32;
                    break;
                default:
                    b21.l(iN);
                    return null;
            }
        }
        compositeDecoderB.c(serialDescriptor);
        return new ModelSizeVariationDto(i2, str, str2, strL, str3, list, dimensionsDto, null, null);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        ModelSizeVariationDto modelSizeVariationDto = (ModelSizeVariationDto) obj;
        modelSizeVariationDto.getClass();
        SerialDescriptor serialDescriptor = descriptor;
        CompositeEncoder compositeEncoderB = encoder.b(serialDescriptor);
        Lazy[] lazyArr = ModelSizeVariationDto.g;
        SkuId$$serializer skuId$$serializer = SkuId$$serializer.f67934a;
        String str = modelSizeVariationDto.f46223a;
        String str2 = modelSizeVariationDto.d;
        String str3 = modelSizeVariationDto.f46224b;
        cj.B(str, compositeEncoderB, serialDescriptor, 0, skuId$$serializer);
        if (compositeEncoderB.o(serialDescriptor) || str3 != null) {
            compositeEncoderB.h(serialDescriptor, 1, ProductId$$serializer.f67906a, str3 != null ? new ProductId(str3) : null);
        }
        compositeEncoderB.y(serialDescriptor, 2, modelSizeVariationDto.f46225c);
        if (compositeEncoderB.o(serialDescriptor) || str2 != null) {
            compositeEncoderB.h(serialDescriptor, 3, StringSerializer.f75684a, str2);
        }
        compositeEncoderB.A(serialDescriptor, 4, (SerializationStrategy) lazyArr[4].getF71699b(), modelSizeVariationDto.f46226e);
        compositeEncoderB.A(serialDescriptor, 5, DimensionsDto$$serializer.f46201a, modelSizeVariationDto.f46227f);
        compositeEncoderB.c(serialDescriptor);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] e() {
        Lazy[] lazyArr = ModelSizeVariationDto.g;
        StringSerializer stringSerializer = StringSerializer.f75684a;
        return new KSerializer[]{SkuId$$serializer.f67934a, BuiltinSerializersKt.d(ProductId$$serializer.f67906a), stringSerializer, BuiltinSerializersKt.d(stringSerializer), lazyArr[4].getF71699b(), DimensionsDto$$serializer.f46201a};
    }
}
