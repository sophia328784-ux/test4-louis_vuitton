package com.vuitton.android.presentation.screen.orders.components.exchange;

import androidx.compose.runtime.State;
import com.vuitton.android.presentation.screen.orders.models.OrderReturnOrExchangeItemUiModel;
import com.vuitton.android.presentation.screen.orders.models.OrderReturnOrExchangeViewState;
import com.vuitton.android.presentation.screen.orders.models.OrderTrackingUiModel;
import com.vuitton.android.presentation.screen.orders.models.VariationsResponseUiModel;
import com.vuitton.android.presentation.screen.orders.viewmodels.OrderReturnOrExchangeViewModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import com.vuitton.foundation.model.domain.model.product.SkuId;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.orders.components.exchange.OrderReturnOrExchangeNavHostKt$OrderReturnOrExchangeNavHost$5$1$2$2$1", f = "OrderReturnOrExchangeNavHost.kt", l = {}, m = "invokeSuspend", v = 2)
final class OrderReturnOrExchangeNavHostKt$OrderReturnOrExchangeNavHost$5$1$2$2$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ OrderReturnOrExchangeViewModel f60141b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ State f60142c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OrderReturnOrExchangeNavHostKt$OrderReturnOrExchangeNavHost$5$1$2$2$1(OrderReturnOrExchangeViewModel orderReturnOrExchangeViewModel, State state, Continuation continuation) {
        super(2, continuation);
        this.f60141b = orderReturnOrExchangeViewModel;
        this.f60142c = state;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new OrderReturnOrExchangeNavHostKt$OrderReturnOrExchangeNavHost$5$1$2$2$1(this.f60141b, this.f60142c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((OrderReturnOrExchangeNavHostKt$OrderReturnOrExchangeNavHost$5$1$2$2$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ResultKt.b(obj);
        State state = this.f60142c;
        if (((OrderReturnOrExchangeViewState) state.getF10755b()).f60309c != null && !Intrinsics.c(((OrderReturnOrExchangeViewState) state.getF10755b()).f60309c, VariationsResponseUiModel.Loading.f60429a)) {
            List<OrderReturnOrExchangeItemUiModel> list = ((OrderReturnOrExchangeViewState) state.getF10755b()).f60311f;
            ArrayList arrayList = new ArrayList(CollectionsKt.t(list, 10));
            for (OrderReturnOrExchangeItemUiModel orderReturnOrExchangeItemUiModel : list) {
                SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
                String str = orderReturnOrExchangeItemUiModel.f60302a.g;
                companion.getClass();
                SkuIdUiModel.Companion.b(str);
                arrayList.add(new SkuId(str));
            }
            this.f60141b.c0(new OrderTrackingUiModel.ExchangeSelectionScreen(arrayList, ((OrderReturnOrExchangeViewState) state.getF10755b()).a()));
        }
        return Unit.f71739a;
    }
}
