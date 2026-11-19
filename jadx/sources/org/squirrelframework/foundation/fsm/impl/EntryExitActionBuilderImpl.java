package org.squirrelframework.foundation.fsm.impl;

import java.util.List;
import org.squirrelframework.foundation.component.SquirrelComponent;
import org.squirrelframework.foundation.fsm.Action;
import org.squirrelframework.foundation.fsm.MutableState;
import org.squirrelframework.foundation.fsm.StateMachine;
import org.squirrelframework.foundation.fsm.builder.EntryExitActionBuilder;

/* JADX INFO: loaded from: classes5.dex */
class EntryExitActionBuilderImpl<T extends StateMachine<T, S, E, C>, S, E, C> implements EntryExitActionBuilder<T, S, E, C>, SquirrelComponent {
    private final ExecutionContext executionContext;
    private final boolean isEntryAction;
    private final MutableState<T, S, E, C> state;

    public EntryExitActionBuilderImpl(MutableState<T, S, E, C> mutableState, boolean z, ExecutionContext executionContext) {
        this.state = mutableState;
        this.isEntryAction = z;
        this.executionContext = executionContext;
    }

    @Override // org.squirrelframework.foundation.fsm.builder.When
    public void callMethod(String str) {
        perform(FSM.newMethodCallActionProxy(str, this.executionContext));
    }

    @Override // org.squirrelframework.foundation.fsm.builder.When
    public void evalMvel(String str) {
        perform(FSM.newMvelAction(str, this.executionContext));
    }

    @Override // org.squirrelframework.foundation.fsm.builder.When
    public void perform(Action<T, S, E, C> action) {
        boolean z = this.isEntryAction;
        MutableState<T, S, E, C> mutableState = this.state;
        if (z) {
            mutableState.addEntryAction(action);
        } else {
            mutableState.addExitAction(action);
        }
    }

    @Override // org.squirrelframework.foundation.fsm.builder.When
    public void perform(List<? extends Action<T, S, E, C>> list) {
        boolean z = this.isEntryAction;
        MutableState<T, S, E, C> mutableState = this.state;
        if (z) {
            mutableState.addEntryActions(list);
        } else {
            mutableState.addExitActions(list);
        }
    }
}
