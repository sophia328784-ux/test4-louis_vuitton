package com.vuitton.android.presentation.screen.orders.components.exchange;

import androidx.compose.runtime.MutableState;
import com.vuitton.android.presentation.screen.orders.models.ExchangeSubmitResponseUiModel;
import com.vuitton.android.presentation.screen.orders.models.OrderReturnOrExchangeItemUiModel;
import com.vuitton.android.presentation.screen.orders.models.OrderReturnOrExchangeViewState;
import com.vuitton.android.presentation.screen.orders.models.OrderTrackingUiModel;
import com.vuitton.android.presentation.screen.orders.models.TransactionItemUiModel;
import com.vuitton.android.presentation.screen.orders.viewmodels.OrderReturnOrExchangeViewModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import com.vuitton.foundation.model.domain.model.product.SkuId;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.orders.components.exchange.OrderReturnOrExchangeNavHostKt$OrderReturnOrExchangeNavHost$6$4$1", f = "OrderReturnOrExchangeNavHost.kt", l = {}, m = "invokeSuspend", v = 2)
final class OrderReturnOrExchangeNavHostKt$OrderReturnOrExchangeNavHost$6$4$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ OrderReturnOrExchangeViewModel f60149b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ MutableState f60150c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OrderReturnOrExchangeNavHostKt$OrderReturnOrExchangeNavHost$6$4$1(OrderReturnOrExchangeViewModel orderReturnOrExchangeViewModel, MutableState mutableState, Continuation continuation) {
        super(2, continuation);
        this.f60149b = orderReturnOrExchangeViewModel;
        this.f60150c = mutableState;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new OrderReturnOrExchangeNavHostKt$OrderReturnOrExchangeNavHost$6$4$1(this.f60149b, this.f60150c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((OrderReturnOrExchangeNavHostKt$OrderReturnOrExchangeNavHost$6$4$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        String str;
        TransactionItemUiModel transactionItemUiModel;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ResultKt.b(obj);
        MutableState mutableState = this.f60150c;
        if (((OrderReturnOrExchangeViewState) mutableState.getF10755b()).n instanceof ExchangeSubmitResponseUiModel.Success) {
            OrderReturnOrExchangeItemUiModel orderReturnOrExchangeItemUiModel = ((OrderReturnOrExchangeViewState) mutableState.getF10755b()).l;
            if (orderReturnOrExchangeItemUiModel == null || (transactionItemUiModel = orderReturnOrExchangeItemUiModel.f60302a) == null) {
                str = null;
            } else {
                str = transactionItemUiModel.g;
                SkuIdUiModel.f61763c.getClass();
                SkuIdUiModel.Companion.b(str);
            }
            this.f60149b.c0(new OrderTrackingUiModel.ExchangeSuccessBottomSheet(CollectionsKt.Q(str != null ? new SkuId(str) : null)));
        }
        return Unit.f71739a;
    }
}
