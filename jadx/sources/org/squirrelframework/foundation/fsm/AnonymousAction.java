package org.squirrelframework.foundation.fsm;

import org.squirrelframework.foundation.fsm.StateMachine;

/* JADX INFO: loaded from: classes5.dex */
public abstract class AnonymousAction<T extends StateMachine<T, S, E, C>, S, E, C> implements Action<T, S, E, C> {
    @Override // org.squirrelframework.foundation.fsm.Action
    public boolean isAsync() {
        return false;
    }

    @Override // org.squirrelframework.foundation.fsm.Action
    public String name() {
        return getClass().getSimpleName();
    }

    @Override // org.squirrelframework.foundation.fsm.Action
    public long timeout() {
        return -1L;
    }

    public final String toString() {
        return "instance#".concat(getClass().getName());
    }

    @Override // org.squirrelframework.foundation.fsm.Action
    public int weight() {
        return 0;
    }
}
