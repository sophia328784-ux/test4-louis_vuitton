package com.sightcall.features.agent.multiparty;

import dagger.Component;
import dagger.Provides;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Component
@AgentMultipartyScope
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\bg\u0018\u00002\u00020\u0001:\u0002\u0006\u0007R\u0012\u0010\u0002\u001a\u00020\u0003X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0005¨\u0006\bÀ\u0006\u0003"}, d2 = {"Lcom/sightcall/features/agent/multiparty/AgentMultipartyComponent;", "", "coordinator", "Lcom/sightcall/features/agent/multiparty/AgentMultipartyCoordinatorImpl;", "getCoordinator", "()Lcom/sightcall/features/agent/multiparty/AgentMultipartyCoordinatorImpl;", "Builder", "Module", "multiparty_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface AgentMultipartyComponent {

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\bg\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&¨\u0006\u0004À\u0006\u0003"}, d2 = {"Lcom/sightcall/features/agent/multiparty/AgentMultipartyComponent$Builder;", "", "build", "Lcom/sightcall/features/agent/multiparty/AgentMultipartyComponent;", "multiparty_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
    @Component.Builder
    public interface Builder {
        AgentMultipartyComponent build();
    }

    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0015\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0001¢\u0006\u0002\b\bJ\u0015\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0005H\u0001¢\u0006\u0002\b\f¨\u0006\r"}, d2 = {"Lcom/sightcall/features/agent/multiparty/AgentMultipartyComponent$Module;", "", "<init>", "()V", "provideAgentMultipartyCoordinator", "Lcom/sightcall/features/agent/multiparty/AgentMultipartyCoordinatorImpl;", "component", "Lcom/sightcall/features/agent/multiparty/AgentMultipartyComponent;", "provideAgentMultipartyCoordinator$multiparty_release", "provideCoordinator", "Lcom/sightcall/features/agent/multiparty/AgentMultipartyCoordinator;", "coordinator", "provideCoordinator$multiparty_release", "multiparty_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
    @dagger.Module
    public static final class Module {
        @Provides
        @AgentMultipartyScope
        public final AgentMultipartyCoordinatorImpl provideAgentMultipartyCoordinator$multiparty_release(AgentMultipartyComponent component) {
            component.getClass();
            return new AgentMultipartyCoordinatorImpl(component);
        }

        @Provides
        @AgentMultipartyScope
        public final AgentMultipartyCoordinator provideCoordinator$multiparty_release(AgentMultipartyCoordinatorImpl coordinator) {
            coordinator.getClass();
            return coordinator;
        }
    }

    AgentMultipartyCoordinatorImpl getCoordinator();
}
