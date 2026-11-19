package com.vuitton.android.presentation.screen.orders.components.exchange;

import com.vuitton.android.presentation.screen.orders.viewmodels.OrderReturnOrExchangeViewModel;
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
import kotlinx.coroutines.channels.BufferedChannel;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.orders.components.exchange.OrderReturnOrExchangeNavHostKt$OrderReturnOrExchangeNavHost$7$1", f = "OrderReturnOrExchangeNavHost.kt", l = {}, m = "invokeSuspend", v = 2)
final class OrderReturnOrExchangeNavHostKt$OrderReturnOrExchangeNavHost$7$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ OrderReturnOrExchangeViewModel f60151b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Function0 f60152c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OrderReturnOrExchangeNavHostKt$OrderReturnOrExchangeNavHost$7$1(OrderReturnOrExchangeViewModel orderReturnOrExchangeViewModel, Function0 function0, Continuation continuation) {
        super(2, continuation);
        this.f60151b = orderReturnOrExchangeViewModel;
        this.f60152c = function0;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new OrderReturnOrExchangeNavHostKt$OrderReturnOrExchangeNavHost$7$1(this.f60151b, this.f60152c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((OrderReturnOrExchangeNavHostKt$OrderReturnOrExchangeNavHost$7$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ResultKt.b(obj);
        BufferedChannel bufferedChannelP7 = this.f60151b.P7();
        boolean z = false;
        if (!bufferedChannelP7.G() && !bufferedChannelP7.C()) {
            z = !bufferedChannelP7.G();
        }
        if (!z) {
            this.f60152c.mo47invoke();
        }
        return Unit.f71739a;
    }
}
