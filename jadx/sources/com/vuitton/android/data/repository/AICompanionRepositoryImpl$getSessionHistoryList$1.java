package com.vuitton.android.data.repository;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.repository.AICompanionRepositoryImpl", f = "AICompanionRepositoryImpl.kt", l = {86, 87, 88}, m = "getSessionHistoryList-IoAF18A", v = 2)
final class AICompanionRepositoryImpl$getSessionHistoryList$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f47109b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AICompanionRepositoryImpl f47110c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AICompanionRepositoryImpl$getSessionHistoryList$1(AICompanionRepositoryImpl aICompanionRepositoryImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f47110c = aICompanionRepositoryImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f47109b = obj;
        this.d |= Integer.MIN_VALUE;
        Object objE = this.f47110c.e(this);
        return objE == CoroutineSingletons.COROUTINE_SUSPENDED ? objE : new Result(objE);
    }
}
