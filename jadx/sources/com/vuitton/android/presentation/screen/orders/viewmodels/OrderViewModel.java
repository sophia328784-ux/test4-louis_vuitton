package com.vuitton.android.presentation.screen.orders.viewmodels;

import com.vuitton.android.presentation.screen.orders.models.OrderTrackingUiModel;
import com.vuitton.android.presentation.screen.orders.models.PurchasedOrderUiModel;
import com.vuitton.android.presentation.screen.orders.models.TransactionItemUiModel;
import kotlin.Metadata;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.StateFlow;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bf\u0018\u00002\u00020\u0001¨\u0006\u0002À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModel;", "", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface OrderViewModel {
    Flow H6();

    void I4(PurchasedOrderUiModel purchasedOrderUiModel, String str, TransactionItemUiModel transactionItemUiModel);

    void J9(String str, String str2);

    void R9();

    /* JADX INFO: renamed from: a */
    StateFlow getE();

    Flow b();

    /* JADX INFO: renamed from: b8 */
    Flow getP();

    void c0(OrderTrackingUiModel orderTrackingUiModel);

    void u4();
}
