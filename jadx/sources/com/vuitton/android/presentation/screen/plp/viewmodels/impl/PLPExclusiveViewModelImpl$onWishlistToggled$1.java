package com.vuitton.android.presentation.screen.plp.viewmodels.impl;

import com.vuitton.android.presentation.screen.plp.models.PLPAddToWishlistTrackingMode;
import com.vuitton.android.presentation.screen.plp.models.PLPRemoveFromWishlistTrackingMode;
import com.vuitton.android.presentation.screen.plp.models.PLPWishlistUpdateUiModel;
import com.vuitton.android.presentation.screen.plp.models.mapper.PLPItemMapperKt;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.PlpProductUiModel;
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
@DebugMetadata(c = "com.vuitton.android.presentation.screen.plp.viewmodels.impl.PLPExclusiveViewModelImpl$onWishlistToggled$1", f = "PLPExclusiveViewModelImpl.kt", l = {}, m = "invokeSuspend", v = 2)
final class PLPExclusiveViewModelImpl$onWishlistToggled$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ PLPExclusiveViewModelImpl f63078b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ PlpProductUiModel f63079c;
    public final /* synthetic */ boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ PLPAddToWishlistTrackingMode.Revamp f63080e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ PLPRemoveFromWishlistTrackingMode.Revamp f63081f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PLPExclusiveViewModelImpl$onWishlistToggled$1(PLPExclusiveViewModelImpl pLPExclusiveViewModelImpl, PlpProductUiModel plpProductUiModel, boolean z, PLPAddToWishlistTrackingMode.Revamp revamp, PLPRemoveFromWishlistTrackingMode.Revamp revamp2, Continuation continuation) {
        super(2, continuation);
        this.f63078b = pLPExclusiveViewModelImpl;
        this.f63079c = plpProductUiModel;
        this.d = z;
        this.f63080e = revamp;
        this.f63081f = revamp2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new PLPExclusiveViewModelImpl$onWishlistToggled$1(this.f63078b, this.f63079c, this.d, this.f63080e, this.f63081f, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((PLPExclusiveViewModelImpl$onWishlistToggled$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ResultKt.b(obj);
        this.f63078b.f63067j.e(new PLPWishlistUpdateUiModel(PLPItemMapperKt.a(this.f63079c), this.d), this.f63080e, this.f63081f);
        return Unit.f71739a;
    }
}
