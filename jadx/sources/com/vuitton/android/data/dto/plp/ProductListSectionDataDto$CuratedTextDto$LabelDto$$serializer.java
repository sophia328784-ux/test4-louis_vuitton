package com.vuitton.android.data.dto.plp;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
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
import kotlinx.serialization.internal.StringSerializer;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001R\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"com/vuitton/android/data/dto/plp/ProductListSectionDataDto.CuratedTextDto.LabelDto.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$CuratedTextDto$LabelDto;", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "a", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Deprecated
public final /* synthetic */ class ProductListSectionDataDto$CuratedTextDto$LabelDto$$serializer implements GeneratedSerializer<ProductListSectionDataDto.CuratedTextDto.LabelDto> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ProductListSectionDataDto$CuratedTextDto$LabelDto$$serializer f46364a;
    private static final SerialDescriptor descriptor;

    static {
        ProductListSectionDataDto$CuratedTextDto$LabelDto$$serializer productListSectionDataDto$CuratedTextDto$LabelDto$$serializer = new ProductListSectionDataDto$CuratedTextDto$LabelDto$$serializer();
        f46364a = productListSectionDataDto$CuratedTextDto$LabelDto$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vuitton.android.data.dto.plp.ProductListSectionDataDto.CuratedTextDto.LabelDto", productListSectionDataDto$CuratedTextDto$LabelDto$$serializer, 2);
        pluginGeneratedSerialDescriptor.k("value", false);
        pluginGeneratedSerialDescriptor.k("font", false);
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
        Lazy[] lazyArr = ProductListSectionDataDto.CuratedTextDto.LabelDto.f46361c;
        boolean z = true;
        int i2 = 0;
        String strL = null;
        ProductListSectionDataDto.CuratedTextDto.LabelDto.FontDto fontDto = null;
        while (z) {
            int iN = compositeDecoderB.n(serialDescriptor);
            if (iN == -1) {
                z = false;
            } else if (iN == 0) {
                strL = compositeDecoderB.l(serialDescriptor, 0);
                i2 |= 1;
            } else {
                if (iN != 1) {
                    b21.l(iN);
                    return null;
                }
                fontDto = (ProductListSectionDataDto.CuratedTextDto.LabelDto.FontDto) compositeDecoderB.w(serialDescriptor, 1, (DeserializationStrategy) lazyArr[1].getF71699b(), fontDto);
                i2 |= 2;
            }
        }
        compositeDecoderB.c(serialDescriptor);
        return new ProductListSectionDataDto.CuratedTextDto.LabelDto(i2, strL, fontDto, null);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        ProductListSectionDataDto.CuratedTextDto.LabelDto labelDto = (ProductListSectionDataDto.CuratedTextDto.LabelDto) obj;
        labelDto.getClass();
        SerialDescriptor serialDescriptor = descriptor;
        CompositeEncoder compositeEncoderB = encoder.b(serialDescriptor);
        Lazy[] lazyArr = ProductListSectionDataDto.CuratedTextDto.LabelDto.f46361c;
        compositeEncoderB.y(serialDescriptor, 0, labelDto.f46362a);
        compositeEncoderB.A(serialDescriptor, 1, (SerializationStrategy) lazyArr[1].getF71699b(), labelDto.f46363b);
        compositeEncoderB.c(serialDescriptor);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] e() {
        return new KSerializer[]{StringSerializer.f75684a, ProductListSectionDataDto.CuratedTextDto.LabelDto.f46361c[1].getF71699b()};
    }
}
