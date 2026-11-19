package org.squirrelframework.foundation.fsm.impl;

import com.google.common.base.Preconditions;
import com.google.common.base.Predicate;
import com.sightcall.universal.media.offline.FileUtils;
import defpackage.az;
import defpackage.md;
import defpackage.pq0;
import java.lang.annotation.Annotation;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.lang.reflect.Proxy;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Stack;
import java.util.concurrent.LinkedBlockingDeque;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.squirrelframework.foundation.component.Observable;
import org.squirrelframework.foundation.component.SquirrelProvider;
import org.squirrelframework.foundation.component.impl.AbstractSubject;
import org.squirrelframework.foundation.event.AsyncEventListener;
import org.squirrelframework.foundation.event.ListenerMethod;
import org.squirrelframework.foundation.exception.ErrorCodes;
import org.squirrelframework.foundation.exception.TransitionException;
import org.squirrelframework.foundation.fsm.Action;
import org.squirrelframework.foundation.fsm.ActionExecutionService;
import org.squirrelframework.foundation.fsm.Converter;
import org.squirrelframework.foundation.fsm.ConverterProvider;
import org.squirrelframework.foundation.fsm.ImmutableLinkedState;
import org.squirrelframework.foundation.fsm.ImmutableState;
import org.squirrelframework.foundation.fsm.MvelScriptManager;
import org.squirrelframework.foundation.fsm.SCXMLVisitor;
import org.squirrelframework.foundation.fsm.StateContext;
import org.squirrelframework.foundation.fsm.StateMachine;
import org.squirrelframework.foundation.fsm.StateMachineConfiguration;
import org.squirrelframework.foundation.fsm.StateMachineContext;
import org.squirrelframework.foundation.fsm.StateMachineData;
import org.squirrelframework.foundation.fsm.StateMachineLogger;
import org.squirrelframework.foundation.fsm.StateMachineStatus;
import org.squirrelframework.foundation.fsm.TransitionResult;
import org.squirrelframework.foundation.fsm.Visitor;
import org.squirrelframework.foundation.fsm.annotation.AsyncExecute;
import org.squirrelframework.foundation.fsm.annotation.ListenerOrder;
import org.squirrelframework.foundation.fsm.annotation.OnActionExecException;
import org.squirrelframework.foundation.fsm.annotation.OnAfterActionExecuted;
import org.squirrelframework.foundation.fsm.annotation.OnBeforeActionExecuted;
import org.squirrelframework.foundation.fsm.annotation.OnStateMachineStart;
import org.squirrelframework.foundation.fsm.annotation.OnStateMachineTerminate;
import org.squirrelframework.foundation.fsm.annotation.OnTransitionBegin;
import org.squirrelframework.foundation.fsm.annotation.OnTransitionComplete;
import org.squirrelframework.foundation.fsm.annotation.OnTransitionDecline;
import org.squirrelframework.foundation.fsm.annotation.OnTransitionEnd;
import org.squirrelframework.foundation.fsm.annotation.OnTransitionException;
import org.squirrelframework.foundation.util.Pair;
import org.squirrelframework.foundation.util.ReflectUtils;
import org.squirrelframework.foundation.util.TypeReference;

/* JADX INFO: loaded from: classes5.dex */
public abstract class AbstractStateMachine<T extends StateMachine<T, S, E, C>, S, E, C> extends AbstractSubject implements StateMachine<T, S, E, C> {
    private StateMachineData<T, S, E, C> data;
    private Class<?>[] extraParamTypes;
    private E finishEvent;
    private boolean isAutoStartEnabled;
    private boolean isAutoTerminateEnabled;
    private boolean isDataIsolateEnabled;
    private boolean isDebugModeEnabled;
    private boolean isDelegatorModeEnabled;
    private boolean isRemoteMonitorEnabled;
    private TransitionException lastException;
    protected final Lock readLock;
    protected final ReentrantReadWriteLock rwLock;
    private MvelScriptManager scriptManager;
    private E startEvent;
    private E terminateEvent;
    private long transitionTimeout;
    protected final Lock writeLock;
    private static final Logger logger = LoggerFactory.getLogger(AbstractStateMachine.class);
    private static final Class<?>[][] stateMachineListenerMapping = {new Class[]{OnTransitionBegin.class, StateMachine.TransitionBeginListener.class, StateMachine.TransitionBeginEvent.class}, new Class[]{OnTransitionComplete.class, StateMachine.TransitionCompleteListener.class, StateMachine.TransitionCompleteEvent.class}, new Class[]{OnTransitionDecline.class, StateMachine.TransitionDeclinedListener.class, StateMachine.TransitionDeclinedEvent.class}, new Class[]{OnTransitionEnd.class, StateMachine.TransitionEndListener.class, StateMachine.TransitionEndEvent.class}, new Class[]{OnTransitionException.class, StateMachine.TransitionExceptionListener.class, StateMachine.TransitionExceptionEvent.class}, new Class[]{OnStateMachineStart.class, StateMachine.StartListener.class, StateMachine.StartEvent.class}, new Class[]{OnStateMachineTerminate.class, StateMachine.TerminateListener.class, StateMachine.TerminateEvent.class}};
    private static final Class<?>[][] actionExecutorListenerMapping = {new Class[]{OnBeforeActionExecuted.class, ActionExecutionService.BeforeExecActionListener.class, ActionExecutionService.BeforeExecActionEvent.class}, new Class[]{OnAfterActionExecuted.class, ActionExecutionService.AfterExecActionListener.class, ActionExecutionService.AfterExecActionEvent.class}, new Class[]{OnActionExecException.class, ActionExecutionService.ExecActionExceptionListener.class, ActionExecutionService.ExecActionExceptionEvent.class}};
    private final ActionExecutionService<T, S, E, C> executor = (ActionExecutionService) SquirrelProvider.getInstance().newInstance((TypeReference) new TypeReference<ActionExecutionService<T, S, E, C>>() { // from class: org.squirrelframework.foundation.fsm.impl.AbstractStateMachine.1
    });
    private volatile StateMachineStatus status = StateMachineStatus.INITIALIZED;
    private LinkedBlockingDeque<Pair<E, C>> queuedEvents = new LinkedBlockingDeque<>();
    private LinkedBlockingQueue<Pair<E, C>> queuedTestEvents = new LinkedBlockingQueue<>();
    private volatile boolean isProcessingTestEvent = false;

    public static abstract class AbstractStateMachineEvent<T extends StateMachine<T, S, E, C>, S, E, C> implements StateMachine.StateMachineEvent<T, S, E, C> {
        private final T stateMachine;

        public AbstractStateMachineEvent(T t) {
            this.stateMachine = t;
        }

        @Override // org.squirrelframework.foundation.fsm.StateMachine.StateMachineEvent
        public T getStateMachine() {
            return this.stateMachine;
        }
    }

    public static abstract class AbstractTransitionEvent<T extends StateMachine<T, S, E, C>, S, E, C> extends AbstractStateMachineEvent<T, S, E, C> implements StateMachine.TransitionEvent<T, S, E, C> {
        private final C context;
        private final E event;
        private final S sourceState;

        public AbstractTransitionEvent(S s, E e2, C c2, T t) {
            super(t);
            this.sourceState = s;
            this.event = e2;
            this.context = c2;
        }

        @Override // org.squirrelframework.foundation.fsm.StateMachine.TransitionEvent
        public E getCause() {
            return this.event;
        }

        @Override // org.squirrelframework.foundation.fsm.StateMachine.TransitionEvent
        public C getContext() {
            return this.context;
        }

        @Override // org.squirrelframework.foundation.fsm.StateMachine.TransitionEvent
        public S getSourceState() {
            return this.sourceState;
        }
    }

    public interface DeclarativeListener {
        Object getListenTarget();
    }

    public static class StartEventImpl<T extends StateMachine<T, S, E, C>, S, E, C> extends AbstractStateMachineEvent<T, S, E, C> implements StateMachine.StartEvent<T, S, E, C> {
        public StartEventImpl(T t) {
            super(t);
        }
    }

    public static class StateMachineExceptionEventImpl<T extends StateMachine<T, S, E, C>, S, E, C> extends AbstractStateMachineEvent<T, S, E, C> implements StateMachine.StateMachineExceptionEvent<T, S, E, C> {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final Exception f78278e;

        public StateMachineExceptionEventImpl(Exception exc, T t) {
            super(t);
            this.f78278e = exc;
        }

