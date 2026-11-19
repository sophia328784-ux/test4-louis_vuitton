package com.vuitton.android.presentation.screen.orders.viewmodels;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.orders.viewmodels.OrderReturnOrExchangeViewModelImpl$initializeReturnableItems$1", f = "OrderReturnOrExchangeViewModelImpl.kt", l = {132, 132}, m = "invokeSuspend", v = 2)
final class OrderReturnOrExchangeViewModelImpl$initializeReturnableItems$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public OrderReturnOrExchangeViewModelImpl f60455b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f60456c;
    public int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public /* synthetic */ Object f60457e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ OrderReturnOrExchangeViewModelImpl f60458f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OrderReturnOrExchangeViewModelImpl$initializeReturnableItems$1(Continuation continuation, OrderReturnOrExchangeViewModelImpl orderReturnOrExchangeViewModelImpl) {
        super(2, continuation);
        this.f60458f = orderReturnOrExchangeViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        OrderReturnOrExchangeViewModelImpl$initializeReturnableItems$1 orderReturnOrExchangeViewModelImpl$initializeReturnableItems$1 = new OrderReturnOrExchangeViewModelImpl$initializeReturnableItems$1(continuation, this.f60458f);
        orderReturnOrExchangeViewModelImpl$initializeReturnableItems$1.f60457e = obj;
        return orderReturnOrExchangeViewModelImpl$initializeReturnableItems$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((OrderReturnOrExchangeViewModelImpl$initializeReturnableItems$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x005b, code lost:
    
        if (r0 == r1) goto L23;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r22) {
        /*
            Method dump skipped, instruction units count: 503
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.presentation.screen.orders.viewmodels.OrderReturnOrExchangeViewModelImpl$initializeReturnableItems$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
