package com.vuitton.android.presentation.screen.plp.viewmodels.impl;

import com.vuitton.android.presentation.screen.plp.models.PLPAddToWishlistTrackingMode;
import com.vuitton.android.presentation.screen.plp.models.PLPRemoveFromWishlistTrackingMode;
import com.vuitton.android.presentation.screen.plp.models.PLPWishlistUpdateUiModel;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.plp.viewmodels.impl.PLPCatalogViewModelImpl$updateWishlist$1", f = "PLPCatalogViewModelImpl.kt", l = {}, m = "invokeSuspend", v = 2)
final class PLPCatalogViewModelImpl$updateWishlist$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ PLPCatalogViewModelImpl f63055b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ PLPWishlistUpdateUiModel f63056c;
    public final /* synthetic */ PLPAddToWishlistTrackingMode.Revamp d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ PLPRemoveFromWishlistTrackingMode.Revamp f63057e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PLPCatalogViewModelImpl$updateWishlist$1(PLPCatalogViewModelImpl pLPCatalogViewModelImpl, PLPWishlistUpdateUiModel pLPWishlistUpdateUiModel, PLPAddToWishlistTrackingMode.Revamp revamp, PLPRemoveFromWishlistTrackingMode.Revamp revamp2, Continuation continuation) {
        super(2, continuation);
        this.f63055b = pLPCatalogViewModelImpl;
        this.f63056c = pLPWishlistUpdateUiModel;
        this.d = revamp;
        this.f63057e = revamp2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new PLPCatalogViewModelImpl$updateWishlist$1(this.f63055b, this.f63056c, this.d, this.f63057e, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((PLPCatalogViewModelImpl$updateWishlist$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ResultKt.b(obj);
        this.f63055b.l.e(this.f63056c, this.d, this.f63057e);
        return Unit.f71739a;
    }
}
