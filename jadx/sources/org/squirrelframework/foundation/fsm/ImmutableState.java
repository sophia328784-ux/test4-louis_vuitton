package org.squirrelframework.foundation.fsm;

import java.util.List;
import java.util.Set;
import org.squirrelframework.foundation.component.SquirrelComponent;
import org.squirrelframework.foundation.fsm.StateMachine;

/* JADX INFO: loaded from: classes5.dex */
public interface ImmutableState<T extends StateMachine<T, S, E, C>, S, E, C> extends Visitable, SquirrelComponent {
    ImmutableState<T, S, E, C> enterByHistory(StateContext<T, S, E, C> stateContext);

    ImmutableState<T, S, E, C> enterDeep(StateContext<T, S, E, C> stateContext);

    ImmutableState<T, S, E, C> enterShallow(StateContext<T, S, E, C> stateContext);

    void entry(StateContext<T, S, E, C> stateContext);

    void exit(StateContext<T, S, E, C> stateContext);

    Set<E> getAcceptableEvents();

    List<ImmutableTransition<T, S, E, C>> getAllTransitions();

    List<ImmutableState<T, S, E, C>> getChildStates();

    StateCompositeType getCompositeType();

    List<Action<T, S, E, C>> getEntryActions();

    List<Action<T, S, E, C>> getExitActions();

    HistoryType getHistoryType();

    ImmutableState<T, S, E, C> getInitialState();

    int getLevel();

    ImmutableState<T, S, E, C> getParentState();

    String getPath();

    S getStateId();

    ImmutableState<T, S, E, C> getThis();

    List<ImmutableTransition<T, S, E, C>> getTransitions(E e2);

    boolean hasChildStates();

    void internalFire(StateContext<T, S, E, C> stateContext);

    boolean isChildStateOf(ImmutableState<T, S, E, C> immutableState);

    boolean isFinalState();

    boolean isParallelState();

    boolean isRegion();

    boolean isRootState();

    void verify();
}
