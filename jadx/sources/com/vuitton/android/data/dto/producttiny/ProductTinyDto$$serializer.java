package com.vuitton.android.data.dto.producttiny;

import com.batch.android.s.b;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.common.AssetImageDto;
import com.vuitton.android.data.dto.common.AssetImageDto$$serializer;
import com.vuitton.android.data.dto.productshort.ProductShortPriceDto;
import com.vuitton.android.data.dto.productshort.ProductShortPriceDto$$serializer;
import com.vuitton.foundation.model.domain.model.product.SkuId;
import com.vuitton.foundation.model.domain.model.product.SkuId$$serializer;
import defpackage.b21;
import defpackage.cj;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlinx.serialization.KSerializer;
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
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001R\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"com/vuitton/android/data/dto/producttiny/ProductTinyDto.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/vuitton/android/data/dto/producttiny/ProductTinyDto;", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "a", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Deprecated
public final /* synthetic */ class ProductTinyDto$$serializer implements GeneratedSerializer<ProductTinyDto> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ProductTinyDto$$serializer f46669a;
    private static final SerialDescriptor descriptor;

    static {
        ProductTinyDto$$serializer productTinyDto$$serializer = new ProductTinyDto$$serializer();
        f46669a = productTinyDto$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vuitton.android.data.dto.producttiny.ProductTinyDto", productTinyDto$$serializer, 7);
        pluginGeneratedSerialDescriptor.k(b.a.f24015b, true);
        pluginGeneratedSerialDescriptor.k("name", false);
        pluginGeneratedSerialDescriptor.k("image", false);
        pluginGeneratedSerialDescriptor.k("sku", false);
        pluginGeneratedSerialDescriptor.k("price", true);
        pluginGeneratedSerialDescriptor.k("background", true);
        pluginGeneratedSerialDescriptor.k("color", true);
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
        String str = null;
        String strL = null;
        AssetImageDto assetImageDto = null;
        String str2 = null;
        ProductShortPriceDto productShortPriceDto = null;
        String str3 = null;
        String str4 = null;
        while (z) {
            int iN = compositeDecoderB.n(serialDescriptor);
            switch (iN) {
                case -1:
                    z = false;
                    break;
                case 0:
                    str = (String) compositeDecoderB.m(serialDescriptor, 0, StringSerializer.f75684a, str);
                    i2 |= 1;
                    break;
                case 1:
                    strL = compositeDecoderB.l(serialDescriptor, 1);
                    i2 |= 2;
                    break;
                case 2:
                    assetImageDto = (AssetImageDto) compositeDecoderB.w(serialDescriptor, 2, AssetImageDto$$serializer.f45243a, assetImageDto);
                    i2 |= 4;
                    break;
                case 3:
                    SkuId skuId = (SkuId) compositeDecoderB.w(serialDescriptor, 3, SkuId$$serializer.f67934a, str2 != null ? new SkuId(str2) : null);
                    str2 = skuId != null ? skuId.f67933a : null;
                    i2 |= 8;
                    break;
                case 4:
                    productShortPriceDto = (ProductShortPriceDto) compositeDecoderB.m(serialDescriptor, 4, ProductShortPriceDto$$serializer.f46650a, productShortPriceDto);
                    i2 |= 16;
                    break;
                case 5:
                    str3 = (String) compositeDecoderB.m(serialDescriptor, 5, StringSerializer.f75684a, str3);
                    i2 |= 32;
                    break;
                case 6:
                    str4 = (String) compositeDecoderB.m(serialDescriptor, 6, StringSerializer.f75684a, str4);
                    i2 |= 64;
                    break;
                default:
                    b21.l(iN);
                    return null;
            }
        }
        compositeDecoderB.c(serialDescriptor);
        return new ProductTinyDto(i2, str, strL, assetImageDto, str2, productShortPriceDto, str3, str4, null, null);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        ProductTinyDto productTinyDto = (ProductTinyDto) obj;
        productTinyDto.getClass();
        String str = productTinyDto.f46664a;
        SerialDescriptor serialDescriptor = descriptor;
        CompositeEncoder compositeEncoderB = encoder.b(serialDescriptor);
        if (compositeEncoderB.o(serialDescriptor) || str != null) {
            compositeEncoderB.h(serialDescriptor, 0, StringSerializer.f75684a, str);
        }
        String str2 = productTinyDto.f46665b;
        String str3 = productTinyDto.g;
        String str4 = productTinyDto.f46668f;
        ProductShortPriceDto productShortPriceDto = productTinyDto.f46667e;
        compositeEncoderB.y(serialDescriptor, 1, str2);
        compositeEncoderB.A(serialDescriptor, 2, AssetImageDto$$serializer.f45243a, productTinyDto.f46666c);
        cj.B(productTinyDto.d, compositeEncoderB, serialDescriptor, 3, SkuId$$serializer.f67934a);
        if (compositeEncoderB.o(serialDescriptor) || productShortPriceDto != null) {
            compositeEncoderB.h(serialDescriptor, 4, ProductShortPriceDto$$serializer.f46650a, productShortPriceDto);
        }
        if (compositeEncoderB.o(serialDescriptor) || str4 != null) {
            compositeEncoderB.h(serialDescriptor, 5, StringSerializer.f75684a, str4);
        }
        if (compositeEncoderB.o(serialDescriptor) || str3 != null) {
            compositeEncoderB.h(serialDescriptor, 6, StringSerializer.f75684a, str3);
        }
        compositeEncoderB.c(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] e() {
        StringSerializer stringSerializer = StringSerializer.f75684a;
        return new KSerializer[]{BuiltinSerializersKt.d(stringSerializer), stringSerializer, AssetImageDto$$serializer.f45243a, SkuId$$serializer.f67934a, BuiltinSerializersKt.d(ProductShortPriceDto$$serializer.f46650a), BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(stringSerializer)};
    }
}
