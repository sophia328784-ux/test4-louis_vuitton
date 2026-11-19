package com.vuitton.android.presentation.screen.orders.viewmodels;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.MutableStateFlow;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.orders.viewmodels.OrderReturnOrExchangeViewModelImpl$fetchReasons$1", f = "OrderReturnOrExchangeViewModelImpl.kt", l = {267}, m = "invokeSuspend", v = 2)
final class OrderReturnOrExchangeViewModelImpl$fetchReasons$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public MutableStateFlow f60446b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public OrderReturnOrExchangeViewModelImpl f60447c;
    public Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f60448e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f60449f;
    public final /* synthetic */ OrderReturnOrExchangeViewModelImpl g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OrderReturnOrExchangeViewModelImpl$fetchReasons$1(Continuation continuation, OrderReturnOrExchangeViewModelImpl orderReturnOrExchangeViewModelImpl) {
        super(2, continuation);
        this.g = orderReturnOrExchangeViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new OrderReturnOrExchangeViewModelImpl$fetchReasons$1(continuation, this.g);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((OrderReturnOrExchangeViewModelImpl$fetchReasons$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code duplicated, block: B:11:0x0049 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:12:0x004a  */
    /* JADX WARN: Code duplicated, block: B:15:0x0055  */
    /* JADX WARN: Code duplicated, block: B:18:0x006e A[LOOP:0: B:16:0x0068->B:18:0x006e, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:20:0x008a  */
    /* JADX WARN: Code duplicated, block: B:22:0x0092  */
    /* JADX WARN: Code duplicated, block: B:28:0x00a3  */
    /* JADX WARN: Code duplicated, block: B:30:0x00a6  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x004a -> B:13:0x004f). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final java.lang.Object invokeSuspend(java.lang.Object r12) {
        /*
            r11 = this;
            com.vuitton.android.presentation.screen.orders.viewmodels.OrderReturnOrExchangeViewModelImpl r0 = r11.g
            kotlinx.coroutines.flow.MutableStateFlow r1 = r0.y
            kotlin.coroutines.intrinsics.CoroutineSingletons r2 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r3 = r11.f60449f
            r4 = 1
            if (r3 == 0) goto L27
            if (r3 != r4) goto L20
            int r0 = r11.f60448e
            java.lang.Object r1 = r11.d
            com.vuitton.android.presentation.screen.orders.viewmodels.OrderReturnOrExchangeViewModelImpl r3 = r11.f60447c
            kotlinx.coroutines.flow.MutableStateFlow r5 = r11.f60446b
            kotlin.ResultKt.b(r12)
            kotlin.Result r12 = (kotlin.Result) r12
            java.lang.Object r12 = r12.f71708b
            r10 = r5
            r5 = r1
            r1 = r10
            goto L4f
        L20:
            java.lang.String r11 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r11)
            r11 = 0
            return r11
        L27:
            kotlin.ResultKt.b(r12)
            com.vuitton.android.presentation.screen.orders.models.ReasonsResponseUiModel$Loading r12 = com.vuitton.android.presentation.screen.orders.models.ReasonsResponseUiModel.Loading.f60401a
            r1.setValue(r12)
            r12 = 0
        L30:
            java.lang.Object r3 = r1.getValue()
            r5 = r3
            com.vuitton.android.presentation.screen.orders.models.ReasonsResponseUiModel r5 = (com.vuitton.android.presentation.screen.orders.models.ReasonsResponseUiModel) r5
            com.vuitton.android.domain.usecase.account.order.GetOrderReturnReasonsUseCase r5 = r0.g
            r11.f60446b = r1
            r11.f60447c = r0
            r11.d = r3
            r11.f60448e = r12
            r11.f60449f = r4
            java.lang.Object r5 = r5.a(r11)
            if (r5 != r2) goto L4a
            return r2
        L4a:
            r10 = r0
            r0 = r12
            r12 = r5
            r5 = r3
            r3 = r10
        L4f:
            java.lang.Throwable r6 = kotlin.Result.a(r12)
            if (r6 != 0) goto L8a
            java.util.List r12 = (java.util.List) r12
            java.lang.Iterable r12 = (java.lang.Iterable) r12
            java.util.ArrayList r6 = new java.util.ArrayList
            r7 = 10
            int r7 = kotlin.collections.CollectionsKt.t(r12, r7)
            r6.<init>(r7)
            java.util.Iterator r12 = r12.iterator()
        L68:
            boolean r7 = r12.hasNext()
            if (r7 == 0) goto L84
            java.lang.Object r7 = r12.next()
            com.vuitton.foundation.model.domain.model.account.orders.OrderReturnReason r7 = (com.vuitton.foundation.model.domain.model.account.orders.OrderReturnReason) r7
            r7.getClass()
            com.vuitton.android.presentation.screen.orders.models.OrderReturnReasonUiModel r8 = new com.vuitton.android.presentation.screen.orders.models.OrderReturnReasonUiModel
            java.lang.String r9 = r7.f66322a
            java.lang.String r7 = r7.f66323b
            r8.<init>(r9, r7)
            r6.add(r8)
            goto L68
        L84:
            com.vuitton.android.presentation.screen.orders.models.ReasonsResponseUiModel$Result r12 = new com.vuitton.android.presentation.screen.orders.models.ReasonsResponseUiModel$Result
            r12.<init>(r6)
            goto L9d
        L8a:
            com.vuitton.android.presentation.screen.orders.models.ReasonsResponseUiModel$Error r12 = new com.vuitton.android.presentation.screen.orders.models.ReasonsResponseUiModel$Error
            java.lang.String r7 = r6.getLocalizedMessage()
            if (r7 != 0) goto L9a
            java.lang.String r7 = r6.getMessage()
            if (r7 != 0) goto L9a
            java.lang.String r7 = ""
        L9a:
            r12.<init>(r7)
        L9d:
            boolean r12 = r1.i(r5, r12)
            if (r12 == 0) goto La6
            kotlin.Unit r11 = kotlin.Unit.f71739a
            return r11
        La6:
            r12 = r0
            r0 = r3
            goto L30
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.presentation.screen.orders.viewmodels.OrderReturnOrExchangeViewModelImpl$fetchReasons$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
