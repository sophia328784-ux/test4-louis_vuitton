package com.vuitton.android.data.dto.productshort;

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
import kotlinx.serialization.internal.GeneratedSerializer;
import kotlinx.serialization.internal.IntSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import kotlinx.serialization.internal.StringSerializer;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001R\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"com/vuitton/android/data/dto/productshort/ProductListLegacyDto.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/vuitton/android/data/dto/productshort/ProductListLegacyDto;", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "a", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Deprecated
public final /* synthetic */ class ProductListLegacyDto$$serializer implements GeneratedSerializer<ProductListLegacyDto> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ProductListLegacyDto$$serializer f46625a;
    private static final SerialDescriptor descriptor;

    static {
        ProductListLegacyDto$$serializer productListLegacyDto$$serializer = new ProductListLegacyDto$$serializer();
        f46625a = productListLegacyDto$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vuitton.android.data.dto.productshort.ProductListLegacyDto", productListLegacyDto$$serializer, 7);
        pluginGeneratedSerialDescriptor.k(b.a.f24015b, true);
        pluginGeneratedSerialDescriptor.k("name", true);
        pluginGeneratedSerialDescriptor.k("trackingPageName", true);
        pluginGeneratedSerialDescriptor.k("sections", false);
        pluginGeneratedSerialDescriptor.k("totalProducts", false);
        pluginGeneratedSerialDescriptor.k("options", false);
        pluginGeneratedSerialDescriptor.k("nextPage", true);
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
        Lazy[] lazyArr = ProductListLegacyDto.f46619h;
        Object obj = null;
        boolean z = true;
        int i2 = 0;
        int iJ = 0;
        String str = null;
        String str2 = null;
        String str3 = null;
        List list = null;
        ProductListOptionDto productListOptionDto = null;
        Integer num = null;
        while (z) {
            int iN = compositeDecoderB.n(serialDescriptor);
            switch (iN) {
                case -1:
                    z = false;
                    continue;
                case 0:
                    str = (String) compositeDecoderB.m(serialDescriptor, 0, StringSerializer.f75684a, str);
                    i2 |= 1;
                    break;
                case 1:
                    str2 = (String) compositeDecoderB.m(serialDescriptor, 1, StringSerializer.f75684a, str2);
                    i2 |= 2;
                    break;
                case 2:
                    str3 = (String) compositeDecoderB.m(serialDescriptor, 2, StringSerializer.f75684a, str3);
                    i2 |= 4;
                    break;
                case 3:
                    list = (List) compositeDecoderB.w(serialDescriptor, 3, (DeserializationStrategy) lazyArr[3].getF71699b(), list);
                    i2 |= 8;
                    break;
                case 4:
                    iJ = compositeDecoderB.j(serialDescriptor, 4);
                    i2 |= 16;
                    break;
                case 5:
                    productListOptionDto = (ProductListOptionDto) compositeDecoderB.w(serialDescriptor, 5, ProductListOptionDto$$serializer.f46629a, productListOptionDto);
                    i2 |= 32;
                    break;
                case 6:
                    num = (Integer) compositeDecoderB.m(serialDescriptor, 6, IntSerializer.f75624a, num);
                    i2 |= 64;
                    break;
                default:
                    b21.l(iN);
                    return obj;
            }
            obj = null;
        }
        compositeDecoderB.c(serialDescriptor);
        return new ProductListLegacyDto(i2, str, str2, str3, list, iJ, productListOptionDto, num, (SerializationConstructorMarker) null);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        ProductListLegacyDto productListLegacyDto = (ProductListLegacyDto) obj;
        productListLegacyDto.getClass();
        String str = productListLegacyDto.f46622c;
        String str2 = productListLegacyDto.f46621b;
        String str3 = productListLegacyDto.f46620a;
        SerialDescriptor serialDescriptor = descriptor;
        CompositeEncoder compositeEncoderB = encoder.b(serialDescriptor);
        Lazy[] lazyArr = ProductListLegacyDto.f46619h;
        if (compositeEncoderB.o(serialDescriptor) || str3 != null) {
            compositeEncoderB.h(serialDescriptor, 0, StringSerializer.f75684a, str3);
        }
        if (compositeEncoderB.o(serialDescriptor) || str2 != null) {
            compositeEncoderB.h(serialDescriptor, 1, StringSerializer.f75684a, str2);
        }
        if (compositeEncoderB.o(serialDescriptor) || str != null) {
            compositeEncoderB.h(serialDescriptor, 2, StringSerializer.f75684a, str);
        }
        SerializationStrategy serializationStrategy = (SerializationStrategy) lazyArr[3].getF71699b();
        List list = productListLegacyDto.d;
        Integer num = productListLegacyDto.g;
        compositeEncoderB.A(serialDescriptor, 3, serializationStrategy, list);
        compositeEncoderB.u(4, productListLegacyDto.f46623e, serialDescriptor);
        compositeEncoderB.A(serialDescriptor, 5, ProductListOptionDto$$serializer.f46629a, productListLegacyDto.f46624f);
        if (compositeEncoderB.o(serialDescriptor) || num != null) {
            compositeEncoderB.h(serialDescriptor, 6, IntSerializer.f75624a, num);
        }
        compositeEncoderB.c(serialDescriptor);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] e() {
        Lazy[] lazyArr = ProductListLegacyDto.f46619h;
        StringSerializer stringSerializer = StringSerializer.f75684a;
        IntSerializer intSerializer = IntSerializer.f75624a;
        return new KSerializer[]{BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(stringSerializer), lazyArr[3].getF71699b(), intSerializer, ProductListOptionDto$$serializer.f46629a, BuiltinSerializersKt.d(intSerializer)};
    }
}
