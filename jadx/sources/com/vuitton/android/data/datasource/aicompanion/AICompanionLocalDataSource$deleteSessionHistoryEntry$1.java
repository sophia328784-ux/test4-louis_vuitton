package com.vuitton.android.data.datasource.aicompanion;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.datasource.aicompanion.AICompanionLocalDataSource", f = "AICompanionLocalDataSource.kt", l = {193}, m = "deleteSessionHistoryEntry-gIAlu-s", v = 2)
final class AICompanionLocalDataSource$deleteSessionHistoryEntry$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f43695b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AICompanionLocalDataSource f43696c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AICompanionLocalDataSource$deleteSessionHistoryEntry$1(AICompanionLocalDataSource aICompanionLocalDataSource, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f43696c = aICompanionLocalDataSource;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f43695b = obj;
        this.d |= Integer.MIN_VALUE;
        Object objA = this.f43696c.a(null, this);
        return objA == CoroutineSingletons.COROUTINE_SUSPENDED ? objA : new Result(objA);
    }
}
