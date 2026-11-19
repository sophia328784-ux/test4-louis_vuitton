package com.vuitton.android.presentation.model.common.mapper;

import com.vuitton.android.presentation.common.editorial.models.CarouselSItemUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.ProductShortPriceUiModel;
import com.vuitton.android.presentation.screen.search.models.HistoryUiModelKt;
import com.vuitton.foundation.model.domain.model.common.AssetImage;
import com.vuitton.foundation.model.domain.model.productshortlist.ProductShort;
import com.vuitton.foundation.model.domain.model.productshortlist.ProductShortCharacteristic;
import com.vuitton.foundation.model.domain.model.productshortlist.ProductShortPrice;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class ProductShortMapperKt {
    public static final CarouselSItemUiModel a(ProductShort productShort) {
        productShort.getClass();
        SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
        String str = productShort.f68128e;
        companion.getClass();
        String str2 = productShort.f68126b;
        AssetImage assetImage = productShort.f68127c.f67106a;
        String str3 = assetImage != null ? assetImage.f67108a : null;
        if (str3 == null) {
            str3 = "";
        }
        int iB = HistoryUiModelKt.b(productShort.f68133k);
        ProductShortPrice productShortPrice = productShort.o;
        ProductShortPriceUiModel productShortPriceUiModelC = productShortPrice != null ? com.vuitton.android.presentation.screen.plp.models.productshortlist.mapper.ProductShortMapperKt.c(productShortPrice) : null;
        ProductShortCharacteristic productShortCharacteristic = productShort.g;
        return new CarouselSItemUiModel(str, str2, str3, iB, productShortPriceUiModelC, productShortCharacteristic != null ? productShortCharacteristic.f68134a : null, null, 64, null);
    }
}
