package com.dynatrace.agent.communication.preprocessing;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.internal.Ref$BooleanRef;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
@DebugMetadata(c = "com.dynatrace.agent.communication.preprocessing.DispatchableDataProvider", f = "DispatchableDataProvider.kt", l = {115, 116}, m = "preSelectData$com_dynatrace_agent_release")
final class DispatchableDataProvider$preSelectData$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Object f26671b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Ref$BooleanRef f26672c;
    public int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public /* synthetic */ Object f26673e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ DispatchableDataProvider f26674f;
    public int g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DispatchableDataProvider$preSelectData$1(DispatchableDataProvider dispatchableDataProvider, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f26674f = dispatchableDataProvider;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f26673e = obj;
        this.g |= Integer.MIN_VALUE;
        return this.f26674f.b(null, 0, this);
    }
}
