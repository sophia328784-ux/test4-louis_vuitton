package com.vuitton.android.presentation.screen.pdp.vto.beauty.models;

import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import com.vuitton.foundation.model.domain.model.common.AssetImage;
import com.vuitton.foundation.model.domain.model.productshortlist.ProductShort;
import com.vuitton.foundation.model.domain.model.productshortlist.ProductShortCharacteristic;
import com.vuitton.foundation.model.domain.model.productshortlist.ProductShortPrice;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class BeautyAddToCartUiModelKt {
    public static final BeautyAddToCartUiModel a(ProductShort productShort, boolean z) {
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
        ProductShortCharacteristic productShortCharacteristic = productShort.g;
        String str4 = productShortCharacteristic != null ? productShortCharacteristic.f68134a : null;
        ProductShortPrice productShortPrice = productShort.o;
        String str5 = productShortPrice != null ? productShortPrice.f68137b : null;
        return new BeautyAddToCartUiModel(str, str2, str3, str4, str5 != null ? str5 : "", z, productShort.r, null);
    }
}
