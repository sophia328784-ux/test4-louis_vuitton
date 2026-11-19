package com.dynatrace.agent.storage.memory;

import com.dynatrace.agent.communication.api.AgentState;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0000\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/dynatrace/agent/storage/memory/DynamicConfigDataSourceImpl;", "Lcom/dynatrace/agent/storage/memory/DynamicConfigDataSource;", "<init>", "()V", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class DynamicConfigDataSourceImpl implements DynamicConfigDataSource {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public AgentState f26930a = new AgentState.Enabled(false);

    @Override // com.dynatrace.agent.storage.memory.DynamicConfigDataSource
    /* JADX INFO: renamed from: a, reason: from getter */
    public final AgentState getF26930a() {
        return this.f26930a;
    }

    @Override // com.dynatrace.agent.storage.memory.DynamicConfigDataSource
    public final void b(AgentState agentState) {
        agentState.getClass();
        this.f26930a = agentState;
    }
}
