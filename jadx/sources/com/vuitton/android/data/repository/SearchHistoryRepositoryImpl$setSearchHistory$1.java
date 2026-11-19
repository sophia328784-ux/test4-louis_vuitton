package com.vuitton.android.data.repository;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.bouncycastle.asn1.eac.EACTags;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.repository.SearchHistoryRepositoryImpl", f = "SearchHistoryRepositoryImpl.kt", l = {EACTags.DATE_OF_BIRTH}, m = "setSearchHistory-gIAlu-s", v = 2)
final class SearchHistoryRepositoryImpl$setSearchHistory$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f47987b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ SearchHistoryRepositoryImpl f47988c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SearchHistoryRepositoryImpl$setSearchHistory$1(SearchHistoryRepositoryImpl searchHistoryRepositoryImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f47988c = searchHistoryRepositoryImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        this.f47987b = obj;
        this.d |= Integer.MIN_VALUE;
        Object objA = this.f47988c.a(null, this);
        return objA == CoroutineSingletons.COROUTINE_SUSPENDED ? objA : new Result(objA);
    }
}
