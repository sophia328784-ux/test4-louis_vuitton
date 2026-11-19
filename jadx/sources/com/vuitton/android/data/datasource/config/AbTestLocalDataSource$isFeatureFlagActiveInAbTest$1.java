package com.vuitton.android.data.datasource.config;

import com.vuitton.foundation.model.domain.model.config.AbTest;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.datasource.config.AbTestLocalDataSource", f = "AbTestLocalDataSource.kt", l = {64}, m = "isFeatureFlagActiveInAbTest-lvtEZQ0", v = 2)
final class AbTestLocalDataSource$isFeatureFlagActiveInAbTest$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f43966b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public AbTest f43967c;
    public /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ AbTestLocalDataSource f43968e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f43969f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AbTestLocalDataSource$isFeatureFlagActiveInAbTest$1(AbTestLocalDataSource abTestLocalDataSource, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f43968e = abTestLocalDataSource;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        this.d = obj;
        this.f43969f |= Integer.MIN_VALUE;
        Object objC = this.f43968e.c(null, null, null, this);
        return objC == CoroutineSingletons.COROUTINE_SUSPENDED ? objC : new Result(objC);
    }
}
