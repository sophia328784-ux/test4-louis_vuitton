package com.vuitton.android.presentation.screen.orders.components.exchange;

import com.vuitton.android.presentation.screen.orders.models.OrderReturnOrExchangeItemUiModel;
import com.vuitton.android.presentation.screen.orders.viewmodels.OrderReturnOrExchangeViewModel;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
final /* synthetic */ class OrderReturnOrExchangeNavHostKt$OrderReturnOrExchangeNavHost$5$1$1$2$1 extends FunctionReferenceImpl implements Function2<OrderReturnOrExchangeItemUiModel, Boolean, Unit> {
    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        OrderReturnOrExchangeItemUiModel orderReturnOrExchangeItemUiModel = (OrderReturnOrExchangeItemUiModel) obj;
        boolean zBooleanValue = ((Boolean) obj2).booleanValue();
        orderReturnOrExchangeItemUiModel.getClass();
        ((OrderReturnOrExchangeViewModel) this.receiver).T6(orderReturnOrExchangeItemUiModel, zBooleanValue);
        return Unit.f71739a;
    }
}
