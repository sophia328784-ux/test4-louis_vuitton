package org.squirrelframework.foundation.fsm.impl;

import java.util.Iterator;
import java.util.List;
import org.squirrelframework.foundation.fsm.Action;
import org.squirrelframework.foundation.fsm.Actions;
import org.squirrelframework.foundation.fsm.Condition;
import org.squirrelframework.foundation.fsm.Conditions;
import org.squirrelframework.foundation.fsm.ImmutableState;
import org.squirrelframework.foundation.fsm.MutableTransition;
import org.squirrelframework.foundation.fsm.StateContext;
import org.squirrelframework.foundation.fsm.StateMachine;
import org.squirrelframework.foundation.fsm.TransitionType;
import org.squirrelframework.foundation.fsm.Visitor;

/* JADX INFO: loaded from: classes5.dex */
class TransitionImpl<T extends StateMachine<T, S, E, C>, S, E, C> implements MutableTransition<T, S, E, C> {
    private E event;
    private int priority;
    private ImmutableState<T, S, E, C> sourceState;
    private ImmutableState<T, S, E, C> targetState;
    private final Actions<T, S, E, C> actions = FSM.newActions();
    private Condition<C> condition = Conditions.always();
    private TransitionType type = TransitionType.EXTERNAL;

    private void doTransit(ImmutableState<T, S, E, C> immutableState, ImmutableState<T, S, E, C> immutableState2, StateContext<T, S, E, C> stateContext) {
        if (immutableState2.isChildStateOf(immutableState) && this.type == TransitionType.EXTERNAL) {
            immutableState.exit(stateContext);
            immutableState.entry(stateContext);
        }
        doTransitInternal(immutableState, immutableState2, stateContext);
    }

    private void doTransitInternal(ImmutableState<T, S, E, C> immutableState, ImmutableState<T, S, E, C> immutableState2, StateContext<T, S, E, C> stateContext) {
        if (immutableState == getTargetState()) {
            if (this.type == TransitionType.LOCAL) {
                transit(stateContext);
                return;
            }
            immutableState.exit(stateContext);
            transit(stateContext);
            getTargetState().entry(stateContext);
            return;
        }
        if (immutableState == immutableState2) {
            transit(stateContext);
            return;
        }
        if (immutableState.getParentState() == immutableState2.getParentState()) {
            immutableState.exit(stateContext);
            transit(stateContext);
            immutableState2.entry(stateContext);
        } else if (immutableState.getLevel() > immutableState2.getLevel()) {
            immutableState.exit(stateContext);
            doTransitInternal(immutableState.getParentState(), immutableState2, stateContext);
        } else if (immutableState.getLevel() < immutableState2.getLevel()) {
            doTransitInternal(immutableState, immutableState2.getParentState(), stateContext);
            immutableState2.entry(stateContext);
        } else {
            immutableState.exit(stateContext);
            doTransitInternal(immutableState.getParentState(), immutableState2.getParentState(), stateContext);
            immutableState2.entry(stateContext);
        }
    }

    private void unwindSubStates(ImmutableState<T, S, E, C> immutableState, StateContext<T, S, E, C> stateContext) {
        while (immutableState != getSourceState()) {
            if (immutableState != null) {
                immutableState.exit(stateContext);
            }
            immutableState = immutableState.getParentState();
        }
    }

    @Override // org.squirrelframework.foundation.fsm.Visitable
    public void accept(Visitor visitor) {
        visitor.visitOnEntry(this);
        visitor.visitOnExit(this);
    }

    @Override // org.squirrelframework.foundation.fsm.MutableTransition
    public void addAction(Action<T, S, E, C> action) {
        this.actions.add(action);
    }

    @Override // org.squirrelframework.foundation.fsm.MutableTransition
    public void addActions(List<? extends Action<T, S, E, C>> list) {
        this.actions.addAll(list);
    }

    @Override // org.squirrelframework.foundation.fsm.ImmutableTransition
    public List<Action<T, S, E, C>> getActions() {
        return this.actions.getAll();
    }

    @Override // org.squirrelframework.foundation.fsm.ImmutableTransition
    public Condition<C> getCondition() {
        return this.condition;
    }

    @Override // org.squirrelframework.foundation.fsm.ImmutableTransition
    public E getEvent() {
        return this.event;
    }

    @Override // org.squirrelframework.foundation.fsm.ImmutableTransition
    public int getPriority() {
        return this.priority;
    }

