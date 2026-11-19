package com.sightcall.features.agent.multiparty;

import dagger.internal.Factory;
import dagger.internal.Preconditions;
import dagger.internal.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class AgentMultipartyComponent_Module_ProvideAgentMultipartyCoordinator$multiparty_releaseFactory implements Factory<AgentMultipartyCoordinatorImpl> {
    private final Provider<AgentMultipartyComponent> componentProvider;
    private final AgentMultipartyComponent.Module module;

    private AgentMultipartyComponent_Module_ProvideAgentMultipartyCoordinator$multiparty_releaseFactory(AgentMultipartyComponent.Module module, Provider<AgentMultipartyComponent> provider) {
        this.module = module;
        this.componentProvider = provider;
    }

    public static AgentMultipartyComponent_Module_ProvideAgentMultipartyCoordinator$multiparty_releaseFactory create(AgentMultipartyComponent.Module module, Provider<AgentMultipartyComponent> provider) {
        return new AgentMultipartyComponent_Module_ProvideAgentMultipartyCoordinator$multiparty_releaseFactory(module, provider);
    }

    public static AgentMultipartyCoordinatorImpl provideAgentMultipartyCoordinator$multiparty_release(AgentMultipartyComponent.Module module, AgentMultipartyComponent agentMultipartyComponent) {
        AgentMultipartyCoordinatorImpl agentMultipartyCoordinatorImplProvideAgentMultipartyCoordinator$multiparty_release = module.provideAgentMultipartyCoordinator$multiparty_release(agentMultipartyComponent);
        Preconditions.c(agentMultipartyCoordinatorImplProvideAgentMultipartyCoordinator$multiparty_release);
        return agentMultipartyCoordinatorImplProvideAgentMultipartyCoordinator$multiparty_release;
    }

    @Override // javax.inject.Provider
    public AgentMultipartyCoordinatorImpl get() {
        return provideAgentMultipartyCoordinator$multiparty_release(this.module, (AgentMultipartyComponent) this.componentProvider.get());
    }
}
