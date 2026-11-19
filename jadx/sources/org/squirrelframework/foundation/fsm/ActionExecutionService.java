package org.squirrelframework.foundation.fsm;

import java.lang.reflect.Method;
import org.squirrelframework.foundation.component.Observable;
import org.squirrelframework.foundation.event.SquirrelEvent;
import org.squirrelframework.foundation.exception.TransitionException;
import org.squirrelframework.foundation.fsm.StateMachine;
import org.squirrelframework.foundation.util.ReflectUtils;

/* JADX INFO: loaded from: classes5.dex */
public interface ActionExecutionService<T extends StateMachine<T, S, E, C>, S, E, C> extends Observable {

    public interface ActionEvent<T extends StateMachine<T, S, E, C>, S, E, C> extends SquirrelEvent {
        C getContext();

        E getEvent();

        Action<T, S, E, C> getExecutionTarget();

        S getFrom();

        int[] getMOfN();

        T getStateMachine();

        S getTo();
    }

    public interface AfterExecActionEvent<T extends StateMachine<T, S, E, C>, S, E, C> extends ActionEvent<T, S, E, C> {
    }

    public interface AfterExecActionListener<T extends StateMachine<T, S, E, C>, S, E, C> {
        public static final String METHOD_NAME = "afterExecute";
        public static final Method METHOD = ReflectUtils.getMethod(AfterExecActionListener.class, METHOD_NAME, new Class[]{AfterExecActionEvent.class});

        void afterExecute(AfterExecActionEvent<T, S, E, C> afterExecActionEvent);
    }

    public interface BeforeExecActionEvent<T extends StateMachine<T, S, E, C>, S, E, C> extends ActionEvent<T, S, E, C> {
    }

    public interface BeforeExecActionListener<T extends StateMachine<T, S, E, C>, S, E, C> {
        public static final String METHOD_NAME = "beforeExecute";
        public static final Method METHOD = ReflectUtils.getMethod(BeforeExecActionListener.class, METHOD_NAME, new Class[]{BeforeExecActionEvent.class});

        void beforeExecute(BeforeExecActionEvent<T, S, E, C> beforeExecActionEvent);
    }

    public interface ExecActionExceptionEvent<T extends StateMachine<T, S, E, C>, S, E, C> extends ActionEvent<T, S, E, C> {
        TransitionException getException();
    }

    public interface ExecActionExceptionListener<T extends StateMachine<T, S, E, C>, S, E, C> {
        public static final String METHOD_NAME = "executeException";
        public static final Method METHOD = ReflectUtils.getMethod(ExecActionExceptionListener.class, METHOD_NAME, new Class[]{ExecActionExceptionEvent.class});

        void executeException(ExecActionExceptionEvent<T, S, E, C> execActionExceptionEvent);
    }

    void addExecActionExceptionListener(ExecActionExceptionListener<T, S, E, C> execActionExceptionListener);

    void addExecActionListener(AfterExecActionListener<T, S, E, C> afterExecActionListener);

    void addExecActionListener(BeforeExecActionListener<T, S, E, C> beforeExecActionListener);

    void begin(String str);

    void defer(Action<T, S, E, C> action, S s, S s2, E e2, C c2, T t);

    void execute();

    void removeExecActionExceptionListener(ExecActionExceptionListener<T, S, E, C> execActionExceptionListener);

    void removeExecActionListener(AfterExecActionListener<T, S, E, C> afterExecActionListener);

    void removeExecActionListener(BeforeExecActionListener<T, S, E, C> beforeExecActionListener);

    void reset();

    void setDummyExecution(boolean z);
}
