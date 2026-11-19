package com.vuitton.android.data.dto.productshort;

import com.batch.android.s.b;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.common.AssetDto;
import com.vuitton.android.data.dto.common.AssetDto$$serializer;
import com.vuitton.android.data.dto.product.virtualtryon.VirtualTryOnDto;
import com.vuitton.android.data.dto.product.virtualtryon.VirtualTryOnDto$$serializer;
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
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001R\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"com/vuitton/android/data/dto/productshort/ProductShortDto.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/vuitton/android/data/dto/productshort/ProductShortDto;", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "a", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Deprecated
public final /* synthetic */ class ProductShortDto$$serializer implements GeneratedSerializer<ProductShortDto> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ProductShortDto$$serializer f46646a;
    private static final SerialDescriptor descriptor;

    static {
        ProductShortDto$$serializer productShortDto$$serializer = new ProductShortDto$$serializer();
        f46646a = productShortDto$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vuitton.android.data.dto.productshort.ProductShortDto", productShortDto$$serializer, 18);
        pluginGeneratedSerialDescriptor.k(b.a.f24015b, true);
        pluginGeneratedSerialDescriptor.k("name", false);
        pluginGeneratedSerialDescriptor.k("mainAsset", false);
        pluginGeneratedSerialDescriptor.k("category", true);
        pluginGeneratedSerialDescriptor.k("sku", false);
        pluginGeneratedSerialDescriptor.k("colorVariations", false);
        pluginGeneratedSerialDescriptor.k("color", true);
        pluginGeneratedSerialDescriptor.k("showARModel", false);
        pluginGeneratedSerialDescriptor.k("type", false);
        pluginGeneratedSerialDescriptor.k("assets", false);
        pluginGeneratedSerialDescriptor.k("background", true);
        pluginGeneratedSerialDescriptor.k("tag", true);
        pluginGeneratedSerialDescriptor.k("launchDate", true);
        pluginGeneratedSerialDescriptor.k("price", true);
        pluginGeneratedSerialDescriptor.k("isCustomized", false);
        pluginGeneratedSerialDescriptor.k("tryOn", true);
        pluginGeneratedSerialDescriptor.k("backInStock", false);
        pluginGeneratedSerialDescriptor.k("shareUrl", true);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    @Override // kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    /* JADX INFO: renamed from: a */
    public final SerialDescriptor getF19838b() {
        return descriptor;
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public final Object b(Decoder decoder) {
        int i2;
        decoder.getClass();
        SerialDescriptor serialDescriptor = descriptor;
        CompositeDecoder compositeDecoderB = decoder.b(serialDescriptor);
        Lazy[] lazyArr = ProductShortDto.s;
        VirtualTryOnDto virtualTryOnDto = null;
        ProductShortPriceDto productShortPriceDto = null;
        String str = null;
        String str2 = null;
        String str3 = null;
        List list = null;
        int i3 = 0;
        String str4 = null;
        String str5 = null;
        AssetDto assetDto = null;
        String str6 = null;
        String str7 = null;
        List list2 = null;
        ProductShortCharacteristicDto productShortCharacteristicDto = null;
        boolean z = true;
        String strL = null;
        boolean zY = false;
        String strL2 = null;
        boolean zY2 = false;
        boolean zY3 = false;
        while (z) {
            int iN = compositeDecoderB.n(serialDescriptor);
            switch (iN) {
                case -1:
                    virtualTryOnDto = virtualTryOnDto;
                    z = false;
                    virtualTryOnDto = virtualTryOnDto;
                    break;
                case 0:
                    virtualTryOnDto = virtualTryOnDto;
                    str4 = (String) compositeDecoderB.m(serialDescriptor, 0, StringSerializer.f75684a, str4);
                    i3 |= 1;
                    assetDto = assetDto;
                    virtualTryOnDto = virtualTryOnDto;
                    break;
                case 1:
                    strL = compositeDecoderB.l(serialDescriptor, 1);
                    i3 |= 2;
                    str4 = str4;
                    virtualTryOnDto = virtualTryOnDto;
                    break;
                case 2:
                    assetDto = (AssetDto) compositeDecoderB.w(serialDescriptor, 2, AssetDto$$serializer.f45238a, assetDto);
                    i3 |= 4;
                    str4 = str4;
                    virtualTryOnDto = virtualTryOnDto;
                    break;
                case 3:
                    str4 = str4;
                    assetDto = assetDto;
                    str6 = (String) compositeDecoderB.m(serialDescriptor, 3, StringSerializer.f75684a, str6);
                    i3 |= 8;
                    str4 = str4;
                    assetDto = assetDto;
                    break;
                case 4:
                    str4 = str4;
                    assetDto = assetDto;
                    SkuId skuId = (SkuId) compositeDecoderB.w(serialDescriptor, 4, SkuId$$serializer.f67934a, str7 != null ? new SkuId(str7) : null);
                    str7 = skuId != null ? skuId.f67933a : null;
                    i3 |= 16;
                    str4 = str4;
                    assetDto = assetDto;
                    break;
                case 5:
                    str4 = str4;
                    assetDto = assetDto;
                    list2 = (List) compositeDecoderB.w(serialDescriptor, 5, (DeserializationStrategy) lazyArr[5].getF71699b(), list2);
                    i3 |= 32;
                    str4 = str4;
                    assetDto = assetDto;
                    break;
                case 6:
                    str4 = str4;
                    assetDto = assetDto;
                    productShortCharacteristicDto = (ProductShortCharacteristicDto) compositeDecoderB.m(serialDescriptor, 6, ProductShortCharacteristicDto$$serializer.f46636a, productShortCharacteristicDto);
                    i3 |= 64;
                    str4 = str4;
                    assetDto = assetDto;
                    break;
                case 7:
                    zY = compositeDecoderB.y(serialDescriptor, 7);
                    i3 |= 128;
                    str4 = str4;
                    break;
                case 8:
                    strL2 = compositeDecoderB.l(serialDescriptor, 8);
                    i3 |= 256;
                    str4 = str4;
                    break;
                case 9:
                    str4 = str4;
                    assetDto = assetDto;
                    list = (List) compositeDecoderB.w(serialDescriptor, 9, (DeserializationStrategy) lazyArr[9].getF71699b(), list);
                    i3 |= 512;
                    str4 = str4;
                    assetDto = assetDto;
                    break;
                case 10:
                    str4 = str4;
                    assetDto = assetDto;
                    str5 = (String) compositeDecoderB.m(serialDescriptor, 10, StringSerializer.f75684a, str5);
                    i3 |= 1024;
                    str4 = str4;
                    assetDto = assetDto;
                    break;
                case 11:
                    str4 = str4;
                    assetDto = assetDto;
                    str2 = (String) compositeDecoderB.m(serialDescriptor, 11, StringSerializer.f75684a, str2);
                    i3 |= 2048;
                    str4 = str4;
                    assetDto = assetDto;
                    break;
                case 12:
                    str4 = str4;
                    assetDto = assetDto;
                    str = (String) compositeDecoderB.m(serialDescriptor, 12, StringSerializer.f75684a, str);
                    i3 |= 4096;
                    str4 = str4;
                    assetDto = assetDto;
                    break;
                case 13:
                    str4 = str4;
                    assetDto = assetDto;
                    productShortPriceDto = (ProductShortPriceDto) compositeDecoderB.m(serialDescriptor, 13, ProductShortPriceDto$$serializer.f46650a, productShortPriceDto);
                    i3 |= 8192;
                    str4 = str4;
                    assetDto = assetDto;
                    break;
                case 14:
                    zY2 = compositeDecoderB.y(serialDescriptor, 14);
                    i3 |= 16384;
                    str4 = str4;
                    break;
                case 15:
                    virtualTryOnDto = (VirtualTryOnDto) compositeDecoderB.m(serialDescriptor, 15, VirtualTryOnDto$$serializer.f46498a, virtualTryOnDto);
                    i2 = 32768;
                    i3 |= i2;
                    str4 = str4;
                    assetDto = assetDto;
                    break;
                case 16:
                    zY3 = compositeDecoderB.y(serialDescriptor, 16);
                    i3 |= 65536;
                    str4 = str4;
                    break;
                case 17:
                    str3 = (String) compositeDecoderB.m(serialDescriptor, 17, StringSerializer.f75684a, str3);
                    i2 = 131072;
                    i3 |= i2;
                    str4 = str4;
                    assetDto = assetDto;
                    break;
                default:
                    b21.l(iN);
                    return null;
            }
        }
        AssetDto assetDto2 = assetDto;
        compositeDecoderB.c(serialDescriptor);
        return new ProductShortDto(i3, str4, strL, assetDto2, str6, str7, list2, productShortCharacteristicDto, zY, strL2, list, str5, str2, str, productShortPriceDto, zY2, virtualTryOnDto, zY3, str3, null, null);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        ProductShortDto productShortDto = (ProductShortDto) obj;
        productShortDto.getClass();
        String str = productShortDto.f46637a;
        SerialDescriptor serialDescriptor = descriptor;
        CompositeEncoder compositeEncoderB = encoder.b(serialDescriptor);
        Lazy[] lazyArr = ProductShortDto.s;
        if (compositeEncoderB.o(serialDescriptor) || str != null) {
            compositeEncoderB.h(serialDescriptor, 0, StringSerializer.f75684a, str);
        }
        String str2 = productShortDto.f46638b;
        String str3 = productShortDto.r;
        VirtualTryOnDto virtualTryOnDto = productShortDto.p;
        ProductShortPriceDto productShortPriceDto = productShortDto.n;
        String str4 = productShortDto.m;
        String str5 = productShortDto.l;
        String str6 = productShortDto.f46645k;
        ProductShortCharacteristicDto productShortCharacteristicDto = productShortDto.g;
        String str7 = productShortDto.d;
        compositeEncoderB.y(serialDescriptor, 1, str2);
        compositeEncoderB.A(serialDescriptor, 2, AssetDto$$serializer.f45238a, productShortDto.f46639c);
        if (compositeEncoderB.o(serialDescriptor) || str7 != null) {
            compositeEncoderB.h(serialDescriptor, 3, StringSerializer.f75684a, str7);
        }
        cj.B(productShortDto.f46640e, compositeEncoderB, serialDescriptor, 4, SkuId$$serializer.f67934a);
        compositeEncoderB.A(serialDescriptor, 5, (SerializationStrategy) lazyArr[5].getF71699b(), productShortDto.f46641f);
        if (compositeEncoderB.o(serialDescriptor) || productShortCharacteristicDto != null) {
            compositeEncoderB.h(serialDescriptor, 6, ProductShortCharacteristicDto$$serializer.f46636a, productShortCharacteristicDto);
        }
        compositeEncoderB.x(serialDescriptor, 7, productShortDto.f46642h);
        compositeEncoderB.y(serialDescriptor, 8, productShortDto.f46643i);
        compositeEncoderB.A(serialDescriptor, 9, (SerializationStrategy) lazyArr[9].getF71699b(), productShortDto.f46644j);
        if (compositeEncoderB.o(serialDescriptor) || str6 != null) {
            compositeEncoderB.h(serialDescriptor, 10, StringSerializer.f75684a, str6);
        }
        if (compositeEncoderB.o(serialDescriptor) || str5 != null) {
            compositeEncoderB.h(serialDescriptor, 11, StringSerializer.f75684a, str5);
        }
        if (compositeEncoderB.o(serialDescriptor) || str4 != null) {
            compositeEncoderB.h(serialDescriptor, 12, StringSerializer.f75684a, str4);
        }
        if (compositeEncoderB.o(serialDescriptor) || productShortPriceDto != null) {
            compositeEncoderB.h(serialDescriptor, 13, ProductShortPriceDto$$serializer.f46650a, productShortPriceDto);
        }
        compositeEncoderB.x(serialDescriptor, 14, productShortDto.o);
        if (compositeEncoderB.o(serialDescriptor) || virtualTryOnDto != null) {
            compositeEncoderB.h(serialDescriptor, 15, VirtualTryOnDto$$serializer.f46498a, virtualTryOnDto);
        }
        compositeEncoderB.x(serialDescriptor, 16, productShortDto.q);
        if (compositeEncoderB.o(serialDescriptor) || str3 != null) {
            compositeEncoderB.h(serialDescriptor, 17, StringSerializer.f75684a, str3);
        }
        compositeEncoderB.c(serialDescriptor);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] e() {
        Lazy[] lazyArr = ProductShortDto.s;
        StringSerializer stringSerializer = StringSerializer.f75684a;
        BooleanSerializer booleanSerializer = BooleanSerializer.f75574a;
        return new KSerializer[]{BuiltinSerializersKt.d(stringSerializer), stringSerializer, AssetDto$$serializer.f45238a, BuiltinSerializersKt.d(stringSerializer), SkuId$$serializer.f67934a, lazyArr[5].getF71699b(), BuiltinSerializersKt.d(ProductShortCharacteristicDto$$serializer.f46636a), booleanSerializer, stringSerializer, lazyArr[9].getF71699b(), BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(ProductShortPriceDto$$serializer.f46650a), booleanSerializer, BuiltinSerializersKt.d(VirtualTryOnDto$$serializer.f46498a), booleanSerializer, BuiltinSerializersKt.d(stringSerializer)};
    }
}
