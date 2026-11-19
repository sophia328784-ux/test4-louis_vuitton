package org.squirrelframework.foundation.fsm.builder;

import org.squirrelframework.foundation.fsm.StateMachine;

/* JADX INFO: loaded from: classes5.dex */
public interface DeferBoundActionTo<T extends StateMachine<T, S, E, C>, S, E, C> {
    On<T, S, E, C> on(E e2);

    On<T, S, E, C> onAny();
}
