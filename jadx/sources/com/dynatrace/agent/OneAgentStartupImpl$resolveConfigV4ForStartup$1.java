package com.dynatrace.agent;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
@DebugMetadata(c = "com.dynatrace.agent.OneAgentStartupImpl", f = "OneAgentStartupImpl.kt", l = {145, 156}, m = "resolveConfigV4ForStartup")
final class OneAgentStartupImpl$resolveConfigV4ForStartup$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public OneAgentStartupImpl f26492b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ Object f26493c;
    public final /* synthetic */ OneAgentStartupImpl d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f26494e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OneAgentStartupImpl$resolveConfigV4ForStartup$1(OneAgentStartupImpl oneAgentStartupImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.d = oneAgentStartupImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f26493c = obj;
        this.f26494e |= Integer.MIN_VALUE;
        return OneAgentStartupImpl.d(this.d, this);
    }
}
