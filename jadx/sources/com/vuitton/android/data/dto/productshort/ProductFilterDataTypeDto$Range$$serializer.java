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
import kotlinx.serialization.internal.GeneratedSerializer;
import kotlinx.serialization.internal.IntSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import kotlinx.serialization.internal.StringSerializer;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001R\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"com/vuitton/android/data/dto/productshort/ProductFilterDataTypeDto.Range.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/vuitton/android/data/dto/productshort/ProductFilterDataTypeDto$Range;", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "a", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Deprecated
public final /* synthetic */ class ProductFilterDataTypeDto$Range$$serializer implements GeneratedSerializer<ProductFilterDataTypeDto.Range> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ProductFilterDataTypeDto$Range$$serializer f46598a;
    private static final SerialDescriptor descriptor;

    static {
        ProductFilterDataTypeDto$Range$$serializer productFilterDataTypeDto$Range$$serializer = new ProductFilterDataTypeDto$Range$$serializer();
        f46598a = productFilterDataTypeDto$Range$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vuitton.android.data.dto.productshort.ProductFilterDataTypeDto.Range", productFilterDataTypeDto$Range$$serializer, 4);
        pluginGeneratedSerialDescriptor.k("totalRange", false);
        pluginGeneratedSerialDescriptor.k("selectedRange", true);
        pluginGeneratedSerialDescriptor.k("stepValue", false);
        pluginGeneratedSerialDescriptor.k("unit", false);
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
        int iJ = 0;
        RangeTypeDto rangeTypeDto = null;
        RangeTypeDto rangeTypeDto2 = null;
        String strL = null;
        while (z) {
            int iN = compositeDecoderB.n(serialDescriptor);
            if (iN == -1) {
                z = false;
            } else if (iN == 0) {
                rangeTypeDto = (RangeTypeDto) compositeDecoderB.w(serialDescriptor, 0, RangeTypeDto$$serializer.f46660a, rangeTypeDto);
                i2 |= 1;
            } else if (iN == 1) {
                rangeTypeDto2 = (RangeTypeDto) compositeDecoderB.m(serialDescriptor, 1, RangeTypeDto$$serializer.f46660a, rangeTypeDto2);
                i2 |= 2;
            } else if (iN == 2) {
                iJ = compositeDecoderB.j(serialDescriptor, 2);
                i2 |= 4;
            } else {
                if (iN != 3) {
                    b21.l(iN);
                    return null;
                }
                strL = compositeDecoderB.l(serialDescriptor, 3);
                i2 |= 8;
            }
        }
        compositeDecoderB.c(serialDescriptor);
        return new ProductFilterDataTypeDto.Range(i2, rangeTypeDto, rangeTypeDto2, iJ, strL, (SerializationConstructorMarker) null);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        ProductFilterDataTypeDto.Range range = (ProductFilterDataTypeDto.Range) obj;
        range.getClass();
        SerialDescriptor serialDescriptor = descriptor;
        CompositeEncoder compositeEncoderB = encoder.b(serialDescriptor);
        RangeTypeDto$$serializer rangeTypeDto$$serializer = RangeTypeDto$$serializer.f46660a;
        RangeTypeDto rangeTypeDto = range.f46595a;
        RangeTypeDto rangeTypeDto2 = range.f46596b;
        compositeEncoderB.A(serialDescriptor, 0, rangeTypeDto$$serializer, rangeTypeDto);
        if (compositeEncoderB.o(serialDescriptor) || rangeTypeDto2 != null) {
            compositeEncoderB.h(serialDescriptor, 1, rangeTypeDto$$serializer, rangeTypeDto2);
        }
        compositeEncoderB.u(2, range.f46597c, serialDescriptor);
        compositeEncoderB.y(serialDescriptor, 3, range.d);
        compositeEncoderB.c(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] e() {
        RangeTypeDto$$serializer rangeTypeDto$$serializer = RangeTypeDto$$serializer.f46660a;
        return new KSerializer[]{rangeTypeDto$$serializer, BuiltinSerializersKt.d(rangeTypeDto$$serializer), IntSerializer.f75624a, StringSerializer.f75684a};
    }
}
