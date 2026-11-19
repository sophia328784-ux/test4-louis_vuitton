package com.vuitton.android.presentation.screen.filter.quickaccess;

import com.vuitton.android.presentation.screen.plp.models.productshortlist.ProductListOptionUiModel;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function4;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\u0010\u0000\u001a\u00020\u00012\b\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\n"}, d2 = {"<anonymous>", "Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersOptionsState;", "categoryId", "", "localOptions", "Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductListOptionUiModel;", "isDataReady", ""}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.filter.quickaccess.QuickAccessFiltersViewModelImpl$filtersOptionsState$1", f = "QuickAccessFiltersViewModelImpl.kt", l = {}, m = "invokeSuspend", v = 2)
public final class QuickAccessFiltersViewModelImpl$filtersOptionsState$1 extends SuspendLambda implements Function4<String, ProductListOptionUiModel, Boolean, Continuation<? super QuickAccessFiltersOptionsState>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ String f58033b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ ProductListOptionUiModel f58034c;
    public /* synthetic */ boolean d;

    @Override // kotlin.jvm.functions.Function4
    public final Object g(Object obj, Object obj2, Object obj3, Object obj4) {
        boolean zBooleanValue = ((Boolean) obj3).booleanValue();
        QuickAccessFiltersViewModelImpl$filtersOptionsState$1 quickAccessFiltersViewModelImpl$filtersOptionsState$1 = new QuickAccessFiltersViewModelImpl$filtersOptionsState$1(4, (Continuation) obj4);
        quickAccessFiltersViewModelImpl$filtersOptionsState$1.f58033b = (String) obj;
        quickAccessFiltersViewModelImpl$filtersOptionsState$1.f58034c = (ProductListOptionUiModel) obj2;
        quickAccessFiltersViewModelImpl$filtersOptionsState$1.d = zBooleanValue;
        return quickAccessFiltersViewModelImpl$filtersOptionsState$1.invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        String str = this.f58033b;
        ProductListOptionUiModel productListOptionUiModel = this.f58034c;
        boolean z = this.d;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ResultKt.b(obj);
        if (!z) {
            productListOptionUiModel = null;
        }
        return new QuickAccessFiltersOptionsState(productListOptionUiModel, str, z);
    }
}
