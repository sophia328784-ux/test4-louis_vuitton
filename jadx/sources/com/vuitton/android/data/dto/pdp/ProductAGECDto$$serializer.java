package com.vuitton.android.data.dto.pdp;

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
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001R\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"com/vuitton/android/data/dto/pdp/ProductAGECDto.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/vuitton/android/data/dto/pdp/ProductAGECDto;", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "a", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Deprecated
public final /* synthetic */ class ProductAGECDto$$serializer implements GeneratedSerializer<ProductAGECDto> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ProductAGECDto$$serializer f46248a;
    private static final SerialDescriptor descriptor;

    static {
        ProductAGECDto$$serializer productAGECDto$$serializer = new ProductAGECDto$$serializer();
        f46248a = productAGECDto$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vuitton.android.data.dto.pdp.ProductAGECDto", productAGECDto$$serializer, 5);
        pluginGeneratedSerialDescriptor.k("infoTri", true);
        pluginGeneratedSerialDescriptor.k(DbParams.KEY_DATA, true);
        pluginGeneratedSerialDescriptor.k("manageByAgec", true);
        pluginGeneratedSerialDescriptor.k("modelMaterial", true);
        pluginGeneratedSerialDescriptor.k("validateSKU", true);
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
        Lazy[] lazyArr = ProductAGECDto.f46243f;
        boolean z = true;
        int i2 = 0;
        ProductAGECInfoTriDto productAGECInfoTriDto = null;
        List list = null;
        Boolean bool = null;
        String str = null;
        Boolean bool2 = null;
        while (z) {
            int iN = compositeDecoderB.n(serialDescriptor);
            if (iN == -1) {
                z = false;
            } else if (iN == 0) {
                productAGECInfoTriDto = (ProductAGECInfoTriDto) compositeDecoderB.m(serialDescriptor, 0, ProductAGECInfoTriDto$$serializer.f46251a, productAGECInfoTriDto);
                i2 |= 1;
            } else if (iN == 1) {
                list = (List) compositeDecoderB.m(serialDescriptor, 1, (DeserializationStrategy) lazyArr[1].getF71699b(), list);
                i2 |= 2;
            } else if (iN == 2) {
                bool = (Boolean) compositeDecoderB.m(serialDescriptor, 2, BooleanSerializer.f75574a, bool);
                i2 |= 4;
            } else if (iN == 3) {
                str = (String) compositeDecoderB.m(serialDescriptor, 3, StringSerializer.f75684a, str);
                i2 |= 8;
            } else {
                if (iN != 4) {
                    b21.l(iN);
                    return null;
                }
                bool2 = (Boolean) compositeDecoderB.m(serialDescriptor, 4, BooleanSerializer.f75574a, bool2);
                i2 |= 16;
            }
        }
        compositeDecoderB.c(serialDescriptor);
        return new ProductAGECDto(i2, productAGECInfoTriDto, list, bool, str, bool2, (SerializationConstructorMarker) null);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        ProductAGECDto productAGECDto = (ProductAGECDto) obj;
        productAGECDto.getClass();
        Boolean bool = productAGECDto.f46247e;
        String str = productAGECDto.d;
        Boolean bool2 = productAGECDto.f46246c;
        List list = productAGECDto.f46245b;
        ProductAGECInfoTriDto productAGECInfoTriDto = productAGECDto.f46244a;
        SerialDescriptor serialDescriptor = descriptor;
        CompositeEncoder compositeEncoderB = encoder.b(serialDescriptor);
        Lazy[] lazyArr = ProductAGECDto.f46243f;
        if (compositeEncoderB.o(serialDescriptor) || productAGECInfoTriDto != null) {
            compositeEncoderB.h(serialDescriptor, 0, ProductAGECInfoTriDto$$serializer.f46251a, productAGECInfoTriDto);
        }
        if (compositeEncoderB.o(serialDescriptor) || list != null) {
            compositeEncoderB.h(serialDescriptor, 1, (SerializationStrategy) lazyArr[1].getF71699b(), list);
        }
        if (compositeEncoderB.o(serialDescriptor) || bool2 != null) {
            compositeEncoderB.h(serialDescriptor, 2, BooleanSerializer.f75574a, bool2);
        }
        if (compositeEncoderB.o(serialDescriptor) || str != null) {
            compositeEncoderB.h(serialDescriptor, 3, StringSerializer.f75684a, str);
        }
        if (compositeEncoderB.o(serialDescriptor) || bool != null) {
            compositeEncoderB.h(serialDescriptor, 4, BooleanSerializer.f75574a, bool);
        }
        compositeEncoderB.c(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] e() {
        Lazy[] lazyArr = ProductAGECDto.f46243f;
        KSerializer kSerializerD = BuiltinSerializersKt.d(ProductAGECInfoTriDto$$serializer.f46251a);
        KSerializer kSerializerD2 = BuiltinSerializersKt.d((KSerializer) lazyArr[1].getF71699b());
        BooleanSerializer booleanSerializer = BooleanSerializer.f75574a;
        return new KSerializer[]{kSerializerD, kSerializerD2, BuiltinSerializersKt.d(booleanSerializer), BuiltinSerializersKt.d(StringSerializer.f75684a), BuiltinSerializersKt.d(booleanSerializer)};
    }
}