        @Override // org.squirrelframework.foundation.fsm.StateMachine.StateMachineExceptionEvent
        public Exception getException() {
            return this.f78278e;
        }
    }

    public static class TerminateEventImpl<T extends StateMachine<T, S, E, C>, S, E, C> extends AbstractStateMachineEvent<T, S, E, C> implements StateMachine.TerminateEvent<T, S, E, C> {
        public TerminateEventImpl(T t) {
            super(t);
        }
    }

    public static class TransitionBeginEventImpl<T extends StateMachine<T, S, E, C>, S, E, C> extends AbstractTransitionEvent<T, S, E, C> implements StateMachine.TransitionBeginEvent<T, S, E, C> {
        public TransitionBeginEventImpl(S s, E e2, C c2, T t) {
            super(s, e2, c2, t);
        }
    }

    public static class TransitionCompleteEventImpl<T extends StateMachine<T, S, E, C>, S, E, C> extends AbstractTransitionEvent<T, S, E, C> implements StateMachine.TransitionCompleteEvent<T, S, E, C> {
        private final S targetState;

        public TransitionCompleteEventImpl(S s, S s2, E e2, C c2, T t) {
            super(s, e2, c2, t);
            this.targetState = s2;
        }

        @Override // org.squirrelframework.foundation.fsm.StateMachine.TransitionCompleteEvent
        public S getTargetState() {
            return this.targetState;
        }
    }

    public static class TransitionDeclinedEventImpl<T extends StateMachine<T, S, E, C>, S, E, C> extends AbstractTransitionEvent<T, S, E, C> implements StateMachine.TransitionDeclinedEvent<T, S, E, C> {
        public TransitionDeclinedEventImpl(S s, E e2, C c2, T t) {
            super(s, e2, c2, t);
        }
    }

    public static class TransitionEndEventImpl<T extends StateMachine<T, S, E, C>, S, E, C> extends AbstractTransitionEvent<T, S, E, C> implements StateMachine.TransitionEndEvent<T, S, E, C> {
        private final S targetState;

        public TransitionEndEventImpl(S s, S s2, E e2, C c2, T t) {
            super(s, e2, c2, t);
            this.targetState = s2;
        }

        @Override // org.squirrelframework.foundation.fsm.StateMachine.TransitionEndEvent
        public S getTargetState() {
            return this.targetState;
        }
    }

    public static class TransitionExceptionEventImpl<T extends StateMachine<T, S, E, C>, S, E, C> extends AbstractTransitionEvent<T, S, E, C> implements StateMachine.TransitionExceptionEvent<T, S, E, C> {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final TransitionException f78279e;
        private final S targetState;

        public TransitionExceptionEventImpl(TransitionException transitionException, S s, S s2, E e2, C c2, T t) {
            super(s, e2, c2, t);
            this.targetState = s2;
            this.f78279e = transitionException;
        }

        @Override // org.squirrelframework.foundation.fsm.StateMachine.TransitionExceptionEvent
        public TransitionException getException() {
            return this.f78279e;
        }

        @Override // org.squirrelframework.foundation.fsm.StateMachine.TransitionExceptionEvent
        public S getTargetState() {
            return this.targetState;
        }
    }

