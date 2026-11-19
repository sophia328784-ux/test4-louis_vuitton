package org.squirrelframework.foundation.fsm;

import org.squirrelframework.foundation.fsm.StateMachine;

/* JADX INFO: loaded from: classes5.dex */
public interface ImmutableLinkedState<T extends StateMachine<T, S, E, C>, S, E, C> extends ImmutableState<T, S, E, C> {
    StateMachine<? extends StateMachine<?, S, E, C>, S, E, C> getLinkedStateMachine(T t);
}
