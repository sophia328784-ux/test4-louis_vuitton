package com.vuitton.android.data.repository;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.repository.AICompanionRepositoryImpl", f = "AICompanionRepositoryImpl.kt", l = {84}, m = "updateSessionIdForHistory-0E7RQCE", v = 2)
final class AICompanionRepositoryImpl$updateSessionIdForHistory$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f47120b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AICompanionRepositoryImpl f47121c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AICompanionRepositoryImpl$updateSessionIdForHistory$1(AICompanionRepositoryImpl aICompanionRepositoryImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f47121c = aICompanionRepositoryImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f47120b = obj;
        this.d |= Integer.MIN_VALUE;
        Object objB = this.f47121c.b(null, null, this);
        return objB == CoroutineSingletons.COROUTINE_SUSPENDED ? objB : new Result(objB);
    }
}
