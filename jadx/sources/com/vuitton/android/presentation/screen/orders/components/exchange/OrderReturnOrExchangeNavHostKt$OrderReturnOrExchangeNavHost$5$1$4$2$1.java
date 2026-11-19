package com.vuitton.android.presentation.screen.orders.components.exchange;

import com.vuitton.android.presentation.screen.orders.models.CategoryOptionUiModel;
import com.vuitton.android.presentation.screen.orders.models.ProductExchangeCategoryUiModel;
import com.vuitton.android.presentation.screen.orders.viewmodels.OrderReturnOrExchangeViewModel;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
final /* synthetic */ class OrderReturnOrExchangeNavHostKt$OrderReturnOrExchangeNavHost$5$1$4$2$1 extends FunctionReferenceImpl implements Function3<ProductExchangeCategoryUiModel, CategoryOptionUiModel, Integer, Unit> {
    @Override // kotlin.jvm.functions.Function3
    public final Object A(Object obj, Object obj2, Object obj3) {
        ProductExchangeCategoryUiModel productExchangeCategoryUiModel = (ProductExchangeCategoryUiModel) obj;
        CategoryOptionUiModel categoryOptionUiModel = (CategoryOptionUiModel) obj2;
        int iIntValue = ((Number) obj3).intValue();
        productExchangeCategoryUiModel.getClass();
        categoryOptionUiModel.getClass();
        ((OrderReturnOrExchangeViewModel) this.receiver).i4(productExchangeCategoryUiModel, categoryOptionUiModel, iIntValue);
        return Unit.f71739a;
    }
}
