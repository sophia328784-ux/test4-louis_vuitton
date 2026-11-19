package org.squirrelframework.foundation.fsm.impl;

import org.squirrelframework.foundation.fsm.ActionExecutionService;
import org.squirrelframework.foundation.fsm.ImmutableState;
import org.squirrelframework.foundation.fsm.StateContext;
import org.squirrelframework.foundation.fsm.StateMachine;
import org.squirrelframework.foundation.fsm.StateMachineData;
import org.squirrelframework.foundation.fsm.TransitionResult;

/* JADX INFO: loaded from: classes5.dex */
class StateContextImpl<T extends StateMachine<T, S, E, C>, S, E, C> implements StateContext<T, S, E, C> {
    private final C context;
    private final E event;
    private final ActionExecutionService<T, S, E, C> executor;
    private final TransitionResult<T, S, E, C> result;
    private final ImmutableState<T, S, E, C> sourceState;
    private final StateMachine<T, S, E, C> stateMachine;
    private final StateMachineData<T, S, E, C> stateMachineData;

    public StateContextImpl(StateMachine<T, S, E, C> stateMachine, StateMachineData<T, S, E, C> stateMachineData, ImmutableState<T, S, E, C> immutableState, E e2, C c2, TransitionResult<T, S, E, C> transitionResult, ActionExecutionService<T, S, E, C> actionExecutionService) {
        this.stateMachine = stateMachine;
        this.stateMachineData = stateMachineData;
        this.sourceState = immutableState;
        this.event = e2;
        this.context = c2;
        this.result = transitionResult;
        this.executor = actionExecutionService;
    }

    @Override // org.squirrelframework.foundation.fsm.StateContext
    public C getContext() {
        return this.context;
    }

    @Override // org.squirrelframework.foundation.fsm.StateContext
    public E getEvent() {
        return this.event;
    }

    @Override // org.squirrelframework.foundation.fsm.StateContext
    public ActionExecutionService<T, S, E, C> getExecutor() {
        return this.executor;
    }

    @Override // org.squirrelframework.foundation.fsm.StateContext
    public TransitionResult<T, S, E, C> getResult() {
        return this.result;
    }

    @Override // org.squirrelframework.foundation.fsm.StateContext
    public ImmutableState<T, S, E, C> getSourceState() {
        return this.sourceState;
    }

    @Override // org.squirrelframework.foundation.fsm.StateContext
    public StateMachine<T, S, E, C> getStateMachine() {
        return this.stateMachine;
    }

    @Override // org.squirrelframework.foundation.fsm.StateContext
    public StateMachineData<T, S, E, C> getStateMachineData() {
        return this.stateMachineData;
    }
}
