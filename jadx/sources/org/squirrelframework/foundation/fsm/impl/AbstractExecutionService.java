package org.squirrelframework.foundation.fsm.impl;

import com.google.common.base.Preconditions;
import defpackage.fc;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.squirrelframework.foundation.component.SquirrelConfiguration;
import org.squirrelframework.foundation.component.impl.AbstractSubject;
import org.squirrelframework.foundation.exception.ErrorCodes;
import org.squirrelframework.foundation.exception.SquirrelRuntimeException;
import org.squirrelframework.foundation.exception.TransitionException;
import org.squirrelframework.foundation.fsm.Action;
import org.squirrelframework.foundation.fsm.ActionExecutionService;
import org.squirrelframework.foundation.fsm.StateMachine;
import org.squirrelframework.foundation.fsm.StateMachineContext;
import org.squirrelframework.foundation.util.Pair;

/* JADX INFO: loaded from: classes5.dex */
public abstract class AbstractExecutionService<T extends StateMachine<T, S, E, C>, S, E, C> extends AbstractSubject implements ActionExecutionService<T, S, E, C> {
    private static final Logger logger = LoggerFactory.getLogger(AbstractExecutionService.class);
    protected final LinkedList<Pair<String, List<ActionContext<T, S, E, C>>>> actionBuckets = new LinkedList<>();
    protected boolean dummyExecution = false;
    private int actionTotalSize = 0;

    public static abstract class AbstractExecActionEvent<T extends StateMachine<T, S, E, C>, S, E, C> implements ActionExecutionService.ActionEvent<T, S, E, C> {
        private ActionContext<T, S, E, C> executionContext;
        private int pos;
        private int size;

        public AbstractExecActionEvent(int i2, int i3, ActionContext<T, S, E, C> actionContext) {
            this.pos = i2;
            this.size = i3;
            this.executionContext = actionContext;
        }

        @Override // org.squirrelframework.foundation.fsm.ActionExecutionService.ActionEvent
        public C getContext() {
            return this.executionContext.context;
        }

        @Override // org.squirrelframework.foundation.fsm.ActionExecutionService.ActionEvent
        public E getEvent() {
            return this.executionContext.event;
        }

        @Override // org.squirrelframework.foundation.fsm.ActionExecutionService.ActionEvent
        public Action<T, S, E, C> getExecutionTarget() {
            return new UncallableActionImpl(this.executionContext.action);
        }

        @Override // org.squirrelframework.foundation.fsm.ActionExecutionService.ActionEvent
        public S getFrom() {
            return this.executionContext.from;
        }

        @Override // org.squirrelframework.foundation.fsm.ActionExecutionService.ActionEvent
        public int[] getMOfN() {
            return new int[]{this.pos, this.size};
        }

        @Override // org.squirrelframework.foundation.fsm.ActionExecutionService.ActionEvent
        public T getStateMachine() {
            return this.executionContext.fsm;
        }

        @Override // org.squirrelframework.foundation.fsm.ActionExecutionService.ActionEvent
        public S getTo() {
            return this.executionContext.to;
        }
    }

    public static class ActionContext<T extends StateMachine<T, S, E, C>, S, E, C> {
        final Action<T, S, E, C> action;
        final C context;
        final E event;
        final S from;
        final T fsm;
        final int position;
        final S to;

        private ActionContext(Action<T, S, E, C> action, S s, S s2, E e2, C c2, T t, int i2) {
            this.action = action;
            this.from = s;
            this.to = s2;
            this.event = e2;
            this.context = c2;
            this.fsm = t;
            this.position = i2;
        }

        public static <T extends StateMachine<T, S, E, C>, S, E, C> ActionContext<T, S, E, C> get(Action<T, S, E, C> action, S s, S s2, E e2, C c2, T t, int i2) {
            return new ActionContext<>(action, s, s2, e2, c2, t, i2);
        }

        public void run() {
            AbstractStateMachine abstractStateMachine = (AbstractStateMachine) this.fsm;
            abstractStateMachine.beforeActionInvoked(this.from, this.to, this.event, this.context);
            this.action.execute(this.from, this.to, this.event, this.context, this.fsm);
            abstractStateMachine.afterActionInvoked(this.from, this.to, this.event, this.context);
        }
    }

    public static class AfterExecActionEventImpl<T extends StateMachine<T, S, E, C>, S, E, C> extends AbstractExecActionEvent<T, S, E, C> implements ActionExecutionService.AfterExecActionEvent<T, S, E, C> {
        public AfterExecActionEventImpl(int i2, int i3, ActionContext<T, S, E, C> actionContext) {
            super(i2, i3, actionContext);
        }

