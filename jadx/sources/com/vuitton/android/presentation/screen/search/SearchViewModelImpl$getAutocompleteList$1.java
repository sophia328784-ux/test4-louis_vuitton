package com.vuitton.android.presentation.screen.search;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.search.SearchViewModelImpl", f = "SearchViewModelImpl.kt", l = {181}, m = "getAutocompleteList", v = 2)
final class SearchViewModelImpl$getAutocompleteList$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f64134b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ Object f64135c;
    public final /* synthetic */ SearchViewModelImpl d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f64136e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SearchViewModelImpl$getAutocompleteList$1(SearchViewModelImpl searchViewModelImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.d = searchViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f64135c = obj;
        this.f64136e |= Integer.MIN_VALUE;
        return SearchViewModelImpl.yc(this.d, null, this);
    }
}
