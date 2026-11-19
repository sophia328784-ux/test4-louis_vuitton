package com.vuitton.android.domain.usecase.search;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.domain.usecase.search.GetTrendingListUseCase", f = "GetTrendingListUseCase.kt", l = {8}, m = "run-IoAF18A", v = 2)
final class GetTrendingListUseCase$run$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f50373b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ GetTrendingListUseCase f50374c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GetTrendingListUseCase$run$1(GetTrendingListUseCase getTrendingListUseCase, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f50374c = getTrendingListUseCase;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f50373b = obj;
        this.d |= Integer.MIN_VALUE;
        Object objA = this.f50374c.a(this);
        return objA == CoroutineSingletons.COROUTINE_SUSPENDED ? objA : new Result(objA);
    }
}
