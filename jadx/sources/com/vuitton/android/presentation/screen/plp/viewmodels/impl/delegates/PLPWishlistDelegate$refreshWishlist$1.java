package com.vuitton.android.presentation.screen.plp.viewmodels.impl.delegates;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.plp.viewmodels.impl.delegates.PLPWishlistDelegate$refreshWishlist$1", f = "PLPWishlistDelegate.kt", l = {130, 131}, m = "invokeSuspend", v = 2)
final class PLPWishlistDelegate$refreshWishlist$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f63161b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ PLPWishlistDelegate f63162c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PLPWishlistDelegate$refreshWishlist$1(PLPWishlistDelegate pLPWishlistDelegate, Continuation continuation) {
        super(2, continuation);
        this.f63162c = pLPWishlistDelegate;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new PLPWishlistDelegate$refreshWishlist$1(this.f63162c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((PLPWishlistDelegate$refreshWishlist$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0039, code lost:
    
        if (r5 == r0) goto L15;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [kotlin.collections.EmptyList] */
    /* JADX WARN: Type inference failed for: r0v2, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r0v3, types: [java.util.ArrayList] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r6) {
        /*
            r5 = this;
            kotlin.coroutines.intrinsics.CoroutineSingletons r0 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r1 = r5.f63161b
            com.vuitton.android.presentation.screen.plp.viewmodels.impl.delegates.PLPWishlistDelegate r2 = r5.f63162c
            r3 = 2
            r4 = 1
            if (r1 == 0) goto L21
            if (r1 == r4) goto L1d
            if (r1 != r3) goto L16
            kotlin.ResultKt.b(r6)
            kotlin.Result r6 = (kotlin.Result) r6
            java.lang.Object r5 = r6.f71708b
            goto L3c
        L16:
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r5)
            r5 = 0
            return r5
        L1d:
            kotlin.ResultKt.b(r6)
            goto L31
        L21:
            kotlin.ResultKt.b(r6)
            com.vuitton.android.domain.usecase.wishlist.GetWishlistUseCase r6 = r2.f63141h
            r5.f63161b = r4
            com.vuitton.android.domain.repository.WishlistRepository r6 = r6.f50440a
            com.vuitton.foundation.model.domain.model.common.ResultStrategyLazy r6 = r6.f()
            if (r6 != r0) goto L31
            goto L3b
        L31:
            com.vuitton.foundation.model.domain.model.common.ResultStrategy r6 = (com.vuitton.foundation.model.domain.model.common.ResultStrategy) r6
            r5.f63161b = r3
            java.lang.Object r5 = r6.c(r5)
            if (r5 != r0) goto L3c
        L3b:
            return r0
        L3c:
            kotlin.Result$Companion r6 = kotlin.Result.INSTANCE
            boolean r6 = r5 instanceof kotlin.Result.Failure
            if (r6 != 0) goto L83
            com.vuitton.foundation.model.domain.model.wishlist.Wishlist r5 = (com.vuitton.foundation.model.domain.model.wishlist.Wishlist) r5
            kotlinx.coroutines.flow.SharedFlowImpl r6 = r2.o
            if (r5 == 0) goto L79
            java.util.List r5 = r5.f68282a
            if (r5 == 0) goto L79
            java.lang.Iterable r5 = (java.lang.Iterable) r5
            java.util.ArrayList r0 = new java.util.ArrayList
            r1 = 10
            int r1 = kotlin.collections.CollectionsKt.t(r5, r1)
            r0.<init>(r1)
            java.util.Iterator r5 = r5.iterator()
        L5d:
            boolean r1 = r5.hasNext()
            if (r1 == 0) goto L7b
            java.lang.Object r1 = r5.next()
            com.vuitton.foundation.model.domain.model.wishlist.WishlistItem r1 = (com.vuitton.foundation.model.domain.model.wishlist.WishlistItem) r1
            com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel$Companion r2 = com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel.f61763c
            java.lang.String r1 = r1.f68285b
            r2.getClass()
            com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel r2 = new com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel
            r2.<init>(r1)
            r0.add(r2)
            goto L5d
        L79:
            kotlin.collections.EmptyList r0 = kotlin.collections.EmptyList.f71768b
        L7b:
            com.vuitton.android.presentation.screen.plp.models.PLPWishlistFeedbackUiModel$UpdateItems r5 = new com.vuitton.android.presentation.screen.plp.models.PLPWishlistFeedbackUiModel$UpdateItems
            r5.<init>(r0)
            r6.a(r5)
        L83:
            kotlin.Unit r5 = kotlin.Unit.f71739a
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.presentation.screen.plp.viewmodels.impl.delegates.PLPWishlistDelegate$refreshWishlist$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
