package com.sightcall.universal.scenario.steps;

import com.sightcall.analyticsagentsession.AnalyticsAgentSessionRepository;
import dagger.MembersInjector;
import dagger.internal.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class AgentUsecaseStep_MembersInjector implements MembersInjector<AgentUsecaseStep> {
    private final Provider<AnalyticsAgentSessionRepository> analyticsAgentSessionRepositoryProvider;

    private AgentUsecaseStep_MembersInjector(Provider<AnalyticsAgentSessionRepository> provider) {
        this.analyticsAgentSessionRepositoryProvider = provider;
    }

    public static MembersInjector<AgentUsecaseStep> create(Provider<AnalyticsAgentSessionRepository> provider) {
        return new AgentUsecaseStep_MembersInjector(provider);
    }

    public static void injectAnalyticsAgentSessionRepository(AgentUsecaseStep agentUsecaseStep, AnalyticsAgentSessionRepository analyticsAgentSessionRepository) {
        agentUsecaseStep.analyticsAgentSessionRepository = analyticsAgentSessionRepository;
    }

    public void injectMembers(AgentUsecaseStep agentUsecaseStep) {
        injectAnalyticsAgentSessionRepository(agentUsecaseStep, (AnalyticsAgentSessionRepository) this.analyticsAgentSessionRepositoryProvider.get());
    }
}
