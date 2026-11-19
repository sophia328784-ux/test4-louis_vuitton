package org.squirrelframework.foundation.fsm.builder;

import org.squirrelframework.foundation.fsm.StateMachine;

/* JADX INFO: loaded from: classes5.dex */
public interface DeferBoundActionFrom<T extends StateMachine<T, S, E, C>, S, E, C> {
    DeferBoundActionTo<T, S, E, C> to(S s);

    DeferBoundActionTo<T, S, E, C> toAny();
}
