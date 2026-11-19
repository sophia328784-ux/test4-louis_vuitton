package com.sightcall.features.agent.multiparty;

import dagger.internal.Factory;
import dagger.internal.Preconditions;
import dagger.internal.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class AgentMultipartyComponent_Module_ProvideCoordinator$multiparty_releaseFactory implements Factory<AgentMultipartyCoordinator> {
    private final Provider<AgentMultipartyCoordinatorImpl> coordinatorProvider;
    private final AgentMultipartyComponent.Module module;

    private AgentMultipartyComponent_Module_ProvideCoordinator$multiparty_releaseFactory(AgentMultipartyComponent.Module module, Provider<AgentMultipartyCoordinatorImpl> provider) {
        this.module = module;
        this.coordinatorProvider = provider;
    }

    public static AgentMultipartyComponent_Module_ProvideCoordinator$multiparty_releaseFactory create(AgentMultipartyComponent.Module module, Provider<AgentMultipartyCoordinatorImpl> provider) {
        return new AgentMultipartyComponent_Module_ProvideCoordinator$multiparty_releaseFactory(module, provider);
    }

    public static AgentMultipartyCoordinator provideCoordinator$multiparty_release(AgentMultipartyComponent.Module module, AgentMultipartyCoordinatorImpl agentMultipartyCoordinatorImpl) {
        AgentMultipartyCoordinator agentMultipartyCoordinatorProvideCoordinator$multiparty_release = module.provideCoordinator$multiparty_release(agentMultipartyCoordinatorImpl);
        Preconditions.c(agentMultipartyCoordinatorProvideCoordinator$multiparty_release);
        return agentMultipartyCoordinatorProvideCoordinator$multiparty_release;
    }

    @Override // javax.inject.Provider
    public AgentMultipartyCoordinator get() {
        return provideCoordinator$multiparty_release(this.module, (AgentMultipartyCoordinatorImpl) this.coordinatorProvider.get());
    }
}
