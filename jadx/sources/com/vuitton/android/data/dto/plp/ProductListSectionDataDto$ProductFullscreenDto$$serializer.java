package com.vuitton.android.data.dto.plp;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.common.editorial.RatioDto;
import com.vuitton.android.data.dto.productshort.ProductShortDto;
import com.vuitton.android.data.dto.productshort.ProductShortDto$$serializer;
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
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001R\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"com/vuitton/android/data/dto/plp/ProductListSectionDataDto.ProductFullscreenDto.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$ProductFullscreenDto;", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "a", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Deprecated
public final /* synthetic */ class ProductListSectionDataDto$ProductFullscreenDto$$serializer implements GeneratedSerializer<ProductListSectionDataDto.ProductFullscreenDto> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ProductListSectionDataDto$ProductFullscreenDto$$serializer f46373a;
    private static final SerialDescriptor descriptor;

    static {
        ProductListSectionDataDto$ProductFullscreenDto$$serializer productListSectionDataDto$ProductFullscreenDto$$serializer = new ProductListSectionDataDto$ProductFullscreenDto$$serializer();
        f46373a = productListSectionDataDto$ProductFullscreenDto$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vuitton.android.data.dto.plp.ProductListSectionDataDto.ProductFullscreenDto", productListSectionDataDto$ProductFullscreenDto$$serializer, 2);
        pluginGeneratedSerialDescriptor.k("product", false);
        pluginGeneratedSerialDescriptor.k("ratio", false);
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
        Lazy[] lazyArr = ProductListSectionDataDto.ProductFullscreenDto.d;
        boolean z = true;
        int i2 = 0;
        ProductShortDto productShortDto = null;
        RatioDto ratioDto = null;
        while (z) {
            int iN = compositeDecoderB.n(serialDescriptor);
            if (iN == -1) {
                z = false;
            } else if (iN == 0) {
                productShortDto = (ProductShortDto) compositeDecoderB.w(serialDescriptor, 0, ProductShortDto$$serializer.f46646a, productShortDto);
                i2 |= 1;
            } else {
                if (iN != 1) {
                    b21.l(iN);
                    return null;
                }
                ratioDto = (RatioDto) compositeDecoderB.w(serialDescriptor, 1, (DeserializationStrategy) lazyArr[1].getF71699b(), ratioDto);
                i2 |= 2;
            }
        }
        compositeDecoderB.c(serialDescriptor);
        return new ProductListSectionDataDto.ProductFullscreenDto(i2, productShortDto, ratioDto, null);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        ProductListSectionDataDto.ProductFullscreenDto productFullscreenDto = (ProductListSectionDataDto.ProductFullscreenDto) obj;
        productFullscreenDto.getClass();
        SerialDescriptor serialDescriptor = descriptor;
        CompositeEncoder compositeEncoderB = encoder.b(serialDescriptor);
        Lazy[] lazyArr = ProductListSectionDataDto.ProductFullscreenDto.d;
        compositeEncoderB.A(serialDescriptor, 0, ProductShortDto$$serializer.f46646a, productFullscreenDto.f46371b);
        compositeEncoderB.A(serialDescriptor, 1, (SerializationStrategy) lazyArr[1].getF71699b(), productFullscreenDto.f46372c);
        compositeEncoderB.c(serialDescriptor);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] e() {
        return new KSerializer[]{ProductShortDto$$serializer.f46646a, ProductListSectionDataDto.ProductFullscreenDto.d[1].getF71699b()};
    }
}
