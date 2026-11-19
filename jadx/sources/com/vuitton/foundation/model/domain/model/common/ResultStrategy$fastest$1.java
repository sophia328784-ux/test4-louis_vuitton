package com.vuitton.foundation.model.domain.model.common;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.foundation.model.domain.model.common.ResultStrategy", f = "ResultStrategy.kt", l = {63, 63}, m = "fastest-IoAF18A$suspendImpl", v = 2)
final class ResultStrategy$fastest$1<T> extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public ResultStrategy f67124b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ Object f67125c;
    public final /* synthetic */ ResultStrategy d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f67126e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ResultStrategy$fastest$1(ResultStrategy resultStrategy, Continuation continuation) {
        super(continuation);
        this.d = resultStrategy;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f67125c = obj;
        this.f67126e |= Integer.MIN_VALUE;
        Object objI = ResultStrategy.i(this.d, this);
        return objI == CoroutineSingletons.COROUTINE_SUSPENDED ? objI : new Result(objI);
    }
}
