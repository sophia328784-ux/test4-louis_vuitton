package com.sightcall.analyticsagentsession.datasource.agentsession;

import dagger.internal.Factory;
import dagger.internal.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class AgentSessionDataSourceV3Impl_Factory implements Factory<AgentSessionDataSourceV3Impl> {
    private final Provider<AgentSessionsApi> agentSessionsApiProvider;

    private AgentSessionDataSourceV3Impl_Factory(Provider<AgentSessionsApi> provider) {
        this.agentSessionsApiProvider = provider;
    }

    public static AgentSessionDataSourceV3Impl_Factory create(Provider<AgentSessionsApi> provider) {
        return new AgentSessionDataSourceV3Impl_Factory(provider);
    }

    public static AgentSessionDataSourceV3Impl newInstance(AgentSessionsApi agentSessionsApi) {
        return new AgentSessionDataSourceV3Impl(agentSessionsApi);
    }

    @Override // javax.inject.Provider
    public AgentSessionDataSourceV3Impl get() {
        return newInstance((AgentSessionsApi) this.agentSessionsApiProvider.get());
    }
}
