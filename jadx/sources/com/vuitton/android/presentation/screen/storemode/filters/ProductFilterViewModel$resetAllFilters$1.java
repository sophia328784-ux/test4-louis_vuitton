package com.vuitton.android.presentation.screen.storemode.filters;

import com.vuitton.android.presentation.screen.plp.models.productshortlist.ProductListOptionUiModel;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.storemode.filters.ProductFilterViewModel$resetAllFilters$1", f = "ProductFilterViewModel.kt", l = {207, 215}, m = "invokeSuspend", v = 2)
final class ProductFilterViewModel$resetAllFilters$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public ProductListOptionUiModel f64988b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f64989c;
    public final /* synthetic */ ProductFilterViewModel d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ boolean f64990e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ProductFilterViewModel$resetAllFilters$1(ProductFilterViewModel productFilterViewModel, boolean z, Continuation continuation) {
        super(2, continuation);
        this.d = productFilterViewModel;
        this.f64990e = z;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new ProductFilterViewModel$resetAllFilters$1(this.d, this.f64990e, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((ProductFilterViewModel$resetAllFilters$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x0091, code lost:
    
        if (r1 == r7) goto L26;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r14) {
        /*
            Method dump skipped, instruction units count: 356
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.presentation.screen.storemode.filters.ProductFilterViewModel$resetAllFilters$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
