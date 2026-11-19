package com.vuitton.android.presentation.screen.pdp.vto.beauty.models.mappers;

import com.vuitton.android.presentation.model.common.AssetImageUiModel;
import com.vuitton.android.presentation.model.common.ProductTinyUiModel;
import com.vuitton.android.presentation.model.common.mapper.AssetMapperKt;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.ProductIdUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.RecommendationUiModel;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.ShadeFinderResponseUiModel;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.TryOnProductUiModel;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.mapper.ProductShortMapperKt;
import com.vuitton.foundation.model.domain.model.product.vto.Recommendation;
import com.vuitton.foundation.model.domain.model.product.vto.ShadeFinderResponse;
import com.vuitton.foundation.model.domain.model.product.vto.TryOnProduct;
import com.vuitton.foundation.model.domain.model.productshortlist.ProductShortPrice;
import com.vuitton.foundation.model.domain.model.producttiny.ProductTiny;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class ShadeFinderResponseMapperKt {
    public static final ShadeFinderResponseUiModel a(ShadeFinderResponse shadeFinderResponse) {
        shadeFinderResponse.getClass();
        String str = shadeFinderResponse.f68079a;
        List<Recommendation> list = shadeFinderResponse.f68080b;
        ArrayList arrayList = new ArrayList(CollectionsKt.t(list, 10));
        for (Recommendation recommendation : list) {
            ProductTiny productTiny = recommendation.f68070a;
            productTiny.getClass();
            String str2 = productTiny.f68146a;
            TryOnProductUiModel tryOnProductUiModelB = null;
            if (str2 != null) {
                ProductIdUiModel.f61731c.getClass();
            } else {
                str2 = null;
            }
            String str3 = productTiny.f68147b;
            AssetImageUiModel assetImageUiModelA = AssetMapperKt.a(productTiny.f68148c);
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            String str4 = productTiny.d;
            companion.getClass();
            SkuIdUiModel.Companion.c(str4);
            ProductShortPrice productShortPrice = productTiny.f68149e;
            ProductTinyUiModel productTinyUiModel = new ProductTinyUiModel(str2, str3, assetImageUiModelA, str4, productShortPrice != null ? ProductShortMapperKt.c(productShortPrice) : null, ProductShortMapperKt.a(productTiny.f68150f), productTiny.g, null);
            String str5 = recommendation.f68071b;
            TryOnProduct tryOnProduct = recommendation.f68072c;
            if (tryOnProduct != null) {
                tryOnProductUiModelB = TryOnProductMapperKt.b(tryOnProduct);
            }
            arrayList.add(new RecommendationUiModel(productTinyUiModel, str5, tryOnProductUiModelB));
        }
        return new ShadeFinderResponseUiModel(str, arrayList);
    }
}
