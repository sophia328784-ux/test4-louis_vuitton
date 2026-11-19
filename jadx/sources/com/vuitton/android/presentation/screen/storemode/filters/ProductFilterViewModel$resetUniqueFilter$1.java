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
@DebugMetadata(c = "com.vuitton.android.presentation.screen.storemode.filters.ProductFilterViewModel$resetUniqueFilter$1", f = "ProductFilterViewModel.kt", l = {250, 258}, m = "invokeSuspend", v = 2)
final class ProductFilterViewModel$resetUniqueFilter$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public ProductListOptionUiModel f64991b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f64992c;
    public final /* synthetic */ ProductFilterViewModel d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ boolean f64993e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ String f64994f;
    public final /* synthetic */ boolean g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ProductFilterViewModel$resetUniqueFilter$1(ProductFilterViewModel productFilterViewModel, boolean z, String str, boolean z2, Continuation continuation) {
        super(2, continuation);
        this.d = productFilterViewModel;
        this.f64993e = z;
        this.f64994f = str;
        this.g = z2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new ProductFilterViewModel$resetUniqueFilter$1(this.d, this.f64993e, this.f64994f, this.g, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((ProductFilterViewModel$resetUniqueFilter$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:41:0x00c2, code lost:
    
        if (r1 == r7) goto L42;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r15) {
        /*
            Method dump skipped, instruction units count: 420
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.presentation.screen.storemode.filters.ProductFilterViewModel$resetUniqueFilter$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
