package com.vuitton.android.presentation.screen.pdp.vto.beauty;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.channels.BufferedChannel;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.pdp.vto.beauty.BeautyVtoViewModelImpl$subscribeBackInStock$1", f = "BeautyVtoViewModelImpl.kt", l = {1440, 1439}, m = "invokeSuspend", v = 2)
final class BeautyVtoViewModelImpl$subscribeBackInStock$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public BufferedChannel f61952b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f61953c;
    public final /* synthetic */ BeautyVtoViewModelImpl d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ String f61954e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BeautyVtoViewModelImpl$subscribeBackInStock$1(BeautyVtoViewModelImpl beautyVtoViewModelImpl, String str, Continuation continuation) {
        super(2, continuation);
        this.d = beautyVtoViewModelImpl;
        this.f61954e = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new BeautyVtoViewModelImpl$subscribeBackInStock$1(this.d, this.f61954e, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((BeautyVtoViewModelImpl$subscribeBackInStock$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x008a, code lost:
    
        if (r3.u(r14, r13) == r2) goto L22;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r14) {
        /*
            r13 = this;
            com.vuitton.android.presentation.screen.pdp.vto.beauty.BeautyVtoViewModelImpl r0 = r13.d
            kotlinx.coroutines.flow.MutableStateFlow r1 = r0.I
            kotlin.coroutines.intrinsics.CoroutineSingletons r2 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r3 = r13.f61953c
            r4 = 1
            r5 = 2
            r6 = 0
            if (r3 == 0) goto L26
            if (r3 == r4) goto L1c
            if (r3 != r5) goto L16
            kotlin.ResultKt.b(r14)
            goto L8d
        L16:
            java.lang.String r13 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r13)
            return r6
        L1c:
            kotlinx.coroutines.channels.BufferedChannel r3 = r13.f61952b
            kotlin.ResultKt.b(r14)
            kotlin.Result r14 = (kotlin.Result) r14
            java.lang.Object r14 = r14.f71708b
            goto L53
        L26:
            kotlin.ResultKt.b(r14)
        L29:
            java.lang.Object r14 = r1.getValue()
            r3 = r14
            java.lang.Boolean r3 = (java.lang.Boolean) r3
            r3.getClass()
            java.lang.Boolean r3 = java.lang.Boolean.TRUE
            boolean r14 = r1.i(r14, r3)
            if (r14 == 0) goto L29
            kotlinx.coroutines.channels.BufferedChannel r3 = r0.h0
            com.vuitton.android.domain.usecase.pdp.backinstock.SubscribeBackInStockUseCase r14 = r0.n
            com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel$Companion r7 = com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel.f61763c
            r7.getClass()
            com.vuitton.foundation.model.domain.model.product.SkuId$Companion r7 = com.vuitton.foundation.model.domain.model.product.SkuId.INSTANCE
            r13.f61952b = r3
            r13.f61953c = r4
            java.lang.String r4 = r13.f61954e
            java.lang.Object r14 = r14.a(r4, r13)
            if (r14 != r2) goto L53
            goto L8c
        L53:
            java.lang.Throwable r4 = kotlin.Result.a(r14)
            if (r4 != 0) goto L6f
            kotlin.Unit r14 = (kotlin.Unit) r14
            com.vuitton.android.presentation.notification.NotificationBuilder r7 = r0.f61844h
            com.vuitton.android.presentation.model.stringhandling.StringResourceUiModel$ResId r8 = new com.vuitton.android.presentation.model.stringhandling.StringResourceUiModel$ResId
            r14 = 2132020916(0x7f140eb4, float:1.9680209E38)
            r8.<init>(r14, r6, r5, r6)
            r11 = 0
            r12 = 60
            r9 = 1
            r10 = 0
            com.vuitton.android.presentation.notification.NotificationUiModel r14 = com.vuitton.android.presentation.notification.NotificationBuilder.a(r7, r8, r9, r10, r11, r12)
            goto L82
        L6f:
            com.vuitton.android.presentation.notification.NotificationBuilder r7 = r0.f61844h
            com.vuitton.android.presentation.model.stringhandling.StringResourceUiModel$ResId r8 = new com.vuitton.android.presentation.model.stringhandling.StringResourceUiModel$ResId
            r14 = 2132020914(0x7f140eb2, float:1.9680205E38)
            r8.<init>(r14, r6, r5, r6)
            r11 = 0
            r12 = 60
            r9 = 0
            r10 = 0
            com.vuitton.android.presentation.notification.NotificationUiModel r14 = com.vuitton.android.presentation.notification.NotificationBuilder.a(r7, r8, r9, r10, r11, r12)
        L82:
            r13.f61952b = r6
            r13.f61953c = r5
            java.lang.Object r13 = r3.u(r14, r13)
            if (r13 != r2) goto L8d
        L8c:
            return r2
        L8d:
            java.lang.Object r13 = r1.getValue()
            r14 = r13
            java.lang.Boolean r14 = (java.lang.Boolean) r14
            r14.getClass()
            java.lang.Boolean r14 = java.lang.Boolean.FALSE
            boolean r13 = r1.i(r13, r14)
            if (r13 == 0) goto L8d
            kotlin.Unit r13 = kotlin.Unit.f71739a
            return r13
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.presentation.screen.pdp.vto.beauty.BeautyVtoViewModelImpl$subscribeBackInStock$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
