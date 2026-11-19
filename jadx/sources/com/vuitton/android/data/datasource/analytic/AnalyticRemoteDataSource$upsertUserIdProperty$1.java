package com.vuitton.android.data.datasource.analytic;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.datasource.analytic.AnalyticRemoteDataSource", f = "AnalyticRemoteDataSource.kt", l = {30}, m = "upsertUserIdProperty-gIAlu-s", v = 2)
final class AnalyticRemoteDataSource$upsertUserIdProperty$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f43759b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AnalyticRemoteDataSource f43760c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AnalyticRemoteDataSource$upsertUserIdProperty$1(AnalyticRemoteDataSource analyticRemoteDataSource, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f43760c = analyticRemoteDataSource;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f43759b = obj;
        this.d |= Integer.MIN_VALUE;
        Object objA = this.f43760c.a(null, this);
        return objA == CoroutineSingletons.COROUTINE_SUSPENDED ? objA : new Result(objA);
    }
}
