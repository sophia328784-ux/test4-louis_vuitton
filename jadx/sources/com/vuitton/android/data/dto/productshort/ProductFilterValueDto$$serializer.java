package com.vuitton.android.data.dto.productshort;

import com.batch.android.s.b;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.common.AssetImageDto;
import com.vuitton.android.data.dto.common.AssetImageDto$$serializer;
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
import kotlinx.serialization.internal.GeneratedSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import kotlinx.serialization.internal.StringSerializer;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001R\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"com/vuitton/android/data/dto/productshort/ProductFilterValueDto.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/vuitton/android/data/dto/productshort/ProductFilterValueDto;", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "a", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Deprecated
public final /* synthetic */ class ProductFilterValueDto$$serializer implements GeneratedSerializer<ProductFilterValueDto> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ProductFilterValueDto$$serializer f46610a;
    private static final SerialDescriptor descriptor;

    static {
        ProductFilterValueDto$$serializer productFilterValueDto$$serializer = new ProductFilterValueDto$$serializer();
        f46610a = productFilterValueDto$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vuitton.android.data.dto.productshort.ProductFilterValueDto", productFilterValueDto$$serializer, 7);
        pluginGeneratedSerialDescriptor.k(b.a.f24015b, false);
        pluginGeneratedSerialDescriptor.k("title", false);
        pluginGeneratedSerialDescriptor.k("image", true);
        pluginGeneratedSerialDescriptor.k("toggleFiltersId", true);
        pluginGeneratedSerialDescriptor.k("isSelected", false);
        pluginGeneratedSerialDescriptor.k("isEnabled", false);
        pluginGeneratedSerialDescriptor.k("subCategoryTitle", true);
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
        boolean zY2 = false;
        String strL = null;
        String strL2 = null;
        AssetImageDto assetImageDto = null;
        String str = null;
        String str2 = null;
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
                    assetImageDto = (AssetImageDto) compositeDecoderB.m(serialDescriptor, 2, AssetImageDto$$serializer.f45243a, assetImageDto);
                    i2 |= 4;
                    break;
                case 3:
                    str = (String) compositeDecoderB.m(serialDescriptor, 3, StringSerializer.f75684a, str);
                    i2 |= 8;
                    break;
                case 4:
                    zY = compositeDecoderB.y(serialDescriptor, 4);
                    i2 |= 16;
                    break;
                case 5:
                    zY2 = compositeDecoderB.y(serialDescriptor, 5);
                    i2 |= 32;
                    break;
                case 6:
                    str2 = (String) compositeDecoderB.m(serialDescriptor, 6, StringSerializer.f75684a, str2);
                    i2 |= 64;
                    break;
                default:
                    b21.l(iN);
                    return null;
            }
        }
        compositeDecoderB.c(serialDescriptor);
        return new ProductFilterValueDto(i2, strL, strL2, assetImageDto, str, zY, zY2, str2, (SerializationConstructorMarker) null);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        ProductFilterValueDto productFilterValueDto = (ProductFilterValueDto) obj;
        productFilterValueDto.getClass();
        SerialDescriptor serialDescriptor = descriptor;
        CompositeEncoder compositeEncoderB = encoder.b(serialDescriptor);
        String str = productFilterValueDto.f46605a;
        String str2 = productFilterValueDto.g;
        String str3 = productFilterValueDto.d;
        AssetImageDto assetImageDto = productFilterValueDto.f46607c;
        compositeEncoderB.y(serialDescriptor, 0, str);
        compositeEncoderB.y(serialDescriptor, 1, productFilterValueDto.f46606b);
        if (compositeEncoderB.o(serialDescriptor) || assetImageDto != null) {
            compositeEncoderB.h(serialDescriptor, 2, AssetImageDto$$serializer.f45243a, assetImageDto);
        }
        if (compositeEncoderB.o(serialDescriptor) || str3 != null) {
            compositeEncoderB.h(serialDescriptor, 3, StringSerializer.f75684a, str3);
        }
        compositeEncoderB.x(serialDescriptor, 4, productFilterValueDto.f46608e);
        compositeEncoderB.x(serialDescriptor, 5, productFilterValueDto.f46609f);
        if (compositeEncoderB.o(serialDescriptor) || str2 != null) {
            compositeEncoderB.h(serialDescriptor, 6, StringSerializer.f75684a, str2);
        }
        compositeEncoderB.c(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] e() {
        StringSerializer stringSerializer = StringSerializer.f75684a;
        KSerializer kSerializerD = BuiltinSerializersKt.d(AssetImageDto$$serializer.f45243a);
        KSerializer kSerializerD2 = BuiltinSerializersKt.d(stringSerializer);
        KSerializer kSerializerD3 = BuiltinSerializersKt.d(stringSerializer);
        BooleanSerializer booleanSerializer = BooleanSerializer.f75574a;
        return new KSerializer[]{stringSerializer, stringSerializer, kSerializerD, kSerializerD2, booleanSerializer, booleanSerializer, kSerializerD3};
    }
}
