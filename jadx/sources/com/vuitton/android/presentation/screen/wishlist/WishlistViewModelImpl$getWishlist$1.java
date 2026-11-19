package com.vuitton.android.presentation.screen.wishlist;

import androidx.compose.runtime.snapshots.SnapshotStateList;
import com.vuitton.android.domain.monitoring.MonitorAction;
import com.vuitton.android.domain.monitoring.wishlist.WishlistMonitoring;
import com.vuitton.android.domain.usecase.wishlist.GetWishlistUseCase;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import com.vuitton.android.presentation.screen.wishlist.model.WishlistIdUiModel;
import com.vuitton.android.presentation.screen.wishlist.model.WishlistItemUiModel;
import com.vuitton.android.presentation.screen.wishlist.model.WishlistUiModel;
import com.vuitton.foundation.model.domain.model.common.ResultStrategy;
import com.vuitton.foundation.model.domain.model.wishlist.Wishlist;
import com.vuitton.foundation.model.domain.model.wishlist.WishlistItem;
import defpackage.md;
import java.util.ArrayList;
import java.util.List;
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
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.MutableStateFlow;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.wishlist.WishlistViewModelImpl$getWishlist$1", f = "WishlistViewModelImpl.kt", l = {187, 188}, m = "invokeSuspend", v = 2)
final class WishlistViewModelImpl$getWishlist$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f65636b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ WishlistViewModelImpl f65637c;
    public final /* synthetic */ MonitorAction d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WishlistViewModelImpl$getWishlist$1(WishlistViewModelImpl wishlistViewModelImpl, MonitorAction monitorAction, Continuation continuation) {
        super(2, continuation);
        this.f65637c = wishlistViewModelImpl;
        this.d = monitorAction;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new WishlistViewModelImpl$getWishlist$1(this.f65637c, this.d, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((WishlistViewModelImpl$getWishlist$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code duplicated, block: B:19:0x005b  */
    /* JADX WARN: Code duplicated, block: B:21:0x0060  */
    /* JADX WARN: Code duplicated, block: B:24:0x0079 A[LOOP:0: B:22:0x0073->B:24:0x0079, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:28:0x00bd  */
    /* JADX WARN: Code duplicated, block: B:33:0x00ce  */
    /* JADX WARN: Code duplicated, block: B:37:0x00e1 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:38:0x00e3  */
    /* JADX WARN: Code duplicated, block: B:41:0x0100  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object objF;
        Object obj2;
        boolean z;
        MonitorAction monitorAction;
        Throwable thA;
        Wishlist wishlist;
        WishlistUiModel wishlistUiModel;
        int size;
        SnapshotStateList snapshotStateList;
        ArrayList arrayList;
        WishlistViewModelImpl wishlistViewModelImpl = this.f65637c;
        MutableStateFlow mutableStateFlow = wishlistViewModelImpl.v;
        MutableStateFlow mutableStateFlow2 = wishlistViewModelImpl.u;
        MutableStateFlow mutableStateFlow3 = wishlistViewModelImpl.t;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f65636b;
        WishlistUiModel wishlistUiModel2 = null;
        if (i2 == 0) {
            ResultKt.b(obj);
            mutableStateFlow2.setValue(Boolean.FALSE);
            mutableStateFlow3.setValue(Boolean.TRUE);
            GetWishlistUseCase getWishlistUseCase = wishlistViewModelImpl.f65621f;
            this.f65636b = 1;
            objF = getWishlistUseCase.f50440a.f();
            if (objF != coroutineSingletons) {
            }
            return coroutineSingletons;
        }
        if (i2 == 1) {
            ResultKt.b(obj);
            objF = obj;
        } else {
            if (i2 != 2) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
            obj2 = ((Result) obj).f71708b;
        }
        Result.Companion companion = Result.INSTANCE;
        z = obj2 instanceof Result.Failure;
        monitorAction = this.d;
        if (!z) {
            wishlist = (Wishlist) obj2;
            if (wishlist != null) {
                List<WishlistItem> list = wishlist.f68282a;
                arrayList = new ArrayList(CollectionsKt.t(list, 10));
                for (WishlistItem wishlistItem : list) {
                    wishlistItem.getClass();
                    String str = wishlistItem.f68284a;
                    WishlistIdUiModel.Companion companion2 = WishlistIdUiModel.f65737c;
                    SkuIdUiModel.Companion companion3 = SkuIdUiModel.f61763c;
                    String str2 = wishlistItem.f68285b;
                    companion3.getClass();
                    arrayList.add(new WishlistItemUiModel(str, str2, wishlistItem.f68286c, wishlistItem.d, wishlistItem.f68287e, false, 32, null));
                }
                SnapshotStateList snapshotStateList2 = new SnapshotStateList();
                snapshotStateList2.addAll(arrayList);
                wishlistUiModel2 = new WishlistUiModel(snapshotStateList2, wishlist.f68283b);
            }
            mutableStateFlow.setValue(wishlistUiModel2);
            mutableStateFlow3.setValue(Boolean.FALSE);
            if (monitorAction != null) {
                wishlistUiModel = (WishlistUiModel) mutableStateFlow.getValue();
                if (wishlistUiModel != null || (snapshotStateList = wishlistUiModel.f65755a) == null) {
                    size = 0;
                } else {
                    size = snapshotStateList.size();
                }
                monitorAction.c(new Integer(size), "wishlistSize");
                Result.Companion companion4 = Result.INSTANCE;
            }
        }
        thA = Result.a(obj2);
        if (thA != null) {
            if (monitorAction != null) {
                monitorAction.d(new WishlistMonitoring.Error.OpenWishlistError(thA));
            }
            mutableStateFlow3.setValue(Boolean.FALSE);
            mutableStateFlow2.setValue(Boolean.TRUE);
            wishlistViewModelImpl.f65618b.c("WishlistViewModelImpl", "Unable to get wishlist", thA);
        }
        if (monitorAction != null) {
            monitorAction.b();
        }
        return Unit.f71739a;
        this.f65636b = 2;
        Object objA = ((ResultStrategy) objF).a(this);
        if (objA != coroutineSingletons) {
            obj2 = objA;
            Result.Companion companion5 = Result.INSTANCE;
            z = obj2 instanceof Result.Failure;
            monitorAction = this.d;
            if (!z) {
                wishlist = (Wishlist) obj2;
                if (wishlist != null) {
                    List<WishlistItem> list2 = wishlist.f68282a;
                    arrayList = new ArrayList(CollectionsKt.t(list2, 10));
                    while (r7.hasNext()) {
                        wishlistItem.getClass();
                        String str3 = wishlistItem.f68284a;
                        WishlistIdUiModel.Companion companion6 = WishlistIdUiModel.f65737c;
                        SkuIdUiModel.Companion companion7 = SkuIdUiModel.f61763c;
                        String str4 = wishlistItem.f68285b;
                        companion7.getClass();
                        arrayList.add(new WishlistItemUiModel(str3, str4, wishlistItem.f68286c, wishlistItem.d, wishlistItem.f68287e, false, 32, null));
                    }
                    SnapshotStateList snapshotStateList3 = new SnapshotStateList();
                    snapshotStateList3.addAll(arrayList);
                    wishlistUiModel2 = new WishlistUiModel(snapshotStateList3, wishlist.f68283b);
                }
                mutableStateFlow.setValue(wishlistUiModel2);
                mutableStateFlow3.setValue(Boolean.FALSE);
                if (monitorAction != null) {
                    wishlistUiModel = (WishlistUiModel) mutableStateFlow.getValue();
                    if (wishlistUiModel != null) {
                        size = 0;
                    } else {
                        size = 0;
                    }
                    monitorAction.c(new Integer(size), "wishlistSize");
                    Result.Companion companion8 = Result.INSTANCE;
                }
            }
            thA = Result.a(obj2);
            if (thA != null) {
                if (monitorAction != null) {
                    monitorAction.d(new WishlistMonitoring.Error.OpenWishlistError(thA));
                }
                mutableStateFlow3.setValue(Boolean.FALSE);
                mutableStateFlow2.setValue(Boolean.TRUE);
                wishlistViewModelImpl.f65618b.c("WishlistViewModelImpl", "Unable to get wishlist", thA);
            }
            if (monitorAction != null) {
                monitorAction.b();
            }
            return Unit.f71739a;
        }
        return coroutineSingletons;
    }
}
