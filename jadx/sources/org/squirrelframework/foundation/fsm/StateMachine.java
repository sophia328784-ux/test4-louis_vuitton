package org.squirrelframework.foundation.fsm;

import java.lang.reflect.Method;
import java.util.Collection;
import java.util.List;
import org.squirrelframework.foundation.component.Observable;
import org.squirrelframework.foundation.event.SquirrelEvent;
import org.squirrelframework.foundation.exception.TransitionException;
import org.squirrelframework.foundation.fsm.StateMachine;
import org.squirrelframework.foundation.util.ReflectUtils;

/* JADX INFO: loaded from: classes5.dex */
public interface StateMachine<T extends StateMachine<T, S, E, C>, S, E, C> extends Visitable, Observable {

    public interface StartEvent<T extends StateMachine<T, S, E, C>, S, E, C> extends StateMachineEvent<T, S, E, C> {
    }

    public interface StartListener<T extends StateMachine<T, S, E, C>, S, E, C> {
        public static final String METHOD_NAME = "started";
        public static final Method METHOD = ReflectUtils.getMethod(StartListener.class, METHOD_NAME, new Class[]{StartEvent.class});

        void started(StartEvent<T, S, E, C> startEvent);
    }

    public interface StateMachineEvent<T extends StateMachine<T, S, E, C>, S, E, C> extends SquirrelEvent {
        T getStateMachine();
    }

    public interface StateMachineExceptionEvent<T extends StateMachine<T, S, E, C>, S, E, C> extends StateMachineEvent<T, S, E, C> {
        Exception getException();
    }

    public interface StateMachineExceptionListener<T extends StateMachine<T, S, E, C>, S, E, C> {
        public static final String METHOD_NAME = "stateMachineException";
        public static final Method METHOD = ReflectUtils.getMethod(StateMachineExceptionListener.class, METHOD_NAME, new Class[]{StateMachineExceptionEvent.class});

        void stateMachineException(StateMachineExceptionEvent<T, S, E, C> stateMachineExceptionEvent);
    }

    public interface StateMachineListener<T extends StateMachine<T, S, E, C>, S, E, C> {
        public static final String METHOD_NAME = "stateMachineEvent";
        public static final Method METHOD = ReflectUtils.getMethod(StateMachineListener.class, METHOD_NAME, new Class[]{StateMachineEvent.class});

        void stateMachineEvent(StateMachineEvent<T, S, E, C> stateMachineEvent);
    }

    public interface TerminateEvent<T extends StateMachine<T, S, E, C>, S, E, C> extends StateMachineEvent<T, S, E, C> {
    }

    public interface TerminateListener<T extends StateMachine<T, S, E, C>, S, E, C> {
        public static final String METHOD_NAME = "terminated";
        public static final Method METHOD = ReflectUtils.getMethod(TerminateListener.class, METHOD_NAME, new Class[]{TerminateEvent.class});

        void terminated(TerminateEvent<T, S, E, C> terminateEvent);
    }

    public interface TransitionBeginEvent<T extends StateMachine<T, S, E, C>, S, E, C> extends TransitionEvent<T, S, E, C> {
    }

    public interface TransitionBeginListener<T extends StateMachine<T, S, E, C>, S, E, C> {
        public static final String METHOD_NAME = "transitionBegin";
        public static final Method METHOD = ReflectUtils.getMethod(TransitionBeginListener.class, METHOD_NAME, new Class[]{TransitionBeginEvent.class});

        void transitionBegin(TransitionBeginEvent<T, S, E, C> transitionBeginEvent);
    }

    public interface TransitionCompleteEvent<T extends StateMachine<T, S, E, C>, S, E, C> extends TransitionEvent<T, S, E, C> {
        S getTargetState();
    }

    public interface TransitionCompleteListener<T extends StateMachine<T, S, E, C>, S, E, C> {
        public static final String METHOD_NAME = "transitionComplete";
        public static final Method METHOD = ReflectUtils.getMethod(TransitionCompleteListener.class, METHOD_NAME, new Class[]{TransitionCompleteEvent.class});

        void transitionComplete(TransitionCompleteEvent<T, S, E, C> transitionCompleteEvent);
    }

    public interface TransitionDeclinedEvent<T extends StateMachine<T, S, E, C>, S, E, C> extends TransitionEvent<T, S, E, C> {
    }

    public interface TransitionDeclinedListener<T extends StateMachine<T, S, E, C>, S, E, C> {
        public static final String METHOD_NAME = "transitionDeclined";
        public static final Method METHOD = ReflectUtils.getMethod(TransitionDeclinedListener.class, METHOD_NAME, new Class[]{TransitionDeclinedEvent.class});

        void transitionDeclined(TransitionDeclinedEvent<T, S, E, C> transitionDeclinedEvent);
    }

    public interface TransitionEndEvent<T extends StateMachine<T, S, E, C>, S, E, C> extends TransitionEvent<T, S, E, C> {
        S getTargetState();
    }

