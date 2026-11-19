package com.sightcall.features.agent.multiparty;

import dagger.internal.DoubleCheck;
import dagger.internal.InstanceFactory;
import dagger.internal.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class DaggerAgentMultipartyComponent {

    public static final class AgentMultipartyComponentImpl implements AgentMultipartyComponent {
        private final AgentMultipartyComponentImpl agentMultipartyComponentImpl = this;
        Provider<AgentMultipartyComponent> agentMultipartyComponentProvider;
        Provider<AgentMultipartyCoordinatorImpl> provideAgentMultipartyCoordinator$multiparty_releaseProvider;

        public AgentMultipartyComponentImpl(AgentMultipartyComponent.Module module) {
            initialize(module);
        }

        private void initialize(AgentMultipartyComponent.Module module) {
            InstanceFactory instanceFactoryA = InstanceFactory.a(this.agentMultipartyComponentImpl);
            this.agentMultipartyComponentProvider = instanceFactoryA;
            this.provideAgentMultipartyCoordinator$multiparty_releaseProvider = DoubleCheck.b(AgentMultipartyComponent_Module_ProvideAgentMultipartyCoordinator$multiparty_releaseFactory.create(module, instanceFactoryA));
        }

        @Override // com.sightcall.features.agent.multiparty.AgentMultipartyComponent
        public AgentMultipartyCoordinatorImpl getCoordinator() {
            return (AgentMultipartyCoordinatorImpl) this.provideAgentMultipartyCoordinator$multiparty_releaseProvider.get();
        }
    }

    private DaggerAgentMultipartyComponent() {
    }

    public static AgentMultipartyComponent.Builder builder() {
        return new Builder(0);
    }

    public static AgentMultipartyComponent create() {
        return new Builder(0).build();
    }

    public static final class Builder implements AgentMultipartyComponent.Builder {
        public /* synthetic */ Builder(int i2) {
            this();
        }

        @Override // com.sightcall.features.agent.multiparty.AgentMultipartyComponent.Builder
        public AgentMultipartyComponent build() {
            return new AgentMultipartyComponentImpl(new AgentMultipartyComponent.Module());
        }

        private Builder() {
        }
    }
}
