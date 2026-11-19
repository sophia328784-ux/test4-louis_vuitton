package com.vuitton.android.presentation.screen.storemode.filters;

import androidx.compose.runtime.MutableState;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.ProductFiltersCategoryUiModel;
import com.vuitton.android.presentation.screen.storemode.filters.model.ProductFilterViewState;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.storemode.filters.ProductFilterBottomSheetContentKt$ProductFilterBottomSheetContent$1$1", f = "ProductFilterBottomSheetContent.kt", l = {}, m = "invokeSuspend", v = 2)
final class ProductFilterBottomSheetContentKt$ProductFilterBottomSheetContent$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ProductFilterViewState f64971b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ List f64972c;
    public final /* synthetic */ List d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ MutableState f64973e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ProductFilterBottomSheetContentKt$ProductFilterBottomSheetContent$1$1(ProductFilterViewState productFilterViewState, List list, List list2, MutableState mutableState, Continuation continuation) {
        super(2, continuation);
        this.f64971b = productFilterViewState;
        this.f64972c = list;
        this.d = list2;
        this.f64973e = mutableState;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new ProductFilterBottomSheetContentKt$ProductFilterBottomSheetContent$1$1(this.f64971b, this.f64972c, this.d, this.f64973e, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((ProductFilterBottomSheetContentKt$ProductFilterBottomSheetContent$1$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        String str;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ResultKt.b(obj);
        if (!this.f64971b.f65022a) {
            MutableState mutableState = this.f64973e;
            if (((String) mutableState.getF10755b()) == null) {
                if (this.f64972c.isEmpty()) {
                    ProductFiltersCategoryUiModel productFiltersCategoryUiModel = (ProductFiltersCategoryUiModel) CollectionsKt.firstOrNull(this.d);
                    str = productFiltersCategoryUiModel != null ? productFiltersCategoryUiModel.f62970a : null;
                } else {
                    str = "sort-by";
                }
                mutableState.setValue(str);
            }
        }
        return Unit.f71739a;
    }
}
