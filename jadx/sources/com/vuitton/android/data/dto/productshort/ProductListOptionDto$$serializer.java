package com.vuitton.android.data.dto.productshort;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.b21;
import java.util.List;
import kotlin.Deprecated;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.collections.EmptyList;
import kotlin.jvm.internal.Intrinsics;
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

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001R\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"com/vuitton/android/data/dto/productshort/ProductListOptionDto.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/vuitton/android/data/dto/productshort/ProductListOptionDto;", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "a", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Deprecated
public final /* synthetic */ class ProductListOptionDto$$serializer implements GeneratedSerializer<ProductListOptionDto> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ProductListOptionDto$$serializer f46629a;
    private static final SerialDescriptor descriptor;

    static {
        ProductListOptionDto$$serializer productListOptionDto$$serializer = new ProductListOptionDto$$serializer();
        f46629a = productListOptionDto$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vuitton.android.data.dto.productshort.ProductListOptionDto", productListOptionDto$$serializer, 3);
        pluginGeneratedSerialDescriptor.k("sorts", false);
        pluginGeneratedSerialDescriptor.k("filters", true);
        pluginGeneratedSerialDescriptor.k("highlightedFilters", true);
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
        Lazy[] lazyArr = ProductListOptionDto.d;
        boolean z = true;
        int i2 = 0;
        List list = null;
        ProductFiltersDto productFiltersDto = null;
        List list2 = null;
        while (z) {
            int iN = compositeDecoderB.n(serialDescriptor);
            if (iN == -1) {
                z = false;
            } else if (iN == 0) {
                list = (List) compositeDecoderB.w(serialDescriptor, 0, (DeserializationStrategy) lazyArr[0].getF71699b(), list);
                i2 |= 1;
            } else if (iN == 1) {
                productFiltersDto = (ProductFiltersDto) compositeDecoderB.m(serialDescriptor, 1, ProductFiltersDto$$serializer.f46618a, productFiltersDto);
                i2 |= 2;
            } else {
                if (iN != 2) {
                    b21.l(iN);
                    return null;
                }
                list2 = (List) compositeDecoderB.w(serialDescriptor, 2, (DeserializationStrategy) lazyArr[2].getF71699b(), list2);
                i2 |= 4;
            }
        }
        compositeDecoderB.c(serialDescriptor);
        return new ProductListOptionDto(i2, list, productFiltersDto, list2, (SerializationConstructorMarker) null);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        ProductListOptionDto productListOptionDto = (ProductListOptionDto) obj;
        productListOptionDto.getClass();
        SerialDescriptor serialDescriptor = descriptor;
        CompositeEncoder compositeEncoderB = encoder.b(serialDescriptor);
        Lazy[] lazyArr = ProductListOptionDto.d;
        SerializationStrategy serializationStrategy = (SerializationStrategy) lazyArr[0].getF71699b();
        List list = productListOptionDto.f46626a;
        List list2 = productListOptionDto.f46628c;
        ProductFiltersDto productFiltersDto = productListOptionDto.f46627b;
        compositeEncoderB.A(serialDescriptor, 0, serializationStrategy, list);
        if (compositeEncoderB.o(serialDescriptor) || productFiltersDto != null) {
            compositeEncoderB.h(serialDescriptor, 1, ProductFiltersDto$$serializer.f46618a, productFiltersDto);
        }
        if (compositeEncoderB.o(serialDescriptor) || !Intrinsics.c(list2, EmptyList.f71768b)) {
            compositeEncoderB.A(serialDescriptor, 2, (SerializationStrategy) lazyArr[2].getF71699b(), list2);
        }
        compositeEncoderB.c(serialDescriptor);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] e() {
        Lazy[] lazyArr = ProductListOptionDto.d;
        return new KSerializer[]{lazyArr[0].getF71699b(), BuiltinSerializersKt.d(ProductFiltersDto$$serializer.f46618a), lazyArr[2].getF71699b()};
    }
}
