package org.squirrelframework.foundation.fsm;

import java.util.List;
import org.squirrelframework.foundation.fsm.StateMachine;

/* JADX INFO: loaded from: classes5.dex */
public interface MutableState<T extends StateMachine<T, S, E, C>, S, E, C> extends ImmutableState<T, S, E, C> {
    void addChildState(MutableState<T, S, E, C> mutableState);

    void addEntryAction(Action<T, S, E, C> action);

    void addEntryActions(List<? extends Action<T, S, E, C>> list);

    void addExitAction(Action<T, S, E, C> action);

    void addExitActions(List<? extends Action<T, S, E, C>> list);

    MutableTransition<T, S, E, C> addTransitionOn(E e2);

    void prioritizeTransitions();

    void setCompositeType(StateCompositeType stateCompositeType);

    void setFinal(boolean z);

    void setHistoryType(HistoryType historyType);

    void setInitialState(MutableState<T, S, E, C> mutableState);

    void setLevel(int i2);

    void setParentState(MutableState<T, S, E, C> mutableState);
}
