package com.vuitton.android.presentation.screen.personalselections.detail.instore.models.mappers;

import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt;
import com.vuitton.android.R;
import com.vuitton.android.presentation.model.common.AssetImageUiModel;
import com.vuitton.android.presentation.model.common.AssetUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.PlpProductUiModel;
import com.vuitton.foundation.model.domain.model.personalselections.SelectionProduct;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class PersonalSelectionsInStorePlpMapperKt {
    public static final PlpProductUiModel a(SelectionProduct selectionProduct) {
        SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
        String str = selectionProduct.f67809a;
        companion.getClass();
        String str2 = selectionProduct.f67810b;
        String str3 = selectionProduct.f67811c;
        MutableState mutableStateG = SnapshotStateKt.g(new PlpProductUiModel.SkuDataUiModel(str, null, null, str2, new AssetUiModel(new AssetImageUiModel(str3, null, null, 6, null), null), CollectionsKt.O(new AssetUiModel(new AssetImageUiModel(str3, null, null, 6, null), null)), R.drawable.background_product_default, null, false, false, false, null));
        EmptyList emptyList = EmptyList.f71768b;
        return new PlpProductUiModel(mutableStateG, null, emptyList, null, emptyList, false, null, null, 66, null);
    }
}
