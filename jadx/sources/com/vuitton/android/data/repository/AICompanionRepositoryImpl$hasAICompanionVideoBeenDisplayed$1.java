package com.vuitton.android.data.repository;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.repository.AICompanionRepositoryImpl", f = "AICompanionRepositoryImpl.kt", l = {40}, m = "hasAICompanionVideoBeenDisplayed-IoAF18A", v = 2)
final class AICompanionRepositoryImpl$hasAICompanionVideoBeenDisplayed$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f47111b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AICompanionRepositoryImpl f47112c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AICompanionRepositoryImpl$hasAICompanionVideoBeenDisplayed$1(AICompanionRepositoryImpl aICompanionRepositoryImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f47112c = aICompanionRepositoryImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f47111b = obj;
        this.d |= Integer.MIN_VALUE;
        Object objH = this.f47112c.h(this);
        return objH == CoroutineSingletons.COROUTINE_SUSPENDED ? objH : new Result(objH);
    }
}
