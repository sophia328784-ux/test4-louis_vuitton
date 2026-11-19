package com.vuitton.android.data.datasource.analytic;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.datasource.analytic.AnalyticLocalDataSource", f = "AnalyticLocalDataSource.kt", l = {23}, m = "getUserIdProperty-0E7RQCE", v = 2)
final class AnalyticLocalDataSource$getUserIdProperty$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f43753b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AnalyticLocalDataSource f43754c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AnalyticLocalDataSource$getUserIdProperty$1(AnalyticLocalDataSource analyticLocalDataSource, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f43754c = analyticLocalDataSource;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f43753b = obj;
        this.d |= Integer.MIN_VALUE;
        Object objA = this.f43754c.a(null, null, this);
        return objA == CoroutineSingletons.COROUTINE_SUSPENDED ? objA : new Result(objA);
    }
}