        public static <T extends StateMachine<T, S, E, C>, S, E, C> ActionExecutionService.AfterExecActionEvent<T, S, E, C> get(int i2, int i3, ActionContext<T, S, E, C> actionContext) {
            return new AfterExecActionEventImpl(i2, i3, actionContext);
        }
    }

    public static class BeforeExecActionEventImpl<T extends StateMachine<T, S, E, C>, S, E, C> extends AbstractExecActionEvent<T, S, E, C> implements ActionExecutionService.BeforeExecActionEvent<T, S, E, C> {
        public BeforeExecActionEventImpl(int i2, int i3, ActionContext<T, S, E, C> actionContext) {
            super(i2, i3, actionContext);
        }

        public static <T extends StateMachine<T, S, E, C>, S, E, C> ActionExecutionService.BeforeExecActionEvent<T, S, E, C> get(int i2, int i3, ActionContext<T, S, E, C> actionContext) {
            return new BeforeExecActionEventImpl(i2, i3, actionContext);
        }
    }

    public static class ExecActionExceptionEventImpl<T extends StateMachine<T, S, E, C>, S, E, C> extends AbstractExecActionEvent<T, S, E, C> implements ActionExecutionService.ExecActionExceptionEvent<T, S, E, C> {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final TransitionException f78277e;

        public ExecActionExceptionEventImpl(TransitionException transitionException, int i2, int i3, ActionContext<T, S, E, C> actionContext) {
            super(i2, i3, actionContext);
            this.f78277e = transitionException;
        }

        @Override // org.squirrelframework.foundation.fsm.ActionExecutionService.ExecActionExceptionEvent
        public TransitionException getException() {
            return this.f78277e;
        }
    }

    private void doExecute(String str, List<ActionContext<T, S, E, C>> list) {
        Preconditions.m(list, "Action bucket cannot be empty when executing.");
        HashMap map = new HashMap();
        int size = list.size();
        for (int i2 = 0; i2 < size; i2++) {
            final ActionContext<T, S, E, C> actionContext = list.get(i2);
            if (actionContext.action.weight() != Integer.MIN_VALUE) {
                try {
                    try {
                        fireEvent(BeforeExecActionEventImpl.get(actionContext.position, this.actionTotalSize, actionContext));
                        if (!this.dummyExecution) {
                            if (actionContext.action.isAsync()) {
                                final boolean zIsTestEvent = StateMachineContext.isTestEvent();
                                final StateMachine stateMachine = (StateMachine) StateMachineContext.currentInstance();
                                map.put(actionContext, SquirrelConfiguration.getExecutor().submit(new Runnable() { // from class: org.squirrelframework.foundation.fsm.impl.AbstractExecutionService.1
                                    @Override // java.lang.Runnable
                                    public void run() {
                                        StateMachineContext.set(stateMachine, zIsTestEvent);
                                        try {
                                            actionContext.run();
                                        } finally {
                                            StateMachineContext.set(null);
                                        }
                                    }
                                }));
                            } else {
                                actionContext.run();
                            }
                        }
                        fireEvent(AfterExecActionEventImpl.get(i2 + 1, size, actionContext));
                    } catch (Throwable th) {
                        fireEvent(AfterExecActionEventImpl.get(i2 + 1, size, actionContext));
                        throw th;
                    }
                } catch (Exception e2) {
                    logger.error("Error during transition", e2);
                    TransitionException transitionException = new TransitionException(e2 instanceof SquirrelRuntimeException ? ((SquirrelRuntimeException) e2).getTargetException() : e2, ErrorCodes.FSM_TRANSITION_ERROR, new Object[]{actionContext.from, actionContext.to, actionContext.event, actionContext.context, actionContext.action.name(), e2.getMessage()});
                    fireEvent(new ExecActionExceptionEventImpl(transitionException, i2 + 1, size, actionContext));
                    throw transitionException;
                }
            } else {
                logger.info("Method call action \"" + actionContext.action.name() + "\" (" + (i2 + 1) + " of " + size + ") was ignored.");
            }
        }
        for (Map.Entry entry : map.entrySet()) {
            Future future = (Future) entry.getValue();
            ActionContext actionContext2 = (ActionContext) entry.getKey();
            try {
                Logger logger2 = logger;
                logger2.debug("Waiting action '" + actionContext2.action.toString() + "' to finish.");
                if (actionContext2.action.timeout() >= 0) {
                    future.get(actionContext2.action.timeout(), TimeUnit.MILLISECONDS);
                } else {
                    future.get();
                }
                logger2.debug("Action '" + actionContext2.action.toString() + "' finished.");
            } catch (Exception e3) {
                future.cancel(true);
                TransitionException transitionException2 = new TransitionException(e3 instanceof ExecutionException ? ((ExecutionException) e3).getCause() : e3, ErrorCodes.FSM_TRANSITION_ERROR, new Object[]{actionContext2.from, actionContext2.to, actionContext2.event, actionContext2.context, actionContext2.action.name(), e3.getMessage()});
                fireEvent(new ExecActionExceptionEventImpl(transitionException2, actionContext2.position, this.actionTotalSize, actionContext2));
                throw transitionException2;
            }
        }
    }

