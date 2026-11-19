package com.vuitton.android.presentation.screen.pdp.models.uimodels;

import defpackage.v40;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class ProductUiModelKt {
    public static final PriceUiModel a(ProductUiModel productUiModel) {
        productUiModel.getClass();
        SellableStatusUiModel sellableStatusUiModel = productUiModel.T;
        if (sellableStatusUiModel instanceof SellableStatusUiModel.SellableUiModel) {
            return ((SellableStatusUiModel.SellableUiModel) sellableStatusUiModel).f61748b;
        }
        if (sellableStatusUiModel instanceof SellableStatusUiModel.NotSellableUiModel) {
            return ((SellableStatusUiModel.NotSellableUiModel) sellableStatusUiModel).f61747b.getF61705b();
        }
        v40.g();
        return null;
    }

    public static final PriceSpecificationUiModel b(ProductUiModel productUiModel) {
        productUiModel.getClass();
        SellableStatusUiModel sellableStatusUiModel = productUiModel.T;
        if (sellableStatusUiModel instanceof SellableStatusUiModel.SellableUiModel) {
            return ((SellableStatusUiModel.SellableUiModel) sellableStatusUiModel).f61748b.f61723c;
        }
        return null;
    }
}
