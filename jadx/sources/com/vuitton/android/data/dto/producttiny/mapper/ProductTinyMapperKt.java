package com.vuitton.android.data.dto.producttiny.mapper;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.common.mapper.AssetMapperKt;
import com.vuitton.android.data.dto.productshort.ProductShortPriceDto;
import com.vuitton.android.data.dto.producttiny.ProductTinyDto;
import com.vuitton.foundation.model.domain.model.common.AssetImage;
import com.vuitton.foundation.model.domain.model.product.ProductId;
import com.vuitton.foundation.model.domain.model.product.universal.ProductBackground;
import com.vuitton.foundation.model.domain.model.productshortlist.ProductShortPrice;
import com.vuitton.foundation.model.domain.model.producttiny.ProductTiny;
import java.util.Locale;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {DbParams.KEY_DATA}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class ProductTinyMapperKt {
    /* JADX WARN: Code duplicated, block: B:15:0x003f  */
    public static final ProductTiny a(ProductTinyDto productTinyDto) {
        String str;
        ProductBackground productBackgroundValueOf;
        productTinyDto.getClass();
        String str2 = productTinyDto.f46664a;
        if (str2 != null) {
            ProductId.Companion companion = ProductId.INSTANCE;
            str = str2;
        } else {
            str = null;
        }
        String str3 = productTinyDto.f46665b;
        AssetImage assetImageB = AssetMapperKt.b(productTinyDto.f46666c);
        String str4 = productTinyDto.d;
        ProductShortPriceDto productShortPriceDto = productTinyDto.f46667e;
        ProductShortPrice productShortPrice = productShortPriceDto != null ? new ProductShortPrice(productShortPriceDto.f46647a, productShortPriceDto.f46648b, productShortPriceDto.f46649c, productShortPriceDto.d) : null;
        String str5 = productTinyDto.f46668f;
        if (str5 != null) {
            String upperCase = str5.toUpperCase(Locale.ROOT);
            upperCase.getClass();
            productBackgroundValueOf = ProductBackground.valueOf(upperCase);
            if (productBackgroundValueOf == null) {
                productBackgroundValueOf = ProductBackground.DEFAULT;
            }
        } else {
            productBackgroundValueOf = ProductBackground.DEFAULT;
        }
        return new ProductTiny(str, str3, assetImageB, str4, productShortPrice, productBackgroundValueOf, productTinyDto.g, null);
    }
}
