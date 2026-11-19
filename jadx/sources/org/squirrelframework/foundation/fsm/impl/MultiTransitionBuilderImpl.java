package org.squirrelframework.foundation.fsm.impl;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.apache.commons.lang3.StringUtils;
import org.squirrelframework.foundation.component.SquirrelComponent;
import org.squirrelframework.foundation.fsm.Action;
import org.squirrelframework.foundation.fsm.Condition;
import org.squirrelframework.foundation.fsm.MutableState;
import org.squirrelframework.foundation.fsm.MutableTransition;
import org.squirrelframework.foundation.fsm.StateMachine;
import org.squirrelframework.foundation.fsm.TransitionType;
import org.squirrelframework.foundation.fsm.builder.And;
import org.squirrelframework.foundation.fsm.builder.Between;
import org.squirrelframework.foundation.fsm.builder.From;
import org.squirrelframework.foundation.fsm.builder.MultiFrom;
import org.squirrelframework.foundation.fsm.builder.MultiTo;
import org.squirrelframework.foundation.fsm.builder.MultiTransitionBuilder;
import org.squirrelframework.foundation.fsm.builder.On;
import org.squirrelframework.foundation.fsm.builder.To;
import org.squirrelframework.foundation.fsm.builder.When;

/* JADX INFO: loaded from: classes5.dex */
class MultiTransitionBuilderImpl<T extends StateMachine<T, S, E, C>, S, E, C> implements MultiTransitionBuilder<T, S, E, C>, MultiFrom<T, S, E, C>, From<T, S, E, C>, MultiTo<T, S, E, C>, To<T, S, E, C>, On<T, S, E, C>, Between<T, S, E, C>, And<T, S, E, C>, SquirrelComponent {
    private final ExecutionContext executionContext;
    private final int priority;
    private final Map<S, MutableState<T, S, E, C>> states;
    private final TransitionType transitionType;
    private final List<MutableTransition<T, S, E, C>> transitions = new ArrayList();
    private final List<MutableState<T, S, E, C>> sourceStates = new ArrayList();
    private final List<MutableState<T, S, E, C>> targetStates = new ArrayList();

    public MultiTransitionBuilderImpl(Map<S, MutableState<T, S, E, C>> map, TransitionType transitionType, int i2, ExecutionContext executionContext) {
        this.states = map;
        this.transitionType = transitionType;
        this.priority = i2;
        this.executionContext = executionContext;
    }

    @Override // org.squirrelframework.foundation.fsm.builder.Between
    public And<T, S, E, C> and(S s) {
        this.targetStates.add(FSM.getState(this.states, s));
        return this;
    }

    @Override // org.squirrelframework.foundation.fsm.builder.MultiTransitionBuilder
    public Between<T, S, E, C> between(S s) {
        this.sourceStates.add(FSM.getState(this.states, s));
        return this;
    }

    @Override // org.squirrelframework.foundation.fsm.builder.When
    public void callMethod(String str) {
        String[] strArrD = StringUtils.d(str, '|');
        int length = strArrD.length;
        int size = this.transitions.size();
        int i2 = 0;
        while (i2 < size) {
            String strTrim = strArrD[i2 < length ? i2 : length - 1].trim();
            if (!"_".equals(strTrim)) {
                this.transitions.get(i2).addAction(FSM.newMethodCallActionProxy(strTrim, this.executionContext));
            }
            i2++;
        }
    }

    @Override // org.squirrelframework.foundation.fsm.builder.When
    public void evalMvel(String str) {
        Iterator<MutableTransition<T, S, E, C>> it = this.transitions.iterator();
        while (it.hasNext()) {
            it.next().addAction(FSM.newMvelAction(str, this.executionContext));
        }
    }

    @Override // org.squirrelframework.foundation.fsm.builder.MultiTransitionBuilder
    public MultiFrom<T, S, E, C> from(S s) {
        this.sourceStates.add(FSM.getState(this.states, s));
        return this;
    }

    @Override // org.squirrelframework.foundation.fsm.builder.MultiTransitionBuilder
    public From<T, S, E, C> fromAmong(S... sArr) {
        for (S s : sArr) {
            this.sourceStates.add(FSM.getState(this.states, s));
        }
        return this;
    }

