package com.vuitton.android.data.dto.pdp;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.foundation.model.domain.model.product.ProductId;
import com.vuitton.foundation.model.domain.model.product.ProductId$$serializer;
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
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001R\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"com/vuitton/android/data/dto/pdp/ProductSkuModelDto.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/vuitton/android/data/dto/pdp/ProductSkuModelDto;", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "a", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Deprecated
public final /* synthetic */ class ProductSkuModelDto$$serializer implements GeneratedSerializer<ProductSkuModelDto> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ProductSkuModelDto$$serializer f46295a;
    private static final SerialDescriptor descriptor;

    static {
        ProductSkuModelDto$$serializer productSkuModelDto$$serializer = new ProductSkuModelDto$$serializer();
        f46295a = productSkuModelDto$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vuitton.android.data.dto.pdp.ProductSkuModelDto", productSkuModelDto$$serializer, 12);
        pluginGeneratedSerialDescriptor.k("skuId", false);
        pluginGeneratedSerialDescriptor.k("name", false);
        pluginGeneratedSerialDescriptor.k("webPath", false);
        pluginGeneratedSerialDescriptor.k("mediaUrl", false);
        pluginGeneratedSerialDescriptor.k("productId", true);
        pluginGeneratedSerialDescriptor.k("material", true);
        pluginGeneratedSerialDescriptor.k("size", true);
        pluginGeneratedSerialDescriptor.k("carat", true);
        pluginGeneratedSerialDescriptor.k("price", true);
        pluginGeneratedSerialDescriptor.k("language", true);
        pluginGeneratedSerialDescriptor.k("finish", true);
        pluginGeneratedSerialDescriptor.k("colorInfo", true);
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
        Object obj = null;
        boolean z = true;
        String str = null;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        ColorInfoDto colorInfoDto = null;
        String str5 = null;
        String str6 = null;
        String str7 = null;
        String str8 = null;
        String strL = null;
        String strL2 = null;
        String strL3 = null;
        int i2 = 0;
        while (z) {
            int iN = compositeDecoderB.n(serialDescriptor);
            switch (iN) {
                case -1:
                    z = false;
                    continue;
                case 0:
                    SkuId skuId = (SkuId) compositeDecoderB.w(serialDescriptor, 0, SkuId$$serializer.f67934a, str2 != null ? new SkuId(str2) : null);
                    i2 |= 1;
                    str2 = skuId != null ? skuId.f67933a : null;
                    break;
                case 1:
                    strL = compositeDecoderB.l(serialDescriptor, 1);
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
                    ProductId productId = (ProductId) compositeDecoderB.m(serialDescriptor, 4, ProductId$$serializer.f67906a, str5 != null ? new ProductId(str5) : null);
                    str5 = productId != null ? productId.f67905a : null;
                    i2 |= 16;
                    break;
                case 5:
                    str6 = (String) compositeDecoderB.m(serialDescriptor, 5, StringSerializer.f75684a, str6);
                    i2 |= 32;
                    break;
                case 6:
                    str7 = (String) compositeDecoderB.m(serialDescriptor, 6, StringSerializer.f75684a, str7);
                    i2 |= 64;
                    break;
                case 7:
                    str8 = (String) compositeDecoderB.m(serialDescriptor, 7, StringSerializer.f75684a, str8);
                    i2 |= 128;
                    break;
                case 8:
                    str = (String) compositeDecoderB.m(serialDescriptor, 8, StringSerializer.f75684a, str);
                    i2 |= 256;
                    break;
                case 9:
                    str3 = (String) compositeDecoderB.m(serialDescriptor, 9, StringSerializer.f75684a, str3);
                    i2 |= 512;
                    break;
                case 10:
                    str4 = (String) compositeDecoderB.m(serialDescriptor, 10, StringSerializer.f75684a, str4);
                    i2 |= 1024;
                    break;
                case 11:
                    colorInfoDto = (ColorInfoDto) compositeDecoderB.m(serialDescriptor, 11, ColorInfoDto$$serializer.f46173a, colorInfoDto);
                    i2 |= 2048;
                    break;
                default:
                    b21.l(iN);
                    return obj;
            }
            obj = null;
        }
        compositeDecoderB.c(serialDescriptor);
        return new ProductSkuModelDto(i2, str2, strL, strL2, strL3, str5, str6, str7, str8, str, str3, str4, colorInfoDto, null, null);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        ProductSkuModelDto productSkuModelDto = (ProductSkuModelDto) obj;
        productSkuModelDto.getClass();
        SerialDescriptor serialDescriptor = descriptor;
        CompositeEncoder compositeEncoderB = encoder.b(serialDescriptor);
        SkuId$$serializer skuId$$serializer = SkuId$$serializer.f67934a;
        String str = productSkuModelDto.f46286a;
        ColorInfoDto colorInfoDto = productSkuModelDto.l;
        String str2 = productSkuModelDto.f46294k;
        String str3 = productSkuModelDto.f46293j;
        String str4 = productSkuModelDto.f46292i;
        String str5 = productSkuModelDto.f46291h;
        String str6 = productSkuModelDto.g;
        String str7 = productSkuModelDto.f46290f;
        String str8 = productSkuModelDto.f46289e;
        cj.B(str, compositeEncoderB, serialDescriptor, 0, skuId$$serializer);
        compositeEncoderB.y(serialDescriptor, 1, productSkuModelDto.f46287b);
        compositeEncoderB.y(serialDescriptor, 2, productSkuModelDto.f46288c);
        compositeEncoderB.y(serialDescriptor, 3, productSkuModelDto.d);
        if (compositeEncoderB.o(serialDescriptor) || str8 != null) {
            compositeEncoderB.h(serialDescriptor, 4, ProductId$$serializer.f67906a, str8 != null ? new ProductId(str8) : null);
        }
        if (compositeEncoderB.o(serialDescriptor) || str7 != null) {
            compositeEncoderB.h(serialDescriptor, 5, StringSerializer.f75684a, str7);
        }
        if (compositeEncoderB.o(serialDescriptor) || str6 != null) {
            compositeEncoderB.h(serialDescriptor, 6, StringSerializer.f75684a, str6);
        }
        if (compositeEncoderB.o(serialDescriptor) || str5 != null) {
            compositeEncoderB.h(serialDescriptor, 7, StringSerializer.f75684a, str5);
        }
        if (compositeEncoderB.o(serialDescriptor) || str4 != null) {
            compositeEncoderB.h(serialDescriptor, 8, StringSerializer.f75684a, str4);
        }
        if (compositeEncoderB.o(serialDescriptor) || str3 != null) {
            compositeEncoderB.h(serialDescriptor, 9, StringSerializer.f75684a, str3);
        }
        if (compositeEncoderB.o(serialDescriptor) || str2 != null) {
            compositeEncoderB.h(serialDescriptor, 10, StringSerializer.f75684a, str2);
        }
        if (compositeEncoderB.o(serialDescriptor) || colorInfoDto != null) {
            compositeEncoderB.h(serialDescriptor, 11, ColorInfoDto$$serializer.f46173a, colorInfoDto);
        }
        compositeEncoderB.c(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] e() {
        StringSerializer stringSerializer = StringSerializer.f75684a;
        return new KSerializer[]{SkuId$$serializer.f67934a, stringSerializer, stringSerializer, stringSerializer, BuiltinSerializersKt.d(ProductId$$serializer.f67906a), BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(ColorInfoDto$$serializer.f46173a)};
    }
}
