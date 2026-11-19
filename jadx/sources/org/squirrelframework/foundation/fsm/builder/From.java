package org.squirrelframework.foundation.fsm.builder;

import org.squirrelframework.foundation.fsm.StateMachine;

/* JADX INFO: loaded from: classes5.dex */
public interface From<T extends StateMachine<T, S, E, C>, S, E, C> {
    To<T, S, E, C> to(S s);

    To<T, S, E, C> toFinal(S s);
}
