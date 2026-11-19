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
@DebugMetadata(c = "com.vuitton.android.presentation.screen.plp.viewmodels.impl.PSPViewModelImpl$onWishlistToggled$1", f = "PSPViewModelImpl.kt", l = {}, m = "invokeSuspend", v = 2)
final class PSPViewModelImpl$onWishlistToggled$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ PSPViewModelImpl f63127b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ PlpProductUiModel f63128c;
    public final /* synthetic */ boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ PLPAddToWishlistTrackingMode.Revamp f63129e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ PLPRemoveFromWishlistTrackingMode.Revamp f63130f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PSPViewModelImpl$onWishlistToggled$1(PSPViewModelImpl pSPViewModelImpl, PlpProductUiModel plpProductUiModel, boolean z, PLPAddToWishlistTrackingMode.Revamp revamp, PLPRemoveFromWishlistTrackingMode.Revamp revamp2, Continuation continuation) {
        super(2, continuation);
        this.f63127b = pSPViewModelImpl;
        this.f63128c = plpProductUiModel;
        this.d = z;
        this.f63129e = revamp;
        this.f63130f = revamp2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new PSPViewModelImpl$onWishlistToggled$1(this.f63127b, this.f63128c, this.d, this.f63129e, this.f63130f, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((PSPViewModelImpl$onWishlistToggled$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ResultKt.b(obj);
        this.f63127b.f63110h.e(new PLPWishlistUpdateUiModel(PLPItemMapperKt.a(this.f63128c), this.d), this.f63129e, this.f63130f);
        return Unit.f71739a;
    }
}
