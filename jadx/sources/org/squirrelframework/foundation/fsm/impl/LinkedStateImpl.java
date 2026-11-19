package org.squirrelframework.foundation.fsm.impl;

import defpackage.md;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.squirrelframework.foundation.component.SquirrelInstanceProvider;
import org.squirrelframework.foundation.fsm.Action;
import org.squirrelframework.foundation.fsm.AnonymousAction;
import org.squirrelframework.foundation.fsm.ImmutableLinkedState;
import org.squirrelframework.foundation.fsm.MutableLinkedState;
import org.squirrelframework.foundation.fsm.StateContext;
import org.squirrelframework.foundation.fsm.StateMachine;
import org.squirrelframework.foundation.fsm.StateMachineContext;
import org.squirrelframework.foundation.fsm.StateMachineStatus;

/* JADX INFO: loaded from: classes5.dex */
class LinkedStateImpl<T extends StateMachine<T, S, E, C>, S, E, C> extends StateImpl<T, S, E, C> implements ImmutableLinkedState<T, S, E, C>, MutableLinkedState<T, S, E, C> {
    private Action<T, S, E, C> firstExitAction;
    private Action<T, S, E, C> lastEntryAction;
    private Map<String, StateMachine<? extends StateMachine<?, S, E, C>, S, E, C>> linkedStateMachineInstances;
    private SquirrelInstanceProvider<? extends StateMachine<?, S, E, C>> provider;

    public class DeclineEventHandler<M> implements StateMachine.TransitionDeclinedListener<T, S, E, C> {
        private StateContext<T, S, E, C> orgStateContext;

        public DeclineEventHandler(StateContext<T, S, E, C> stateContext) {
            this.orgStateContext = stateContext;
        }

        @Override // org.squirrelframework.foundation.fsm.StateMachine.TransitionDeclinedListener
        public void transitionDeclined(StateMachine.TransitionDeclinedEvent<T, S, E, C> transitionDeclinedEvent) {
            LinkedStateImpl.super.internalFire(this.orgStateContext);
        }
    }

    public LinkedStateImpl(S s) {
        super(s);
        this.linkedStateMachineInstances = new ConcurrentHashMap();
        this.lastEntryAction = new AnonymousAction<T, S, E, C>() { // from class: org.squirrelframework.foundation.fsm.impl.LinkedStateImpl.1
            @Override // org.squirrelframework.foundation.fsm.Action
            public void execute(S s2, S s3, E e2, C c2, T t) {
                LinkedStateImpl.this.getLinkedStateMachine(t).start(c2);
            }

            @Override // org.squirrelframework.foundation.fsm.AnonymousAction, org.squirrelframework.foundation.fsm.Action
            public String name() {
                return "__LINK_STATE_ENTRY_ACTION";
            }
        };
        this.firstExitAction = new AnonymousAction<T, S, E, C>() { // from class: org.squirrelframework.foundation.fsm.impl.LinkedStateImpl.2
            @Override // org.squirrelframework.foundation.fsm.Action
            public void execute(S s2, S s3, E e2, C c2, T t) {
                StateMachine stateMachine = (StateMachine) LinkedStateImpl.this.linkedStateMachineInstances.remove(LinkedStateImpl.this.getKey(t));
                if (stateMachine != null) {
                    stateMachine.terminate(c2);
                }
            }

            @Override // org.squirrelframework.foundation.fsm.AnonymousAction, org.squirrelframework.foundation.fsm.Action
            public String name() {
                return "__LINK_STATE_EXIT_ACTION";
            }
        };
    }

    @Override // org.squirrelframework.foundation.fsm.impl.StateImpl, org.squirrelframework.foundation.fsm.ImmutableState
    public List<Action<T, S, E, C>> getEntryActions() {
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(this.entryActions.getAll());
        arrayList.add(this.lastEntryAction);
        return Collections.unmodifiableList(arrayList);
    }

    @Override // org.squirrelframework.foundation.fsm.impl.StateImpl, org.squirrelframework.foundation.fsm.ImmutableState
    public List<Action<T, S, E, C>> getExitActions() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(this.firstExitAction);
        arrayList.addAll(this.exitActions.getAll());
        return Collections.unmodifiableList(arrayList);
    }

    @Override // org.squirrelframework.foundation.fsm.ImmutableLinkedState
    public StateMachine<? extends StateMachine<?, S, E, C>, S, E, C> getLinkedStateMachine(T t) {
        String key = getKey(t);
        StateMachine<? extends StateMachine<?, S, E, C>, S, E, C> stateMachine = this.linkedStateMachineInstances.get(key);
        if (stateMachine != null) {
            return stateMachine;
        }
        StateMachine<?, S, E, C> stateMachine2 = this.provider.get();
        this.linkedStateMachineInstances.put(key, stateMachine2);
        return stateMachine2;
    }

    @Override // org.squirrelframework.foundation.fsm.impl.StateImpl, org.squirrelframework.foundation.fsm.ImmutableState
    public void internalFire(StateContext<T, S, E, C> stateContext) {
        StateMachine<? extends StateMachine<?, S, E, C>, S, E, C> stateMachine = this.linkedStateMachineInstances.get(getKey(stateContext.getStateMachine().getThis()));
        if (stateMachine.getStatus() == StateMachineStatus.TERMINATED) {
            super.internalFire(stateContext);
            return;
        }
        DeclineEventHandler declineEventHandler = new DeclineEventHandler(stateContext);
        try {
            stateMachine.addTransitionDeclinedListener(declineEventHandler);
            StateMachineContext.set(stateMachine.getThis(), StateMachineContext.isTestEvent());
            stateMachine.fire(stateContext.getEvent(), stateContext.getContext());
        } finally {
            StateMachineContext.set(null);
            stateMachine.removeTransitionDecleindListener(declineEventHandler);
        }
    }

    @Override // org.squirrelframework.foundation.fsm.MutableLinkedState
    public void setLinkedStateMachineProvider(SquirrelInstanceProvider<? extends StateMachine<?, S, E, C>> squirrelInstanceProvider) {
        this.provider = squirrelInstanceProvider;
    }

    @Override // org.squirrelframework.foundation.fsm.impl.StateImpl, org.squirrelframework.foundation.fsm.ImmutableState
    public void verify() {
        if (this.provider == null) {
            md.k("Linked state machine provider cannot be null.");
        } else if (isParallelState() || hasChildStates()) {
            md.k("Linked state cannot be parallel state or has any child states.");
        } else {
            super.verify();
        }
    }
}
