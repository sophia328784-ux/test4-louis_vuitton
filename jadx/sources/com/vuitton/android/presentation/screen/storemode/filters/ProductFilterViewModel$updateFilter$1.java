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
@DebugMetadata(c = "com.vuitton.android.presentation.screen.storemode.filters.ProductFilterViewModel$updateFilter$1", f = "ProductFilterViewModel.kt", l = {138, 146}, m = "invokeSuspend", v = 2)
final class ProductFilterViewModel$updateFilter$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public ProductListOptionUiModel f64999b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f65000c;
    public final /* synthetic */ ProductFilterViewModel d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ String f65001e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ String f65002f;
    public final /* synthetic */ boolean g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ boolean f65003h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ProductFilterViewModel$updateFilter$1(ProductFilterViewModel productFilterViewModel, String str, String str2, boolean z, boolean z2, Continuation continuation) {
        super(2, continuation);
        this.d = productFilterViewModel;
        this.f65001e = str;
        this.f65002f = str2;
        this.g = z;
        this.f65003h = z2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new ProductFilterViewModel$updateFilter$1(this.d, this.f65001e, this.f65002f, this.g, this.f65003h, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((ProductFilterViewModel$updateFilter$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:115:0x0241, code lost:
    
        if (r1 == r7) goto L116;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r24) {
        /*
            Method dump skipped, instruction units count: 833
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.presentation.screen.storemode.filters.ProductFilterViewModel$updateFilter$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
