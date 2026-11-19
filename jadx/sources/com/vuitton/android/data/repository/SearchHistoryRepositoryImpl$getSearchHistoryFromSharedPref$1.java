package com.vuitton.android.data.repository;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.repository.SearchHistoryRepositoryImpl", f = "SearchHistoryRepositoryImpl.kt", l = {56}, m = "getSearchHistoryFromSharedPref-IoAF18A", v = 2)
final class SearchHistoryRepositoryImpl$getSearchHistoryFromSharedPref$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f47984b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ SearchHistoryRepositoryImpl f47985c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SearchHistoryRepositoryImpl$getSearchHistoryFromSharedPref$1(SearchHistoryRepositoryImpl searchHistoryRepositoryImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f47985c = searchHistoryRepositoryImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f47984b = obj;
        this.d |= Integer.MIN_VALUE;
        Object objC = SearchHistoryRepositoryImpl.c(this.f47985c, this);
        return objC == CoroutineSingletons.COROUTINE_SUSPENDED ? objC : new Result(objC);
    }
}
