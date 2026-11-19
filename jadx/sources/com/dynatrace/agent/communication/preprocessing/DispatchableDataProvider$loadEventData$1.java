package com.dynatrace.agent.communication.preprocessing;

import java.util.List;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
@DebugMetadata(c = "com.dynatrace.agent.communication.preprocessing.DispatchableDataProvider", f = "DispatchableDataProvider.kt", l = {142}, m = "loadEventData$com_dynatrace_agent_release")
final class DispatchableDataProvider$loadEventData$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public List f26668b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ Object f26669c;
    public final /* synthetic */ DispatchableDataProvider d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f26670e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DispatchableDataProvider$loadEventData$1(DispatchableDataProvider dispatchableDataProvider, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.d = dispatchableDataProvider;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f26669c = obj;
        this.f26670e |= Integer.MIN_VALUE;
        return this.d.a(null, null, this);
    }
}