    @Override // org.squirrelframework.foundation.fsm.builder.To
    public On<T, S, E, C> on(E e2) {
        for (MutableState<T, S, E, C> mutableState : this.sourceStates) {
            for (MutableState<T, S, E, C> mutableState2 : this.targetStates) {
                MutableTransition<T, S, E, C> mutableTransitionAddTransitionOn = mutableState.addTransitionOn(e2);
                mutableTransitionAddTransitionOn.setTargetState(mutableState2);
                mutableTransitionAddTransitionOn.setType(this.transitionType);
                mutableTransitionAddTransitionOn.setPriority(this.priority);
                this.transitions.add(mutableTransitionAddTransitionOn);
            }
        }
        return this;
    }

    @Override // org.squirrelframework.foundation.fsm.builder.MultiTo
    public On<T, S, E, C> onEach(E... eArr) {
        eArr.getClass();
        int length = eArr.length;
        int size = this.sourceStates.size();
        int i2 = 0;
        while (i2 < size) {
            int size2 = this.targetStates.size();
            int i3 = 0;
            while (i3 < size2) {
                int i4 = i3 < i2 ? i2 : i3;
                if (i4 >= length) {
                    i4 = length - 1;
                }
                MutableTransition<T, S, E, C> mutableTransitionAddTransitionOn = this.sourceStates.get(i2).addTransitionOn(eArr[i4]);
                mutableTransitionAddTransitionOn.setTargetState(this.targetStates.get(i3));
                mutableTransitionAddTransitionOn.setType(this.transitionType);
                mutableTransitionAddTransitionOn.setPriority(this.priority);
                this.transitions.add(mutableTransitionAddTransitionOn);
                i3++;
            }
            i2++;
        }
        return this;
    }

    @Override // org.squirrelframework.foundation.fsm.builder.And
    public On<T, S, E, C> onMutual(E e2, E e3) {
        MutableTransition<T, S, E, C> mutableTransitionAddTransitionOn = this.sourceStates.get(0).addTransitionOn(e2);
        mutableTransitionAddTransitionOn.setTargetState(this.targetStates.get(0));
        mutableTransitionAddTransitionOn.setType(this.transitionType);
        mutableTransitionAddTransitionOn.setPriority(this.priority);
        this.transitions.add(mutableTransitionAddTransitionOn);
        MutableTransition<T, S, E, C> mutableTransitionAddTransitionOn2 = this.targetStates.get(0).addTransitionOn(e3);
        mutableTransitionAddTransitionOn2.setTargetState(this.sourceStates.get(0));
        mutableTransitionAddTransitionOn2.setType(this.transitionType);
        mutableTransitionAddTransitionOn2.setPriority(this.priority);
        this.transitions.add(mutableTransitionAddTransitionOn2);
        return this;
    }

    @Override // org.squirrelframework.foundation.fsm.builder.When
    public void perform(List<? extends Action<T, S, E, C>> list) {
        int size = list.size();
        int size2 = this.transitions.size();
        int i2 = 0;
        while (i2 < size2) {
            this.transitions.get(i2).addAction(list.get(i2 < size ? i2 : size - 1));
            i2++;
        }
    }

    @Override // org.squirrelframework.foundation.fsm.builder.From
    public To<T, S, E, C> to(S s) {
        this.targetStates.add(FSM.getState(this.states, s));
        return this;
    }

    @Override // org.squirrelframework.foundation.fsm.builder.MultiFrom
    public MultiTo<T, S, E, C> toAmong(S... sArr) {
        for (S s : sArr) {
            this.targetStates.add(FSM.getState(this.states, s));
        }
        return this;
    }

    @Override // org.squirrelframework.foundation.fsm.builder.From
    public To<T, S, E, C> toFinal(S s) {
        MutableState<T, S, E, C> state = FSM.getState(this.states, s);
        if (!state.isFinalState()) {
            state.setFinal(true);
        }
        this.targetStates.add(state);
        return this;
    }

    @Override // org.squirrelframework.foundation.fsm.builder.On
    public When<T, S, E, C> when(Condition<C> condition) {
        Iterator<MutableTransition<T, S, E, C>> it = this.transitions.iterator();
        while (it.hasNext()) {
            it.next().setCondition(condition);
        }
        return this;
    }

    @Override // org.squirrelframework.foundation.fsm.builder.On
    public When<T, S, E, C> whenMvel(String str) {
        Iterator<MutableTransition<T, S, E, C>> it = this.transitions.iterator();
        while (it.hasNext()) {
            it.next().setCondition(FSM.newMvelCondition(str, this.executionContext.getScriptManager()));
        }
        return this;
    }

    @Override // org.squirrelframework.foundation.fsm.builder.When
    public void perform(Action<T, S, E, C> action) {
        Iterator<MutableTransition<T, S, E, C>> it = this.transitions.iterator();
        while (it.hasNext()) {
            it.next().addAction(action);
        }
    }
}
