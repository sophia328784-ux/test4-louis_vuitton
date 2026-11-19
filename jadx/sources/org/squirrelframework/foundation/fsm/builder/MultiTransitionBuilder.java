package org.squirrelframework.foundation.fsm.builder;

import org.squirrelframework.foundation.fsm.StateMachine;

/* JADX INFO: loaded from: classes5.dex */
public interface MultiTransitionBuilder<T extends StateMachine<T, S, E, C>, S, E, C> {
    Between<T, S, E, C> between(S s);

    MultiFrom<T, S, E, C> from(S s);

    From<T, S, E, C> fromAmong(S... sArr);
}
