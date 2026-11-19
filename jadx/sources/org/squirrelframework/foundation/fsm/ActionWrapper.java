package org.squirrelframework.foundation.fsm;

import org.squirrelframework.foundation.fsm.StateMachine;

/* JADX INFO: loaded from: classes5.dex */
public class ActionWrapper<T extends StateMachine<T, S, E, C>, S, E, C> implements Action<T, S, E, C> {
    private final Action<T, S, E, C> delegator;

    public ActionWrapper(Action<T, S, E, C> action) {
        this.delegator = action;
    }

    @Override // org.squirrelframework.foundation.fsm.Action
    public void execute(S s, S s2, E e2, C c2, T t) {
        this.delegator.execute(s, s2, e2, c2, t);
    }

    @Override // org.squirrelframework.foundation.fsm.Action
    public boolean isAsync() {
        return this.delegator.isAsync();
    }

    @Override // org.squirrelframework.foundation.fsm.Action
    public String name() {
        return this.delegator.name();
    }

    @Override // org.squirrelframework.foundation.fsm.Action
    public long timeout() {
        return this.delegator.timeout();
    }

    @Override // org.squirrelframework.foundation.fsm.Action
    public int weight() {
        return this.delegator.weight();
    }
}
