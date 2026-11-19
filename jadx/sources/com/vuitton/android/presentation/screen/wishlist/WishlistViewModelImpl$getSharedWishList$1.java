package com.vuitton.android.presentation.screen.wishlist;

import androidx.compose.runtime.snapshots.SnapshotStateList;
import com.vuitton.android.R;
import com.vuitton.android.domain.monitoring.MonitorAction;
import com.vuitton.android.domain.monitoring.wishlist.WishlistMonitoring;
import com.vuitton.android.domain.usecase.products.GetSkusProductsListUseCase;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import com.vuitton.android.presentation.screen.wishlist.model.WishlistIdUiModel;
import com.vuitton.android.presentation.screen.wishlist.model.WishlistItemUiModel;
import com.vuitton.android.presentation.screen.wishlist.model.WishlistUiModel;
import com.vuitton.foundation.model.domain.model.common.AssetImage;
import com.vuitton.foundation.model.domain.model.productshortlist.ProductShort;
import com.vuitton.foundation.model.domain.model.productshortlist.ProductShortPrice;
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
@DebugMetadata(c = "com.vuitton.android.presentation.screen.wishlist.WishlistViewModelImpl$getSharedWishList$1", f = "WishlistViewModelImpl.kt", l = {431}, m = "invokeSuspend", v = 2)
final class WishlistViewModelImpl$getSharedWishList$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f65632b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ Object f65633c;
    public final /* synthetic */ MonitorAction d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ WishlistViewModelImpl f65634e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ List f65635f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WishlistViewModelImpl$getSharedWishList$1(MonitorAction monitorAction, WishlistViewModelImpl wishlistViewModelImpl, List list, Continuation continuation) {
        super(2, continuation);
        this.d = monitorAction;
        this.f65634e = wishlistViewModelImpl;
        this.f65635f = list;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        WishlistViewModelImpl$getSharedWishList$1 wishlistViewModelImpl$getSharedWishList$1 = new WishlistViewModelImpl$getSharedWishList$1(this.d, this.f65634e, this.f65635f, continuation);
        wishlistViewModelImpl$getSharedWishList$1.f65633c = obj;
        return wishlistViewModelImpl$getSharedWishList$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((WishlistViewModelImpl$getSharedWishList$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object failure;
        SnapshotStateList snapshotStateList;
        Object objK;
        WishlistViewModelImpl wishlistViewModelImpl = this.f65634e;
        MutableStateFlow mutableStateFlow = wishlistViewModelImpl.v;
        MutableStateFlow mutableStateFlow2 = wishlistViewModelImpl.t;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f65632b;
        MonitorAction monitorAction = this.d;
        try {
            if (i2 == 0) {
                ResultKt.b(obj);
                List list = this.f65635f;
                Result.Companion companion = Result.INSTANCE;
                monitorAction.c("true", "isSharedWishlist");
                mutableStateFlow2.setValue(Boolean.TRUE);
                GetSkusProductsListUseCase getSkusProductsListUseCase = wishlistViewModelImpl.l;
                this.f65633c = null;
                this.f65632b = 1;
                objK = getSkusProductsListUseCase.f50333a.k(list, this);
                if (objK == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i2 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(obj);
                objK = obj;
            }
            failure = (List) objK;
            Result.Companion companion2 = Result.INSTANCE;
        } catch (Throwable th) {
            Result.Companion companion3 = Result.INSTANCE;
            failure = new Result.Failure(th);
        }
        if (!(failure instanceof Result.Failure)) {
            List list2 = (List) failure;
            list2.getClass();
            List<ProductShort> list3 = list2;
            ArrayList arrayList = new ArrayList(CollectionsKt.t(list3, 10));
            for (ProductShort productShort : list3) {
                productShort.getClass();
                String str = productShort.n;
                String str2 = productShort.f68128e;
                if (str != null) {
                    WishlistIdUiModel.Companion companion4 = WishlistIdUiModel.f65737c;
                } else {
                    WishlistIdUiModel.Companion companion5 = WishlistIdUiModel.f65737c;
                    str = str2;
                }
                SkuIdUiModel.f61763c.getClass();
                String str3 = productShort.f68126b;
                AssetImage assetImage = productShort.f68127c.f67106a;
                String str4 = assetImage != null ? assetImage.f67108a : null;
                String str5 = "";
                if (str4 == null) {
                    str4 = "";
                }
                ProductShortPrice productShortPrice = productShort.o;
                String str6 = productShortPrice != null ? productShortPrice.f68137b : null;
                if (str6 != null) {
                    str5 = str6;
                }
                arrayList.add(new WishlistItemUiModel(str, str2, str3, str4, str5, false, 32, null));
            }
            SnapshotStateList snapshotStateList2 = new SnapshotStateList();
            snapshotStateList2.addAll(arrayList);
            mutableStateFlow.setValue(new WishlistUiModel(snapshotStateList2, null));
            WishlistUiModel wishlistUiModel = (WishlistUiModel) mutableStateFlow.getValue();
            monitorAction.c(new Integer((wishlistUiModel == null || (snapshotStateList = wishlistUiModel.f65755a) == null) ? 0 : snapshotStateList.size()), "wishlistSize");
        }
        Throwable thA = Result.a(failure);
        if (thA != null) {
            monitorAction.d(new WishlistMonitoring.Error.OpenWishlistError(thA));
            wishlistViewModelImpl.Ac(R.string.error_generic);
        }
        mutableStateFlow2.setValue(Boolean.FALSE);
        monitorAction.b();
        return Unit.f71739a;
    }
}
