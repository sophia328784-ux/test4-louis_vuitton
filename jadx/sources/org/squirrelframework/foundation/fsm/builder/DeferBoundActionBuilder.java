package org.squirrelframework.foundation.fsm.builder;

import org.squirrelframework.foundation.fsm.StateMachine;

/* JADX INFO: loaded from: classes5.dex */
public interface DeferBoundActionBuilder<T extends StateMachine<T, S, E, C>, S, E, C> {
    DeferBoundActionFrom<T, S, E, C> from(S s);

    DeferBoundActionFrom<T, S, E, C> fromAny();
}