    private void executeActions() {
        Pair<String, List<ActionContext<T, S, E, C>>> pairPoll = this.actionBuckets.poll();
        String strFirst = pairPoll.first();
        doExecute(strFirst, pairPoll.second());
        logger.debug(fc.h("Actions within '", strFirst, "' invoked."));
    }

    @Override // org.squirrelframework.foundation.fsm.ActionExecutionService
    public void addExecActionExceptionListener(ActionExecutionService.ExecActionExceptionListener<T, S, E, C> execActionExceptionListener) {
        addListener(ActionExecutionService.ExecActionExceptionEvent.class, execActionExceptionListener, ActionExecutionService.ExecActionExceptionListener.METHOD);
    }

    @Override // org.squirrelframework.foundation.fsm.ActionExecutionService
    public void addExecActionListener(ActionExecutionService.BeforeExecActionListener<T, S, E, C> beforeExecActionListener) {
        addListener(ActionExecutionService.BeforeExecActionEvent.class, beforeExecActionListener, ActionExecutionService.BeforeExecActionListener.METHOD);
    }

    @Override // org.squirrelframework.foundation.fsm.ActionExecutionService
    public void begin(String str) {
        this.actionBuckets.add(new Pair<>(str, new ArrayList()));
    }

    @Override // org.squirrelframework.foundation.fsm.ActionExecutionService
    public void defer(Action<T, S, E, C> action, S s, S s2, E e2, C c2, T t) {
        Preconditions.m(action, "Action parameter cannot be null.");
        List<ActionContext<T, S, E, C>> listSecond = this.actionBuckets.peekLast().second();
        Preconditions.m(listSecond, "Action bucket currently is empty. Make sure execution service is began.");
        int i2 = this.actionTotalSize + 1;
        this.actionTotalSize = i2;
        listSecond.add(ActionContext.get(action, s, s2, e2, c2, t, i2));
    }

    @Override // org.squirrelframework.foundation.fsm.ActionExecutionService
    public void execute() {
        while (this.actionBuckets.size() > 0) {
            try {
                executeActions();
            } catch (Throwable th) {
                reset();
                throw th;
            }
        }
        reset();
    }

    @Override // org.squirrelframework.foundation.fsm.ActionExecutionService
    public void removeExecActionExceptionListener(ActionExecutionService.ExecActionExceptionListener<T, S, E, C> execActionExceptionListener) {
        removeListener(ActionExecutionService.ExecActionExceptionEvent.class, execActionExceptionListener);
    }

    @Override // org.squirrelframework.foundation.fsm.ActionExecutionService
    public void removeExecActionListener(ActionExecutionService.BeforeExecActionListener<T, S, E, C> beforeExecActionListener) {
        removeListener(ActionExecutionService.BeforeExecActionEvent.class, beforeExecActionListener);
    }

    @Override // org.squirrelframework.foundation.fsm.ActionExecutionService
    public void reset() {
        this.actionBuckets.clear();
        this.actionTotalSize = 0;
    }

    @Override // org.squirrelframework.foundation.fsm.ActionExecutionService
    public void setDummyExecution(boolean z) {
        this.dummyExecution = z;
    }

    @Override // org.squirrelframework.foundation.fsm.ActionExecutionService
    public void removeExecActionListener(ActionExecutionService.AfterExecActionListener<T, S, E, C> afterExecActionListener) {
        removeListener(ActionExecutionService.AfterExecActionListener.class, afterExecActionListener);
    }

    @Override // org.squirrelframework.foundation.fsm.ActionExecutionService
    public void addExecActionListener(ActionExecutionService.AfterExecActionListener<T, S, E, C> afterExecActionListener) {
        addListener(ActionExecutionService.AfterExecActionListener.class, afterExecActionListener, ActionExecutionService.AfterExecActionListener.METHOD);
    }
}
