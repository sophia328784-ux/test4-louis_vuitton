package com.vuitton.android.data.datasource.config;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.datasource.config.AbTestLocalDataSource", f = "AbTestLocalDataSource.kt", l = {112}, m = "persistAbTestAssignmentIfAbsent-G3ZMdxE", v = 2)
final class AbTestLocalDataSource$persistAbTestAssignmentIfAbsent$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f43970b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AbTestLocalDataSource f43971c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AbTestLocalDataSource$persistAbTestAssignmentIfAbsent$1(AbTestLocalDataSource abTestLocalDataSource, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f43971c = abTestLocalDataSource;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        this.f43970b = obj;
        this.d |= Integer.MIN_VALUE;
        Object objD = this.f43971c.d(null, null, this);
        return objD == CoroutineSingletons.COROUTINE_SUSPENDED ? objD : new Result(objD);
    }
}
