package org.squirrelframework.foundation.fsm;

import java.util.List;
import org.squirrelframework.foundation.fsm.StateMachine;

/* JADX INFO: loaded from: classes5.dex */
public interface MutableTransition<T extends StateMachine<T, S, E, C>, S, E, C> extends ImmutableTransition<T, S, E, C> {
    void addAction(Action<T, S, E, C> action);

    void addActions(List<? extends Action<T, S, E, C>> list);

    void setCondition(Condition<C> condition);

    void setEvent(E e2);

    void setPriority(int i2);

    void setSourceState(ImmutableState<T, S, E, C> immutableState);

    void setTargetState(ImmutableState<T, S, E, C> immutableState);

    void setType(TransitionType transitionType);
}
