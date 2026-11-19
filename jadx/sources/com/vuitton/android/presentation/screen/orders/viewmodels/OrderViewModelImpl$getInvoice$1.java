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
@DebugMetadata(c = "com.vuitton.android.presentation.screen.orders.viewmodels.OrderViewModelImpl$getInvoice$1", f = "OrderViewModelImpl.kt", l = {344, 347, 350}, m = "invokeSuspend", v = 2)
final class OrderViewModelImpl$getInvoice$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Object f60518b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f60519c;
    public final /* synthetic */ OrderViewModelImpl d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ String f60520e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ String f60521f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OrderViewModelImpl$getInvoice$1(OrderViewModelImpl orderViewModelImpl, String str, String str2, Continuation continuation) {
        super(2, continuation);
        this.d = orderViewModelImpl;
        this.f60520e = str;
        this.f60521f = str2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new OrderViewModelImpl$getInvoice$1(this.d, this.f60520e, this.f60521f, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((OrderViewModelImpl$getInvoice$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code duplicated, block: B:29:0x0089 A[LOOP:0: B:29:0x0089->B:37:?, LOOP_START] */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00a3, code lost:
    
        if (r0.Dc(r9, r8) == r2) goto L33;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r9) {
        /*
            r8 = this;
            com.vuitton.android.presentation.screen.orders.viewmodels.OrderViewModelImpl r0 = r8.d
            kotlinx.coroutines.flow.MutableStateFlow r1 = r0.v
            kotlin.coroutines.intrinsics.CoroutineSingletons r2 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r3 = r8.f60519c
            r4 = 3
            r5 = 2
            r6 = 1
            if (r3 == 0) goto L2e
            if (r3 == r6) goto L25
            if (r3 == r5) goto L1f
            if (r3 != r4) goto L18
            kotlin.ResultKt.b(r9)
            goto La6
        L18:
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r8)
            r8 = 0
            return r8
        L1f:
            java.lang.Object r3 = r8.f60518b
            kotlin.ResultKt.b(r9)
            goto L83
        L25:
            kotlin.ResultKt.b(r9)
            kotlin.Result r9 = (kotlin.Result) r9
            java.lang.Object r9 = r9.f71708b
        L2c:
            r3 = r9
            goto L52
        L2e:
            kotlin.ResultKt.b(r9)
        L31:
            java.lang.Object r9 = r1.getValue()
            r3 = r9
            java.lang.Boolean r3 = (java.lang.Boolean) r3
            r3.getClass()
            java.lang.Boolean r3 = java.lang.Boolean.TRUE
            boolean r9 = r1.i(r9, r3)
            if (r9 == 0) goto L31
            com.vuitton.android.domain.usecase.account.order.GetInvoiceUseCase r9 = r0.f60507i
            r8.f60519c = r6
            java.lang.String r3 = r8.f60520e
            java.lang.String r6 = r8.f60521f
            java.lang.Object r9 = r9.a(r3, r6, r8)
            if (r9 != r2) goto L2c
            goto La5
        L52:
            kotlin.Result$Companion r9 = kotlin.Result.INSTANCE
            boolean r9 = r3 instanceof kotlin.Result.Failure
            if (r9 != 0) goto L83
            r9 = r3
            com.vuitton.android.core.type.FileLocation r9 = (com.vuitton.android.core.type.FileLocation) r9
            java.lang.String r9 = r9.f43532a
        L5d:
            java.lang.Object r6 = r1.getValue()
            r7 = r6
            java.lang.Boolean r7 = (java.lang.Boolean) r7
            r7.getClass()
            java.lang.Boolean r7 = java.lang.Boolean.FALSE
            boolean r6 = r1.i(r6, r7)
            if (r6 == 0) goto L5d
            android.net.Uri r9 = android.net.Uri.parse(r9)
            kotlinx.coroutines.channels.BufferedChannel r6 = r0.n
            r9.getClass()
            r8.f60518b = r3
            r8.f60519c = r5
            java.lang.Object r9 = r6.u(r9, r8)
            if (r9 != r2) goto L83
            goto La5
        L83:
            java.lang.Throwable r9 = kotlin.Result.a(r3)
            if (r9 == 0) goto La6
        L89:
            java.lang.Object r5 = r1.getValue()
            r6 = r5
            java.lang.Boolean r6 = (java.lang.Boolean) r6
            r6.getClass()
            java.lang.Boolean r6 = java.lang.Boolean.FALSE
            boolean r5 = r1.i(r5, r6)
            if (r5 == 0) goto L89
            r8.f60518b = r3
            r8.f60519c = r4
            java.lang.Object r8 = r0.Dc(r9, r8)
            if (r8 != r2) goto La6
        La5:
            return r2
        La6:
            kotlin.Unit r8 = kotlin.Unit.f71739a
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.presentation.screen.orders.viewmodels.OrderViewModelImpl$getInvoice$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