    @Override // org.squirrelframework.foundation.fsm.ImmutableTransition
    public ImmutableState<T, S, E, C> getSourceState() {
        return this.sourceState;
    }

    @Override // org.squirrelframework.foundation.fsm.ImmutableTransition
    public ImmutableState<T, S, E, C> getTargetState() {
        return this.targetState;
    }

    @Override // org.squirrelframework.foundation.fsm.ImmutableTransition
    public TransitionType getType() {
        return this.type;
    }

    @Override // org.squirrelframework.foundation.fsm.ImmutableTransition
    public void internalFire(StateContext<T, S, E, C> stateContext) {
        ImmutableState<T, S, E, C> immutableStateEnterByHistory;
        TransitionType transitionType = this.type;
        TransitionType transitionType2 = TransitionType.INTERNAL;
        if ((transitionType != transitionType2 || stateContext.getSourceState().getStateId() == this.targetState.getStateId()) && this.condition.isSatisfied(stateContext.getContext())) {
            stateContext.getSourceState();
            if (this.type == transitionType2) {
                immutableStateEnterByHistory = transit(stateContext);
            } else {
                unwindSubStates(stateContext.getSourceState(), stateContext);
                doTransit(getSourceState(), getTargetState(), stateContext);
                immutableStateEnterByHistory = getTargetState().enterByHistory(stateContext);
            }
            stateContext.getResult().setAccepted(true).setTargetState(immutableStateEnterByHistory);
        }
    }

    @Override // org.squirrelframework.foundation.fsm.ImmutableTransition
    public boolean isMatch(S s, S s2, E e2, int i2) {
        if (s2 != null || getTargetState().isFinalState()) {
            return (s2 == null || getTargetState().isFinalState() || getTargetState().getStateId().equals(s2)) && getEvent().equals(e2) && getPriority() == i2;
        }
        return false;
    }

    @Override // org.squirrelframework.foundation.fsm.MutableTransition
    public void setCondition(Condition<C> condition) {
        this.condition = condition;
    }

    @Override // org.squirrelframework.foundation.fsm.MutableTransition
    public void setEvent(E e2) {
        this.event = e2;
    }

    @Override // org.squirrelframework.foundation.fsm.MutableTransition
    public void setPriority(int i2) {
        this.priority = i2;
    }

    @Override // org.squirrelframework.foundation.fsm.MutableTransition
    public void setSourceState(ImmutableState<T, S, E, C> immutableState) {
        this.sourceState = immutableState;
    }

    @Override // org.squirrelframework.foundation.fsm.MutableTransition
    public void setTargetState(ImmutableState<T, S, E, C> immutableState) {
        this.targetState = immutableState;
    }

    @Override // org.squirrelframework.foundation.fsm.MutableTransition
    public void setType(TransitionType transitionType) {
        this.type = transitionType;
    }

    public final String toString() {
        return this.sourceState + "-[" + this.event.toString() + ", " + this.condition.name() + ", " + this.priority + ", " + this.type + "]->" + this.targetState;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // org.squirrelframework.foundation.fsm.ImmutableTransition
    public ImmutableState<T, S, E, C> transit(StateContext<T, S, E, C> stateContext) {
        stateContext.getExecutor().begin("TRANSITION__" + toString());
        Iterator<Action<T, S, E, C>> it = getActions().iterator();
        while (it.hasNext()) {
            stateContext.getExecutor().defer(it.next(), this.sourceState.getStateId(), this.targetState.getStateId(), stateContext.getEvent(), stateContext.getContext(), stateContext.getStateMachine().getThis());
        }
        return this.targetState;
    }

    @Override // org.squirrelframework.foundation.fsm.ImmutableTransition
    public void verify() {
        ImmutableState<T, S, E, C> immutableState;
        ImmutableState<T, S, E, C> immutableState2;
        if (this.type == TransitionType.INTERNAL && (immutableState = this.sourceState) != (immutableState2 = this.targetState)) {
            throw new RuntimeException(String.format("Internal transition source state '%s' and target state '%s' must be same.", immutableState, immutableState2));
        }
    }

    @Override // org.squirrelframework.foundation.fsm.ImmutableTransition
    public boolean isMatch(S s, S s2, E e2, int i2, Class<?> cls, TransitionType transitionType) {
        return isMatch(s, s2, e2, i2) && getCondition().getClass() == cls && getType().equals(transitionType);
    }
}
