package org.squirrelframework.foundation.fsm;

import org.squirrelframework.foundation.component.SquirrelInstanceProvider;
import org.squirrelframework.foundation.fsm.StateMachine;

/* JADX INFO: loaded from: classes5.dex */
public interface MutableLinkedState<T extends StateMachine<T, S, E, C>, S, E, C> extends MutableState<T, S, E, C> {
    void setLinkedStateMachineProvider(SquirrelInstanceProvider<? extends StateMachine<?, S, E, C>> squirrelInstanceProvider);
}
