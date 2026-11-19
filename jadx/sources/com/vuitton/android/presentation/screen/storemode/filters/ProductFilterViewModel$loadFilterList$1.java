package com.vuitton.android.presentation.screen.storemode.filters;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.storemode.filters.ProductFilterViewModel$loadFilterList$1", f = "ProductFilterViewModel.kt", l = {92, 100}, m = "invokeSuspend", v = 2)
final class ProductFilterViewModel$loadFilterList$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f64983b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ProductFilterViewModel f64984c;
    public final /* synthetic */ boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ String f64985e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ String f64986f;
    public final /* synthetic */ String g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ String f64987h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ProductFilterViewModel$loadFilterList$1(ProductFilterViewModel productFilterViewModel, boolean z, String str, String str2, String str3, String str4, Continuation continuation) {
        super(2, continuation);
        this.f64984c = productFilterViewModel;
        this.d = z;
        this.f64985e = str;
        this.f64986f = str2;
        this.g = str3;
        this.f64987h = str4;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new ProductFilterViewModel$loadFilterList$1(this.f64984c, this.d, this.f64985e, this.f64986f, this.g, this.f64987h, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((ProductFilterViewModel$loadFilterList$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x007b, code lost:
    
        if (r0 == r9) goto L38;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x0093, code lost:
    
        if (r0 == r9) goto L38;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x0095, code lost:
    
        return r9;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r14) {
        /*
            Method dump skipped, instruction units count: 360
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.presentation.screen.storemode.filters.ProductFilterViewModel$loadFilterList$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
