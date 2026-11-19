package org.squirrelframework.foundation.fsm.impl;

import com.google.common.collect.Lists;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import org.squirrelframework.foundation.fsm.Action;
import org.squirrelframework.foundation.fsm.Actions;
import org.squirrelframework.foundation.fsm.StateMachine;

/* JADX INFO: loaded from: classes5.dex */
public class ActionsImpl<T extends StateMachine<T, S, E, C>, S, E, C> implements Actions<T, S, E, C> {
    private final List<Action<T, S, E, C>> actions = new ArrayList();
    private List<Action<T, S, E, C>> sortedActions;

    private List<Action<T, S, E, C>> getSortedAction() {
        if (this.actions.isEmpty()) {
            return Collections.EMPTY_LIST;
        }
        if (this.sortedActions == null) {
            ArrayList arrayListA = Lists.a(this.actions);
            this.sortedActions = arrayListA;
            Collections.sort(arrayListA, new Comparator<Action<T, S, E, C>>() { // from class: org.squirrelframework.foundation.fsm.impl.ActionsImpl.1
                @Override // java.util.Comparator
                public int compare(Action<T, S, E, C> action, Action<T, S, E, C> action2) {
                    return action2.weight() - action.weight();
                }
            });
            this.sortedActions = Collections.unmodifiableList(this.sortedActions);
        }
        return this.sortedActions;
    }

    @Override // org.squirrelframework.foundation.fsm.Actions
    public void add(Action<T, S, E, C> action) {
        if (action == null || this.actions.contains(action)) {
            return;
        }
        this.actions.add(action);
    }

    @Override // org.squirrelframework.foundation.fsm.Actions
    public void addAll(List<? extends Action<T, S, E, C>> list) {
        if (list == null || list.isEmpty()) {
            return;
        }
        for (Action<T, S, E, C> action : list) {
            if (action != null) {
                add(action);
            }
        }
    }

    @Override // org.squirrelframework.foundation.fsm.Actions
    public void clear() {
        this.actions.clear();
        this.sortedActions = null;
    }

    @Override // org.squirrelframework.foundation.fsm.Actions
    public List<Action<T, S, E, C>> getAll() {
        return getSortedAction();
    }
}
