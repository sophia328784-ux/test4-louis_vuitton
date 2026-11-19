package com.vuitton.android.presentation.screen.search;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.search.SearchViewModelImpl", f = "SearchViewModelImpl.kt", l = {280, 305}, m = "getProductListBySkuAndUpdateHistory", v = 2)
final class SearchViewModelImpl$getProductListBySkuAndUpdateHistory$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Object f64140b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ Object f64141c;
    public final /* synthetic */ SearchViewModelImpl d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f64142e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SearchViewModelImpl$getProductListBySkuAndUpdateHistory$1(SearchViewModelImpl searchViewModelImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.d = searchViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f64141c = obj;
        this.f64142e |= Integer.MIN_VALUE;
        return SearchViewModelImpl.Ac(this.d, null, this);
    }
}
