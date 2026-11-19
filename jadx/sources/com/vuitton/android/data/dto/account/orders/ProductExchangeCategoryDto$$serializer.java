package com.vuitton.android.data.dto.account.orders;

import com.batch.android.s.b;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
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
import kotlinx.serialization.internal.BooleanSerializer;
import kotlinx.serialization.internal.GeneratedSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import kotlinx.serialization.internal.StringSerializer;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001R\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"com/vuitton/android/data/dto/account/orders/ProductExchangeCategoryDto.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/vuitton/android/data/dto/account/orders/ProductExchangeCategoryDto;", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "a", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Deprecated
public final /* synthetic */ class ProductExchangeCategoryDto$$serializer implements GeneratedSerializer<ProductExchangeCategoryDto> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ProductExchangeCategoryDto$$serializer f44425a;
    private static final SerialDescriptor descriptor;

    static {
        ProductExchangeCategoryDto$$serializer productExchangeCategoryDto$$serializer = new ProductExchangeCategoryDto$$serializer();
        f44425a = productExchangeCategoryDto$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vuitton.android.data.dto.account.orders.ProductExchangeCategoryDto", productExchangeCategoryDto$$serializer, 6);
        pluginGeneratedSerialDescriptor.k(b.a.f24015b, false);
        pluginGeneratedSerialDescriptor.k("title", false);
        pluginGeneratedSerialDescriptor.k("type", false);
        pluginGeneratedSerialDescriptor.k("isAvailable", false);
        pluginGeneratedSerialDescriptor.k("sizeGuideIdentifier", true);
        pluginGeneratedSerialDescriptor.k("options", false);
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
        Lazy[] lazyArr = ProductExchangeCategoryDto.g;
        boolean z = true;
        int i2 = 0;
        boolean zY = false;
        String strL = null;
        String strL2 = null;
        CategoryTypeDto categoryTypeDto = null;
        String str = null;
        List list = null;
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
                    categoryTypeDto = (CategoryTypeDto) compositeDecoderB.w(serialDescriptor, 2, (DeserializationStrategy) lazyArr[2].getF71699b(), categoryTypeDto);
                    i2 |= 4;
                    break;
                case 3:
                    zY = compositeDecoderB.y(serialDescriptor, 3);
                    i2 |= 8;
                    break;
                case 4:
                    str = (String) compositeDecoderB.m(serialDescriptor, 4, StringSerializer.f75684a, str);
                    i2 |= 16;
                    break;
                case 5:
                    list = (List) compositeDecoderB.w(serialDescriptor, 5, (DeserializationStrategy) lazyArr[5].getF71699b(), list);
                    i2 |= 32;
                    break;
                default:
                    b21.l(iN);
                    return null;
            }
        }
        compositeDecoderB.c(serialDescriptor);
        return new ProductExchangeCategoryDto(i2, strL, strL2, categoryTypeDto, zY, str, list, (SerializationConstructorMarker) null);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        ProductExchangeCategoryDto productExchangeCategoryDto = (ProductExchangeCategoryDto) obj;
        productExchangeCategoryDto.getClass();
        SerialDescriptor serialDescriptor = descriptor;
        CompositeEncoder compositeEncoderB = encoder.b(serialDescriptor);
        Lazy[] lazyArr = ProductExchangeCategoryDto.g;
        String str = productExchangeCategoryDto.f44420a;
        String str2 = productExchangeCategoryDto.f44423e;
        compositeEncoderB.y(serialDescriptor, 0, str);
        compositeEncoderB.y(serialDescriptor, 1, productExchangeCategoryDto.f44421b);
        compositeEncoderB.A(serialDescriptor, 2, (SerializationStrategy) lazyArr[2].getF71699b(), productExchangeCategoryDto.f44422c);
        compositeEncoderB.x(serialDescriptor, 3, productExchangeCategoryDto.d);
        if (compositeEncoderB.o(serialDescriptor) || str2 != null) {
            compositeEncoderB.h(serialDescriptor, 4, StringSerializer.f75684a, str2);
        }
        compositeEncoderB.A(serialDescriptor, 5, (SerializationStrategy) lazyArr[5].getF71699b(), productExchangeCategoryDto.f44424f);
        compositeEncoderB.c(serialDescriptor);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] e() {
        Lazy[] lazyArr = ProductExchangeCategoryDto.g;
        StringSerializer stringSerializer = StringSerializer.f75684a;
        return new KSerializer[]{stringSerializer, stringSerializer, lazyArr[2].getF71699b(), BooleanSerializer.f75574a, BuiltinSerializersKt.d(stringSerializer), lazyArr[5].getF71699b()};
    }
}
