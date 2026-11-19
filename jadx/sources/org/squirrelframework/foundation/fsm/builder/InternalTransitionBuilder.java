package org.squirrelframework.foundation.fsm.builder;

import org.squirrelframework.foundation.fsm.StateMachine;

/* JADX INFO: loaded from: classes5.dex */
public interface InternalTransitionBuilder<T extends StateMachine<T, S, E, C>, S, E, C> {
    To<T, S, E, C> within(S s);
}
