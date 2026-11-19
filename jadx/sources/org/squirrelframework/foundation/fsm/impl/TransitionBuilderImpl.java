package org.squirrelframework.foundation.fsm.impl;

import java.util.List;
import java.util.Map;
import org.squirrelframework.foundation.component.SquirrelComponent;
import org.squirrelframework.foundation.fsm.Action;
import org.squirrelframework.foundation.fsm.Condition;
import org.squirrelframework.foundation.fsm.MutableState;
import org.squirrelframework.foundation.fsm.MutableTransition;
import org.squirrelframework.foundation.fsm.StateMachine;
import org.squirrelframework.foundation.fsm.TransitionType;
import org.squirrelframework.foundation.fsm.builder.ExternalTransitionBuilder;
import org.squirrelframework.foundation.fsm.builder.From;
import org.squirrelframework.foundation.fsm.builder.InternalTransitionBuilder;
import org.squirrelframework.foundation.fsm.builder.LocalTransitionBuilder;
import org.squirrelframework.foundation.fsm.builder.On;
import org.squirrelframework.foundation.fsm.builder.To;
import org.squirrelframework.foundation.fsm.builder.When;

/* JADX INFO: loaded from: classes5.dex */
class TransitionBuilderImpl<T extends StateMachine<T, S, E, C>, S, E, C> implements ExternalTransitionBuilder<T, S, E, C>, InternalTransitionBuilder<T, S, E, C>, LocalTransitionBuilder<T, S, E, C>, From<T, S, E, C>, To<T, S, E, C>, On<T, S, E, C>, SquirrelComponent {
    private final ExecutionContext executionContext;
    private final int priority;
    private MutableState<T, S, E, C> sourceState;
    private final Map<S, MutableState<T, S, E, C>> states;
    private MutableState<T, S, E, C> targetState;
    private MutableTransition<T, S, E, C> transition;
    private final TransitionType transitionType;

    public TransitionBuilderImpl(Map<S, MutableState<T, S, E, C>> map, TransitionType transitionType, int i2, ExecutionContext executionContext) {
        this.states = map;
        this.transitionType = transitionType;
        this.priority = i2;
        this.executionContext = executionContext;
    }

    @Override // org.squirrelframework.foundation.fsm.builder.When
    public void callMethod(String str) {
        this.transition.addAction(FSM.newMethodCallActionProxy(str, this.executionContext));
    }

    @Override // org.squirrelframework.foundation.fsm.builder.When
    public void evalMvel(String str) {
        this.transition.addAction(FSM.newMvelAction(str, this.executionContext));
    }

    @Override // org.squirrelframework.foundation.fsm.builder.ExternalTransitionBuilder
    public From<T, S, E, C> from(S s) {
        this.sourceState = FSM.getState(this.states, s);
        return this;
    }

    @Override // org.squirrelframework.foundation.fsm.builder.To
    public On<T, S, E, C> on(E e2) {
        MutableTransition<T, S, E, C> mutableTransitionAddTransitionOn = this.sourceState.addTransitionOn(e2);
        this.transition = mutableTransitionAddTransitionOn;
        mutableTransitionAddTransitionOn.setTargetState(this.targetState);
        this.transition.setType(this.transitionType);
        this.transition.setPriority(this.priority);
        return this;
    }

    @Override // org.squirrelframework.foundation.fsm.builder.When
    public void perform(Action<T, S, E, C> action) {
        this.transition.addAction(action);
    }

    @Override // org.squirrelframework.foundation.fsm.builder.From
    public To<T, S, E, C> to(S s) {
        this.targetState = FSM.getState(this.states, s);
        return this;
    }

    @Override // org.squirrelframework.foundation.fsm.builder.From
    public To<T, S, E, C> toFinal(S s) {
        MutableState<T, S, E, C> state = FSM.getState(this.states, s);
        this.targetState = state;
        if (!state.isFinalState()) {
            this.targetState.setFinal(true);
        }
        return this;
    }

    @Override // org.squirrelframework.foundation.fsm.builder.On
    public When<T, S, E, C> when(Condition<C> condition) {
        this.transition.setCondition(condition);
        return this;
    }

    @Override // org.squirrelframework.foundation.fsm.builder.On
    public When<T, S, E, C> whenMvel(String str) {
        this.transition.setCondition(FSM.newMvelCondition(str, this.executionContext.getScriptManager()));
        return this;
    }

    @Override // org.squirrelframework.foundation.fsm.builder.InternalTransitionBuilder
    public To<T, S, E, C> within(S s) {
        MutableState<T, S, E, C> state = FSM.getState(this.states, s);
        this.targetState = state;
        this.sourceState = state;
        return this;
    }

    @Override // org.squirrelframework.foundation.fsm.builder.When
    public void perform(List<? extends Action<T, S, E, C>> list) {
        this.transition.addActions(list);
    }
}
