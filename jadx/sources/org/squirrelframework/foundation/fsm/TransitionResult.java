package org.squirrelframework.foundation.fsm;

import java.util.List;
import org.squirrelframework.foundation.fsm.StateMachine;

/* JADX INFO: loaded from: classes5.dex */
public interface TransitionResult<T extends StateMachine<T, S, E, C>, S, E, C> {
    List<TransitionResult<T, S, E, C>> getAcceptedResults();

    TransitionResult<T, S, E, C> getParentResut();

    List<TransitionResult<T, S, E, C>> getSubResults();

    ImmutableState<T, S, E, C> getTargetState();

    boolean isAccepted();

    boolean isDeclined();

    TransitionResult<T, S, E, C> setAccepted(boolean z);

    TransitionResult<T, S, E, C> setParent(TransitionResult<T, S, E, C> transitionResult);

    TransitionResult<T, S, E, C> setTargetState(ImmutableState<T, S, E, C> immutableState);
}
