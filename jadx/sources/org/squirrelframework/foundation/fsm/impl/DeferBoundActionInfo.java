package org.squirrelframework.foundation.fsm.impl;

import java.util.List;
import org.squirrelframework.foundation.fsm.Action;
import org.squirrelframework.foundation.fsm.StateMachine;

/* JADX INFO: loaded from: classes5.dex */
public class DeferBoundActionInfo<T extends StateMachine<T, S, E, C>, S, E, C> {
    private List<? extends Action<T, S, E, C>> actions;
    private E event;
    private S from;
    private S to;

    public DeferBoundActionInfo(S s, S s2, E e2) {
        this.from = s;
        this.to = s2;
        this.event = e2;
    }

    public List<? extends Action<T, S, E, C>> getActions() {
        return this.actions;
    }

    public boolean isEventStateMatch(E e2) {
        E e3 = this.event;
        return e3 == null || e3.equals(e2);
    }

    public boolean isFromStateMatch(S s) {
        S s2 = this.from;
        return s2 == null || s2.equals(s);
    }

    public boolean isToStateMatch(S s) {
        S s2 = this.to;
        return s2 == null || s2.equals(s);
    }

    public void setActions(List<? extends Action<T, S, E, C>> list) {
        this.actions = list;
    }
}
