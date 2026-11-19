package org.squirrelframework.foundation.fsm.impl;

import org.squirrelframework.foundation.fsm.Action;
import org.squirrelframework.foundation.fsm.StateMachine;

/* JADX INFO: loaded from: classes5.dex */
final class UncallableActionImpl<T extends StateMachine<T, S, E, C>, S, E, C> implements Action<T, S, E, C> {
    private final Action<T, S, E, C> action;

    public UncallableActionImpl(Action<T, S, E, C> action) {
        this.action = action;
    }

    @Override // org.squirrelframework.foundation.fsm.Action
    public void execute(S s, S s2, E e2, C c2, T t) {
        throw new UnsupportedOperationException("Cannot invoke uncallable action.");
    }

    @Override // org.squirrelframework.foundation.fsm.Action
    public boolean isAsync() {
        return this.action.isAsync();
    }

    @Override // org.squirrelframework.foundation.fsm.Action
    public String name() {
        return this.action.name();
    }

    @Override // org.squirrelframework.foundation.fsm.Action
    public long timeout() {
        return this.action.timeout();
    }

    public final String toString() {
        return this.action.toString();
    }

    @Override // org.squirrelframework.foundation.fsm.Action
    public int weight() {
        return this.action.weight();
    }
}
