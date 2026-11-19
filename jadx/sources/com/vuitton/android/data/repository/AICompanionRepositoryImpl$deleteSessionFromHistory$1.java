package com.vuitton.android.data.repository;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.repository.AICompanionRepositoryImpl", f = "AICompanionRepositoryImpl.kt", l = {93}, m = "deleteSessionFromHistory-gIAlu-s", v = 2)
final class AICompanionRepositoryImpl$deleteSessionFromHistory$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f47105b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AICompanionRepositoryImpl f47106c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AICompanionRepositoryImpl$deleteSessionFromHistory$1(AICompanionRepositoryImpl aICompanionRepositoryImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f47106c = aICompanionRepositoryImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f47105b = obj;
        this.d |= Integer.MIN_VALUE;
        Object objF = this.f47106c.f(null, this);
        return objF == CoroutineSingletons.COROUTINE_SUSPENDED ? objF : new Result(objF);
    }
}
