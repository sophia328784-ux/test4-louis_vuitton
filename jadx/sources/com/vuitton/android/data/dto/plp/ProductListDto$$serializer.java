package com.vuitton.android.data.dto.plp;

import com.batch.android.s.b;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.productshort.ProductListOptionDto;
import com.vuitton.android.data.dto.productshort.ProductListOptionDto$$serializer;
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
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001R\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"com/vuitton/android/data/dto/plp/ProductListDto.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/vuitton/android/data/dto/plp/ProductListDto;", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "a", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Deprecated
public final /* synthetic */ class ProductListDto$$serializer implements GeneratedSerializer<ProductListDto> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ProductListDto$$serializer f46356a;
    private static final SerialDescriptor descriptor;

    static {
        ProductListDto$$serializer productListDto$$serializer = new ProductListDto$$serializer();
        f46356a = productListDto$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vuitton.android.data.dto.plp.ProductListDto", productListDto$$serializer, 7);
        pluginGeneratedSerialDescriptor.k("name", false);
        pluginGeneratedSerialDescriptor.k(b.a.f24015b, false);
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
        Lazy[] lazyArr = ProductListDto.f46350h;
        Object obj = null;
        boolean z = true;
        int i2 = 0;
        int iJ = 0;
        String strL = null;
        String strL2 = null;
        String str = null;
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
                    strL = compositeDecoderB.l(serialDescriptor, 0);
                    i2 |= 1;
                    break;
                case 1:
                    strL2 = compositeDecoderB.l(serialDescriptor, 1);
                    i2 |= 2;
                    break;
                case 2:
                    str = (String) compositeDecoderB.m(serialDescriptor, 2, StringSerializer.f75684a, str);
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
        return new ProductListDto(i2, strL, strL2, str, list, iJ, productListOptionDto, num, (SerializationConstructorMarker) null);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        ProductListDto productListDto = (ProductListDto) obj;
        productListDto.getClass();
        SerialDescriptor serialDescriptor = descriptor;
        CompositeEncoder compositeEncoderB = encoder.b(serialDescriptor);
        Lazy[] lazyArr = ProductListDto.f46350h;
        String str = productListDto.f46351a;
        Integer num = productListDto.g;
        String str2 = productListDto.f46353c;
        compositeEncoderB.y(serialDescriptor, 0, str);
        compositeEncoderB.y(serialDescriptor, 1, productListDto.f46352b);
        if (compositeEncoderB.o(serialDescriptor) || str2 != null) {
            compositeEncoderB.h(serialDescriptor, 2, StringSerializer.f75684a, str2);
        }
        compositeEncoderB.A(serialDescriptor, 3, (SerializationStrategy) lazyArr[3].getF71699b(), productListDto.d);
        compositeEncoderB.u(4, productListDto.f46354e, serialDescriptor);
        compositeEncoderB.A(serialDescriptor, 5, ProductListOptionDto$$serializer.f46629a, productListDto.f46355f);
        if (compositeEncoderB.o(serialDescriptor) || num != null) {
            compositeEncoderB.h(serialDescriptor, 6, IntSerializer.f75624a, num);
        }
        compositeEncoderB.c(serialDescriptor);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] e() {
        Lazy[] lazyArr = ProductListDto.f46350h;
        StringSerializer stringSerializer = StringSerializer.f75684a;
        IntSerializer intSerializer = IntSerializer.f75624a;
        return new KSerializer[]{stringSerializer, stringSerializer, BuiltinSerializersKt.d(stringSerializer), lazyArr[3].getF71699b(), intSerializer, ProductListOptionDto$$serializer.f46629a, BuiltinSerializersKt.d(intSerializer)};
    }
}
