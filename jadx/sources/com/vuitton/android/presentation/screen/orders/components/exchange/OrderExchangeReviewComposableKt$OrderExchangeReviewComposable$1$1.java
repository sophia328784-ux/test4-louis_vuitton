package com.vuitton.android.presentation.screen.orders.components.exchange;

import androidx.compose.runtime.MutableState;
import com.vuitton.android.presentation.screen.orders.models.ExchangeSetupResponseUiModel;
import com.vuitton.android.presentation.screen.orders.models.OrderReturnOrExchangeViewState;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.orders.components.exchange.OrderExchangeReviewComposableKt$OrderExchangeReviewComposable$1$1", f = "OrderExchangeReviewComposable.kt", l = {}, m = "invokeSuspend", v = 2)
final class OrderExchangeReviewComposableKt$OrderExchangeReviewComposable$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Function0 f60110b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ MutableState f60111c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OrderExchangeReviewComposableKt$OrderExchangeReviewComposable$1$1(MutableState mutableState, Continuation continuation, Function0 function0) {
        super(2, continuation);
        this.f60110b = function0;
        this.f60111c = mutableState;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new OrderExchangeReviewComposableKt$OrderExchangeReviewComposable$1$1(this.f60111c, continuation, this.f60110b);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((OrderExchangeReviewComposableKt$OrderExchangeReviewComposable$1$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ResultKt.b(obj);
        if (((OrderReturnOrExchangeViewState) this.f60111c.getF10755b()).m instanceof ExchangeSetupResponseUiModel.Error.OutOfStock) {
            this.f60110b.mo47invoke();
        }
        return Unit.f71739a;
    }
}
