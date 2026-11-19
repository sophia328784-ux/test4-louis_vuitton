package com.vuitton.android.presentation.screen.storemode;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.storemode.StoreModeViewModelImpl$getServerWishlist$1", f = "StoreModeViewModelImpl.kt", l = {298, 299}, m = "invokeSuspend", v = 2)
final class StoreModeViewModelImpl$getServerWishlist$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f64811b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ StoreModeViewModelImpl f64812c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StoreModeViewModelImpl$getServerWishlist$1(StoreModeViewModelImpl storeModeViewModelImpl, Continuation continuation) {
        super(2, continuation);
        this.f64812c = storeModeViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new StoreModeViewModelImpl$getServerWishlist$1(this.f64812c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((StoreModeViewModelImpl$getServerWishlist$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0039, code lost:
    
        if (r6 == r0) goto L15;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r7) {
        /*
            r6 = this;
            kotlin.coroutines.intrinsics.CoroutineSingletons r0 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r1 = r6.f64811b
            r2 = 0
            com.vuitton.android.presentation.screen.storemode.StoreModeViewModelImpl r3 = r6.f64812c
            r4 = 2
            r5 = 1
            if (r1 == 0) goto L21
            if (r1 == r5) goto L1d
            if (r1 != r4) goto L17
            kotlin.ResultKt.b(r7)
            kotlin.Result r7 = (kotlin.Result) r7
            java.lang.Object r6 = r7.f71708b
            goto L3c
        L17:
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r6)
            return r2
        L1d:
            kotlin.ResultKt.b(r7)
            goto L31
        L21:
            kotlin.ResultKt.b(r7)
            com.vuitton.android.domain.usecase.wishlist.GetWishlistUseCase r7 = r3.f64794k
            r6.f64811b = r5
            com.vuitton.android.domain.repository.WishlistRepository r7 = r7.f50440a
            com.vuitton.foundation.model.domain.model.common.ResultStrategyLazy r7 = r7.f()
            if (r7 != r0) goto L31
            goto L3b
        L31:
            com.vuitton.foundation.model.domain.model.common.ResultStrategy r7 = (com.vuitton.foundation.model.domain.model.common.ResultStrategy) r7
            r6.f64811b = r4
            java.lang.Object r6 = r7.b(r6)
            if (r6 != r0) goto L3c
        L3b:
            return r0
        L3c:
            kotlin.Result$Companion r7 = kotlin.Result.INSTANCE
            boolean r7 = r6 instanceof kotlin.Result.Failure
            if (r7 != 0) goto L6a
            com.vuitton.foundation.model.domain.model.wishlist.Wishlist r6 = (com.vuitton.foundation.model.domain.model.wishlist.Wishlist) r6
            kotlinx.coroutines.flow.MutableStateFlow r7 = r3.w
            com.vuitton.android.presentation.screen.wishlist.model.WishlistSummaryUiModel r0 = new com.vuitton.android.presentation.screen.wishlist.model.WishlistSummaryUiModel
            if (r6 == 0) goto L53
            java.util.List r1 = r6.f68282a
            if (r1 == 0) goto L53
            int r1 = r1.size()
            goto L54
        L53:
            r1 = 0
        L54:
            if (r6 == 0) goto L64
            java.util.List r6 = r6.f68282a
            if (r6 == 0) goto L64
            java.lang.Object r6 = kotlin.collections.CollectionsKt.N(r6)
            com.vuitton.foundation.model.domain.model.wishlist.WishlistItem r6 = (com.vuitton.foundation.model.domain.model.wishlist.WishlistItem) r6
            if (r6 == 0) goto L64
            java.lang.String r2 = r6.d
        L64:
            r0.<init>(r1, r2)
            r7.setValue(r0)
        L6a:
            kotlin.Unit r6 = kotlin.Unit.f71739a
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.presentation.screen.storemode.StoreModeViewModelImpl$getServerWishlist$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
