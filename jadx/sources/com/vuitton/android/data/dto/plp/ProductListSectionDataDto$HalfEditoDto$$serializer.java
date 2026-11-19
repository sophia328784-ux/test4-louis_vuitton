package com.vuitton.android.data.dto.plp;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.common.AssetDto;
import com.vuitton.android.data.dto.common.AssetDto$$serializer;
import com.vuitton.android.data.dto.productshort.ProductShortDto;
import com.vuitton.android.data.dto.productshort.ProductShortDto$$serializer;
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
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001R\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"com/vuitton/android/data/dto/plp/ProductListSectionDataDto.HalfEditoDto.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$HalfEditoDto;", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "a", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Deprecated
public final /* synthetic */ class ProductListSectionDataDto$HalfEditoDto$$serializer implements GeneratedSerializer<ProductListSectionDataDto.HalfEditoDto> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ProductListSectionDataDto$HalfEditoDto$$serializer f46370a;
    private static final SerialDescriptor descriptor;

    static {
        ProductListSectionDataDto$HalfEditoDto$$serializer productListSectionDataDto$HalfEditoDto$$serializer = new ProductListSectionDataDto$HalfEditoDto$$serializer();
        f46370a = productListSectionDataDto$HalfEditoDto$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vuitton.android.data.dto.plp.ProductListSectionDataDto.HalfEditoDto", productListSectionDataDto$HalfEditoDto$$serializer, 6);
        pluginGeneratedSerialDescriptor.k("title", false);
        pluginGeneratedSerialDescriptor.k("surtitle", false);
        pluginGeneratedSerialDescriptor.k("description", false);
        pluginGeneratedSerialDescriptor.k("alignment", false);
        pluginGeneratedSerialDescriptor.k("asset", false);
        pluginGeneratedSerialDescriptor.k("product", false);
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
        Lazy[] lazyArr = ProductListSectionDataDto.HalfEditoDto.f46365h;
        boolean z = true;
        int i2 = 0;
        String strL = null;
        String strL2 = null;
        String strL3 = null;
        ProductListSectionDataDto.HalfEditoDto.AlignmentDto alignmentDto = null;
        AssetDto assetDto = null;
        ProductShortDto productShortDto = null;
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
                    strL3 = compositeDecoderB.l(serialDescriptor, 2);
                    i2 |= 4;
                    break;
                case 3:
                    alignmentDto = (ProductListSectionDataDto.HalfEditoDto.AlignmentDto) compositeDecoderB.w(serialDescriptor, 3, (DeserializationStrategy) lazyArr[3].getF71699b(), alignmentDto);
                    i2 |= 8;
                    break;
                case 4:
                    assetDto = (AssetDto) compositeDecoderB.w(serialDescriptor, 4, AssetDto$$serializer.f45238a, assetDto);
                    i2 |= 16;
                    break;
                case 5:
                    productShortDto = (ProductShortDto) compositeDecoderB.w(serialDescriptor, 5, ProductShortDto$$serializer.f46646a, productShortDto);
                    i2 |= 32;
                    break;
                default:
                    b21.l(iN);
                    return null;
            }
        }
        compositeDecoderB.c(serialDescriptor);
        return new ProductListSectionDataDto.HalfEditoDto(i2, strL, strL2, strL3, alignmentDto, assetDto, productShortDto, null);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        ProductListSectionDataDto.HalfEditoDto halfEditoDto = (ProductListSectionDataDto.HalfEditoDto) obj;
        halfEditoDto.getClass();
        SerialDescriptor serialDescriptor = descriptor;
        CompositeEncoder compositeEncoderB = encoder.b(serialDescriptor);
        Lazy[] lazyArr = ProductListSectionDataDto.HalfEditoDto.f46365h;
        compositeEncoderB.y(serialDescriptor, 0, halfEditoDto.f46366b);
        compositeEncoderB.y(serialDescriptor, 1, halfEditoDto.f46367c);
        compositeEncoderB.y(serialDescriptor, 2, halfEditoDto.d);
        compositeEncoderB.A(serialDescriptor, 3, (SerializationStrategy) lazyArr[3].getF71699b(), halfEditoDto.f46368e);
        compositeEncoderB.A(serialDescriptor, 4, AssetDto$$serializer.f45238a, halfEditoDto.f46369f);
        compositeEncoderB.A(serialDescriptor, 5, ProductShortDto$$serializer.f46646a, halfEditoDto.g);
        compositeEncoderB.c(serialDescriptor);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] e() {
        Lazy[] lazyArr = ProductListSectionDataDto.HalfEditoDto.f46365h;
        StringSerializer stringSerializer = StringSerializer.f75684a;
        return new KSerializer[]{stringSerializer, stringSerializer, stringSerializer, lazyArr[3].getF71699b(), AssetDto$$serializer.f45238a, ProductShortDto$$serializer.f46646a};
    }
}
