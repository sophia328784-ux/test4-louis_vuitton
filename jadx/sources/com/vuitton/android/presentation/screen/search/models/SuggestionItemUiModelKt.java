package com.vuitton.android.presentation.screen.search.models;

import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.mapper.ProductShortMapperKt;
import com.vuitton.foundation.model.domain.model.productshortlist.ProductShortPrice;
import com.vuitton.foundation.model.domain.model.producttiny.ProductTiny;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class SuggestionItemUiModelKt {
    public static final SuggestionItemUiModel a(ProductTiny productTiny) {
        productTiny.getClass();
        SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
        String str = productTiny.d;
        companion.getClass();
        SkuIdUiModel.Companion.c(str);
        String str2 = productTiny.f68147b;
        String str3 = productTiny.f68148c.f67108a;
        ProductShortPrice productShortPrice = productTiny.f68149e;
        return new SuggestionItemUiModel(str, str2, str3, productShortPrice != null ? ProductShortMapperKt.c(productShortPrice) : null, HistoryUiModelKt.b(productTiny.f68150f), null);
    }
}
