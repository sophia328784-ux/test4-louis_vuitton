package org.squirrelframework.foundation.fsm.builder;

import org.squirrelframework.foundation.fsm.StateMachine;

/* JADX INFO: loaded from: classes5.dex */
public interface Between<T extends StateMachine<T, S, E, C>, S, E, C> {
    And<T, S, E, C> and(S s);
}
