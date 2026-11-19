package org.squirrelframework.foundation.fsm.builder;

import org.squirrelframework.foundation.fsm.StateMachine;

/* JADX INFO: loaded from: classes5.dex */
public interface MultiTo<T extends StateMachine<T, S, E, C>, S, E, C> {
    On<T, S, E, C> onEach(E... eArr);
}
