package org.squirrelframework.foundation.fsm;

import org.squirrelframework.foundation.fsm.StateMachine;

/* JADX INFO: loaded from: classes5.dex */
public interface MutableTimedState<T extends StateMachine<T, S, E, C>, S, E, C> extends MutableState<T, S, E, C> {
    void setAutoFireContext(C c2);

    void setAutoFireEvent(E e2);

    void setInitialDelay(long j2);

    void setTimeInterval(long j2);
}
