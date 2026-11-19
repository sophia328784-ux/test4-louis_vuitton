package com.vuitton.android.presentation.screen.plp.viewmodels.impl.delegates;

import com.vuitton.android.presentation.screen.plp.models.PLPAddToWishlistTrackingMode;
import com.vuitton.android.presentation.screen.plp.models.PLPRemoveFromWishlistTrackingMode;
import com.vuitton.android.presentation.screen.plp.models.PLPWishlistUpdateUiModel;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.plp.viewmodels.impl.delegates.PLPWishlistDelegate$updateWishlist$1", f = "PLPWishlistDelegate.kt", l = {105, 110, 119}, m = "invokeSuspend", v = 2)
final class PLPWishlistDelegate$updateWishlist$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f63163b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ PLPWishlistDelegate f63164c;
    public final /* synthetic */ PLPWishlistUpdateUiModel d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ PLPAddToWishlistTrackingMode f63165e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ PLPRemoveFromWishlistTrackingMode f63166f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PLPWishlistDelegate$updateWishlist$1(PLPWishlistDelegate pLPWishlistDelegate, PLPWishlistUpdateUiModel pLPWishlistUpdateUiModel, PLPAddToWishlistTrackingMode pLPAddToWishlistTrackingMode, PLPRemoveFromWishlistTrackingMode pLPRemoveFromWishlistTrackingMode, Continuation continuation) {
        super(2, continuation);
        this.f63164c = pLPWishlistDelegate;
        this.d = pLPWishlistUpdateUiModel;
        this.f63165e = pLPAddToWishlistTrackingMode;
        this.f63166f = pLPRemoveFromWishlistTrackingMode;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new PLPWishlistDelegate$updateWishlist$1(this.f63164c, this.d, this.f63165e, this.f63166f, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((PLPWishlistDelegate$updateWishlist$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0050, code lost:
    
        if (r9 == r0) goto L31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0062, code lost:
    
        if (r9 == r0) goto L31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x007c, code lost:
    
        if (r9.a(com.vuitton.android.core.events.AppEvent.WishListUpdatedEvent.f43509a, r8) == r0) goto L31;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r9) {
        /*
            r8 = this;
            kotlin.coroutines.intrinsics.CoroutineSingletons r0 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r1 = r8.f63163b
            r2 = 3
            r3 = 2
            com.vuitton.android.presentation.screen.plp.viewmodels.impl.delegates.PLPWishlistDelegate r4 = r8.f63164c
            r5 = 1
            if (r1 == 0) goto L25
            if (r1 == r5) goto L21
            if (r1 == r3) goto L1d
            if (r1 != r2) goto L16
            kotlin.ResultKt.b(r9)
            goto L89
        L16:
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r8)
            r8 = 0
            return r8
        L1d:
            kotlin.ResultKt.b(r9)
            goto L65
        L21:
            kotlin.ResultKt.b(r9)
            goto L53
        L25:
            kotlin.ResultKt.b(r9)
            com.vuitton.android.domain.service.authentication.UserSessionService r9 = r4.g
            boolean r9 = r9.b()
            com.vuitton.android.presentation.screen.plp.models.PLPWishlistUpdateUiModel r1 = r8.d
            if (r9 == 0) goto L7f
            r4.n = r5
            com.vuitton.android.presentation.screen.plp.viewmodels.impl.delegates.ProductForWishlist r9 = r1.f62907a
            boolean r6 = r1.f62908b
            androidx.compose.runtime.MutableState r9 = r9.f63168b
            if (r9 == 0) goto L44
            com.vuitton.android.presentation.screen.plp.models.productshortlist.PlpProductUiModel$SkuDataUiModel$PLPWishlistStateUiModel r7 = new com.vuitton.android.presentation.screen.plp.models.productshortlist.PlpProductUiModel$SkuDataUiModel$PLPWishlistStateUiModel
            r7.<init>(r6, r5)
            r9.setValue(r7)
        L44:
            com.vuitton.android.presentation.screen.plp.viewmodels.impl.delegates.ProductForWishlist r9 = r1.f62907a
            if (r6 == 0) goto L5a
            r8.f63163b = r5
            com.vuitton.android.presentation.screen.plp.models.PLPAddToWishlistTrackingMode r1 = r8.f63165e
            java.lang.Object r9 = com.vuitton.android.presentation.screen.plp.viewmodels.impl.delegates.PLPWishlistDelegate.a(r4, r9, r1, r8)
            if (r9 != r0) goto L53
            goto L7e
        L53:
            java.lang.Boolean r9 = (java.lang.Boolean) r9
            boolean r9 = r9.booleanValue()
            goto L6b
        L5a:
            r8.f63163b = r3
            com.vuitton.android.presentation.screen.plp.models.PLPRemoveFromWishlistTrackingMode r1 = r8.f63166f
            java.lang.Object r9 = com.vuitton.android.presentation.screen.plp.viewmodels.impl.delegates.PLPWishlistDelegate.b(r4, r9, r1, r8)
            if (r9 != r0) goto L65
            goto L7e
        L65:
            java.lang.Boolean r9 = (java.lang.Boolean) r9
            boolean r9 = r9.booleanValue()
        L6b:
            r1 = 0
            r4.n = r1
            if (r9 == 0) goto L89
            r4.m = r5
            com.vuitton.android.core.events.LVEventSender r9 = r4.f63138c
            r8.f63163b = r2
            com.vuitton.android.core.events.AppEvent$WishListUpdatedEvent r1 = com.vuitton.android.core.events.AppEvent.WishListUpdatedEvent.f43509a
            java.lang.Object r8 = r9.a(r1, r8)
            if (r8 != r0) goto L89
        L7e:
            return r0
        L7f:
            kotlinx.coroutines.flow.SharedFlowImpl r8 = r4.o
            com.vuitton.android.presentation.screen.plp.models.PLPWishlistFeedbackUiModel$RequestAuth r9 = new com.vuitton.android.presentation.screen.plp.models.PLPWishlistFeedbackUiModel$RequestAuth
            r9.<init>(r1)
            r8.a(r9)
        L89:
            kotlin.Unit r8 = kotlin.Unit.f71739a
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.presentation.screen.plp.viewmodels.impl.delegates.PLPWishlistDelegate$updateWishlist$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
