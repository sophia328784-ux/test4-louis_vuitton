package com.vuitton.foundation.model.domain.model.common;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.foundation.model.domain.model.common.ResultStrategyLazy", f = "ResultStrategy.kt", l = {87}, m = "remote-IoAF18A", v = 2)
final class ResultStrategyLazy$remote$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f67138b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ResultStrategyLazy f67139c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ResultStrategyLazy$remote$1(ResultStrategyLazy resultStrategyLazy, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f67139c = resultStrategyLazy;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f67138b = obj;
        this.d |= Integer.MIN_VALUE;
        Object objB = this.f67139c.b(this);
        return objB == CoroutineSingletons.COROUTINE_SUSPENDED ? objB : new Result(objB);
    }
}
