package org.squirrelframework.foundation.fsm;

/* JADX INFO: loaded from: classes5.dex */
public interface Visitor {
    void visitOnEntry(ImmutableState<?, ?, ?, ?> immutableState);

    void visitOnEntry(ImmutableTransition<?, ?, ?, ?> immutableTransition);

    void visitOnEntry(StateMachine<?, ?, ?, ?> stateMachine);

    void visitOnExit(ImmutableState<?, ?, ?, ?> immutableState);

    void visitOnExit(ImmutableTransition<?, ?, ?, ?> immutableTransition);

    void visitOnExit(StateMachine<?, ?, ?, ?> stateMachine);
}
