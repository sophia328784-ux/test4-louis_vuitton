package org.squirrelframework.foundation.fsm;

import java.util.List;
import org.squirrelframework.foundation.component.SquirrelComponent;
import org.squirrelframework.foundation.fsm.StateMachine;

/* JADX INFO: loaded from: classes5.dex */
public interface Actions<T extends StateMachine<T, S, E, C>, S, E, C> extends SquirrelComponent {
    void add(Action<T, S, E, C> action);

    void addAll(List<? extends Action<T, S, E, C>> list);

    void clear();

    List<Action<T, S, E, C>> getAll();
}
