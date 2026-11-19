package org.squirrelframework.foundation.fsm;

import org.squirrelframework.foundation.fsm.StateMachine;
import org.squirrelframework.foundation.fsm.builder.DeferBoundActionBuilder;
import org.squirrelframework.foundation.fsm.builder.EntryExitActionBuilder;
import org.squirrelframework.foundation.fsm.builder.ExternalTransitionBuilder;
import org.squirrelframework.foundation.fsm.builder.InternalTransitionBuilder;
import org.squirrelframework.foundation.fsm.builder.LocalTransitionBuilder;
import org.squirrelframework.foundation.fsm.builder.MultiTransitionBuilder;

/* JADX INFO: loaded from: classes5.dex */
public interface StateMachineBuilder<T extends StateMachine<T, S, E, C>, S, E, C> {
    MutableState<T, S, E, C> defineFinalState(S s);

    void defineFinishEvent(E e2);

    MutableState<T, S, E, C> defineLinkedState(S s, StateMachineBuilder<? extends StateMachine<?, S, E, C>, S, E, C> stateMachineBuilder, S s2, Object... objArr);

    void defineNoInitSequentialStatesOn(S s, HistoryType historyType, S... sArr);

    void defineNoInitSequentialStatesOn(S s, S... sArr);

    void defineParallelStatesOn(S s, S... sArr);

    void defineSequentialStatesOn(S s, HistoryType historyType, S... sArr);

    void defineSequentialStatesOn(S s, S... sArr);

    void defineStartEvent(E e2);

    MutableState<T, S, E, C> defineState(S s);

    void defineTerminateEvent(E e2);

    MutableState<T, S, E, C> defineTimedState(S s, long j2, long j3, E e2, C c2);

    ExternalTransitionBuilder<T, S, E, C> externalTransition();

    ExternalTransitionBuilder<T, S, E, C> externalTransition(int i2);

    MultiTransitionBuilder<T, S, E, C> externalTransitions();

    MultiTransitionBuilder<T, S, E, C> externalTransitions(int i2);

    InternalTransitionBuilder<T, S, E, C> internalTransition();

    InternalTransitionBuilder<T, S, E, C> internalTransition(int i2);

    LocalTransitionBuilder<T, S, E, C> localTransition();

    LocalTransitionBuilder<T, S, E, C> localTransition(int i2);

    MultiTransitionBuilder<T, S, E, C> localTransitions();

    MultiTransitionBuilder<T, S, E, C> localTransitions(int i2);

    T newStateMachine(S s);

    T newStateMachine(S s, StateMachineConfiguration stateMachineConfiguration, Object... objArr);

    T newStateMachine(S s, Object... objArr);

    EntryExitActionBuilder<T, S, E, C> onEntry(S s);

    EntryExitActionBuilder<T, S, E, C> onExit(S s);

    void setStateMachineConfiguration(StateMachineConfiguration stateMachineConfiguration);

    DeferBoundActionBuilder<T, S, E, C> transit();

    ExternalTransitionBuilder<T, S, E, C> transition();

    ExternalTransitionBuilder<T, S, E, C> transition(int i2);

    MultiTransitionBuilder<T, S, E, C> transitions();

    MultiTransitionBuilder<T, S, E, C> transitions(int i2);
}
