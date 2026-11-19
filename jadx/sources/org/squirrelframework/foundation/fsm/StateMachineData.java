package org.squirrelframework.foundation.fsm;

import java.io.Serializable;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import org.squirrelframework.foundation.fsm.StateMachine;

/* JADX INFO: loaded from: classes5.dex */
public interface StateMachineData<T extends StateMachine<T, S, E, C>, S, E, C> extends Serializable {

    public interface Reader<T extends StateMachine<T, S, E, C>, S, E, C> extends Serializable {
        Collection<S> activeParentStates();

        ImmutableState<T, S, E, C> currentRawState();

        S currentState();

        String identifier();

        ImmutableState<T, S, E, C> initialRawState();

        S initialState();

        S lastActiveChildStateOf(S s);

        ImmutableState<T, S, E, C> lastRawState();

        S lastState();

        Reader<? extends StateMachine<?, S, E, C>, S, E, C> linkedStateDataOf(S s);

        Collection<S> linkedStates();

        Map<S, ImmutableState<T, S, E, C>> originalStates();

        Collection<S> parallelStates();

        ImmutableState<T, S, E, C> rawStateFrom(S s);

        Collection<ImmutableState<T, S, E, C>> rawStates();

        C startContext();

        Collection<S> states();

        List<S> subStatesOn(S s);

        Class<C> typeOfContext();

        Class<E> typeOfEvent();

        Class<S> typeOfState();

        Class<? extends T> typeOfStateMachine();
    }

    public interface Writer<T extends StateMachine<T, S, E, C>, S, E, C> extends Serializable {
        void currentState(S s);

        void identifier(String str);

        void initialState(S s);

        void lastActiveChildStateFor(S s, S s2);

        void lastState(S s);

        void linkedStateDataOn(S s, Reader<? extends StateMachine<?, S, E, C>, S, E, C> reader);

        void removeSubState(S s, S s2);

        void removeSubStatesOn(S s);

        void startContext(C c2);

        void subStateFor(S s, S s2);

        void typeOfContext(Class<C> cls);

        void typeOfEvent(Class<E> cls);

        void typeOfState(Class<S> cls);

        void typeOfStateMachine(Class<? extends T> cls);
    }

    void dump(Reader<T, S, E, C> reader);

    Reader<T, S, E, C> read();

    Writer<T, S, E, C> write();
}
