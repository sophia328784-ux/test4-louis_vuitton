package com.sightcall.analyticsagentsession;

import com.sightcall.analyticsagentsession.datasource.AgentSessionDataSource;
import dagger.internal.Factory;
import dagger.internal.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class AnalyticsAgentSessionRepositoryImpl_Factory implements Factory<AnalyticsAgentSessionRepositoryImpl> {
    private final Provider<AgentSessionDataSource> agentSessionDataSourceProvider;

    private AnalyticsAgentSessionRepositoryImpl_Factory(Provider<AgentSessionDataSource> provider) {
        this.agentSessionDataSourceProvider = provider;
    }

    public static AnalyticsAgentSessionRepositoryImpl_Factory create(Provider<AgentSessionDataSource> provider) {
        return new AnalyticsAgentSessionRepositoryImpl_Factory(provider);
    }

    public static AnalyticsAgentSessionRepositoryImpl newInstance(AgentSessionDataSource agentSessionDataSource) {
        return new AnalyticsAgentSessionRepositoryImpl(agentSessionDataSource);
    }

    @Override // javax.inject.Provider
    public AnalyticsAgentSessionRepositoryImpl get() {
        return newInstance((AgentSessionDataSource) this.agentSessionDataSourceProvider.get());
    }
}
