package com.vuitton.android.presentation.screen.storemode;

import androidx.lifecycle.ViewModelKt;
import com.vuitton.android.domain.usecase.wishlist.GetLocalWishlistSummaryUseCase;
import com.vuitton.android.presentation.screen.wishlist.model.WishlistSummaryUiModel;
import com.vuitton.foundation.model.domain.model.wishlist.WishlistSummary;
import defpackage.md;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.storemode.StoreModeViewModelImpl$getWishlist$1", f = "StoreModeViewModelImpl.kt", l = {283}, m = "invokeSuspend", v = 2)
final class StoreModeViewModelImpl$getWishlist$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f64820b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ StoreModeViewModelImpl f64821c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StoreModeViewModelImpl$getWishlist$1(StoreModeViewModelImpl storeModeViewModelImpl, Continuation continuation) {
        super(2, continuation);
        this.f64821c = storeModeViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new StoreModeViewModelImpl$getWishlist$1(this.f64821c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((StoreModeViewModelImpl$getWishlist$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f64820b;
        StoreModeViewModelImpl storeModeViewModelImpl = this.f64821c;
        if (i2 == 0) {
            ResultKt.b(obj);
            GetLocalWishlistSummaryUseCase getLocalWishlistSummaryUseCase = storeModeViewModelImpl.m;
            this.f64820b = 1;
            obj = getLocalWishlistSummaryUseCase.a(this);
            if (obj == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
        }
        WishlistSummary wishlistSummary = (WishlistSummary) obj;
        int i3 = wishlistSummary.f68292a;
        if (i3 > 0) {
            storeModeViewModelImpl.w.setValue(new WishlistSummaryUiModel(i3, wishlistSummary.f68293b));
        } else {
            BuildersKt.c(ViewModelKt.a(storeModeViewModelImpl), null, null, new StoreModeViewModelImpl$getServerWishlist$1(storeModeViewModelImpl, null), 3);
        }
        return Unit.f71739a;
    }
}
