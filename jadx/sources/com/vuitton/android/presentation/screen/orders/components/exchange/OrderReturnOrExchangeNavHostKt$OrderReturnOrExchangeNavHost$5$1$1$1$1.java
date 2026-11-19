package com.vuitton.android.presentation.screen.orders.components.exchange;

import com.vuitton.android.presentation.screen.orders.models.OrderReturnOrExchangeItemUiModel;
import com.vuitton.android.presentation.screen.orders.models.OrderReturnReasonUiModel;
import com.vuitton.android.presentation.screen.orders.viewmodels.OrderReturnOrExchangeViewModel;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
final /* synthetic */ class OrderReturnOrExchangeNavHostKt$OrderReturnOrExchangeNavHost$5$1$1$1$1 extends FunctionReferenceImpl implements Function2<OrderReturnOrExchangeItemUiModel, OrderReturnReasonUiModel, Unit> {
    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        OrderReturnOrExchangeItemUiModel orderReturnOrExchangeItemUiModel = (OrderReturnOrExchangeItemUiModel) obj;
        OrderReturnReasonUiModel orderReturnReasonUiModel = (OrderReturnReasonUiModel) obj2;
        orderReturnOrExchangeItemUiModel.getClass();
        orderReturnReasonUiModel.getClass();
        ((OrderReturnOrExchangeViewModel) this.receiver).lc(orderReturnOrExchangeItemUiModel, orderReturnReasonUiModel);
        return Unit.f71739a;
    }
}
