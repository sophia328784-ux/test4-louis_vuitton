package com.vuitton.android.data.dto.productshort;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.b21;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.builtins.BuiltinSerializersKt;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import kotlinx.serialization.internal.BooleanSerializer;
import kotlinx.serialization.internal.DoubleSerializer;
import kotlinx.serialization.internal.GeneratedSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.StringSerializer;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001R\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"com/vuitton/android/data/dto/productshort/ProductShortPriceDto.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/vuitton/android/data/dto/productshort/ProductShortPriceDto;", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "a", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Deprecated
public final /* synthetic */ class ProductShortPriceDto$$serializer implements GeneratedSerializer<ProductShortPriceDto> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ProductShortPriceDto$$serializer f46650a;
    private static final SerialDescriptor descriptor;

    static {
        ProductShortPriceDto$$serializer productShortPriceDto$$serializer = new ProductShortPriceDto$$serializer();
        f46650a = productShortPriceDto$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vuitton.android.data.dto.productshort.ProductShortPriceDto", productShortPriceDto$$serializer, 4);
        pluginGeneratedSerialDescriptor.k("isVariable", false);
        pluginGeneratedSerialDescriptor.k("formattedValue", false);
        pluginGeneratedSerialDescriptor.k("rawValue", false);
        pluginGeneratedSerialDescriptor.k("currency", false);
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
        boolean zY = false;
        String strL = null;
        Double d = null;
        String str = null;
        while (z) {
            int iN = compositeDecoderB.n(serialDescriptor);
            if (iN == -1) {
                z = false;
            } else if (iN == 0) {
                zY = compositeDecoderB.y(serialDescriptor, 0);
                i2 |= 1;
            } else if (iN == 1) {
                strL = compositeDecoderB.l(serialDescriptor, 1);
                i2 |= 2;
            } else if (iN == 2) {
                d = (Double) compositeDecoderB.m(serialDescriptor, 2, DoubleSerializer.f75602a, d);
                i2 |= 4;
            } else {
                if (iN != 3) {
                    b21.l(iN);
                    return null;
                }
                str = (String) compositeDecoderB.m(serialDescriptor, 3, StringSerializer.f75684a, str);
                i2 |= 8;
            }
        }
        compositeDecoderB.c(serialDescriptor);
        return new ProductShortPriceDto(i2, zY, strL, d, str, null);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        ProductShortPriceDto productShortPriceDto = (ProductShortPriceDto) obj;
        productShortPriceDto.getClass();
        SerialDescriptor serialDescriptor = descriptor;
        CompositeEncoder compositeEncoderB = encoder.b(serialDescriptor);
        compositeEncoderB.x(serialDescriptor, 0, productShortPriceDto.f46647a);
        compositeEncoderB.y(serialDescriptor, 1, productShortPriceDto.f46648b);
        compositeEncoderB.h(serialDescriptor, 2, DoubleSerializer.f75602a, productShortPriceDto.f46649c);
        compositeEncoderB.h(serialDescriptor, 3, StringSerializer.f75684a, productShortPriceDto.d);
        compositeEncoderB.c(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] e() {
        StringSerializer stringSerializer = StringSerializer.f75684a;
        return new KSerializer[]{BooleanSerializer.f75574a, stringSerializer, BuiltinSerializersKt.d(DoubleSerializer.f75602a), BuiltinSerializersKt.d(stringSerializer)};
    }
}
