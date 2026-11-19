package com.vuitton.android.presentation.screen.plp.models.mapper;

import androidx.compose.runtime.MutableState;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.PlpProductUiModel;
import com.vuitton.android.presentation.screen.plp.viewmodels.impl.delegates.ProductForWishlist;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class PLPItemMapperKt {
    public static final ProductForWishlist a(PlpProductUiModel plpProductUiModel) {
        plpProductUiModel.getClass();
        MutableState mutableState = plpProductUiModel.f62934a;
        return new ProductForWishlist(((PlpProductUiModel.SkuDataUiModel) mutableState.getF10755b()).f62943a, ((PlpProductUiModel.SkuDataUiModel) mutableState.getF10755b()).f62948h, null);
    }
}
