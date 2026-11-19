package com.vuitton.android.presentation.screen.wishlist;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.wishlist.WishlistViewModelImpl$retrieveProfile$1", f = "WishlistViewModelImpl.kt", l = {349, 349}, m = "invokeSuspend", v = 2)
final class WishlistViewModelImpl$retrieveProfile$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f65651b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ WishlistViewModelImpl f65652c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WishlistViewModelImpl$retrieveProfile$1(Continuation continuation, WishlistViewModelImpl wishlistViewModelImpl) {
        super(2, continuation);
        this.f65652c = wishlistViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new WishlistViewModelImpl$retrieveProfile$1(continuation, this.f65652c);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((WishlistViewModelImpl$retrieveProfile$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0037, code lost:
    
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
            int r1 = r6.f65651b
            r2 = 0
            com.vuitton.android.presentation.screen.wishlist.WishlistViewModelImpl r3 = r6.f65652c
            r4 = 2
            r5 = 1
            if (r1 == 0) goto L21
            if (r1 == r5) goto L1d
            if (r1 != r4) goto L17
            kotlin.ResultKt.b(r7)
            kotlin.Result r7 = (kotlin.Result) r7
            java.lang.Object r6 = r7.f71708b
            goto L3a
        L17:
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r6)
            return r2
        L1d:
            kotlin.ResultKt.b(r7)
            goto L2f
        L21:
            kotlin.ResultKt.b(r7)
            com.vuitton.android.domain.usecase.account.GetProfileUseCase r7 = r3.f65624j
            r6.f65651b = r5
            java.lang.Object r7 = r7.a(r6)
            if (r7 != r0) goto L2f
            goto L39
        L2f:
            com.vuitton.foundation.model.domain.model.common.ResultStrategy r7 = (com.vuitton.foundation.model.domain.model.common.ResultStrategy) r7
            r6.f65651b = r4
            java.lang.Object r6 = r7.c(r6)
            if (r6 != r0) goto L3a
        L39:
            return r0
        L3a:
            kotlin.Result$Companion r7 = kotlin.Result.INSTANCE
            boolean r7 = r6 instanceof kotlin.Result.Failure
            if (r7 != 0) goto L45
            r7 = r6
            com.vuitton.foundation.model.domain.model.profile.Profile r7 = (com.vuitton.foundation.model.domain.model.profile.Profile) r7
            r3.D = r7
        L45:
            java.lang.Throwable r6 = kotlin.Result.a(r6)
            if (r6 == 0) goto L56
            com.vuitton.foundation.logger.Logger r7 = r3.f65618b
            java.lang.String r0 = "WishlistViewModelImpl"
            java.lang.String r6 = r6.getMessage()
            r7.c(r0, r6, r2)
        L56:
            kotlin.Unit r6 = kotlin.Unit.f71739a
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.presentation.screen.wishlist.WishlistViewModelImpl$retrieveProfile$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
