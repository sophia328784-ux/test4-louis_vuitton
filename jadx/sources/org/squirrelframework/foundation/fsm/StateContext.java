package org.squirrelframework.foundation.fsm;

import org.squirrelframework.foundation.fsm.StateMachine;

/* JADX INFO: loaded from: classes5.dex */
public interface StateContext<T extends StateMachine<T, S, E, C>, S, E, C> {
    C getContext();

    E getEvent();

    ActionExecutionService<T, S, E, C> getExecutor();

    TransitionResult<T, S, E, C> getResult();

    ImmutableState<T, S, E, C> getSourceState();

    StateMachine<T, S, E, C> getStateMachine();

    StateMachineData<T, S, E, C> getStateMachineData();
}
