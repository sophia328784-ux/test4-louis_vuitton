package com.dynatrace.agent.communication;

import com.dynatrace.agent.communication.api.ServerDataUpdate;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
@DebugMetadata(c = "com.dynatrace.agent.communication.ServerDataMaintainer", f = "ServerDataMaintainer.kt", l = {87, 91}, m = "updateServerData$com_dynatrace_agent_release")
final class ServerDataMaintainer$updateServerData$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public ServerDataMaintainer f26615b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public ServerDataUpdate f26616c;
    public /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ ServerDataMaintainer f26617e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f26618f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ServerDataMaintainer$updateServerData$1(ServerDataMaintainer serverDataMaintainer, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f26617e = serverDataMaintainer;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.d = obj;
        this.f26618f |= Integer.MIN_VALUE;
        return this.f26617e.b(null, this);
    }
}
