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
@DebugMetadata(c = "com.vuitton.android.presentation.screen.orders.viewmodels.OrderViewModelImpl$clearCacheAndGetOrders$1", f = "OrderViewModelImpl.kt", l = {221, 226}, m = "invokeSuspend", v = 2)
final class OrderViewModelImpl$clearCacheAndGetOrders$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f60512b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ OrderViewModelImpl f60513c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OrderViewModelImpl$clearCacheAndGetOrders$1(Continuation continuation, OrderViewModelImpl orderViewModelImpl) {
        super(2, continuation);
        this.f60513c = orderViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new OrderViewModelImpl$clearCacheAndGetOrders$1(continuation, this.f60513c);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((OrderViewModelImpl$clearCacheAndGetOrders$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x0065, code lost:
    
        if (r0.Cc(r7) == r3) goto L22;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r8) {
        /*
            r7 = this;
            com.vuitton.android.presentation.screen.orders.viewmodels.OrderViewModelImpl r0 = r7.f60513c
            kotlinx.coroutines.flow.MutableStateFlow r1 = r0.u
            kotlinx.coroutines.flow.MutableStateFlow r2 = r0.t
            kotlin.coroutines.intrinsics.CoroutineSingletons r3 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r4 = r7.f60512b
            r5 = 2
            r6 = 1
            if (r4 == 0) goto L26
            if (r4 == r6) goto L22
            if (r4 != r5) goto L1b
            kotlin.ResultKt.b(r8)
            kotlin.Result r8 = (kotlin.Result) r8
            r8.getClass()
            goto L68
        L1b:
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r7)
            r7 = 0
            return r7
        L22:
            kotlin.ResultKt.b(r8)
            goto L3b
        L26:
            kotlin.ResultKt.b(r8)
            com.vuitton.android.domain.usecase.account.order.ClearOrdersCacheUseCase r8 = r0.f60506h
            r7.f60512b = r6
            com.vuitton.android.domain.repository.OrderRepository r8 = r8.f49106a
            kotlin.Unit r8 = r8.a()
            if (r8 != r3) goto L36
            goto L38
        L36:
            kotlin.Unit r8 = kotlin.Unit.f71739a
        L38:
            if (r8 != r3) goto L3b
            goto L67
        L3b:
            java.lang.Object r8 = r2.getValue()
            r4 = r8
            java.lang.Boolean r4 = (java.lang.Boolean) r4
            r4.getClass()
            java.lang.Boolean r4 = java.lang.Boolean.TRUE
            boolean r8 = r2.i(r8, r4)
            if (r8 == 0) goto L3b
        L4d:
            java.lang.Object r8 = r1.getValue()
            r4 = r8
            java.lang.Boolean r4 = (java.lang.Boolean) r4
            r4.getClass()
            java.lang.Boolean r4 = java.lang.Boolean.TRUE
            boolean r8 = r1.i(r8, r4)
            if (r8 == 0) goto L4d
            r7.f60512b = r5
            java.lang.Object r7 = r0.Cc(r7)
            if (r7 != r3) goto L68
        L67:
            return r3
        L68:
            java.lang.Object r7 = r2.getValue()
            r8 = r7
            java.lang.Boolean r8 = (java.lang.Boolean) r8
            r8.getClass()
            java.lang.Boolean r8 = java.lang.Boolean.FALSE
            boolean r7 = r2.i(r7, r8)
            if (r7 == 0) goto L68
        L7a:
            java.lang.Object r7 = r1.getValue()
            r8 = r7
            java.lang.Boolean r8 = (java.lang.Boolean) r8
            r8.getClass()
            java.lang.Boolean r8 = java.lang.Boolean.FALSE
            boolean r7 = r1.i(r7, r8)
            if (r7 == 0) goto L7a
            kotlin.Unit r7 = kotlin.Unit.f71739a
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.presentation.screen.orders.viewmodels.OrderViewModelImpl$clearCacheAndGetOrders$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