    public AbstractStateMachine() {
        ReentrantReadWriteLock reentrantReadWriteLock = new ReentrantReadWriteLock();
        this.rwLock = reentrantReadWriteLock;
        this.writeLock = reentrantReadWriteLock.writeLock();
        this.readLock = reentrantReadWriteLock.readLock();
        this.isAutoStartEnabled = true;
        this.isAutoTerminateEnabled = true;
        this.isDelegatorModeEnabled = false;
        this.transitionTimeout = -1L;
        this.isDataIsolateEnabled = false;
        this.isDebugModeEnabled = false;
        this.isRemoteMonitorEnabled = false;
        this.lastException = null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void dumpLinkedStateFor(ImmutableState<T, S, E, C> immutableState, StateMachineData.Writer<T, S, E, C> writer) {
        if (immutableState == null || !(immutableState instanceof ImmutableLinkedState)) {
            return;
        }
        writer.linkedStateDataOn(immutableState.getStateId(), ((ImmutableLinkedState) immutableState).getLinkedStateMachine(getThis()).dumpSavedData());
    }

    private void entryAll(ImmutableState<T, S, E, C> immutableState, StateContext<T, S, E, C> stateContext) {
        Stack stack = new Stack();
        while (immutableState != null) {
            stack.push(immutableState);
            immutableState = immutableState.getParentState();
        }
        while (stack.size() > 0) {
            ((ImmutableState) stack.pop()).entry(stateContext);
        }
    }

    private void exitAll(ImmutableState<T, S, E, C> immutableState, StateContext<T, S, E, C> stateContext) {
        while (immutableState != null) {
            immutableState.exit(stateContext);
            immutableState = immutableState.getParentState();
        }
    }

    private void fire(E e2, C c2, boolean z) {
        boolean zIsEntryPoint = isEntryPoint();
        if (zIsEntryPoint) {
            StateMachineContext.set(getThis());
        } else if (this.isDelegatorModeEnabled && StateMachineContext.currentInstance() != this) {
            ((StateMachine) StateMachineContext.currentInstance()).fire(e2, c2);
            return;
        }
        try {
            if (StateMachineContext.isTestEvent()) {
                internalTest(e2, c2);
            } else {
                internalFire(e2, c2, z);
            }
        } finally {
            if (zIsEntryPoint) {
                StateMachineContext.set(null);
            }
        }
    }

    private ActionExecutionService<T, S, E, C> getDummyExecutor() {
        ActionExecutionService<T, S, E, C> actionExecutionService = (ActionExecutionService) SquirrelProvider.getInstance().newInstance((TypeReference) new TypeReference<ActionExecutionService<T, S, E, C>>() { // from class: org.squirrelframework.foundation.fsm.impl.AbstractStateMachine.4
        });
        actionExecutionService.setDummyExecution(true);
        return actionExecutionService;
    }

    private void internalFire(E e2, C c2, boolean z) throws Throwable {
        if (getStatus() == StateMachineStatus.INITIALIZED) {
            if (!this.isAutoStartEnabled) {
                md.k("The state machine is not running.");
                return;
            }
            start(c2);
        }
        if (getStatus() == StateMachineStatus.TERMINATED) {
            md.k("The state machine is already terminated.");
            return;
        }
        if (getStatus() == StateMachineStatus.ERROR) {
            md.k("The state machine is corruptted.");
            return;
        }
        LinkedBlockingDeque<Pair<E, C>> linkedBlockingDeque = this.queuedEvents;
        if (z) {
            linkedBlockingDeque.addFirst(new Pair<>(e2, c2));
        } else {
            linkedBlockingDeque.addLast(new Pair<>(e2, c2));
        }
        processEvents();
    }

    private void internalStart(C c2, StateMachineData<T, S, E, C> stateMachineData, ActionExecutionService<T, S, E, C> actionExecutionService) {
        ImmutableState<T, S, E, C> immutableStateInitialRawState = stateMachineData.read().initialRawState();
        StateContext<T, S, E, C> stateContextNewStateContext = FSM.newStateContext(this, stateMachineData, immutableStateInitialRawState, getStartEvent(), c2, null, actionExecutionService);
        entryAll(immutableStateInitialRawState, stateContextNewStateContext);
        ImmutableState<T, S, E, C> immutableStateEnterByHistory = immutableStateInitialRawState.enterByHistory(stateContextNewStateContext);
        actionExecutionService.execute();
        stateMachineData.write().currentState(immutableStateEnterByHistory.getStateId());
        stateMachineData.write().startContext(c2);
        fireEvent(new StartEventImpl(getThis()));
    }

    private S internalTest(E e2, C c2) throws Throwable {
        AbstractStateMachine<T, S, E, C> abstractStateMachine;
        Preconditions.p("Cannot test state machine under " + this.status + " status.", (this.status == StateMachineStatus.ERROR || this.status == StateMachineStatus.TERMINATED) ? false : true);
        this.queuedTestEvents.add(new Pair<>(e2, c2));
        if (this.isProcessingTestEvent) {
            return null;
        }
        this.isProcessingTestEvent = true;
        StateMachineData<T, S, E, C> stateMachineData = (StateMachineData) dumpSavedData();
        ActionExecutionService<T, S, E, C> dummyExecutor = getDummyExecutor();
        if (getStatus() == StateMachineStatus.INITIALIZED) {
            if (!this.isAutoStartEnabled) {
                md.k("The state machine is not running.");
                return null;
            }
            internalStart(c2, stateMachineData, dummyExecutor);
        }
        while (true) {
            try {
                Pair<E, C> pairPoll = this.queuedTestEvents.poll();
                if (pairPoll == null) {
                    abstractStateMachine = this;
                    S sResolveState = abstractStateMachine.resolveState(stateMachineData.read().currentState(), stateMachineData);
                    abstractStateMachine.isProcessingTestEvent = false;
                    return sResolveState;
                }
                abstractStateMachine = this;
                try {
                    abstractStateMachine.processEvent(pairPoll.first(), pairPoll.second(), stateMachineData, dummyExecutor, false);
                    this = abstractStateMachine;
                } catch (Throwable th) {
                    th = th;
                }
                th = th;
            } catch (Throwable th2) {
                th = th2;
                abstractStateMachine = this;
            }
            Throwable th3 = th;
            abstractStateMachine.isProcessingTestEvent = false;
            throw th3;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Object invokeActionListenerMethod(Object obj, Method method, String str, ActionExecutionService.ActionEvent<T, S, E, C> actionEvent) {
        AbstractStateMachine<T, S, E, C> abstractStateMachine;
        boolean zEvalBoolean;
        Class<?>[] parameterTypes = method.getParameterTypes();
        HashMap map = new HashMap();
        map.put("from", actionEvent.getFrom());
        map.put(MvelScriptManager.VAR_TO, actionEvent.getTo());
        map.put(MvelScriptManager.VAR_EVENT, actionEvent.getEvent());
        map.put(MvelScriptManager.VAR_CONTEXT, actionEvent.getContext());
        map.put(MvelScriptManager.VAR_STATE_MACHINE, actionEvent.getStateMachine());
        boolean z = actionEvent instanceof ActionExecutionService.ExecActionExceptionEvent;
        if (z) {
            map.put(MvelScriptManager.VAR_EXCEPTION, ((ActionExecutionService.ExecActionExceptionEvent) actionEvent).getException());
        }
        if (str == null || str.length() <= 0) {
            abstractStateMachine = this;
            zEvalBoolean = true;
        } else {
            abstractStateMachine = this;
            zEvalBoolean = abstractStateMachine.scriptManager.evalBoolean(str, map);
        }
        if (!zEvalBoolean) {
            return null;
        }
        if (parameterTypes.length == 0) {
            return ReflectUtils.invoke(method, obj);
        }
        ArrayList arrayList = new ArrayList();
        boolean z2 = false;
        boolean z3 = false;
        boolean z4 = false;
        boolean z5 = false;
        for (Class<?> cls : parameterTypes) {
            if (!z2 && cls.isAssignableFrom(abstractStateMachine.typeOfState())) {
                arrayList.add(actionEvent.getFrom());
                z2 = true;
            } else if (!z3 && cls.isAssignableFrom(abstractStateMachine.typeOfState())) {
                arrayList.add(actionEvent.getTo());
                z3 = true;
            } else if (!z4 && cls.isAssignableFrom(abstractStateMachine.typeOfEvent())) {
                arrayList.add(actionEvent.getEvent());
                z4 = true;
            } else if (!z5 && cls.isAssignableFrom(abstractStateMachine.typeOfContext())) {
                arrayList.add(actionEvent.getContext());
                z5 = true;
            } else if (cls.isAssignableFrom(abstractStateMachine.getClass())) {
                arrayList.add(actionEvent.getStateMachine());
            } else if (cls.isAssignableFrom(Action.class)) {
                arrayList.add(actionEvent.getExecutionTarget());
            } else if (cls == int[].class) {
                arrayList.add(actionEvent.getMOfN());
            } else if (z && cls.isAssignableFrom(TransitionException.class)) {
                arrayList.add(((ActionExecutionService.ExecActionExceptionEvent) actionEvent).getException());
            } else {
                arrayList.add(null);
            }
        }
        return ReflectUtils.invoke(method, obj, arrayList.toArray());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Object invokeStateMachineListenerMethod(Object obj, Method method, String str, StateMachine.StateMachineEvent<T, S, E, C> stateMachineEvent) {
        Class<?>[] parameterTypes = method.getParameterTypes();
        HashMap map = new HashMap();
        map.put(MvelScriptManager.VAR_STATE_MACHINE, stateMachineEvent.getStateMachine());
        if (!((str == null || str.length() <= 0) ? true : this.scriptManager.evalBoolean(str, map))) {
            return null;
        }
        if (parameterTypes.length == 0) {
            return ReflectUtils.invoke(method, obj);
        }
        ArrayList arrayList = new ArrayList();
        for (Class<?> cls : parameterTypes) {
            if (cls.isAssignableFrom(getClass())) {
                arrayList.add(stateMachineEvent.getStateMachine());
            } else {
                arrayList.add(null);
            }
        }
        return ReflectUtils.invoke(method, obj, arrayList.toArray());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public Object invokeTransitionListenerMethod(Object obj, Method method, String str, StateMachine.TransitionEvent<T, S, E, C> transitionEvent) {
        AbstractStateMachine<T, S, E, C> abstractStateMachine;
        boolean zEvalBoolean;
        Class<?>[] parameterTypes = method.getParameterTypes();
        HashMap map = new HashMap();
        map.put("from", transitionEvent.getSourceState());
        map.put(MvelScriptManager.VAR_EVENT, transitionEvent.getCause());
        map.put(MvelScriptManager.VAR_CONTEXT, transitionEvent.getContext());
        map.put(MvelScriptManager.VAR_STATE_MACHINE, transitionEvent.getStateMachine());
        boolean z = transitionEvent instanceof StateMachine.TransitionCompleteEvent;
        if (z) {
            map.put(MvelScriptManager.VAR_TO, ((StateMachine.TransitionCompleteEvent) transitionEvent).getTargetState());
        } else if (transitionEvent instanceof StateMachine.TransitionExceptionEvent) {
            StateMachine.TransitionExceptionEvent transitionExceptionEvent = (StateMachine.TransitionExceptionEvent) transitionEvent;
            map.put(MvelScriptManager.VAR_TO, transitionExceptionEvent.getTargetState());
            map.put(MvelScriptManager.VAR_EXCEPTION, transitionExceptionEvent.getException());
        }
        if (str == null || str.length() <= 0) {
            abstractStateMachine = this;
            zEvalBoolean = true;
        } else {
            abstractStateMachine = this;
            zEvalBoolean = abstractStateMachine.scriptManager.evalBoolean(str, map);
        }
        if (!zEvalBoolean) {
            return null;
        }
        if (parameterTypes.length == 0) {
            return ReflectUtils.invoke(method, obj);
        }
        ArrayList arrayList = new ArrayList();
        boolean z2 = false;
        boolean z3 = false;
        boolean z4 = false;
        boolean z5 = false;
        for (Class<?> cls : parameterTypes) {
            if (z2 || !cls.isAssignableFrom(abstractStateMachine.typeOfState())) {
                if (!z3 && (transitionEvent instanceof StateMachine.TransitionEndEvent) && cls.isAssignableFrom(abstractStateMachine.typeOfState())) {
                    arrayList.add(((StateMachine.TransitionEndEvent) transitionEvent).getTargetState());
                } else if (!z3 && z && cls.isAssignableFrom(abstractStateMachine.typeOfState())) {
                    arrayList.add(((StateMachine.TransitionCompleteEvent) transitionEvent).getTargetState());
                } else if (!z3 && (transitionEvent instanceof StateMachine.TransitionExceptionEvent) && cls.isAssignableFrom(abstractStateMachine.typeOfState()) && !z3) {
                    arrayList.add(((StateMachine.TransitionExceptionEvent) transitionEvent).getTargetState());
                } else if (!z4 && cls.isAssignableFrom(abstractStateMachine.typeOfEvent())) {
                    arrayList.add(transitionEvent.getCause());
                    z4 = true;
                } else if (!z5 && cls.isAssignableFrom(abstractStateMachine.typeOfContext())) {
                    arrayList.add(transitionEvent.getContext());
                    z5 = true;
                } else if (cls.isAssignableFrom(abstractStateMachine.getClass())) {
                    arrayList.add(transitionEvent.getStateMachine());
                } else if ((transitionEvent instanceof StateMachine.TransitionExceptionEvent) && cls.isAssignableFrom(TransitionException.class)) {
                    arrayList.add(((StateMachine.TransitionExceptionEvent) transitionEvent).getException());
                } else {
                    arrayList.add(null);
                }
                z3 = true;
            } else {
                arrayList.add(transitionEvent.getSourceState());
                z2 = true;
            }
        }
        return ReflectUtils.invoke(method, obj, arrayList.toArray());
    }

    private boolean isEntryPoint() {
        return StateMachineContext.currentInstance() == null;
    }

    private Object newListenerMethodProxy(final Object obj, final Method method, Class<?> cls, final String str) {
        final String string = ReflectUtils.getStatic(ReflectUtils.getField(cls, "METHOD_NAME")).toString();
        AsyncExecute asyncExecute = (AsyncExecute) ReflectUtils.getAnnotation(obj.getClass(), AsyncExecute.class);
        if (asyncExecute == null) {
            asyncExecute = (AsyncExecute) method.getAnnotation(AsyncExecute.class);
        }
        final boolean z = asyncExecute != null;
        final long jTimeout = asyncExecute != null ? asyncExecute.timeout() : -1L;
        return Proxy.newProxyInstance(StateMachine.class.getClassLoader(), z ? new Class[]{cls, DeclarativeListener.class, AsyncEventListener.class} : new Class[]{cls, DeclarativeListener.class}, new InvocationHandler() { // from class: org.squirrelframework.foundation.fsm.impl.AbstractStateMachine.5
            @Override // java.lang.reflect.InvocationHandler
            public Object invoke(Object obj2, Method method2, Object[] objArr) throws Throwable {
                if (method2.getName().equals("getListenTarget")) {
                    return obj;
                }
                if (method2.getName().equals(string)) {
                    Object obj3 = objArr[0];
                    if (obj3 instanceof StateMachine.TransitionEvent) {
                        return AbstractStateMachine.this.invokeTransitionListenerMethod(obj, method, str, (StateMachine.TransitionEvent) obj3);
                    }
                    if (obj3 instanceof ActionExecutionService.ActionEvent) {
                        return AbstractStateMachine.this.invokeActionListenerMethod(obj, method, str, (ActionExecutionService.ActionEvent) obj3);
                    }
                    if ((obj3 instanceof StateMachine.StartEvent) || (obj3 instanceof StateMachine.TerminateEvent)) {
                        return AbstractStateMachine.this.invokeStateMachineListenerMethod(obj, method, str, (StateMachine.StateMachineEvent) obj3);
                    }
                    az.r("Unable to recognize argument type ", objArr[0].getClass().getName(), FileUtils.HIDDEN_PREFIX);
                    return null;
                }
                if (method2.getName().equals("equals")) {
                    return Boolean.valueOf(this == objArr[0]);
                }
                if (method2.getName().equals("hashCode")) {
                    return Integer.valueOf(super.hashCode());
                }
                if (method2.getName().equals("toString")) {
                    return super.toString();
                }
                if (z && method2.getName().equals("timeout")) {
                    return Long.valueOf(jTimeout);
                }
                throw new UnsupportedOperationException("Cannot invoke method " + method2.getName() + FileUtils.HIDDEN_PREFIX);
            }
        });
    }

    /* JADX WARN: Code duplicated, block: B:47:0x00fa A[Catch: all -> 0x00b3, TRY_ENTER, TRY_LEAVE, TryCatch #8 {all -> 0x00b3, blocks: (B:28:0x008c, B:47:0x00fa, B:40:0x00c1), top: B:86:0x000e }] */
    /* JADX WARN: Code duplicated, block: B:49:0x00fe A[Catch: all -> 0x014f, TRY_ENTER, TRY_LEAVE, TryCatch #5 {all -> 0x014f, blocks: (B:45:0x00f1, B:49:0x00fe), top: B:80:0x00f1 }] */
    /* JADX WARN: Multi-variable type inference failed */
    private boolean processEvent(E e2, C c2, StateMachineData<T, S, E, C> stateMachineData, ActionExecutionService<T, S, E, C> actionExecutionService, boolean z) throws Throwable {
        TransitionResult transitionResultNewResult;
        StateMachineData<T, S, E, C> stateMachineData2;
        TransitionEndEventImpl transitionEndEventImpl;
        Object obj;
        TransitionResult transitionResult;
        TransitionResult transitionResult2;
        TransitionException transitionException;
        Object obj2;
        ImmutableState<T, S, E, C> immutableStateCurrentRawState = stateMachineData.read().currentRawState();
        Object stateId = immutableStateCurrentRawState.getStateId();
        S stateId2 = null;
        try {
            try {
                try {
                    try {
                        try {
                            beforeTransitionBegin(stateId, e2, c2);
                            fireEvent(new TransitionBeginEventImpl(stateId, e2, c2, getThis()));
                            if (z) {
                                try {
                                    StateMachineData<T, S, E, C> stateMachineDataNewStateMachineData = FSM.newStateMachineData(stateMachineData.read().originalStates());
                                    try {
                                        stateMachineDataNewStateMachineData.dump(stateMachineData.read());
                                        stateMachineData2 = stateMachineDataNewStateMachineData;
                                    } catch (Exception e3) {
                                        e = e3;
                                        stateMachineData2 = stateMachineDataNewStateMachineData;
                                        transitionResultNewResult = stateId2;
                                        setStatus(StateMachineStatus.ERROR);
                                        if (e instanceof TransitionException) {
                                            transitionException = (TransitionException) e;
                                            transitionResult2 = transitionResultNewResult;
                                        } else {
                                            ErrorCodes errorCodes = ErrorCodes.FSM_TRANSITION_ERROR;
                                            obj = stateId;
                                            transitionResult = transitionResultNewResult;
                                            try {
                                                Object[] objArr = {obj, transitionResult, e2, c2, "UNKNOWN", e.getMessage()};
                                                transitionResult2 = transitionResult;
                                                stateId = obj;
                                                try {
                                                    transitionException = new TransitionException(e, errorCodes, objArr);
                                                } catch (Throwable th) {
                                                    th = th;
                                                    transitionResultNewResult = transitionResult2;
                                                    actionExecutionService.reset();
                                                    fireEvent(new TransitionEndEventImpl(stateId, transitionResultNewResult, e2, c2, getThis()));
                                                    afterTransitionEnd(stateId, getCurrentState(), e2, c2);
                                                    throw th;
                                                }
                                            } catch (Throwable th2) {
                                                th = th2;
                                                transitionResult2 = transitionResult;
                                                stateId = obj;
                                                transitionResultNewResult = transitionResult2;
                                                actionExecutionService.reset();
                                                fireEvent(new TransitionEndEventImpl(stateId, transitionResultNewResult, e2, c2, getThis()));
                                                afterTransitionEnd(stateId, getCurrentState(), e2, c2);
                                                throw th;
                                            }
                                        }
                                        this.lastException = transitionException;
                                        obj2 = stateId;
                                        stateId = obj2;
                                        fireEvent(new TransitionExceptionEventImpl(transitionException, obj2, stateMachineData2.read().currentState(), e2, c2, getThis()));
                                        afterTransitionCausedException(stateId, transitionResult2, e2, c2);
                                        actionExecutionService.reset();
                                        transitionEndEventImpl = new TransitionEndEventImpl(stateId, transitionResult2, e2, c2, getThis());
                                        fireEvent(transitionEndEventImpl);
                                        afterTransitionEnd(stateId, getCurrentState(), e2, c2);
                                        return false;
                                    }
                                } catch (Exception e4) {
                                    e = e4;
                                    stateMachineData2 = stateMachineData;
                                }
                            } else {
                                stateMachineData2 = stateMachineData;
                            }
                            try {
                                transitionResultNewResult = FSM.newResult(false, immutableStateCurrentRawState, null);
                                stateId = c2;
                                immutableStateCurrentRawState.internalFire(FSM.newStateContext(this, stateMachineData2, immutableStateCurrentRawState, e2, stateId, transitionResultNewResult, actionExecutionService));
                                stateId2 = transitionResultNewResult.getTargetState().getStateId();
                                try {
                                    if (!transitionResultNewResult.isAccepted()) {
                                        stateId = stateId;
                                        fireEvent(new TransitionDeclinedEventImpl(stateId, e2, c2, getThis()));
                                        afterTransitionDeclined(stateId, e2, c2);
                                        actionExecutionService.reset();
                                        transitionEndEventImpl = new TransitionEndEventImpl(stateId, stateId2, e2, c2, getThis());
                                        fireEvent(transitionEndEventImpl);
                                        afterTransitionEnd(stateId, getCurrentState(), e2, c2);
                                        return false;
                                    }
                                    actionExecutionService.execute();
                                    stateMachineData2.write().lastState(stateId);
                                    stateMachineData2.write().currentState(stateId2);
                                    if (z) {
                                        stateMachineData.dump(stateMachineData2.read());
                                    }
                                    transitionResultNewResult = stateId2;
                                    try {
                                        fireEvent(new TransitionCompleteEventImpl(stateId, transitionResultNewResult, e2, c2, getThis()));
                                        afterTransitionCompleted(stateId, getCurrentState(), e2, c2);
                                        actionExecutionService.reset();
                                        fireEvent(new TransitionEndEventImpl(stateId, transitionResultNewResult, e2, c2, getThis()));
                                        afterTransitionEnd(stateId, getCurrentState(), e2, c2);
                                        return true;
                                    } catch (Exception e5) {
                                        e = e5;
                                        stateId = stateId;
                                    } catch (Throwable th3) {
                                        th = th3;
                                        stateId = stateId;
                                        actionExecutionService.reset();
                                        fireEvent(new TransitionEndEventImpl(stateId, transitionResultNewResult, e2, c2, getThis()));
                                        afterTransitionEnd(stateId, getCurrentState(), e2, c2);
                                        throw th;
                                    }
                                } catch (Exception e6) {
                                    e = e6;
                                }
                            } catch (Exception e7) {
                                e = e7;
                                transitionResultNewResult = stateId2;
                            }
                        } catch (Exception e8) {
                            e = e8;
                            stateMachineData2 = stateMachineData;
                        }
                        fireEvent(transitionEndEventImpl);
                        afterTransitionEnd(stateId, getCurrentState(), e2, c2);
                        return false;
                    } catch (Throwable th4) {
                        th = th4;
                        stateId = stateId;
                        transitionResultNewResult = stateId2;
                    }
                    stateId = obj2;
                    fireEvent(new TransitionExceptionEventImpl(transitionException, obj2, stateMachineData2.read().currentState(), e2, c2, getThis()));
                    afterTransitionCausedException(stateId, transitionResult2, e2, c2);
                    actionExecutionService.reset();
                    transitionEndEventImpl = new TransitionEndEventImpl(stateId, transitionResult2, e2, c2, getThis());
                } catch (Throwable th5) {
                    th = th5;
                    stateId = obj2;
                    transitionResultNewResult = transitionResult2;
                    actionExecutionService.reset();
                    fireEvent(new TransitionEndEventImpl(stateId, transitionResultNewResult, e2, c2, getThis()));
                    afterTransitionEnd(stateId, getCurrentState(), e2, c2);
                    throw th;
                }
                setStatus(StateMachineStatus.ERROR);
                if (e instanceof TransitionException) {
                    transitionException = (TransitionException) e;
                    transitionResult2 = transitionResultNewResult;
                } else {
                    ErrorCodes errorCodes2 = ErrorCodes.FSM_TRANSITION_ERROR;
                    obj = stateId;
                    transitionResult = transitionResultNewResult;
                    Object[] objArr2 = {obj, transitionResult, e2, c2, "UNKNOWN", e.getMessage()};
                    transitionResult2 = transitionResult;
                    stateId = obj;
                    transitionException = new TransitionException(e, errorCodes2, objArr2);
                }
                this.lastException = transitionException;
                obj2 = stateId;
            } catch (Throwable th6) {
                th = th6;
            }
        } catch (Throwable th7) {
            th = th7;
        }
    }

    private void processEvents() throws Throwable {
        AbstractStateMachine<T, S, E, C> abstractStateMachine;
        if (isIdle()) {
            this.writeLock.lock();
            setStatus(StateMachineStatus.BUSY);
            C c2 = null;
            while (true) {
                try {
                    Pair<E, C> pairPoll = this.queuedEvents.poll();
                    if (pairPoll == null) {
                        break;
                    }
                    if (Thread.interrupted()) {
                        this.queuedEvents.clear();
                        break;
                    }
                    E eFirst = pairPoll.first();
                    C cSecond = pairPoll.second();
                    abstractStateMachine = this;
                    try {
                        abstractStateMachine.processEvent(eFirst, cSecond, this.data, this.executor, this.isDataIsolateEnabled);
                        this = abstractStateMachine;
                        c2 = cSecond;
                    } catch (Throwable th) {
                        th = th;
                    }
                    th = th;
                    if (abstractStateMachine.getStatus() == StateMachineStatus.BUSY) {
                        abstractStateMachine.setStatus(StateMachineStatus.IDLE);
                    }
                    abstractStateMachine.writeLock.unlock();
                    throw th;
                } catch (Throwable th2) {
                    th = th2;
                    abstractStateMachine = this;
                }
            }
            abstractStateMachine = this;
            ImmutableState<T, S, E, C> immutableStateCurrentRawState = abstractStateMachine.data.read().currentRawState();
            if (abstractStateMachine.isAutoTerminateEnabled && immutableStateCurrentRawState.isRootState() && immutableStateCurrentRawState.isFinalState()) {
                abstractStateMachine.terminate(c2);
            }
            if (abstractStateMachine.getStatus() == StateMachineStatus.BUSY) {
                abstractStateMachine.setStatus(StateMachineStatus.IDLE);
            }
            abstractStateMachine.writeLock.unlock();
        }
    }

    private void registerDeclarativeListener(Object obj, Method method, Observable observable, Class<? extends Annotation> cls, Class<?> cls2, Class<?> cls3) {
        Annotation annotation = method.getAnnotation(cls);
        if (annotation != null) {
            Method method2 = ReflectUtils.getMethod(annotation.getClass(), "when", new Class[0]);
            String str = method2 != null ? (String) ReflectUtils.invoke(method2, annotation) : "";
            Field field = ReflectUtils.getField(cls2, "METHOD");
            if (field == null || !Modifier.isStatic(field.getModifiers())) {
                logger.info(pq0.n(cls2, "Cannot find static field named 'METHOD' on listener class '", "'."));
            } else {
                observable.addListener(cls3, newListenerMethodProxy(obj, method, cls2, str), (Method) ReflectUtils.getStatic(field));
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private ImmutableState<T, S, E, C> resolveRawState(ImmutableState<T, S, E, C> immutableState) {
        return immutableState instanceof ImmutableLinkedState ? ((ImmutableLinkedState) immutableState).getLinkedStateMachine(getThis()).getCurrentRawState() : immutableState;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private S resolveState(S s, StateMachineData<T, S, E, C> stateMachineData) {
        ImmutableState<T, S, E, C> immutableStateRawStateFrom = stateMachineData.read().rawStateFrom(s);
        return immutableStateRawStateFrom instanceof ImmutableLinkedState ? (S) ((ImmutableLinkedState) immutableStateRawStateFrom).getLinkedStateMachine(getThis()).getCurrentState() : s;
    }

    private void saveLinkedStateData(StateMachineData.Reader<T, S, E, C> reader, StateMachineData.Writer<T, S, E, C> writer) {
        dumpLinkedStateFor(reader.currentRawState(), writer);
    }

    @Override // org.squirrelframework.foundation.fsm.Visitable
    public void accept(Visitor visitor) {
        visitor.visitOnEntry(this);
        for (ImmutableState<T, S, E, C> immutableState : getAllRawStates()) {
            if (immutableState.getParentState() == null) {
                immutableState.accept(visitor);
            }
        }
        visitor.visitOnExit(this);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // org.squirrelframework.foundation.fsm.StateMachine
    public void addDeclarativeListener(Object obj) {
        ArrayList arrayList = new ArrayList();
        Method[] methods = obj.getClass().getMethods();
        Arrays.sort(methods, new Comparator<Method>() { // from class: org.squirrelframework.foundation.fsm.impl.AbstractStateMachine.6
            @Override // java.util.Comparator
            public int compare(Method method, Method method2) {
                ListenerOrder listenerOrder = (ListenerOrder) method.getAnnotation(ListenerOrder.class);
                ListenerOrder listenerOrder2 = (ListenerOrder) method2.getAnnotation(ListenerOrder.class);
                if (listenerOrder != null && listenerOrder2 != null) {
                    return listenerOrder.value() - listenerOrder2.value();
                }
                if (listenerOrder != null && listenerOrder2 == null) {
                    return -1;
                }
                if (listenerOrder != null || listenerOrder2 == null) {
                    return method.getName().compareTo(method2.getName());
                }
                return 1;
            }
        });
        for (Method method : methods) {
            if ("--wait-notify-notifyAll-toString-equals-hashCode-getClass--".indexOf("-" + method.getName() + "-") <= 0) {
                String string = method.toString();
                if (!arrayList.contains(string)) {
                    arrayList.add(string);
                    int i2 = 0;
                    while (true) {
                        Class<?>[][] clsArr = stateMachineListenerMapping;
                        if (i2 >= clsArr.length) {
                            break;
                        }
                        Class<?>[] clsArr2 = clsArr[i2];
                        registerDeclarativeListener(obj, method, this, clsArr2[0], clsArr2[1], clsArr2[2]);
                        i2++;
                    }
                    int i3 = 0;
                    while (true) {
                        Class<?>[][] clsArr3 = actionExecutorListenerMapping;
                        if (i3 < clsArr3.length) {
                            ActionExecutionService<T, S, E, C> actionExecutionService = this.executor;
                            Class<?>[] clsArr4 = clsArr3[i3];
                            registerDeclarativeListener(obj, method, actionExecutionService, clsArr4[0], clsArr4[1], clsArr4[2]);
                            i3++;
                        }
                    }
                }
            }
        }
    }

    @Override // org.squirrelframework.foundation.fsm.StateMachine
    public void addExecActionListener(ActionExecutionService.BeforeExecActionListener<T, S, E, C> beforeExecActionListener) {
        this.executor.addExecActionListener(beforeExecActionListener);
    }

    @Override // org.squirrelframework.foundation.fsm.StateMachine
    public void addStartListener(StateMachine.StartListener<T, S, E, C> startListener) {
        addListener(StateMachine.StartEvent.class, startListener, StateMachine.StartListener.METHOD);
    }

    @Override // org.squirrelframework.foundation.fsm.StateMachine
    public void addStateMachineExceptionListener(StateMachine.StateMachineExceptionListener<T, S, E, C> stateMachineExceptionListener) {
        addListener(StateMachine.StateMachineExceptionEvent.class, stateMachineExceptionListener, StateMachine.StateMachineExceptionListener.METHOD);
    }

    @Override // org.squirrelframework.foundation.fsm.StateMachine
    public void addStateMachineListener(StateMachine.StateMachineListener<T, S, E, C> stateMachineListener) {
        addListener(StateMachine.StateMachineEvent.class, stateMachineListener, StateMachine.StateMachineListener.METHOD);
    }

    @Override // org.squirrelframework.foundation.fsm.StateMachine
    public void addTerminateListener(StateMachine.TerminateListener<T, S, E, C> terminateListener) {
        addListener(StateMachine.TerminateEvent.class, terminateListener, StateMachine.TerminateListener.METHOD);
    }

    @Override // org.squirrelframework.foundation.fsm.StateMachine
    public void addTransitionBeginListener(StateMachine.TransitionBeginListener<T, S, E, C> transitionBeginListener) {
        addListener(StateMachine.TransitionBeginEvent.class, transitionBeginListener, StateMachine.TransitionBeginListener.METHOD);
    }

    @Override // org.squirrelframework.foundation.fsm.StateMachine
    public void addTransitionCompleteListener(StateMachine.TransitionCompleteListener<T, S, E, C> transitionCompleteListener) {
        addListener(StateMachine.TransitionCompleteEvent.class, transitionCompleteListener, StateMachine.TransitionCompleteListener.METHOD);
    }

    @Override // org.squirrelframework.foundation.fsm.StateMachine
    public void addTransitionDeclinedListener(StateMachine.TransitionDeclinedListener<T, S, E, C> transitionDeclinedListener) {
        addListener(StateMachine.TransitionDeclinedEvent.class, transitionDeclinedListener, StateMachine.TransitionDeclinedListener.METHOD);
    }

    @Override // org.squirrelframework.foundation.fsm.StateMachine
    public void addTransitionEndListener(StateMachine.TransitionEndListener<T, S, E, C> transitionEndListener) {
        addListener(StateMachine.TransitionEndEvent.class, transitionEndListener, StateMachine.TransitionEndListener.METHOD);
    }

    @Override // org.squirrelframework.foundation.fsm.StateMachine
    public void addTransitionExceptionListener(StateMachine.TransitionExceptionListener<T, S, E, C> transitionExceptionListener) {
        addListener(StateMachine.TransitionExceptionEvent.class, transitionExceptionListener, StateMachine.TransitionExceptionListener.METHOD);
    }

    public void afterActionInvoked(S s, S s2, E e2, C c2) {
    }

    public void afterTransitionCausedException(S s, S s2, E e2, C c2) {
        if (getLastException().getTargetException() != null) {
            getLastException().getTargetException().printStackTrace();
        }
        throw getLastException();
    }

    public void afterTransitionCompleted(S s, S s2, E e2, C c2) {
    }

    public void afterTransitionDeclined(S s, E e2, C c2) {
    }

    public void afterTransitionEnd(S s, S s2, E e2, C c2) {
    }

    public void beforeActionInvoked(S s, S s2, E e2, C c2) {
    }

    public void beforeTransitionBegin(S s, E e2, C c2) {
    }

    @Override // org.squirrelframework.foundation.fsm.StateMachine
    public boolean canAccept(E e2) {
        ImmutableState<T, S, E, C> currentRawState = getCurrentRawState();
        if (currentRawState == null) {
            if (!this.isAutoStartEnabled) {
                return false;
            }
            currentRawState = getInitialRawState();
        }
        return currentRawState.getAcceptableEvents().contains(e2);
    }

    public void cleanQueuedEvents() {
        this.queuedEvents.clear();
    }

    @Override // org.squirrelframework.foundation.fsm.StateMachine
    public StateMachineData.Reader<T, S, E, C> dumpSavedData() {
        this.readLock.lock();
        try {
            StateMachineData stateMachineDataNewStateMachineData = FSM.newStateMachineData(this.data.read().originalStates());
            stateMachineDataNewStateMachineData.dump(this.data.read());
            saveLinkedStateData(this.data.read(), stateMachineDataNewStateMachineData.write());
            return stateMachineDataNewStateMachineData.read();
        } finally {
            this.readLock.unlock();
        }
    }

    @Override // org.squirrelframework.foundation.fsm.StateMachine
    public String exportXMLDefinition(boolean z) {
        SCXMLVisitor sCXMLVisitor = (SCXMLVisitor) SquirrelProvider.getInstance().newInstance(SCXMLVisitor.class);
        accept(sCXMLVisitor);
        return sCXMLVisitor.getScxml(z);
    }

    @Override // org.squirrelframework.foundation.fsm.StateMachine
    public void fireImmediate(E e2, C c2) {
        fire(e2, c2, true);
    }

    @Override // org.squirrelframework.foundation.fsm.StateMachine
    public Collection<ImmutableState<T, S, E, C>> getAllRawStates() {
        this.readLock.lock();
        try {
            return this.data.read().rawStates();
        } finally {
            this.readLock.unlock();
        }
    }

    @Override // org.squirrelframework.foundation.fsm.StateMachine
    public Collection<S> getAllStates() {
        this.readLock.lock();
        try {
            return this.data.read().states();
        } finally {
            this.readLock.unlock();
        }
    }

    @Override // org.squirrelframework.foundation.fsm.StateMachine
    public ImmutableState<T, S, E, C> getCurrentRawState() {
        this.readLock.lock();
        try {
            return resolveRawState(this.data.read().currentRawState());
        } finally {
            this.readLock.unlock();
        }
    }

    @Override // org.squirrelframework.foundation.fsm.StateMachine
    public S getCurrentState() {
        this.readLock.lock();
        try {
            return resolveState(this.data.read().currentState(), this.data);
        } finally {
            this.readLock.unlock();
        }
    }

    @Override // org.squirrelframework.foundation.fsm.StateMachine
    public String getDescription() {
        StringBuilder sb = new StringBuilder("id=\"");
        sb.append(getIdentifier());
        sb.append("\" fsm-type=\"");
        sb.append(getClass().getName());
        sb.append("\" state-type=\"");
        sb.append(typeOfState().getName());
        sb.append("\" event-type=\"");
        sb.append(typeOfEvent().getName());
        sb.append("\" context-type=\"");
        sb.append(typeOfContext().getName());
        sb.append("\" ");
        Converter converter = ConverterProvider.INSTANCE.getConverter(typeOfEvent());
        if (getStartEvent() != null) {
            sb.append("start-event=\"");
            sb.append(converter.convertToString(getStartEvent()));
            sb.append("\" ");
        }
        if (getTerminateEvent() != null) {
            sb.append("terminate-event=\"");
            sb.append(converter.convertToString(getTerminateEvent()));
            sb.append("\" ");
        }
        if (getFinishEvent() != null) {
            sb.append("finish-event=\"");
            sb.append(converter.convertToString(getFinishEvent()));
            sb.append("\" ");
        }
        sb.append("context-insensitive=\"");
        sb.append(isContextSensitive());
        sb.append("\" ");
        Class<?>[] clsArr = this.extraParamTypes;
        if (clsArr != null && clsArr.length > 0) {
            sb.append("extra-parameters=\"[");
            for (int i2 = 0; i2 < this.extraParamTypes.length; i2++) {
                if (i2 > 0) {
                    sb.append(",");
                }
                sb.append(this.extraParamTypes[i2].getName());
            }
            sb.append("]\" ");
        }
        return sb.toString();
    }

    public int getExecutorListenerSize() {
        return this.executor.getListenerSize();
    }

    public E getFinishEvent() {
        return this.finishEvent;
    }

    @Override // org.squirrelframework.foundation.fsm.StateMachine
    public String getIdentifier() {
        return this.data.read().identifier();
    }

    @Override // org.squirrelframework.foundation.fsm.StateMachine
    public ImmutableState<T, S, E, C> getInitialRawState() {
        return getRawStateFrom(getInitialState());
    }

    @Override // org.squirrelframework.foundation.fsm.StateMachine
    public S getInitialState() {
        this.readLock.lock();
        try {
            return this.data.read().initialState();
        } finally {
            this.readLock.unlock();
        }
    }

    @Override // org.squirrelframework.foundation.fsm.StateMachine
    public S getLastActiveChildStateOf(S s) {
        this.readLock.lock();
        try {
            return this.data.read().lastActiveChildStateOf(s);
        } finally {
            this.readLock.unlock();
        }
    }

    @Override // org.squirrelframework.foundation.fsm.StateMachine
    public TransitionException getLastException() {
        return this.lastException;
    }

    @Override // org.squirrelframework.foundation.fsm.StateMachine
    public ImmutableState<T, S, E, C> getLastRawState() {
        this.readLock.lock();
        try {
            return resolveRawState(this.data.read().lastRawState());
        } finally {
            this.readLock.unlock();
        }
    }

    @Override // org.squirrelframework.foundation.fsm.StateMachine
    public S getLastState() {
        this.readLock.lock();
        try {
            return resolveState(this.data.read().lastState(), this.data);
        } finally {
            this.readLock.unlock();
        }
    }

    @Override // org.squirrelframework.foundation.fsm.StateMachine
    public ImmutableState<T, S, E, C> getRawStateFrom(S s) {
        this.readLock.lock();
        try {
            return this.data.read().rawStateFrom(s);
        } finally {
            this.readLock.unlock();
        }
    }

    public E getStartEvent() {
        return this.startEvent;
    }

    @Override // org.squirrelframework.foundation.fsm.StateMachine
    public StateMachineStatus getStatus() {
        return this.status;
    }

    @Override // org.squirrelframework.foundation.fsm.StateMachine
    public List<S> getSubStatesOn(S s) {
        this.readLock.lock();
        try {
            return this.data.read().subStatesOn(s);
        } finally {
            this.readLock.unlock();
        }
    }

    public E getTerminateEvent() {
        return this.terminateEvent;
    }

    @Override // org.squirrelframework.foundation.fsm.StateMachine
    public T getThis() {
        return this;
    }

    @Override // org.squirrelframework.foundation.fsm.StateMachine
    public boolean isContextSensitive() {
        return true;
    }

    @Override // org.squirrelframework.foundation.fsm.StateMachine
    public boolean isError() {
        return getStatus() == StateMachineStatus.ERROR;
    }

    public boolean isIdle() {
        return getStatus() != StateMachineStatus.BUSY;
    }

    @Override // org.squirrelframework.foundation.fsm.StateMachine
    public boolean isRemoteMonitorEnabled() {
        return this.isRemoteMonitorEnabled;
    }

    @Override // org.squirrelframework.foundation.fsm.StateMachine
    public boolean isStarted() {
        return getStatus() == StateMachineStatus.IDLE || getStatus() == StateMachineStatus.BUSY;
    }

    @Override // org.squirrelframework.foundation.fsm.StateMachine
    public boolean isTerminated() {
        return getStatus() == StateMachineStatus.TERMINATED;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // org.squirrelframework.foundation.fsm.StateMachine
    public boolean loadSavedData(StateMachineData.Reader<T, S, E, C> reader) {
        Preconditions.m(reader, "Saved data cannot be null");
        if (!this.writeLock.tryLock()) {
            return false;
        }
        try {
            this.data.dump(reader);
            for (S s : reader.linkedStates()) {
                StateMachineData.Reader<? extends StateMachine<?, S, E, C>, S, E, C> readerLinkedStateDataOf = reader.linkedStateDataOf(s);
                ImmutableState<T, S, E, C> immutableStateRawStateFrom = this.data.read().rawStateFrom(s);
                if (readerLinkedStateDataOf != null && (immutableStateRawStateFrom instanceof ImmutableLinkedState)) {
                    ((ImmutableLinkedState) immutableStateRawStateFrom).getLinkedStateMachine(getThis()).loadSavedData(readerLinkedStateDataOf);
                }
            }
            setStatus(StateMachineStatus.IDLE);
            return true;
        } finally {
            this.writeLock.unlock();
        }
    }

    public void prePostConstruct(S s, Map<S, ? extends ImmutableState<T, S, E, C>> map, StateMachineConfiguration stateMachineConfiguration, Runnable runnable) {
        StateMachineData<T, S, E, C> stateMachineDataNewStateMachineData = FSM.newStateMachineData(map);
        this.data = stateMachineDataNewStateMachineData;
        stateMachineDataNewStateMachineData.write().initialState(s);
        this.data.write().currentState(null);
        this.data.write().identifier(stateMachineConfiguration.getIdProvider().get());
        this.isAutoStartEnabled = stateMachineConfiguration.isAutoStartEnabled();
        this.isAutoTerminateEnabled = stateMachineConfiguration.isAutoTerminateEnabled();
        this.isDataIsolateEnabled = stateMachineConfiguration.isDataIsolateEnabled();
        this.isDebugModeEnabled = stateMachineConfiguration.isDebugModeEnabled();
        this.isDelegatorModeEnabled = stateMachineConfiguration.isDelegatorModeEnabled();
        this.isRemoteMonitorEnabled = stateMachineConfiguration.isRemoteMonitorEnabled();
        runnable.run();
        prepare();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void prepare() {
        if (this.isDebugModeEnabled) {
            final StateMachineLogger stateMachineLogger = new StateMachineLogger(this);
            addStartListener(new StateMachine.StartListener<T, S, E, C>() { // from class: org.squirrelframework.foundation.fsm.impl.AbstractStateMachine.2
                @Override // org.squirrelframework.foundation.fsm.StateMachine.StartListener
                public void started(StateMachine.StartEvent<T, S, E, C> startEvent) {
                    stateMachineLogger.startLogging();
                }
            });
            addTerminateListener(new StateMachine.TerminateListener<T, S, E, C>() { // from class: org.squirrelframework.foundation.fsm.impl.AbstractStateMachine.3
                @Override // org.squirrelframework.foundation.fsm.StateMachine.TerminateListener
                public void terminated(StateMachine.TerminateEvent<T, S, E, C> terminateEvent) {
                    stateMachineLogger.stopLogging();
                }
            });
        }
    }

    @Override // org.squirrelframework.foundation.fsm.StateMachine
    public void removeDeclarativeListener(Object obj) {
        removeDeclarativeListener(this, obj);
        removeDeclarativeListener(this.executor, obj);
    }

    @Override // org.squirrelframework.foundation.fsm.StateMachine
    public void removeExecActionListener(ActionExecutionService.BeforeExecActionListener<T, S, E, C> beforeExecActionListener) {
        this.executor.removeExecActionListener(beforeExecActionListener);
    }

    @Override // org.squirrelframework.foundation.fsm.StateMachine
    public void removeStartListener(StateMachine.StartListener<T, S, E, C> startListener) {
        removeListener(StateMachine.StartEvent.class, startListener, StateMachine.StartListener.METHOD);
    }

    @Override // org.squirrelframework.foundation.fsm.StateMachine
    public void removeStateMachineExceptionListener(StateMachine.StateMachineExceptionListener<T, S, E, C> stateMachineExceptionListener) {
        removeListener(StateMachine.StateMachineExceptionEvent.class, stateMachineExceptionListener, StateMachine.StateMachineExceptionListener.METHOD);
    }

    @Override // org.squirrelframework.foundation.fsm.StateMachine
    public void removeStateMachineListener(StateMachine.StateMachineListener<T, S, E, C> stateMachineListener) {
        removeListener(StateMachine.StateMachineEvent.class, stateMachineListener, StateMachine.StateMachineListener.METHOD);
    }

    @Override // org.squirrelframework.foundation.fsm.StateMachine
    public void removeTerminateListener(StateMachine.TerminateListener<T, S, E, C> terminateListener) {
        removeListener(StateMachine.TerminateEvent.class, terminateListener, StateMachine.TerminateListener.METHOD);
    }

    @Override // org.squirrelframework.foundation.fsm.StateMachine
    public void removeTransitionBeginListener(StateMachine.TransitionBeginListener<T, S, E, C> transitionBeginListener) {
        removeListener(StateMachine.TransitionBeginEvent.class, transitionBeginListener, StateMachine.TransitionBeginListener.METHOD);
    }

    @Override // org.squirrelframework.foundation.fsm.StateMachine
    public void removeTransitionCompleteListener(StateMachine.TransitionCompleteListener<T, S, E, C> transitionCompleteListener) {
        removeListener(StateMachine.TransitionCompleteEvent.class, transitionCompleteListener, StateMachine.TransitionCompleteListener.METHOD);
    }

    @Override // org.squirrelframework.foundation.fsm.StateMachine
    @Deprecated
    public void removeTransitionDecleindListener(StateMachine.TransitionDeclinedListener<T, S, E, C> transitionDeclinedListener) {
        removeListener(StateMachine.TransitionDeclinedEvent.class, transitionDeclinedListener, StateMachine.TransitionDeclinedListener.METHOD);
    }

    @Override // org.squirrelframework.foundation.fsm.StateMachine
    public void removeTransitionDeclinedListener(StateMachine.TransitionDeclinedListener<T, S, E, C> transitionDeclinedListener) {
        removeListener(StateMachine.TransitionDeclinedEvent.class, transitionDeclinedListener, StateMachine.TransitionDeclinedListener.METHOD);
    }

    @Override // org.squirrelframework.foundation.fsm.StateMachine
    public void removeTransitionEndListener(StateMachine.TransitionEndListener<T, S, E, C> transitionEndListener) {
        removeListener(StateMachine.TransitionEndEvent.class, transitionEndListener, StateMachine.TransitionEndListener.METHOD);
    }

    @Override // org.squirrelframework.foundation.fsm.StateMachine
    public void removeTransitionExceptionListener(StateMachine.TransitionExceptionListener<T, S, E, C> transitionExceptionListener) {
        removeListener(StateMachine.TransitionExceptionEvent.class, transitionExceptionListener, StateMachine.TransitionExceptionListener.METHOD);
    }

    public void setExtraParamTypes(Class<?>[] clsArr) {
        Preconditions.q(this.extraParamTypes == null);
        this.extraParamTypes = clsArr;
    }

    public void setFinishEvent(E e2) {
        Preconditions.q(this.finishEvent == null);
        this.finishEvent = e2;
    }

    public void setLastException(TransitionException transitionException) {
        this.lastException = transitionException;
    }

    public void setScriptManager(MvelScriptManager mvelScriptManager) {
        Preconditions.q(this.scriptManager == null);
        this.scriptManager = mvelScriptManager;
    }

    public void setStartEvent(E e2) {
        Preconditions.q(this.startEvent == null);
        this.startEvent = e2;
    }

    public void setStatus(StateMachineStatus stateMachineStatus) {
        this.status = stateMachineStatus;
    }

    public void setTerminateEvent(E e2) {
        Preconditions.q(this.terminateEvent == null);
        this.terminateEvent = e2;
    }

    public void setTypeOfContext(Class<C> cls) {
        this.data.write().typeOfContext(cls);
    }

    public void setTypeOfEvent(Class<E> cls) {
        this.data.write().typeOfEvent(cls);
    }

    public void setTypeOfState(Class<S> cls) {
        this.data.write().typeOfState(cls);
    }

    public void setTypeOfStateMachine(Class<? extends T> cls) {
        this.data.write().typeOfStateMachine(cls);
    }

    @Override // org.squirrelframework.foundation.fsm.StateMachine
    public synchronized void start(C c2) {
        if (isStarted()) {
            return;
        }
        setStatus(StateMachineStatus.BUSY);
        internalStart(c2, this.data, this.executor);
        setStatus(StateMachineStatus.IDLE);
        processEvents();
    }

    @Override // org.squirrelframework.foundation.fsm.StateMachine
    public synchronized void terminate(C c2) throws Throwable {
        try {
            try {
                if (isTerminated()) {
                    return;
                }
                StateMachineData<T, S, E, C> stateMachineData = this.data;
                exitAll(this.data.read().currentRawState(), FSM.newStateContext(this, stateMachineData, stateMachineData.read().currentRawState(), getTerminateEvent(), c2, null, this.executor));
                this.executor.execute();
                setStatus(StateMachineStatus.TERMINATED);
                fireEvent(new TerminateEventImpl(getThis()));
            } catch (Throwable th) {
                th = th;
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            throw th;
        }
    }

    @Override // org.squirrelframework.foundation.fsm.StateMachine
    public S test(E e2, C c2) {
        boolean zIsEntryPoint = isEntryPoint();
        if (zIsEntryPoint) {
            StateMachineContext.set(getThis(), true);
        }
        try {
            return internalTest(e2, c2);
        } finally {
            if (zIsEntryPoint) {
                StateMachineContext.set(null);
            }
        }
    }

    @Override // org.squirrelframework.foundation.fsm.StateMachine
    public Class<C> typeOfContext() {
        return this.data.read().typeOfContext();
    }

    @Override // org.squirrelframework.foundation.fsm.StateMachine
    public Class<E> typeOfEvent() {
        return this.data.read().typeOfEvent();
    }

    @Override // org.squirrelframework.foundation.fsm.StateMachine
    public Class<S> typeOfState() {
        return this.data.read().typeOfState();
    }

    public void untypedFire(Object obj, Object obj2) {
        fire(typeOfEvent().cast(obj), typeOfContext().cast(obj2));
    }

    @Override // org.squirrelframework.foundation.fsm.StateMachine
    public void fireImmediate(E e2) {
        fireImmediate(e2, null);
    }

    private void removeDeclarativeListener(Observable observable, final Object obj) {
        observable.removeListener(new Predicate<ListenerMethod>() { // from class: org.squirrelframework.foundation.fsm.impl.AbstractStateMachine.7
            @Override // com.google.common.base.Predicate
            public boolean apply(ListenerMethod listenerMethod) {
                return (listenerMethod.getTarget() instanceof DeclarativeListener) && ((DeclarativeListener) listenerMethod.getTarget()).getListenTarget() == obj;
            }
        });
    }

    @Override // org.squirrelframework.foundation.fsm.StateMachine
    public S test(E e2) {
        return test(e2, null);
    }

    @Override // org.squirrelframework.foundation.fsm.StateMachine
    public void start() {
        start(null);
    }

    @Override // org.squirrelframework.foundation.fsm.StateMachine
    public void fire(E e2, C c2) {
        fire(e2, c2, false);
    }

    @Override // org.squirrelframework.foundation.fsm.StateMachine
    public void fire(E e2) {
        fire(e2, null);
    }

    @Override // org.squirrelframework.foundation.fsm.StateMachine
    public void terminate() throws Throwable {
        terminate(null);
    }
}
