package com.vuitton.android.presentation.screen.storemode;

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
@DebugMetadata(c = "com.vuitton.android.presentation.screen.storemode.PSPStoreModeViewModelImpl$onWishlistToggled$1", f = "PSPStoreModeViewModelImpl.kt", l = {}, m = "invokeSuspend", v = 2)
final class PSPStoreModeViewModelImpl$onWishlistToggled$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ PSPStoreModeViewModelImpl f64740b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ PlpProductUiModel f64741c;
    public final /* synthetic */ boolean d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PSPStoreModeViewModelImpl$onWishlistToggled$1(PSPStoreModeViewModelImpl pSPStoreModeViewModelImpl, PlpProductUiModel plpProductUiModel, boolean z, Continuation continuation) {
        super(2, continuation);
        this.f64740b = pSPStoreModeViewModelImpl;
        this.f64741c = plpProductUiModel;
        this.d = z;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new PSPStoreModeViewModelImpl$onWishlistToggled$1(this.f64740b, this.f64741c, this.d, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((PSPStoreModeViewModelImpl$onWishlistToggled$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ResultKt.b(obj);
        this.f64740b.n.e(new PLPWishlistUpdateUiModel(PLPItemMapperKt.a(this.f64741c), this.d), PLPAddToWishlistTrackingMode.Legacy.f62875a, PLPRemoveFromWishlistTrackingMode.Legacy.f62877a);
        return Unit.f71739a;
    }
}
