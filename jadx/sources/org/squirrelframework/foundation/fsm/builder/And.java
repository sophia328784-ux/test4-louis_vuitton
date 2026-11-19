package org.squirrelframework.foundation.fsm.builder;

import org.squirrelframework.foundation.fsm.StateMachine;

/* JADX INFO: loaded from: classes5.dex */
public interface And<T extends StateMachine<T, S, E, C>, S, E, C> {
    On<T, S, E, C> onMutual(E e2, E e3);
}
