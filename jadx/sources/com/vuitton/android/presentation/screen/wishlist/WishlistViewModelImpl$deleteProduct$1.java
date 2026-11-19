package com.vuitton.android.presentation.screen.wishlist;

import androidx.compose.runtime.snapshots.SnapshotStateList;
import androidx.lifecycle.ViewModelKt;
import com.vuitton.android.R;
import com.vuitton.android.core.events.AppEvent;
import com.vuitton.android.core.events.LVEventSender;
import com.vuitton.android.domain.monitoring.MonitorAction;
import com.vuitton.android.domain.monitoring.wishlist.WishlistMonitoring;
import com.vuitton.android.domain.usecase.wishlist.DeleteProductFromWishlistUseCase;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import com.vuitton.android.presentation.screen.wishlist.model.WishlistUiModel;
import com.vuitton.foundation.model.domain.model.product.SkuId;
import defpackage.k71;
import defpackage.md;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.DelayKt;
import kotlinx.coroutines.channels.BufferedChannel;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.wishlist.WishlistViewModelImpl$deleteProduct$1", f = "WishlistViewModelImpl.kt", l = {238, 250, 254}, m = "invokeSuspend", v = 2)
final class WishlistViewModelImpl$deleteProduct$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public MonitorAction f65628b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Object f65629c;
    public WishlistViewModelImpl d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f65630e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ WishlistViewModelImpl f65631f;
    public final /* synthetic */ String g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WishlistViewModelImpl$deleteProduct$1(WishlistViewModelImpl wishlistViewModelImpl, String str, Continuation continuation) {
        super(2, continuation);
        this.f65631f = wishlistViewModelImpl;
        this.g = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new WishlistViewModelImpl$deleteProduct$1(this.f65631f, this.g, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((WishlistViewModelImpl$deleteProduct$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code duplicated, block: B:20:0x0071  */
    /* JADX WARN: Code duplicated, block: B:28:0x009d  */
    /* JADX WARN: Code duplicated, block: B:32:0x00c3  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        MonitorAction monitorActionA;
        Object objA;
        WishlistUiModel wishlistUiModel;
        LVEventSender lVEventSender;
        MonitorAction monitorAction;
        WishlistViewModelImpl wishlistViewModelImpl;
        SnapshotStateList snapshotStateList;
        Throwable thA;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f65630e;
        int i3 = 0;
        String str = this.g;
        WishlistViewModelImpl wishlistViewModelImpl2 = this.f65631f;
        if (i2 == 0) {
            ResultKt.b(obj);
            long j2 = wishlistViewModelImpl2.q;
            this.f65630e = 1;
            if (DelayKt.b(j2, this) != coroutineSingletons) {
            }
            return coroutineSingletons;
        }
        if (i2 == 1) {
            ResultKt.b(obj);
        } else {
            if (i2 == 2) {
                MonitorAction monitorAction2 = this.f65628b;
                ResultKt.b(obj);
                objA = ((Result) obj).f71708b;
                monitorActionA = monitorAction2;
                Result.Companion companion = Result.INSTANCE;
                if (!(objA instanceof Result.Failure)) {
                    wishlistUiModel = (WishlistUiModel) wishlistViewModelImpl2.v.getValue();
                    if (wishlistUiModel != null && (snapshotStateList = wishlistUiModel.f65755a) != null) {
                        CollectionsKt.a0(snapshotStateList, new k71(str, i3));
                    }
                    lVEventSender = wishlistViewModelImpl2.d;
                    this.f65628b = monitorActionA;
                    this.f65629c = objA;
                    this.d = wishlistViewModelImpl2;
                    this.f65630e = 3;
                    if (lVEventSender.a(AppEvent.WishListUpdatedEvent.f43509a, this) != coroutineSingletons) {
                        monitorAction = monitorActionA;
                        wishlistViewModelImpl = wishlistViewModelImpl2;
                    }
                    return coroutineSingletons;
                }
                thA = Result.a(objA);
                if (thA != null) {
                    monitorActionA.d(new WishlistMonitoring.Error.RemoveFromWishlistError(thA));
                    wishlistViewModelImpl2.Ac(R.string.error_generic);
                    WishlistViewModelImpl.yc(wishlistViewModelImpl2, str, true);
                    wishlistViewModelImpl2.f65618b.c("WishlistViewModelImpl", "Unable to delete item from wishlist", thA);
                }
                monitorActionA.b();
                return Unit.f71739a;
            }
            if (i2 != 3) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            wishlistViewModelImpl = this.d;
            objA = this.f65629c;
            monitorAction = this.f65628b;
            ResultKt.b(obj);
        }
        BufferedChannel bufferedChannel = wishlistViewModelImpl.s;
        Result.Companion companion2 = Result.INSTANCE;
        bufferedChannel.b(new Result(Boolean.TRUE));
        BuildersKt.c(ViewModelKt.a(wishlistViewModelImpl), null, null, new WishlistViewModelImpl$showSuccessNotification$1(wishlistViewModelImpl, R.string.mylv_mywishlists_removefromwishlist_productremoved, null), 3);
        monitorActionA = monitorAction;
        thA = Result.a(objA);
        if (thA != null) {
            monitorActionA.d(new WishlistMonitoring.Error.RemoveFromWishlistError(thA));
            wishlistViewModelImpl2.Ac(R.string.error_generic);
            WishlistViewModelImpl.yc(wishlistViewModelImpl2, str, true);
            wishlistViewModelImpl2.f65618b.c("WishlistViewModelImpl", "Unable to delete item from wishlist", thA);
        }
        monitorActionA.b();
        return Unit.f71739a;
        monitorActionA = wishlistViewModelImpl2.f65619c.a(wishlistViewModelImpl2.p, WishlistMonitoring.Action.RemoveFromWishlist.f49001a);
        monitorActionA.c(str, "sku");
        WishlistViewModelImpl.yc(wishlistViewModelImpl2, str, false);
        DeleteProductFromWishlistUseCase deleteProductFromWishlistUseCase = wishlistViewModelImpl2.g;
        SkuIdUiModel.f61763c.getClass();
        SkuId.Companion companion3 = SkuId.INSTANCE;
        this.f65628b = monitorActionA;
        this.f65630e = 2;
        objA = deleteProductFromWishlistUseCase.a(str, this);
        if (objA != coroutineSingletons) {
            Result.Companion companion4 = Result.INSTANCE;
            if (!(objA instanceof Result.Failure)) {
                wishlistUiModel = (WishlistUiModel) wishlistViewModelImpl2.v.getValue();
                if (wishlistUiModel != null) {
                    CollectionsKt.a0(snapshotStateList, new k71(str, i3));
                }
                lVEventSender = wishlistViewModelImpl2.d;
                this.f65628b = monitorActionA;
                this.f65629c = objA;
                this.d = wishlistViewModelImpl2;
                this.f65630e = 3;
                if (lVEventSender.a(AppEvent.WishListUpdatedEvent.f43509a, this) != coroutineSingletons) {
                    monitorAction = monitorActionA;
                    wishlistViewModelImpl = wishlistViewModelImpl2;
                    BufferedChannel bufferedChannel2 = wishlistViewModelImpl.s;
                    Result.Companion companion5 = Result.INSTANCE;
                    bufferedChannel2.b(new Result(Boolean.TRUE));
                    BuildersKt.c(ViewModelKt.a(wishlistViewModelImpl), null, null, new WishlistViewModelImpl$showSuccessNotification$1(wishlistViewModelImpl, R.string.mylv_mywishlists_removefromwishlist_productremoved, null), 3);
                    monitorActionA = monitorAction;
                }
            }
            thA = Result.a(objA);
            if (thA != null) {
                monitorActionA.d(new WishlistMonitoring.Error.RemoveFromWishlistError(thA));
                wishlistViewModelImpl2.Ac(R.string.error_generic);
                WishlistViewModelImpl.yc(wishlistViewModelImpl2, str, true);
                wishlistViewModelImpl2.f65618b.c("WishlistViewModelImpl", "Unable to delete item from wishlist", thA);
            }
            monitorActionA.b();
            return Unit.f71739a;
        }
        return coroutineSingletons;
    }
}