    public interface TransitionEndListener<T extends StateMachine<T, S, E, C>, S, E, C> {
        public static final String METHOD_NAME = "transitionEnd";
        public static final Method METHOD = ReflectUtils.getMethod(TransitionEndListener.class, METHOD_NAME, new Class[]{TransitionEndEvent.class});

        void transitionEnd(TransitionEndEvent<T, S, E, C> transitionEndEvent);
    }

    public interface TransitionEvent<T extends StateMachine<T, S, E, C>, S, E, C> extends StateMachineEvent<T, S, E, C> {
        E getCause();

        C getContext();

        S getSourceState();
    }

    public interface TransitionExceptionEvent<T extends StateMachine<T, S, E, C>, S, E, C> extends TransitionEvent<T, S, E, C> {
        TransitionException getException();

        S getTargetState();
    }

    public interface TransitionExceptionListener<T extends StateMachine<T, S, E, C>, S, E, C> {
        public static final String METHOD_NAME = "transitionException";
        public static final Method METHOD = ReflectUtils.getMethod(TransitionExceptionListener.class, METHOD_NAME, new Class[]{TransitionExceptionEvent.class});

        void transitionException(TransitionExceptionEvent<T, S, E, C> transitionExceptionEvent);
    }

    void addDeclarativeListener(Object obj);

    void addExecActionListener(ActionExecutionService.BeforeExecActionListener<T, S, E, C> beforeExecActionListener);

    void addStartListener(StartListener<T, S, E, C> startListener);

    void addStateMachineExceptionListener(StateMachineExceptionListener<T, S, E, C> stateMachineExceptionListener);

    void addStateMachineListener(StateMachineListener<T, S, E, C> stateMachineListener);

    void addTerminateListener(TerminateListener<T, S, E, C> terminateListener);

    void addTransitionBeginListener(TransitionBeginListener<T, S, E, C> transitionBeginListener);

    void addTransitionCompleteListener(TransitionCompleteListener<T, S, E, C> transitionCompleteListener);

    void addTransitionDeclinedListener(TransitionDeclinedListener<T, S, E, C> transitionDeclinedListener);

    void addTransitionEndListener(TransitionEndListener<T, S, E, C> transitionEndListener);

    void addTransitionExceptionListener(TransitionExceptionListener<T, S, E, C> transitionExceptionListener);

    boolean canAccept(E e2);

    StateMachineData.Reader<T, S, E, C> dumpSavedData();

    String exportXMLDefinition(boolean z);

    void fire(E e2);

    void fire(E e2, C c2);

    void fireImmediate(E e2);

    void fireImmediate(E e2, C c2);

    Collection<ImmutableState<T, S, E, C>> getAllRawStates();

    Collection<S> getAllStates();

    ImmutableState<T, S, E, C> getCurrentRawState();

    S getCurrentState();

    String getDescription();

    String getIdentifier();

    ImmutableState<T, S, E, C> getInitialRawState();

    S getInitialState();

    S getLastActiveChildStateOf(S s);

    TransitionException getLastException();

    ImmutableState<T, S, E, C> getLastRawState();

    S getLastState();

    ImmutableState<T, S, E, C> getRawStateFrom(S s);

    StateMachineStatus getStatus();

    List<S> getSubStatesOn(S s);

    T getThis();

    @Deprecated
    boolean isContextSensitive();

    boolean isError();

    boolean isRemoteMonitorEnabled();

    boolean isStarted();

    boolean isTerminated();

    boolean loadSavedData(StateMachineData.Reader<T, S, E, C> reader);

    void removeDeclarativeListener(Object obj);

    void removeExecActionListener(ActionExecutionService.BeforeExecActionListener<T, S, E, C> beforeExecActionListener);

    void removeStartListener(StartListener<T, S, E, C> startListener);

    void removeStateMachineExceptionListener(StateMachineExceptionListener<T, S, E, C> stateMachineExceptionListener);

    void removeStateMachineListener(StateMachineListener<T, S, E, C> stateMachineListener);

    void removeTerminateListener(TerminateListener<T, S, E, C> terminateListener);

    void removeTransitionBeginListener(TransitionBeginListener<T, S, E, C> transitionBeginListener);

    void removeTransitionCompleteListener(TransitionCompleteListener<T, S, E, C> transitionCompleteListener);

    @Deprecated
    void removeTransitionDecleindListener(TransitionDeclinedListener<T, S, E, C> transitionDeclinedListener);

    void removeTransitionDeclinedListener(TransitionDeclinedListener<T, S, E, C> transitionDeclinedListener);

    void removeTransitionEndListener(TransitionEndListener<T, S, E, C> transitionEndListener);

    void removeTransitionExceptionListener(TransitionExceptionListener<T, S, E, C> transitionExceptionListener);

    void start();

    void start(C c2);

    void terminate();

    void terminate(C c2);

    S test(E e2);

    S test(E e2, C c2);

    Class<C> typeOfContext();

    Class<E> typeOfEvent();

    Class<S> typeOfState();
}
