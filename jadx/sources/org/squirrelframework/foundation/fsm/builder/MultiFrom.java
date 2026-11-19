package org.squirrelframework.foundation.fsm.builder;

import org.squirrelframework.foundation.fsm.StateMachine;

/* JADX INFO: loaded from: classes5.dex */
public interface MultiFrom<T extends StateMachine<T, S, E, C>, S, E, C> {
    MultiTo<T, S, E, C> toAmong(S... sArr);
}
