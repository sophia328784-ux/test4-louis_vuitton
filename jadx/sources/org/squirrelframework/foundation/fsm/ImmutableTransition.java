package org.squirrelframework.foundation.fsm;

import java.util.List;
import org.squirrelframework.foundation.component.SquirrelComponent;
import org.squirrelframework.foundation.fsm.StateMachine;

/* JADX INFO: loaded from: classes5.dex */
public interface ImmutableTransition<T extends StateMachine<T, S, E, C>, S, E, C> extends Visitable, SquirrelComponent {
    List<Action<T, S, E, C>> getActions();

    Condition<C> getCondition();

    E getEvent();

    int getPriority();

    ImmutableState<T, S, E, C> getSourceState();

    ImmutableState<T, S, E, C> getTargetState();

    TransitionType getType();

    void internalFire(StateContext<T, S, E, C> stateContext);

    boolean isMatch(S s, S s2, E e2, int i2);

    boolean isMatch(S s, S s2, E e2, int i2, Class<?> cls, TransitionType transitionType);

    ImmutableState<T, S, E, C> transit(StateContext<T, S, E, C> stateContext);

    void verify();
}
