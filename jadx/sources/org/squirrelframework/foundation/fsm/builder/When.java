package org.squirrelframework.foundation.fsm.builder;

import java.util.List;
import org.squirrelframework.foundation.fsm.Action;
import org.squirrelframework.foundation.fsm.StateMachine;

/* JADX INFO: loaded from: classes5.dex */
public interface When<T extends StateMachine<T, S, E, C>, S, E, C> {
    void callMethod(String str);

    void evalMvel(String str);

    void perform(List<? extends Action<T, S, E, C>> list);

    void perform(Action<T, S, E, C> action);
}
