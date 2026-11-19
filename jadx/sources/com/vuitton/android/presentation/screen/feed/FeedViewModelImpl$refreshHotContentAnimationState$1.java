package com.vuitton.android.presentation.screen.feed;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.feed.FeedViewModelImpl$refreshHotContentAnimationState$1", f = "FeedViewModelImpl.kt", l = {543, 543}, m = "invokeSuspend", v = 2)
final class FeedViewModelImpl$refreshHotContentAnimationState$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f57712b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ FeedViewModelImpl f57713c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FeedViewModelImpl$refreshHotContentAnimationState$1(FeedViewModelImpl feedViewModelImpl, Continuation continuation) {
        super(2, continuation);
        this.f57713c = feedViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new FeedViewModelImpl$refreshHotContentAnimationState$1(this.f57713c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((FeedViewModelImpl$refreshHotContentAnimationState$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x004f, code lost:
    
        if (r6 == r0) goto L21;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r6) {
        /*
            r5 = this;
            kotlin.coroutines.intrinsics.CoroutineSingletons r0 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r1 = r5.f57712b
            r2 = 2
            com.vuitton.android.presentation.screen.feed.FeedViewModelImpl r3 = r5.f57713c
            r4 = 1
            if (r1 == 0) goto L1d
            if (r1 == r4) goto L19
            if (r1 != r2) goto L12
            kotlin.ResultKt.b(r6)
            goto L52
        L12:
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r5)
            r5 = 0
            return r5
        L19:
            kotlin.ResultKt.b(r6)
            goto L47
        L1d:
            kotlin.ResultKt.b(r6)
            kotlinx.coroutines.flow.MutableStateFlow r6 = r3.R
            java.lang.Object r6 = r6.getValue()
            com.vuitton.android.presentation.screen.feed.models.FeedFeatureFlags r6 = (com.vuitton.android.presentation.screen.feed.models.FeedFeatureFlags) r6
            boolean r6 = r6.f57916h
            if (r6 == 0) goto L3a
            com.vuitton.android.domain.usecase.hotcontent.HasCachedHotContentUseCase r5 = r3.r
            com.vuitton.android.domain.repository.HotContentRepository r5 = r5.f50115a
            java.util.List r5 = r5.a()
            if (r5 == 0) goto L38
            r5 = r4
            goto L58
        L38:
            r5 = 0
            goto L58
        L3a:
            com.vuitton.android.domain.usecase.account.order.GetOngoingOrdersUseCase r6 = r3.o
            r5.f57712b = r4
            com.vuitton.android.domain.repository.OrderRepository r6 = r6.f49119a
            com.vuitton.foundation.model.domain.model.common.ResultStrategyLazy r6 = r6.j()
            if (r6 != r0) goto L47
            goto L51
        L47:
            com.vuitton.foundation.model.domain.model.common.ResultStrategy r6 = (com.vuitton.foundation.model.domain.model.common.ResultStrategy) r6
            r5.f57712b = r2
            java.lang.Object r6 = r6.h(r5)
            if (r6 != r0) goto L52
        L51:
            return r0
        L52:
            java.lang.Boolean r6 = (java.lang.Boolean) r6
            boolean r5 = r6.booleanValue()
        L58:
            kotlinx.coroutines.flow.MutableStateFlow r6 = r3.Q
        L5a:
            java.lang.Object r0 = r6.getValue()
            r1 = r0
            java.lang.Boolean r1 = (java.lang.Boolean) r1
            r1.getClass()
            r1 = r5 ^ 1
            java.lang.Boolean r1 = java.lang.Boolean.valueOf(r1)
            boolean r0 = r6.i(r0, r1)
            if (r0 == 0) goto L5a
            kotlin.Unit r5 = kotlin.Unit.f71739a
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.presentation.screen.feed.FeedViewModelImpl$refreshHotContentAnimationState$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
