package com.vuitton.android.presentation.screen.orders.viewmodels;

import com.vuitton.android.presentation.screen.orders.models.CategoryOptionUiModel;
import com.vuitton.android.presentation.screen.orders.models.OrderReturnOrExchangeBottomSheet;
import com.vuitton.android.presentation.screen.orders.models.OrderReturnOrExchangeItemUiModel;
import com.vuitton.android.presentation.screen.orders.models.OrderReturnReasonUiModel;
import com.vuitton.android.presentation.screen.orders.models.OrderTrackingUiModel;
import com.vuitton.android.presentation.screen.orders.models.ProductExchangeCategoryUiModel;
import kotlin.Metadata;
import kotlinx.coroutines.channels.BufferedChannel;
import kotlinx.coroutines.flow.StateFlow;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bf\u0018\u00002\u00020\u0001¨\u0006\u0002À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModel;", "", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface OrderReturnOrExchangeViewModel {
    void A9();

    void E2();

    void Oa();

    void P5();

    BufferedChannel P7();

    void T6(OrderReturnOrExchangeItemUiModel orderReturnOrExchangeItemUiModel, boolean z);

    void X7(OrderReturnOrExchangeBottomSheet orderReturnOrExchangeBottomSheet);

    StateFlow a();

    void c0(OrderTrackingUiModel orderTrackingUiModel);

    StateFlow e();

    void f6();

    void i4(ProductExchangeCategoryUiModel productExchangeCategoryUiModel, CategoryOptionUiModel categoryOptionUiModel, int i2);

    void lc(OrderReturnOrExchangeItemUiModel orderReturnOrExchangeItemUiModel, OrderReturnReasonUiModel orderReturnReasonUiModel);

    void n6(String str);

    void n9();

    void o3();

    void pb(String str);

    void u6();
}
