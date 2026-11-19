package com.vuitton.android.data.dto.productshort;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.b21;
import java.util.List;
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
import kotlinx.serialization.internal.BooleanSerializer;
import kotlinx.serialization.internal.GeneratedSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.StringSerializer;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001R\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"com/vuitton/android/data/dto/productshort/ProductFilterDataTypeDto.Simple.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/vuitton/android/data/dto/productshort/ProductFilterDataTypeDto$Simple;", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "a", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Deprecated
public final /* synthetic */ class ProductFilterDataTypeDto$Simple$$serializer implements GeneratedSerializer<ProductFilterDataTypeDto.Simple> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ProductFilterDataTypeDto$Simple$$serializer f46602a;
    private static final SerialDescriptor descriptor;

    static {
        ProductFilterDataTypeDto$Simple$$serializer productFilterDataTypeDto$Simple$$serializer = new ProductFilterDataTypeDto$Simple$$serializer();
        f46602a = productFilterDataTypeDto$Simple$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vuitton.android.data.dto.productshort.ProductFilterDataTypeDto.Simple", productFilterDataTypeDto$Simple$$serializer, 3);
        pluginGeneratedSerialDescriptor.k("values", false);
        pluginGeneratedSerialDescriptor.k("multiSelect", false);
        pluginGeneratedSerialDescriptor.k("clearAllFiltersId", false);
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
        Lazy[] lazyArr = ProductFilterDataTypeDto.Simple.d;
        boolean z = true;
        int i2 = 0;
        boolean zY = false;
        List list = null;
        String strL = null;
        while (z) {
            int iN = compositeDecoderB.n(serialDescriptor);
            if (iN == -1) {
                z = false;
            } else if (iN == 0) {
                list = (List) compositeDecoderB.w(serialDescriptor, 0, (DeserializationStrategy) lazyArr[0].getF71699b(), list);
                i2 |= 1;
            } else if (iN == 1) {
                zY = compositeDecoderB.y(serialDescriptor, 1);
                i2 |= 2;
            } else {
                if (iN != 2) {
                    b21.l(iN);
                    return null;
                }
                strL = compositeDecoderB.l(serialDescriptor, 2);
                i2 |= 4;
            }
        }
        compositeDecoderB.c(serialDescriptor);
        return new ProductFilterDataTypeDto.Simple(i2, list, zY, strL, null);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        ProductFilterDataTypeDto.Simple simple = (ProductFilterDataTypeDto.Simple) obj;
        simple.getClass();
        SerialDescriptor serialDescriptor = descriptor;
        CompositeEncoder compositeEncoderB = encoder.b(serialDescriptor);
        compositeEncoderB.A(serialDescriptor, 0, (SerializationStrategy) ProductFilterDataTypeDto.Simple.d[0].getF71699b(), simple.f46599a);
        compositeEncoderB.x(serialDescriptor, 1, simple.f46600b);
        compositeEncoderB.y(serialDescriptor, 2, simple.f46601c);
        compositeEncoderB.c(serialDescriptor);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] e() {
        return new KSerializer[]{ProductFilterDataTypeDto.Simple.d[0].getF71699b(), BooleanSerializer.f75574a, StringSerializer.f75684a};
    }
}
