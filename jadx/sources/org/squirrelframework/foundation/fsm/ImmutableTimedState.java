package org.squirrelframework.foundation.fsm;

import org.squirrelframework.foundation.fsm.StateMachine;

/* JADX INFO: loaded from: classes5.dex */
public interface ImmutableTimedState<T extends StateMachine<T, S, E, C>, S, E, C> extends ImmutableState<T, S, E, C> {
    C getAutoFireContext();

    E getAutoFireEvent();

    long getInitialDelay();

    long getTimeInterval();
}
