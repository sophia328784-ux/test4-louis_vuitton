package com.vuitton.android.data.datasource.config;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.datasource.config.AbTestLocalDataSource", f = "AbTestLocalDataSource.kt", l = {92}, m = "getAbTestAssignment-G3ZMdxE", v = 2)
final class AbTestLocalDataSource$getAbTestAssignment$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f43962b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AbTestLocalDataSource f43963c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AbTestLocalDataSource$getAbTestAssignment$1(AbTestLocalDataSource abTestLocalDataSource, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f43963c = abTestLocalDataSource;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        this.f43962b = obj;
        this.d |= Integer.MIN_VALUE;
        Object objB = this.f43963c.b(null, null, this);
        return objB == CoroutineSingletons.COROUTINE_SUSPENDED ? objB : new Result(objB);
    }
}
