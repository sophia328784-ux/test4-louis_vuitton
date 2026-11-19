package com.vuitton.android.data.dto.pdp;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.common.AssetImageDto;
import com.vuitton.android.data.dto.common.AssetImageDto$$serializer;
import com.vuitton.android.data.dto.product.virtualtryon.VirtualTryOnDto;
import com.vuitton.android.data.dto.product.virtualtryon.VirtualTryOnDto$$serializer;
import com.vuitton.foundation.model.domain.model.product.ProductId;
import com.vuitton.foundation.model.domain.model.product.ProductId$$serializer;
import com.vuitton.foundation.model.domain.model.product.SkuId;
import com.vuitton.foundation.model.domain.model.product.SkuId$$serializer;
import defpackage.b21;
import defpackage.cj;
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
import kotlinx.serialization.internal.StringSerializer;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;
import org.bouncycastle.asn1.eac.EACTags;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001R\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"com/vuitton/android/data/dto/pdp/ProductDto.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/vuitton/android/data/dto/pdp/ProductDto;", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "a", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Deprecated
public final /* synthetic */ class ProductDto$$serializer implements GeneratedSerializer<ProductDto> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ProductDto$$serializer f46285a;
    private static final SerialDescriptor descriptor;

    static {
        ProductDto$$serializer productDto$$serializer = new ProductDto$$serializer();
        f46285a = productDto$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vuitton.android.data.dto.pdp.ProductDto", productDto$$serializer, 45);
        pluginGeneratedSerialDescriptor.k("sku", false);
        pluginGeneratedSerialDescriptor.k("name", false);
        pluginGeneratedSerialDescriptor.k("commercialTag", true);
        pluginGeneratedSerialDescriptor.k("productId", false);
        pluginGeneratedSerialDescriptor.k("shortDescription", true);
        pluginGeneratedSerialDescriptor.k("detailedDescription", true);
        pluginGeneratedSerialDescriptor.k("webPath", false);
        pluginGeneratedSerialDescriptor.k("background", false);
        pluginGeneratedSerialDescriptor.k("locateInStore", false);
        pluginGeneratedSerialDescriptor.k("backInStock", false);
        pluginGeneratedSerialDescriptor.k("showARModel", false);
        pluginGeneratedSerialDescriptor.k("hideAddToWishlist", false);
        pluginGeneratedSerialDescriptor.k("sizeGuide", false);
        pluginGeneratedSerialDescriptor.k("sizeGuideId", true);
        pluginGeneratedSerialDescriptor.k("contextualSizingImage", true);
        pluginGeneratedSerialDescriptor.k("isDiamond", false);
        pluginGeneratedSerialDescriptor.k("isBackOrder", true);
        pluginGeneratedSerialDescriptor.k("dimensions", true);
        pluginGeneratedSerialDescriptor.k("tryOn", true);
        pluginGeneratedSerialDescriptor.k("disclaimers", true);
        pluginGeneratedSerialDescriptor.k("color", true);
        pluginGeneratedSerialDescriptor.k("material", true);
        pluginGeneratedSerialDescriptor.k("carat", true);
        pluginGeneratedSerialDescriptor.k("size", true);
        pluginGeneratedSerialDescriptor.k("language", true);
        pluginGeneratedSerialDescriptor.k("edito", true);
        pluginGeneratedSerialDescriptor.k("medias", true);
        pluginGeneratedSerialDescriptor.k("skus", false);
        pluginGeneratedSerialDescriptor.k("skuLook", true);
        pluginGeneratedSerialDescriptor.k("isRelatedTo", false);
        pluginGeneratedSerialDescriptor.k("modelSizeVariations", false);
        pluginGeneratedSerialDescriptor.k("panelInformations", true);
        pluginGeneratedSerialDescriptor.k("sellableStatus", false);
        pluginGeneratedSerialDescriptor.k("customization", true);
        pluginGeneratedSerialDescriptor.k("packagingVariation", true);
        pluginGeneratedSerialDescriptor.k("assets", true);
        pluginGeneratedSerialDescriptor.k("mainAsset", true);
        pluginGeneratedSerialDescriptor.k("details", true);
        pluginGeneratedSerialDescriptor.k("highlights", true);
        pluginGeneratedSerialDescriptor.k("editorialContents", true);
        pluginGeneratedSerialDescriptor.k("finish", true);
        pluginGeneratedSerialDescriptor.k("isShadeFinderEnabled", false);
        pluginGeneratedSerialDescriptor.k("finishVariations", false);
        pluginGeneratedSerialDescriptor.k("shareUrl", true);
        pluginGeneratedSerialDescriptor.k("fitInformation", true);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    @Override // kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    /* JADX INFO: renamed from: a */
    public final SerialDescriptor getF19838b() {
        return descriptor;
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public final Object b(Decoder decoder) {
        AssetImageDto assetImageDto;
        int i2;
        int i3;
        int i4;
        int i5;
        decoder.getClass();
        SerialDescriptor serialDescriptor = descriptor;
        CompositeDecoder compositeDecoderB = decoder.b(serialDescriptor);
        Lazy[] lazyArr = ProductDto.T;
        int i6 = 0;
        SellableStatusDto sellableStatusDto = null;
        List list = null;
        String str = null;
        ProductCustomizationDto productCustomizationDto = null;
        List list2 = null;
        List list3 = null;
        ProductCharacteristicsDto productCharacteristicsDto = null;
        String str2 = null;
        String str3 = null;
        List list4 = null;
        DigitalAssetProductDto digitalAssetProductDto = null;
        List list5 = null;
        List list6 = null;
        boolean z = true;
        String str4 = null;
        String str5 = null;
        String str6 = null;
        String str7 = null;
        String str8 = null;
        ProductBackgroundDto productBackgroundDto = null;
        String str9 = null;
        int i7 = 0;
        AssetImageDto assetImageDto2 = null;
        Boolean bool = null;
        DimensionsDto dimensionsDto = null;
        VirtualTryOnDto virtualTryOnDto = null;
        ProductDisclaimerDto productDisclaimerDto = null;
        ProductCharacteristicsDto productCharacteristicsDto2 = null;
        ProductCharacteristicsDto productCharacteristicsDto3 = null;
        ProductCharacteristicsDto productCharacteristicsDto4 = null;
        ProductCharacteristicsDto productCharacteristicsDto5 = null;
        ProductCharacteristicsDto productCharacteristicsDto6 = null;
        EditoDto editoDto = null;
        List list7 = null;
        List list8 = null;
        List list9 = null;
        List list10 = null;
        List list11 = null;
        String strL = null;
        String strL2 = null;
        boolean zY = false;
        boolean zY2 = false;
        boolean zY3 = false;
        boolean zY4 = false;
        boolean zY5 = false;
        boolean zY6 = false;
        boolean zY7 = false;
        while (z) {
            int iN = compositeDecoderB.n(serialDescriptor);
            switch (iN) {
                case -1:
                    i6 = i6;
                    sellableStatusDto = sellableStatusDto;
                    productBackgroundDto = productBackgroundDto;
                    str = str;
                    assetImageDto2 = assetImageDto2;
                    i7 = i7;
                    z = false;
                    list = list;
                    sellableStatusDto = sellableStatusDto;
                    i6 = i6;
                    break;
                case 0:
                    AssetImageDto assetImageDto3 = assetImageDto2;
                    String str10 = str;
                    ProductBackgroundDto productBackgroundDto2 = productBackgroundDto;
                    int i8 = i7;
                    assetImageDto = assetImageDto3;
                    i6 = i6;
                    sellableStatusDto = sellableStatusDto;
                    List list12 = list;
                    str5 = str5;
                    SkuId skuId = (SkuId) compositeDecoderB.w(serialDescriptor, 0, SkuId$$serializer.f67934a, str4 != null ? new SkuId(str4) : null);
                    i2 = i8 | 1;
                    str4 = skuId != null ? skuId.f67933a : null;
                    productBackgroundDto = productBackgroundDto2;
                    str = str10;
                    list = list12;
                    assetImageDto2 = assetImageDto;
                    i7 = i2;
                    sellableStatusDto = sellableStatusDto;
                    i6 = i6;
                    break;
                case 1:
                    int i9 = i7;
                    assetImageDto = assetImageDto2;
                    strL = compositeDecoderB.l(serialDescriptor, 1);
                    i2 = i9 | 2;
                    productBackgroundDto = productBackgroundDto;
                    str = str;
                    list = list;
                    assetImageDto2 = assetImageDto;
                    i7 = i2;
                    sellableStatusDto = sellableStatusDto;
                    i6 = i6;
                    break;
                case 2:
                    int i10 = i7;
                    assetImageDto = assetImageDto2;
                    i2 = i10 | 4;
                    str5 = (String) compositeDecoderB.m(serialDescriptor, 2, StringSerializer.f75684a, str5);
                    productBackgroundDto = productBackgroundDto;
                    str = str;
                    list = list;
                    assetImageDto2 = assetImageDto;
                    i7 = i2;
                    sellableStatusDto = sellableStatusDto;
                    i6 = i6;
                    break;
                case 3:
                    int i11 = i7;
                    assetImageDto = assetImageDto2;
                    str7 = str7;
                    ProductId productId = (ProductId) compositeDecoderB.w(serialDescriptor, 3, ProductId$$serializer.f67906a, str6 != null ? new ProductId(str6) : null);
                    i2 = i11 | 8;
                    str6 = productId != null ? productId.f67905a : null;
                    productBackgroundDto = productBackgroundDto;
                    str = str;
                    list = list;
                    assetImageDto2 = assetImageDto;
                    i7 = i2;
                    sellableStatusDto = sellableStatusDto;
                    i6 = i6;
                    break;
                case 4:
                    int i12 = i7;
                    assetImageDto = assetImageDto2;
                    i2 = i12 | 16;
                    str7 = (String) compositeDecoderB.m(serialDescriptor, 4, StringSerializer.f75684a, str7);
                    productBackgroundDto = productBackgroundDto;
                    str = str;
                    list = list;
                    assetImageDto2 = assetImageDto;
                    i7 = i2;
                    sellableStatusDto = sellableStatusDto;
                    i6 = i6;
                    break;
                case 5:
                    int i13 = i7;
                    assetImageDto = assetImageDto2;
                    i2 = i13 | 32;
                    str8 = (String) compositeDecoderB.m(serialDescriptor, 5, StringSerializer.f75684a, str8);
                    productBackgroundDto = productBackgroundDto;
                    str = str;
                    list = list;
                    assetImageDto2 = assetImageDto;
                    i7 = i2;
                    sellableStatusDto = sellableStatusDto;
                    i6 = i6;
                    break;
                case 6:
                    strL2 = compositeDecoderB.l(serialDescriptor, 6);
                    i3 = i7 | 64;
                    str = str;
                    list = list;
                    assetImageDto2 = assetImageDto2;
                    i7 = i3;
                    i6 = i6;
                    break;
                case 7:
                    i6 = i6;
                    sellableStatusDto = sellableStatusDto;
                    list = list;
                    int i14 = i7;
                    assetImageDto = assetImageDto2;
                    str = str;
                    i2 = i14 | 128;
                    productBackgroundDto = (ProductBackgroundDto) compositeDecoderB.w(serialDescriptor, 7, (DeserializationStrategy) lazyArr[7].getF71699b(), productBackgroundDto);
                    str = str;
                    list = list;
                    assetImageDto2 = assetImageDto;
                    i7 = i2;
                    sellableStatusDto = sellableStatusDto;
                    i6 = i6;
                    break;
                case 8:
                    zY = compositeDecoderB.y(serialDescriptor, 8);
                    i3 = i7 | 256;
                    str = str;
                    list = list;
                    assetImageDto2 = assetImageDto2;
                    i7 = i3;
                    i6 = i6;
                    break;
                case 9:
                    zY2 = compositeDecoderB.y(serialDescriptor, 9);
                    i3 = i7 | 512;
                    str = str;
                    list = list;
                    assetImageDto2 = assetImageDto2;
                    i7 = i3;
                    i6 = i6;
                    break;
                case 10:
                    zY3 = compositeDecoderB.y(serialDescriptor, 10);
                    i3 = i7 | 1024;
                    str = str;
                    list = list;
                    assetImageDto2 = assetImageDto2;
                    i7 = i3;
                    i6 = i6;
                    break;
                case 11:
                    zY4 = compositeDecoderB.y(serialDescriptor, 11);
                    i3 = i7 | 2048;
                    str = str;
                    list = list;
                    assetImageDto2 = assetImageDto2;
                    i7 = i3;
                    i6 = i6;
                    break;
                case 12:
                    zY5 = compositeDecoderB.y(serialDescriptor, 12);
                    i3 = i7 | 4096;
                    str = str;
                    list = list;
                    assetImageDto2 = assetImageDto2;
                    i7 = i3;
                    i6 = i6;
                    break;
                case 13:
                    i6 = i6;
                    sellableStatusDto = sellableStatusDto;
                    list = list;
                    int i15 = i7;
                    assetImageDto = assetImageDto2;
                    str = str;
                    i2 = i15 | 8192;
                    str9 = (String) compositeDecoderB.m(serialDescriptor, 13, StringSerializer.f75684a, str9);
                    str = str;
                    list = list;
                    assetImageDto2 = assetImageDto;
                    i7 = i2;
                    sellableStatusDto = sellableStatusDto;
                    i6 = i6;
                    break;
                case 14:
                    list = list;
                    i4 = i7 | 16384;
                    assetImageDto2 = (AssetImageDto) compositeDecoderB.m(serialDescriptor, 14, AssetImageDto$$serializer.f45243a, assetImageDto2);
                    i7 = i4;
                    list = list;
                    sellableStatusDto = sellableStatusDto;
                    i6 = i6;
                    break;
                case 15:
                    i6 = i6;
                    sellableStatusDto = sellableStatusDto;
                    zY6 = compositeDecoderB.y(serialDescriptor, 15);
                    i7 |= 32768;
                    sellableStatusDto = sellableStatusDto;
                    i6 = i6;
                    break;
                case 16:
                    list = list;
                    i4 = i7 | 65536;
                    bool = (Boolean) compositeDecoderB.m(serialDescriptor, 16, BooleanSerializer.f75574a, bool);
                    i7 = i4;
                    list = list;
                    sellableStatusDto = sellableStatusDto;
                    i6 = i6;
                    break;
                case 17:
                    i6 = i6;
                    sellableStatusDto = sellableStatusDto;
                    list = list;
                    i7 |= 131072;
                    dimensionsDto = (DimensionsDto) compositeDecoderB.m(serialDescriptor, 17, DimensionsDto$$serializer.f46201a, dimensionsDto);
                    list = list;
                    sellableStatusDto = sellableStatusDto;
                    i6 = i6;
                    break;
                case 18:
                    i6 = i6;
                    sellableStatusDto = sellableStatusDto;
                    list = list;
                    i7 |= 262144;
                    virtualTryOnDto = (VirtualTryOnDto) compositeDecoderB.m(serialDescriptor, 18, VirtualTryOnDto$$serializer.f46498a, virtualTryOnDto);
                    list = list;
                    sellableStatusDto = sellableStatusDto;
                    i6 = i6;
                    break;
                case 19:
                    list = list;
                    i4 = i7 | 524288;
                    productDisclaimerDto = (ProductDisclaimerDto) compositeDecoderB.m(serialDescriptor, 19, ProductDisclaimerDto$$serializer.f46275a, productDisclaimerDto);
                    i7 = i4;
                    list = list;
                    sellableStatusDto = sellableStatusDto;
                    i6 = i6;
                    break;
                case 20:
                    list = list;
                    i4 = i7 | 1048576;
                    productCharacteristicsDto2 = (ProductCharacteristicsDto) compositeDecoderB.m(serialDescriptor, 20, ProductCharacteristicsDto$$serializer.f46259a, productCharacteristicsDto2);
                    i7 = i4;
                    list = list;
                    sellableStatusDto = sellableStatusDto;
                    i6 = i6;
                    break;
                case 21:
                    list = list;
                    ProductCharacteristicsDto productCharacteristicsDto7 = (ProductCharacteristicsDto) compositeDecoderB.m(serialDescriptor, 21, ProductCharacteristicsDto$$serializer.f46259a, productCharacteristicsDto3);
                    i4 = i7 | PKIFailureInfo.badSenderNonce;
                    productCharacteristicsDto3 = productCharacteristicsDto7;
                    i7 = i4;
                    list = list;
                    sellableStatusDto = sellableStatusDto;
                    i6 = i6;
                    break;
                case 22:
                    list = list;
                    i4 = i7 | 4194304;
                    productCharacteristicsDto4 = (ProductCharacteristicsDto) compositeDecoderB.m(serialDescriptor, 22, ProductCharacteristicsDto$$serializer.f46259a, productCharacteristicsDto4);
                    i7 = i4;
                    list = list;
                    sellableStatusDto = sellableStatusDto;
                    i6 = i6;
                    break;
                case 23:
                    list = list;
                    i4 = i7 | 8388608;
                    productCharacteristicsDto5 = (ProductCharacteristicsDto) compositeDecoderB.m(serialDescriptor, 23, ProductCharacteristicsDto$$serializer.f46259a, productCharacteristicsDto5);
                    i7 = i4;
                    list = list;
                    sellableStatusDto = sellableStatusDto;
                    i6 = i6;
                    break;
                case 24:
                    list = list;
                    i4 = i7 | 16777216;
                    productCharacteristicsDto6 = (ProductCharacteristicsDto) compositeDecoderB.m(serialDescriptor, 24, ProductCharacteristicsDto$$serializer.f46259a, productCharacteristicsDto6);
                    i7 = i4;
                    list = list;
                    sellableStatusDto = sellableStatusDto;
                    i6 = i6;
                    break;
                case 25:
                    list = list;
                    i4 = i7 | 33554432;
                    editoDto = (EditoDto) compositeDecoderB.m(serialDescriptor, 25, EditoDto$$serializer.f46205a, editoDto);
                    i7 = i4;
                    list = list;
                    sellableStatusDto = sellableStatusDto;
                    i6 = i6;
                    break;
                case 26:
                    list = list;
                    i4 = i7 | 67108864;
                    list7 = (List) compositeDecoderB.m(serialDescriptor, 26, (DeserializationStrategy) lazyArr[26].getF71699b(), list7);
                    i7 = i4;
                    list = list;
                    sellableStatusDto = sellableStatusDto;
                    i6 = i6;
                    break;
                case 27:
                    list = list;
                    i4 = i7 | 134217728;
                    list8 = (List) compositeDecoderB.w(serialDescriptor, 27, (DeserializationStrategy) lazyArr[27].getF71699b(), list8);
                    i7 = i4;
                    list = list;
                    sellableStatusDto = sellableStatusDto;
                    i6 = i6;
                    break;
                case 28:
                    list = list;
                    i4 = i7 | 268435456;
                    list9 = (List) compositeDecoderB.m(serialDescriptor, 28, (DeserializationStrategy) lazyArr[28].getF71699b(), list9);
                    i7 = i4;
                    list = list;
                    sellableStatusDto = sellableStatusDto;
                    i6 = i6;
                    break;
                case 29:
                    list = list;
                    List list13 = (List) compositeDecoderB.w(serialDescriptor, 29, (DeserializationStrategy) lazyArr[29].getF71699b(), list10);
                    i4 = i7 | PKIFailureInfo.duplicateCertReq;
                    list10 = list13;
                    i7 = i4;
                    list = list;
                    sellableStatusDto = sellableStatusDto;
                    i6 = i6;
                    break;
                case 30:
                    list = list;
                    i4 = i7 | 1073741824;
                    list11 = (List) compositeDecoderB.w(serialDescriptor, 30, (DeserializationStrategy) lazyArr[30].getF71699b(), list11);
                    i7 = i4;
                    list = list;
                    sellableStatusDto = sellableStatusDto;
                    i6 = i6;
                    break;
                case 31:
                    i6 = i6;
                    sellableStatusDto = sellableStatusDto;
                    list = (List) compositeDecoderB.m(serialDescriptor, 31, (DeserializationStrategy) lazyArr[31].getF71699b(), list);
                    i7 |= Integer.MIN_VALUE;
                    sellableStatusDto = sellableStatusDto;
                    i6 = i6;
                    break;
                case 32:
                    sellableStatusDto = (SellableStatusDto) compositeDecoderB.w(serialDescriptor, 32, SellableStatusDto$$serializer.f46299a, sellableStatusDto);
                    i6 |= 1;
                    list = list;
                    i6 = i6;
                    break;
                case 33:
                    productCustomizationDto = (ProductCustomizationDto) compositeDecoderB.m(serialDescriptor, 33, ProductCustomizationDto$$serializer.f46264a, productCustomizationDto);
                    i5 = i6 | 2;
                    i6 = i5;
                    list = list;
                    sellableStatusDto = sellableStatusDto;
                    i6 = i6;
                    break;
                case 34:
                    str2 = (String) compositeDecoderB.m(serialDescriptor, 34, StringSerializer.f75684a, str2);
                    i5 = i6 | 4;
                    i6 = i5;
                    list = list;
                    sellableStatusDto = sellableStatusDto;
                    i6 = i6;
                    break;
                case 35:
                    list4 = (List) compositeDecoderB.m(serialDescriptor, 35, (DeserializationStrategy) lazyArr[35].getF71699b(), list4);
                    i5 = i6 | 8;
                    i6 = i5;
                    list = list;
                    sellableStatusDto = sellableStatusDto;
                    i6 = i6;
                    break;
                case 36:
                    digitalAssetProductDto = (DigitalAssetProductDto) compositeDecoderB.m(serialDescriptor, 36, DigitalAssetProductDto$$serializer.f46193a, digitalAssetProductDto);
                    i5 = i6 | 16;
                    i6 = i5;
                    list = list;
                    sellableStatusDto = sellableStatusDto;
                    i6 = i6;
                    break;
                case 37:
                    list5 = (List) compositeDecoderB.m(serialDescriptor, 37, (DeserializationStrategy) lazyArr[37].getF71699b(), list5);
                    i5 = i6 | 32;
                    i6 = i5;
                    list = list;
                    sellableStatusDto = sellableStatusDto;
                    i6 = i6;
                    break;
                case 38:
                    list6 = (List) compositeDecoderB.m(serialDescriptor, 38, (DeserializationStrategy) lazyArr[38].getF71699b(), list6);
                    i5 = i6 | 64;
                    i6 = i5;
                    list = list;
                    sellableStatusDto = sellableStatusDto;
                    i6 = i6;
                    break;
                case 39:
                    list2 = (List) compositeDecoderB.m(serialDescriptor, 39, (DeserializationStrategy) lazyArr[39].getF71699b(), list2);
                    i5 = i6 | 128;
                    i6 = i5;
                    list = list;
                    sellableStatusDto = sellableStatusDto;
                    i6 = i6;
                    break;
                case 40:
                    productCharacteristicsDto = (ProductCharacteristicsDto) compositeDecoderB.m(serialDescriptor, 40, ProductCharacteristicsDto$$serializer.f46259a, productCharacteristicsDto);
                    i5 = i6 | 256;
                    i6 = i5;
                    list = list;
                    sellableStatusDto = sellableStatusDto;
                    i6 = i6;
                    break;
                case 41:
                    sellableStatusDto = sellableStatusDto;
                    zY7 = compositeDecoderB.y(serialDescriptor, 41);
                    i6 |= 512;
                    sellableStatusDto = sellableStatusDto;
                    i6 = i6;
                    break;
                case EACTags.CURRENCY_CODE /* 42 */:
                    list3 = (List) compositeDecoderB.w(serialDescriptor, 42, (DeserializationStrategy) lazyArr[42].getF71699b(), list3);
                    i5 = i6 | 1024;
                    i6 = i5;
                    list = list;
                    sellableStatusDto = sellableStatusDto;
                    i6 = i6;
                    break;
                case EACTags.DATE_OF_BIRTH /* 43 */:
                    str3 = (String) compositeDecoderB.m(serialDescriptor, 43, StringSerializer.f75684a, str3);
                    i5 = i6 | 2048;
                    i6 = i5;
                    list = list;
                    sellableStatusDto = sellableStatusDto;
                    i6 = i6;
                    break;
                case EACTags.CARDHOLDER_NATIONALITY /* 44 */:
                    str = (String) compositeDecoderB.m(serialDescriptor, 44, StringSerializer.f75684a, str);
                    i5 = i6 | 4096;
                    i6 = i5;
                    list = list;
                    sellableStatusDto = sellableStatusDto;
                    i6 = i6;
                    break;
                default:
                    b21.l(iN);
                    return null;
            }
        }
        AssetImageDto assetImageDto4 = assetImageDto2;
        String str11 = str;
        ProductBackgroundDto productBackgroundDto3 = productBackgroundDto;
        List list14 = list;
        String str12 = str4;
        compositeDecoderB.c(serialDescriptor);
        return new ProductDto(i7, i6, str12, strL, str5, str6, str7, str8, strL2, productBackgroundDto3, zY, zY2, zY3, zY4, zY5, str9, assetImageDto4, zY6, bool, dimensionsDto, virtualTryOnDto, productDisclaimerDto, productCharacteristicsDto2, productCharacteristicsDto3, productCharacteristicsDto4, productCharacteristicsDto5, productCharacteristicsDto6, editoDto, list7, list8, list9, list10, list11, list14, sellableStatusDto, productCustomizationDto, str2, list4, digitalAssetProductDto, list5, list6, list2, productCharacteristicsDto, zY7, list3, str3, str11, null, null);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        ProductDto productDto = (ProductDto) obj;
        productDto.getClass();
        String str = productDto.S;
        String str2 = productDto.R;
        ProductCharacteristicsDto productCharacteristicsDto = productDto.O;
        List list = productDto.N;
        List list2 = productDto.M;
        List list3 = productDto.L;
        DigitalAssetProductDto digitalAssetProductDto = productDto.K;
        List list4 = productDto.J;
        String str3 = productDto.I;
        ProductCustomizationDto productCustomizationDto = productDto.H;
        SerialDescriptor serialDescriptor = descriptor;
        CompositeEncoder compositeEncoderB = encoder.b(serialDescriptor);
        Lazy[] lazyArr = ProductDto.T;
        SkuId$$serializer skuId$$serializer = SkuId$$serializer.f67934a;
        String str4 = productDto.f46276a;
        List list5 = productDto.F;
        List list6 = productDto.C;
        List list7 = productDto.A;
        EditoDto editoDto = productDto.z;
        ProductCharacteristicsDto productCharacteristicsDto2 = productDto.y;
        ProductCharacteristicsDto productCharacteristicsDto3 = productDto.x;
        ProductCharacteristicsDto productCharacteristicsDto4 = productDto.w;
        ProductCharacteristicsDto productCharacteristicsDto5 = productDto.v;
        ProductCharacteristicsDto productCharacteristicsDto6 = productDto.u;
        ProductDisclaimerDto productDisclaimerDto = productDto.t;
        VirtualTryOnDto virtualTryOnDto = productDto.s;
        DimensionsDto dimensionsDto = productDto.r;
        Boolean bool = productDto.q;
        AssetImageDto assetImageDto = productDto.o;
        String str5 = productDto.n;
        String str6 = productDto.f46280f;
        String str7 = productDto.f46279e;
        String str8 = productDto.f46278c;
        cj.B(str4, compositeEncoderB, serialDescriptor, 0, skuId$$serializer);
        compositeEncoderB.y(serialDescriptor, 1, productDto.f46277b);
        if (compositeEncoderB.o(serialDescriptor) || str8 != null) {
            compositeEncoderB.h(serialDescriptor, 2, StringSerializer.f75684a, str8);
        }
        compositeEncoderB.A(serialDescriptor, 3, ProductId$$serializer.f67906a, new ProductId(productDto.d));
        if (compositeEncoderB.o(serialDescriptor) || str7 != null) {
            compositeEncoderB.h(serialDescriptor, 4, StringSerializer.f75684a, str7);
        }
        if (compositeEncoderB.o(serialDescriptor) || str6 != null) {
            compositeEncoderB.h(serialDescriptor, 5, StringSerializer.f75684a, str6);
        }
        compositeEncoderB.y(serialDescriptor, 6, productDto.g);
        compositeEncoderB.A(serialDescriptor, 7, (SerializationStrategy) lazyArr[7].getF71699b(), productDto.f46281h);
        compositeEncoderB.x(serialDescriptor, 8, productDto.f46282i);
        compositeEncoderB.x(serialDescriptor, 9, productDto.f46283j);
        compositeEncoderB.x(serialDescriptor, 10, productDto.f46284k);
        compositeEncoderB.x(serialDescriptor, 11, productDto.l);
        compositeEncoderB.x(serialDescriptor, 12, productDto.m);
        if (compositeEncoderB.o(serialDescriptor) || str5 != null) {
            compositeEncoderB.h(serialDescriptor, 13, StringSerializer.f75684a, str5);
        }
        if (compositeEncoderB.o(serialDescriptor) || assetImageDto != null) {
            compositeEncoderB.h(serialDescriptor, 14, AssetImageDto$$serializer.f45243a, assetImageDto);
        }
        compositeEncoderB.x(serialDescriptor, 15, productDto.p);
        if (compositeEncoderB.o(serialDescriptor) || bool != null) {
            compositeEncoderB.h(serialDescriptor, 16, BooleanSerializer.f75574a, bool);
        }
        if (compositeEncoderB.o(serialDescriptor) || dimensionsDto != null) {
            compositeEncoderB.h(serialDescriptor, 17, DimensionsDto$$serializer.f46201a, dimensionsDto);
        }
        if (compositeEncoderB.o(serialDescriptor) || virtualTryOnDto != null) {
            compositeEncoderB.h(serialDescriptor, 18, VirtualTryOnDto$$serializer.f46498a, virtualTryOnDto);
        }
        if (compositeEncoderB.o(serialDescriptor) || productDisclaimerDto != null) {
            compositeEncoderB.h(serialDescriptor, 19, ProductDisclaimerDto$$serializer.f46275a, productDisclaimerDto);
        }
        if (compositeEncoderB.o(serialDescriptor) || productCharacteristicsDto6 != null) {
            compositeEncoderB.h(serialDescriptor, 20, ProductCharacteristicsDto$$serializer.f46259a, productCharacteristicsDto6);
        }
        if (compositeEncoderB.o(serialDescriptor) || productCharacteristicsDto5 != null) {
            compositeEncoderB.h(serialDescriptor, 21, ProductCharacteristicsDto$$serializer.f46259a, productCharacteristicsDto5);
        }
        if (compositeEncoderB.o(serialDescriptor) || productCharacteristicsDto4 != null) {
            compositeEncoderB.h(serialDescriptor, 22, ProductCharacteristicsDto$$serializer.f46259a, productCharacteristicsDto4);
        }
        if (compositeEncoderB.o(serialDescriptor) || productCharacteristicsDto3 != null) {
            compositeEncoderB.h(serialDescriptor, 23, ProductCharacteristicsDto$$serializer.f46259a, productCharacteristicsDto3);
        }
        if (compositeEncoderB.o(serialDescriptor) || productCharacteristicsDto2 != null) {
            compositeEncoderB.h(serialDescriptor, 24, ProductCharacteristicsDto$$serializer.f46259a, productCharacteristicsDto2);
        }
        if (compositeEncoderB.o(serialDescriptor) || editoDto != null) {
            compositeEncoderB.h(serialDescriptor, 25, EditoDto$$serializer.f46205a, editoDto);
        }
        if (compositeEncoderB.o(serialDescriptor) || list7 != null) {
            compositeEncoderB.h(serialDescriptor, 26, (SerializationStrategy) lazyArr[26].getF71699b(), list7);
        }
        compositeEncoderB.A(serialDescriptor, 27, (SerializationStrategy) lazyArr[27].getF71699b(), productDto.B);
        if (compositeEncoderB.o(serialDescriptor) || list6 != null) {
            compositeEncoderB.h(serialDescriptor, 28, (SerializationStrategy) lazyArr[28].getF71699b(), list6);
        }
        compositeEncoderB.A(serialDescriptor, 29, (SerializationStrategy) lazyArr[29].getF71699b(), productDto.D);
        compositeEncoderB.A(serialDescriptor, 30, (SerializationStrategy) lazyArr[30].getF71699b(), productDto.E);
        if (compositeEncoderB.o(serialDescriptor) || list5 != null) {
            compositeEncoderB.h(serialDescriptor, 31, (SerializationStrategy) lazyArr[31].getF71699b(), list5);
        }
        compositeEncoderB.A(serialDescriptor, 32, SellableStatusDto$$serializer.f46299a, productDto.G);
        if (compositeEncoderB.o(serialDescriptor) || productCustomizationDto != null) {
            compositeEncoderB.h(serialDescriptor, 33, ProductCustomizationDto$$serializer.f46264a, productCustomizationDto);
        }
        if (compositeEncoderB.o(serialDescriptor) || str3 != null) {
            compositeEncoderB.h(serialDescriptor, 34, StringSerializer.f75684a, str3);
        }
        if (compositeEncoderB.o(serialDescriptor) || list4 != null) {
            compositeEncoderB.h(serialDescriptor, 35, (SerializationStrategy) lazyArr[35].getF71699b(), list4);
        }
        if (compositeEncoderB.o(serialDescriptor) || digitalAssetProductDto != null) {
            compositeEncoderB.h(serialDescriptor, 36, DigitalAssetProductDto$$serializer.f46193a, digitalAssetProductDto);
        }
        if (compositeEncoderB.o(serialDescriptor) || list3 != null) {
            compositeEncoderB.h(serialDescriptor, 37, (SerializationStrategy) lazyArr[37].getF71699b(), list3);
        }
        if (compositeEncoderB.o(serialDescriptor) || list2 != null) {
            compositeEncoderB.h(serialDescriptor, 38, (SerializationStrategy) lazyArr[38].getF71699b(), list2);
        }
        if (compositeEncoderB.o(serialDescriptor) || list != null) {
            compositeEncoderB.h(serialDescriptor, 39, (SerializationStrategy) lazyArr[39].getF71699b(), list);
        }
        if (compositeEncoderB.o(serialDescriptor) || productCharacteristicsDto != null) {
            compositeEncoderB.h(serialDescriptor, 40, ProductCharacteristicsDto$$serializer.f46259a, productCharacteristicsDto);
        }
        compositeEncoderB.x(serialDescriptor, 41, productDto.P);
        compositeEncoderB.A(serialDescriptor, 42, (SerializationStrategy) lazyArr[42].getF71699b(), productDto.Q);
        if (compositeEncoderB.o(serialDescriptor) || str2 != null) {
            compositeEncoderB.h(serialDescriptor, 43, StringSerializer.f75684a, str2);
        }
        if (compositeEncoderB.o(serialDescriptor) || str != null) {
            compositeEncoderB.h(serialDescriptor, 44, StringSerializer.f75684a, str);
        }
        compositeEncoderB.c(serialDescriptor);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] e() {
        Lazy[] lazyArr = ProductDto.T;
        StringSerializer stringSerializer = StringSerializer.f75684a;
        BooleanSerializer booleanSerializer = BooleanSerializer.f75574a;
        ProductCharacteristicsDto$$serializer productCharacteristicsDto$$serializer = ProductCharacteristicsDto$$serializer.f46259a;
        return new KSerializer[]{SkuId$$serializer.f67934a, stringSerializer, BuiltinSerializersKt.d(stringSerializer), ProductId$$serializer.f67906a, BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(stringSerializer), stringSerializer, lazyArr[7].getF71699b(), booleanSerializer, booleanSerializer, booleanSerializer, booleanSerializer, booleanSerializer, BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(AssetImageDto$$serializer.f45243a), booleanSerializer, BuiltinSerializersKt.d(booleanSerializer), BuiltinSerializersKt.d(DimensionsDto$$serializer.f46201a), BuiltinSerializersKt.d(VirtualTryOnDto$$serializer.f46498a), BuiltinSerializersKt.d(ProductDisclaimerDto$$serializer.f46275a), BuiltinSerializersKt.d(productCharacteristicsDto$$serializer), BuiltinSerializersKt.d(productCharacteristicsDto$$serializer), BuiltinSerializersKt.d(productCharacteristicsDto$$serializer), BuiltinSerializersKt.d(productCharacteristicsDto$$serializer), BuiltinSerializersKt.d(productCharacteristicsDto$$serializer), BuiltinSerializersKt.d(EditoDto$$serializer.f46205a), BuiltinSerializersKt.d((KSerializer) lazyArr[26].getF71699b()), lazyArr[27].getF71699b(), BuiltinSerializersKt.d((KSerializer) lazyArr[28].getF71699b()), lazyArr[29].getF71699b(), lazyArr[30].getF71699b(), BuiltinSerializersKt.d((KSerializer) lazyArr[31].getF71699b()), SellableStatusDto$$serializer.f46299a, BuiltinSerializersKt.d(ProductCustomizationDto$$serializer.f46264a), BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d((KSerializer) lazyArr[35].getF71699b()), BuiltinSerializersKt.d(DigitalAssetProductDto$$serializer.f46193a), BuiltinSerializersKt.d((KSerializer) lazyArr[37].getF71699b()), BuiltinSerializersKt.d((KSerializer) lazyArr[38].getF71699b()), BuiltinSerializersKt.d((KSerializer) lazyArr[39].getF71699b()), BuiltinSerializersKt.d(productCharacteristicsDto$$serializer), booleanSerializer, lazyArr[42].getF71699b(), BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(stringSerializer)};
    }
}
