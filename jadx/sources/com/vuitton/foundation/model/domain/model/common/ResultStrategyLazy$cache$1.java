package com.vuitton.foundation.model.domain.model.common;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.foundation.model.domain.model.common.ResultStrategyLazy", f = "ResultStrategy.kt", l = {86}, m = "cache-CmtIpJM", v = 2)
final class ResultStrategyLazy$cache$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f67136b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ResultStrategyLazy f67137c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ResultStrategyLazy$cache$1(ResultStrategyLazy resultStrategyLazy, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f67137c = resultStrategyLazy;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f67136b = obj;
        this.d |= Integer.MIN_VALUE;
        return this.f67137c.g(this);
    }
}
