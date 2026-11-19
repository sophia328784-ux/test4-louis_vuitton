package org.squirrelframework.foundation.fsm.impl;

import com.google.common.base.Function;
import com.google.common.base.Preconditions;
import com.google.common.base.Strings;
import defpackage.az;
import defpackage.d21;
import defpackage.fc;
import defpackage.md;
import defpackage.n00;
import defpackage.tr;
import defpackage.v7;
import java.lang.annotation.Annotation;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.lang.reflect.Proxy;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Stack;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicReference;
import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.squirrelframework.foundation.component.SquirrelInstanceProvider;
import org.squirrelframework.foundation.component.SquirrelPostProcessor;
import org.squirrelframework.foundation.component.SquirrelPostProcessorProvider;
import org.squirrelframework.foundation.component.SquirrelProvider;
import org.squirrelframework.foundation.exception.SquirrelRuntimeException;
import org.squirrelframework.foundation.fsm.Action;
import org.squirrelframework.foundation.fsm.ActionWrapper;
import org.squirrelframework.foundation.fsm.AnonymousAction;
import org.squirrelframework.foundation.fsm.Condition;
import org.squirrelframework.foundation.fsm.Conditions;
import org.squirrelframework.foundation.fsm.Converter;
import org.squirrelframework.foundation.fsm.ConverterProvider;
import org.squirrelframework.foundation.fsm.HistoryType;
import org.squirrelframework.foundation.fsm.ImmutableState;
import org.squirrelframework.foundation.fsm.ImmutableTransition;
import org.squirrelframework.foundation.fsm.MutableLinkedState;
import org.squirrelframework.foundation.fsm.MutableState;
import org.squirrelframework.foundation.fsm.MutableTimedState;
import org.squirrelframework.foundation.fsm.MutableTransition;
import org.squirrelframework.foundation.fsm.MvelScriptManager;
import org.squirrelframework.foundation.fsm.StateCompositeType;
import org.squirrelframework.foundation.fsm.StateMachine;
import org.squirrelframework.foundation.fsm.StateMachineBuilder;
import org.squirrelframework.foundation.fsm.StateMachineConfiguration;
import org.squirrelframework.foundation.fsm.TransitionType;
import org.squirrelframework.foundation.fsm.UntypedImmutableState;
import org.squirrelframework.foundation.fsm.UntypedMutableState;
import org.squirrelframework.foundation.fsm.UntypedStateMachine;
import org.squirrelframework.foundation.fsm.annotation.ContextEvent;
import org.squirrelframework.foundation.fsm.annotation.ContextInsensitive;
import org.squirrelframework.foundation.fsm.annotation.State;
import org.squirrelframework.foundation.fsm.annotation.StateMachineParameters;
import org.squirrelframework.foundation.fsm.annotation.States;
import org.squirrelframework.foundation.fsm.annotation.Transit;
import org.squirrelframework.foundation.fsm.annotation.Transitions;
import org.squirrelframework.foundation.fsm.builder.DeferBoundActionBuilder;
import org.squirrelframework.foundation.fsm.builder.EntryExitActionBuilder;
import org.squirrelframework.foundation.fsm.builder.ExternalTransitionBuilder;
import org.squirrelframework.foundation.fsm.builder.From;
import org.squirrelframework.foundation.fsm.builder.InternalTransitionBuilder;
import org.squirrelframework.foundation.fsm.builder.LocalTransitionBuilder;
import org.squirrelframework.foundation.fsm.builder.MultiTransitionBuilder;
import org.squirrelframework.foundation.fsm.builder.On;
import org.squirrelframework.foundation.fsm.builder.To;
import org.squirrelframework.foundation.fsm.jmx.ManagementService;
import org.squirrelframework.foundation.util.DuplicateChecker;
import org.squirrelframework.foundation.util.ReflectUtils;
import org.teleal.cling.support.contentdirectory.callback.Browse;

/* JADX INFO: loaded from: classes5.dex */
public class StateMachineBuilderImpl<T extends StateMachine<T, S, E, C>, S, E, C> implements StateMachineBuilder<T, S, E, C> {
    private static final Logger logger;
    private final Constructor<? extends T> constructor;
    private final Class<C> contextClazz;
    private final Class<E> eventClazz;
    protected final Converter<E> eventConverter;
    private final ExecutionContext executionContext;
    private final Class<?>[] extraParamTypes;
    private E finishEvent;
    private ManagementService managementService;
    private final Class<?>[] methodCallParamTypes;
    private final Method postConstructMethod;
    private final MvelScriptManager scriptManager;
    private E startEvent;
    private final Class<S> stateClazz;
    protected final Converter<S> stateConverter;
    private final Class<? extends T> stateMachineImplClazz;
    private E terminateEvent;
    private final Map<S, MutableState<T, S, E, C>> states = new ConcurrentHashMap();
    private boolean prepared = false;
    private Map<String, String> stateAliasToDescription = null;
    private final List<DeferBoundActionInfo<T, S, E, C>> deferBoundActionInfoList = new ArrayList();
    private boolean isScanAnnotations = true;
    private StateMachineConfiguration defaultConfiguration = StateMachineConfiguration.getInstance();

    public class DeclareStateFunction implements Function<Class<?>, Boolean> {
        private DeclareStateFunction() {
        }

        @Override // com.google.common.base.Function
        public Boolean apply(Class<?> cls) {
            StateMachineBuilderImpl.this.buildDeclareState((State) cls.getAnnotation(State.class));
            States states = (States) cls.getAnnotation(States.class);
            if (states != null && states.value() != null) {
                for (State state : states.value()) {
                    StateMachineBuilderImpl.this.buildDeclareState(state);
                }
            }
            return Boolean.TRUE;
        }
    }

    public class DeclareTransitionFunction implements Function<Class<?>, Boolean> {
        private DeclareTransitionFunction() {
        }

        @Override // com.google.common.base.Function
        public Boolean apply(Class<?> cls) {
            StateMachineBuilderImpl.this.buildDeclareTransition((Transit) cls.getAnnotation(Transit.class));
            Transitions transitions = (Transitions) cls.getAnnotation(Transitions.class);
            if (transitions != null && transitions.value() != null) {
                for (Transit transit : transitions.value()) {
                    StateMachineBuilderImpl.this.buildDeclareTransition(transit);
                }
            }
            return Boolean.TRUE;
        }
    }

    static {
        DuplicateChecker.checkDuplicate((Class<?>) StateMachineBuilder.class);
        logger = LoggerFactory.getLogger(StateMachineBuilderImpl.class);
    }

    private StateMachineBuilderImpl(Class<? extends T> cls, Class<S> cls2, Class<E> cls3, Class<C> cls4, Class<?>... clsArr) {
        Constructor<? extends T> constructor;
        Method method = null;
        Preconditions.h(isInstantiableType(cls), "The state machine class \"" + cls.getName() + "\" cannot be instantiated.");
        Preconditions.h(isStateMachineType(cls), "The implementation class of state machine \"" + cls.getName() + "\" must be extended from AbstractStateMachine.class.");
        this.stateMachineImplClazz = cls;
        clsArr = clsArr == null ? new Class[0] : clsArr;
        this.extraParamTypes = clsArr;
        StateMachineParameters stateMachineParameters = (StateMachineParameters) findAnnotation(StateMachineParameters.class);
        if (cls2 != Object.class || stateMachineParameters == null) {
            this.stateClazz = cls2;
        } else {
            this.stateClazz = (Class<S>) stateMachineParameters.stateType();
        }
        if (cls3 != Object.class || stateMachineParameters == null) {
            this.eventClazz = cls3;
        } else {
            this.eventClazz = (Class<E>) stateMachineParameters.eventType();
        }
        if (cls4 != Object.class || stateMachineParameters == null) {
            this.contextClazz = cls4;
        } else {
            this.contextClazz = (Class<C>) stateMachineParameters.contextType();
        }
        ConverterProvider converterProvider = ConverterProvider.INSTANCE;
        this.stateConverter = converterProvider.getConverter(this.stateClazz);
        this.eventConverter = converterProvider.getConverter(this.eventClazz);
        this.scriptManager = (MvelScriptManager) SquirrelProvider.getInstance().newInstance(MvelScriptManager.class);
        Annotation annotationFindAnnotation = findAnnotation(ContextInsensitive.class);
        Class<S> cls5 = this.stateClazz;
        this.methodCallParamTypes = annotationFindAnnotation != null ? new Class[]{cls5, cls5, this.eventClazz} : new Class[]{cls5, cls5, this.eventClazz, this.contextClazz};
        try {
            try {
                constructor = ReflectUtils.getConstructor(cls, clsArr);
            } catch (Exception unused) {
                md.n(n00.p(cls, new StringBuilder("Cannot find matched constructor for '"), "'."));
                throw null;
            }
        } catch (Exception unused2) {
            constructor = ReflectUtils.getConstructor(cls, new Class[0]);
        }
        this.constructor = constructor;
        try {
            method = ReflectUtils.getMethod(cls, "postConstruct", this.extraParamTypes);
        } catch (Exception unused3) {
        }
        this.postConstructMethod = method;
        this.executionContext = new ExecutionContext(this.scriptManager, cls, this.methodCallParamTypes);
        defineContextEvent();
    }

    private void addStateEntryExitMethodCallAction(String str, Class<?>[] clsArr, MutableState<T, S, E, C> mutableState, boolean z) {
        int i2;
        Method methodFindMethodCallActionInternal = findMethodCallActionInternal(this.stateMachineImplClazz, str, clsArr);
        if (methodFindMethodCallActionInternal != null) {
            if (str.startsWith("before")) {
                i2 = 100;
            } else {
                i2 = str.startsWith("after") ? -100 : -10;
            }
            MethodCallActionImpl methodCallActionImplNewMethodCallAction = FSM.newMethodCallAction(methodFindMethodCallActionInternal, i2, this.executionContext);
            if (z) {
                mutableState.addEntryAction(methodCallActionImplNewMethodCallAction);
            } else {
                mutableState.addExitAction(methodCallActionImplNewMethodCallAction);
            }
        }
    }

    private void addTransitionMethodCallAction(String str, Class<?>[] clsArr, MutableTransition<T, S, E, C> mutableTransition) {
        Method methodFindMethodCallActionInternal = findMethodCallActionInternal(this.stateMachineImplClazz, str, clsArr);
        if (methodFindMethodCallActionInternal != null) {
            mutableTransition.addAction(FSM.newMethodCallAction(methodFindMethodCallActionInternal, -10, this.executionContext));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void buildDeclareState(State state) {
        if (state == null) {
            return;
        }
        Preconditions.p("Do not register state converter", this.stateConverter != null);
        S sConvertFromString = this.stateConverter.convertFromString(state.name());
        Preconditions.m(sConvertFromString, "Cannot convert state of name \"" + state.name() + "\".");
        MutableState<T, S, E, C> mutableStateDefineState = defineState(sConvertFromString);
        mutableStateDefineState.setCompositeType(state.compositeType());
        if (!mutableStateDefineState.isParallelState()) {
            mutableStateDefineState.setHistoryType(state.historyType());
        }
        mutableStateDefineState.setFinal(state.isFinal());
        if (!Strings.a(state.parent())) {
            MutableState<T, S, E, C> mutableStateDefineState2 = defineState(this.stateConverter.convertFromString(parseStateId(state.parent())));
            mutableStateDefineState.setParentState(mutableStateDefineState2);
            mutableStateDefineState2.addChildState(mutableStateDefineState);
            if (!mutableStateDefineState2.isParallelState() && state.initialState()) {
                mutableStateDefineState2.setInitialState(mutableStateDefineState);
            }
        }
        if (!Strings.a(state.entryCallMethod())) {
            onEntry(sConvertFromString).perform(FSM.newMethodCallActionProxy(state.entryCallMethod(), this.executionContext));
        }
        if (!Strings.a(state.exitCallMethod())) {
            onExit(sConvertFromString).perform(FSM.newMethodCallActionProxy(state.exitCallMethod(), this.executionContext));
        }
        rememberStateAlias(state);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void buildDeclareTransition(Transit transit) {
        To<T, S, E, C> toWithin;
        Condition<C> conditionNever;
        if (transit == null) {
            return;
        }
        Preconditions.p("Do not register state converter", this.stateConverter != null);
        Preconditions.p("Do not register event converter", this.eventConverter != null);
        if (isDeferBoundAction(transit)) {
            buildDeferBoundAction(transit);
            return;
        }
        Preconditions.h(isInstantiableType(transit.when()), "Condition 'when' should be concrete class or static inner class.");
        Preconditions.h(transit.type() != TransitionType.INTERNAL || transit.from().equals(transit.to()), "Internal transition must transit to the same source state.");
        S sConvertFromString = this.stateConverter.convertFromString(parseStateId(transit.from()));
        Preconditions.m(sConvertFromString, "Cannot convert state of name \"" + sConvertFromString + "\".");
        S sConvertFromString2 = this.stateConverter.convertFromString(parseStateId(transit.to()));
        E eConvertFromString = this.eventConverter.convertFromString(transit.on());
        Preconditions.m(eConvertFromString, "Cannot convert event of name \"" + eConvertFromString + "\".");
        if (this.states.get(sConvertFromString) != null) {
            for (ImmutableTransition<T, S, E, C> immutableTransition : this.states.get(sConvertFromString).getAllTransitions()) {
                if (immutableTransition.isMatch(sConvertFromString, sConvertFromString2, eConvertFromString, transit.priority(), transit.when(), transit.type())) {
                    MutableTransition mutableTransition = (MutableTransition) immutableTransition;
                    String strCallMethod = transit.callMethod();
                    if (strCallMethod == null || strCallMethod.length() <= 0) {
                        return;
                    }
                    mutableTransition.addAction(FSM.newMethodCallActionProxy(strCallMethod, this.executionContext));
                    return;
                }
            }
        }
        if (transit.type() == TransitionType.INTERNAL) {
            toWithin = FSM.newInternalTransitionBuilder(this.states, transit.priority(), this.executionContext).within(sConvertFromString);
        } else {
            TransitionType transitionTypeType = transit.type();
            TransitionType transitionType = TransitionType.LOCAL;
            Map<S, MutableState<T, S, E, C>> map = this.states;
            From<T, S, E, C> from = (transitionTypeType == transitionType ? FSM.newLocalTransitionBuilder(map, transit.priority(), this.executionContext) : FSM.newExternalTransitionBuilder(map, transit.priority(), this.executionContext)).from(sConvertFromString);
            toWithin = (transit.isTargetFinal() || FSM.getState(this.states, sConvertFromString2).isFinalState()) ? from.toFinal(sConvertFromString2) : from.to(sConvertFromString2);
        }
        On<T, S, E, C> on = toWithin.on(eConvertFromString);
        try {
            conditionNever = null;
            if (transit.when() != Conditions.Always.class) {
                Constructor<? extends Condition> declaredConstructor = transit.when().getDeclaredConstructor(null);
                declaredConstructor.setAccessible(true);
                conditionNever = declaredConstructor.newInstance(null);
            } else {
                String strWhenMvel = transit.whenMvel();
                int i2 = StringUtils.f77543a;
                if (!(strWhenMvel == null || strWhenMvel.length() == 0)) {
                    conditionNever = FSM.newMvelCondition(transit.whenMvel(), this.scriptManager);
                }
            }
        } catch (Exception unused) {
            logger.error("Instantiate Condition \"" + transit.when().getName() + "\" failed.");
            conditionNever = Conditions.never();
        }
        if (conditionNever != null) {
            on = (On<T, S, E, C>) on.when(conditionNever);
        }
        if (Strings.a(transit.callMethod())) {
            return;
        }
        on.perform(FSM.newMethodCallActionProxy(transit.callMethod(), this.executionContext));
    }

    private void buildDeferBoundAction(Transit transit) {
        DeferBoundActionInfo<T, S, E, C> deferBoundActionInfo = new DeferBoundActionInfo<>(Browse.CAPS_WILDCARD.equals(transit.from()) ? null : this.stateConverter.convertFromString(parseStateId(transit.from())), Browse.CAPS_WILDCARD.equals(transit.to()) ? null : this.stateConverter.convertFromString(parseStateId(transit.to())), Browse.CAPS_WILDCARD.equals(transit.on()) ? null : this.eventConverter.convertFromString(transit.on()));
        if (!transit.callMethod().isEmpty()) {
            Action<T, S, E, C> actionNewMethodCallActionProxy = FSM.newMethodCallActionProxy(transit.callMethod(), this.executionContext);
            if (!transit.whenMvel().isEmpty()) {
                actionNewMethodCallActionProxy = warpConditionalAction(actionNewMethodCallActionProxy, FSM.newMvelCondition(transit.whenMvel(), this.scriptManager));
            }
            if (transit.when() != Conditions.Always.class) {
                actionNewMethodCallActionProxy = warpConditionalAction(actionNewMethodCallActionProxy, (Condition) ReflectUtils.newInstance(transit.when()));
            }
            deferBoundActionInfo.setActions(Collections.singletonList(actionNewMethodCallActionProxy));
        }
        this.deferBoundActionInfoList.add(deferBoundActionInfo);
    }

    private void checkState() {
        if (this.prepared) {
            md.k("The state machine builder has been freezed and cannot be changed anymore.");
        }
    }

    private void defineChildStatesOn(S s, StateCompositeType stateCompositeType, HistoryType historyType, boolean z, S... sArr) {
        checkState();
        if (sArr == null || sArr.length <= 0) {
            return;
        }
        MutableState state = FSM.getState(this.states, s);
        state.setCompositeType(stateCompositeType);
        state.setHistoryType(historyType);
        int length = sArr.length;
        for (int i2 = 0; i2 < length; i2++) {
            MutableState<T, S, E, C> state2 = FSM.getState(this.states, sArr[i2]);
            if (!z && i2 == 0) {
                state.setInitialState(state2);
            }
            state2.setParentState(state);
            state.addChildState(state2);
        }
    }

    private void defineContextEvent() {
        ContextEvent contextEvent = (ContextEvent) findAnnotation(ContextEvent.class);
        if (contextEvent != null) {
            Preconditions.p("Do not register event converter", this.eventConverter != null);
            if (!contextEvent.startEvent().isEmpty()) {
                defineStartEvent(this.eventConverter.convertFromString(contextEvent.startEvent()));
            }
            if (!contextEvent.finishEvent().isEmpty()) {
                defineFinishEvent(this.eventConverter.convertFromString(contextEvent.finishEvent()));
            }
            if (contextEvent.terminateEvent().isEmpty()) {
                return;
            }
            defineTerminateEvent(this.eventConverter.convertFromString(contextEvent.terminateEvent()));
        }
    }

    private <M extends Annotation> M findAnnotation(final Class<M> cls) {
        final AtomicReference atomicReference = new AtomicReference();
        walkThroughStateMachineClass(new Function<Class<?>, Boolean>() { // from class: org.squirrelframework.foundation.fsm.impl.StateMachineBuilderImpl.1
            @Override // com.google.common.base.Function
            public Boolean apply(Class<?> cls2) {
                Annotation annotation = cls2.getAnnotation(cls);
                if (annotation == null) {
                    return Boolean.TRUE;
                }
                atomicReference.set(annotation);
                return Boolean.FALSE;
            }
        });
        return (M) atomicReference.get();
    }

    public static Method findMethodCallActionInternal(Class<?> cls, String str, Class<?>[] clsArr) {
        return searchMethod(cls, AbstractStateMachine.class, str, clsArr);
    }

    private String[] getEntryExitStateMethodNames(ImmutableState<T, S, E, C> immutableState, boolean z) {
        String str = z ? "entry" : "exit";
        String str2 = z ? "EntryAny" : "ExitAny";
        String strConcat = "before".concat(str2);
        StringBuilder sbT = n00.t(str);
        sbT.append((this.stateConverter == null || immutableState.isFinalState()) ? StringUtils.b(immutableState.toString()) : this.stateConverter.convertToString(immutableState.getStateId()));
        return new String[]{strConcat, sbT.toString(), "after".concat(str2)};
    }

    private ManagementService getManagementService() {
        if (this.managementService == null) {
            this.managementService = new ManagementService();
        }
        return this.managementService;
    }

    private String[] getTransitionMethodNames(ImmutableTransition<T, S, E, C> immutableTransition) {
        ImmutableState<T, S, E, C> sourceState = immutableTransition.getSourceState();
        ImmutableState<T, S, E, C> targetState = immutableTransition.getTargetState();
        E event = immutableTransition.getEvent();
        Converter<S> converter = this.stateConverter;
        String strConvertToString = converter != null ? converter.convertToString(sourceState.getStateId()) : StringUtils.b(sourceState.toString());
        String strB = (this.stateConverter == null || targetState.isFinalState()) ? StringUtils.b(targetState.toString()) : this.stateConverter.convertToString(targetState.getStateId());
        Converter<E> converter2 = this.eventConverter;
        String strConvertToString2 = converter2 != null ? converter2.convertToString(event) : StringUtils.b(event.toString());
        String strP = d21.p(fc.s("transitFrom", strConvertToString, "To", strB, "On"), strConvertToString2, "When", immutableTransition.getCondition().name());
        StringBuilder sbS = fc.s("transitFrom", strConvertToString, "To", strB, "On");
        sbS.append(strConvertToString2);
        return new String[]{strP, sbS.toString(), fc.i("transitFromAnyTo", strB, "On", strConvertToString2), fc.i("transitFrom", strConvertToString, "ToAnyOn", strConvertToString2), fc.i("transitFrom", strConvertToString, "To", strB), tr.g("on", strConvertToString2)};
    }

    private void installDeferBoundAction(DeferBoundActionInfo<T, S, E, C> deferBoundActionInfo) {
        for (MutableState<T, S, E, C> mutableState : this.states.values()) {
            if (deferBoundActionInfo.isFromStateMatch(mutableState.getStateId())) {
                for (ImmutableTransition<T, S, E, C> immutableTransition : mutableState.getAllTransitions()) {
                    if (deferBoundActionInfo.isToStateMatch(immutableTransition.getTargetState().getStateId()) && deferBoundActionInfo.isEventStateMatch(immutableTransition.getEvent())) {
                        ((MutableTransition) immutableTransition).addActions(deferBoundActionInfo.getActions());
                    }
                }
            }
        }
    }

    private void installDeferBoundActions() {
        if (this.deferBoundActionInfoList.isEmpty()) {
            return;
        }
        Iterator<DeferBoundActionInfo<T, S, E, C>> it = this.deferBoundActionInfoList.iterator();
        while (it.hasNext()) {
            installDeferBoundAction(it.next());
        }
    }

    private void installExtensionMethods() {
        for (MutableState<T, S, E, C> mutableState : this.states.values()) {
            if (!mutableState.isFinalState()) {
                for (String str : getEntryExitStateMethodNames(mutableState, false)) {
                    addStateEntryExitMethodCallAction(str, this.methodCallParamTypes, mutableState, false);
                }
                for (ImmutableTransition<T, S, E, C> immutableTransition : mutableState.getAllTransitions()) {
                    for (String str2 : getTransitionMethodNames(immutableTransition)) {
                        addTransitionMethodCallAction(str2, this.methodCallParamTypes, (MutableTransition) immutableTransition);
                    }
                }
                for (String str3 : getEntryExitStateMethodNames(mutableState, true)) {
                    addStateEntryExitMethodCallAction(str3, this.methodCallParamTypes, mutableState, true);
                }
            }
        }
    }

    private void installFinalStateActions() {
        for (MutableState<T, S, E, C> mutableState : this.states.values()) {
            if (mutableState.isFinalState()) {
                mutableState.addExitAction(new AnonymousAction<T, S, E, C>() { // from class: org.squirrelframework.foundation.fsm.impl.StateMachineBuilderImpl.4
                    @Override // org.squirrelframework.foundation.fsm.Action
                    public void execute(S s, S s2, E e2, C c2, T t) {
                        throw new IllegalStateException("Final state cannot be exited anymore.");
                    }

                    @Override // org.squirrelframework.foundation.fsm.AnonymousAction, org.squirrelframework.foundation.fsm.Action
                    public String name() {
                        return "__FINAL_STATE_ACTION_GUARD";
                    }
                });
            }
        }
    }

    private boolean isDeferBoundAction(Transit transit) {
        return Browse.CAPS_WILDCARD.equals(transit.from()) || Browse.CAPS_WILDCARD.equals(transit.to()) || Browse.CAPS_WILDCARD.equals(transit.on());
    }

    private boolean isInstantiableType(Class<?> cls) {
        if (cls == null || cls.isInterface() || Modifier.isAbstract(cls.getModifiers())) {
            return false;
        }
        return cls.getEnclosingClass() == null || Modifier.isStatic(cls.getModifiers());
    }

    private boolean isStateMachineInterface(Class<?> cls) {
        return cls != null && cls.isInterface() && StateMachine.class.isAssignableFrom(cls);
    }

    private boolean isStateMachineType(Class<?> cls) {
        return (cls == null || AbstractStateMachine.class == cls || !AbstractStateMachine.class.isAssignableFrom(cls)) ? false : true;
    }

    private boolean isValidState(S s) {
        return (s == null || this.states.get(s) == null) ? false : true;
    }

    private String parseStateId(String str) {
        return (str == null || !str.startsWith("#")) ? str : this.stateAliasToDescription.get(str.substring(1));
    }

    private T postProcessStateMachine(Class<T> cls, T t) {
        if (t != null) {
            Iterator<E> it = SquirrelPostProcessorProvider.getInstance().getCallablePostProcessors(cls).iterator();
            while (it.hasNext()) {
                ((SquirrelPostProcessor) it.next()).postProcess(t);
            }
        }
        return t;
    }

    private synchronized void prepare() {
        try {
            if (this.prepared) {
                return;
            }
            if (this.isScanAnnotations) {
                walkThroughStateMachineClass(new DeclareStateFunction());
                walkThroughStateMachineClass(new DeclareTransitionFunction());
                installDeferBoundActions();
            }
            installExtensionMethods();
            prioritizeTransitions();
            installFinalStateActions();
            verifyStateMachineDefinition();
            proxyUntypedStates();
            this.prepared = true;
        } catch (Throwable th) {
            throw th;
        }
    }

    private void prioritizeTransitions() {
        for (MutableState<T, S, E, C> mutableState : this.states.values()) {
            if (!mutableState.isFinalState()) {
                mutableState.prioritizeTransitions();
            }
        }
    }

    private void proxyUntypedStates() {
        if (UntypedStateMachine.class.isAssignableFrom(this.stateMachineImplClazz)) {
            HashMap map = new HashMap();
            for (final MutableState<T, S, E, C> mutableState : this.states.values()) {
                map.put(mutableState.getStateId(), MutableState.class.cast((UntypedMutableState) Proxy.newProxyInstance(UntypedMutableState.class.getClassLoader(), new Class[]{UntypedMutableState.class, UntypedImmutableState.class}, new InvocationHandler() { // from class: org.squirrelframework.foundation.fsm.impl.StateMachineBuilderImpl.3
                    @Override // java.lang.reflect.InvocationHandler
                    public Object invoke(Object obj, Method method, Object[] objArr) throws Throwable {
                        if (method.getName().equals("getStateId")) {
                            return mutableState.getStateId();
                        }
                        if (method.getName().equals("getThis")) {
                            return mutableState.getThis();
                        }
                        if (method.getName().equals("equals")) {
                            return Boolean.valueOf(mutableState.equals(objArr[0]));
                        }
                        boolean zEquals = method.getName().equals("hashCode");
                        MutableState mutableState2 = mutableState;
                        return zEquals ? Integer.valueOf(mutableState2.hashCode()) : method.invoke(mutableState2, objArr);
                    }
                })));
            }
            this.states.clear();
            this.states.putAll(map);
        }
    }

    private void rememberStateAlias(State state) {
        if (Strings.a(state.alias())) {
            return;
        }
        if (this.stateAliasToDescription == null) {
            this.stateAliasToDescription = new HashMap();
        }
        if (!this.stateAliasToDescription.containsKey(state.alias())) {
            this.stateAliasToDescription.put(state.alias(), state.name());
            return;
        }
        StringBuilder sb = new StringBuilder("Cannot define duplicate state alias \"");
        sb.append(state.alias());
        sb.append("\" for state \"");
        sb.append(state.name());
        sb.append("\" and ");
        v7.h(n00.r(this.stateAliasToDescription.get(state.alias()), "\".", sb));
    }

    private static Method searchMethod(Class<?> cls, Class<?> cls2, String str, Class<?>[] clsArr) {
        if (!cls2.isAssignableFrom(cls)) {
            return null;
        }
        while (!cls2.equals(cls)) {
            try {
                return cls.getDeclaredMethod(str, clsArr);
            } catch (NoSuchMethodException unused) {
                cls = cls.getSuperclass();
            }
        }
        return null;
    }

    private void verifyStateMachineDefinition() {
        Iterator<MutableState<T, S, E, C>> it = this.states.values().iterator();
        while (it.hasNext()) {
            it.next().verify();
        }
    }

    private void walkThroughStateMachineClass(Function<Class<?>, Boolean> function) {
        Stack stack = new Stack();
        stack.push(this.stateMachineImplClazz);
        while (!stack.isEmpty()) {
            Class<?> cls = (Class) stack.pop();
            if (!function.apply(cls).booleanValue()) {
                return;
            }
            for (Class<?> cls2 : cls.getInterfaces()) {
                if (isStateMachineInterface(cls2)) {
                    stack.push(cls2);
                }
            }
            if (isStateMachineType(cls.getSuperclass())) {
                stack.push(cls.getSuperclass());
            }
        }
    }

    private Action<T, S, E, C> warpConditionalAction(Action<T, S, E, C> action, final Condition<C> condition) {
        return new ActionWrapper<T, S, E, C>(action) { // from class: org.squirrelframework.foundation.fsm.impl.StateMachineBuilderImpl.2
            @Override // org.squirrelframework.foundation.fsm.ActionWrapper, org.squirrelframework.foundation.fsm.Action
            public void execute(S s, S s2, E e2, C c2, T t) {
                if (condition.isSatisfied(c2)) {
                    super.execute(s, s2, e2, c2, t);
                }
            }
        };
    }

    @Override // org.squirrelframework.foundation.fsm.StateMachineBuilder
    public MutableState<T, S, E, C> defineFinalState(S s) {
        checkState();
        MutableState<T, S, E, C> mutableStateDefineState = defineState(s);
        mutableStateDefineState.setFinal(true);
        return mutableStateDefineState;
    }

    @Override // org.squirrelframework.foundation.fsm.StateMachineBuilder
    public void defineFinishEvent(E e2) {
        checkState();
        this.finishEvent = e2;
    }

    @Override // org.squirrelframework.foundation.fsm.StateMachineBuilder
    public MutableState<T, S, E, C> defineLinkedState(S s, final StateMachineBuilder<? extends StateMachine<?, S, E, C>, S, E, C> stateMachineBuilder, final S s2, final Object... objArr) {
        checkState();
        MutableState<T, S, E, C> mutableState = this.states.get(s);
        if (mutableState != null) {
            return mutableState;
        }
        MutableLinkedState mutableLinkedStateNewLinkedState = FSM.newLinkedState(s);
        mutableLinkedStateNewLinkedState.setLinkedStateMachineProvider(new SquirrelInstanceProvider<StateMachine<?, S, E, C>>() { // from class: org.squirrelframework.foundation.fsm.impl.StateMachineBuilderImpl.6
            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference fix 'apply assigned field type' failed
            java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$ArrayArg
            	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
            	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
            	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
             */
            @Override // org.squirrelframework.foundation.component.SquirrelInstanceProvider
            public StateMachine<?, S, E, C> get() {
                return stateMachineBuilder.newStateMachine(s2, objArr);
            }
        });
        this.states.put(s, mutableLinkedStateNewLinkedState);
        return mutableLinkedStateNewLinkedState;
    }

    @Override // org.squirrelframework.foundation.fsm.StateMachineBuilder
    public void defineNoInitSequentialStatesOn(S s, HistoryType historyType, S... sArr) {
        checkState();
        defineChildStatesOn(s, StateCompositeType.SEQUENTIAL, historyType, true, sArr);
    }

    @Override // org.squirrelframework.foundation.fsm.StateMachineBuilder
    public void defineParallelStatesOn(S s, S... sArr) {
        checkState();
        defineChildStatesOn(s, StateCompositeType.PARALLEL, HistoryType.NONE, true, sArr);
    }

    @Override // org.squirrelframework.foundation.fsm.StateMachineBuilder
    public void defineSequentialStatesOn(S s, HistoryType historyType, S... sArr) {
        checkState();
        defineChildStatesOn(s, StateCompositeType.SEQUENTIAL, historyType, false, sArr);
    }

    @Override // org.squirrelframework.foundation.fsm.StateMachineBuilder
    public void defineStartEvent(E e2) {
        checkState();
        this.startEvent = e2;
    }

    @Override // org.squirrelframework.foundation.fsm.StateMachineBuilder
    public MutableState<T, S, E, C> defineState(S s) {
        checkState();
        return FSM.getState(this.states, s);
    }

    @Override // org.squirrelframework.foundation.fsm.StateMachineBuilder
    public void defineTerminateEvent(E e2) {
        checkState();
        this.terminateEvent = e2;
    }

    @Override // org.squirrelframework.foundation.fsm.StateMachineBuilder
    public MutableState<T, S, E, C> defineTimedState(S s, long j2, long j3, E e2, C c2) {
        checkState();
        MutableState<T, S, E, C> mutableState = this.states.get(s);
        if (mutableState != null) {
            return mutableState;
        }
        MutableTimedState mutableTimedStateNewTimedState = FSM.newTimedState(s);
        mutableTimedStateNewTimedState.setAutoFireContext(c2);
        mutableTimedStateNewTimedState.setAutoFireEvent(e2);
        mutableTimedStateNewTimedState.setInitialDelay(j2);
        mutableTimedStateNewTimedState.setTimeInterval(j3);
        this.states.put(s, mutableTimedStateNewTimedState);
        return mutableTimedStateNewTimedState;
    }

    @Override // org.squirrelframework.foundation.fsm.StateMachineBuilder
    public ExternalTransitionBuilder<T, S, E, C> externalTransition(int i2) {
        checkState();
        return FSM.newExternalTransitionBuilder(this.states, i2, this.executionContext);
    }

    @Override // org.squirrelframework.foundation.fsm.StateMachineBuilder
    public MultiTransitionBuilder<T, S, E, C> externalTransitions() {
        checkState();
        return transitions(1);
    }

    @Override // org.squirrelframework.foundation.fsm.StateMachineBuilder
    public InternalTransitionBuilder<T, S, E, C> internalTransition(int i2) {
        checkState();
        return FSM.newInternalTransitionBuilder(this.states, i2, this.executionContext);
    }

    @Override // org.squirrelframework.foundation.fsm.StateMachineBuilder
    public LocalTransitionBuilder<T, S, E, C> localTransition(int i2) {
        checkState();
        return FSM.newLocalTransitionBuilder(this.states, i2, this.executionContext);
    }

    @Override // org.squirrelframework.foundation.fsm.StateMachineBuilder
    public MultiTransitionBuilder<T, S, E, C> localTransitions(int i2) {
        checkState();
        return FSM.newMultiTransitionBuilder(this.states, TransitionType.LOCAL, i2, this.executionContext);
    }

    @Override // org.squirrelframework.foundation.fsm.StateMachineBuilder
    public T newStateMachine(S s, StateMachineConfiguration stateMachineConfiguration, Object... objArr) {
        T t;
        if (!this.prepared) {
            prepare();
        }
        if (!isValidState(s)) {
            throw new IllegalArgumentException(getClass() + " cannot find Initial state '" + s + "' in state machine.");
        }
        Class<?>[] parameterTypes = this.constructor.getParameterTypes();
        if (parameterTypes != null) {
            try {
                t = parameterTypes.length == 0 ? (T) ReflectUtils.newInstance(this.constructor) : (T) ReflectUtils.newInstance(this.constructor, objArr);
            } catch (SquirrelRuntimeException e2) {
                az.s("New state machine instance failed.", e2.getTargetException());
                return null;
            }
        }
        final AbstractStateMachine abstractStateMachine = (AbstractStateMachine) t;
        abstractStateMachine.prePostConstruct(s, this.states, stateMachineConfiguration, new Runnable() { // from class: org.squirrelframework.foundation.fsm.impl.StateMachineBuilderImpl.5
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.lang.Runnable
            public void run() {
                abstractStateMachine.setStartEvent(StateMachineBuilderImpl.this.startEvent);
                abstractStateMachine.setFinishEvent(StateMachineBuilderImpl.this.finishEvent);
                abstractStateMachine.setTerminateEvent(StateMachineBuilderImpl.this.terminateEvent);
                abstractStateMachine.setExtraParamTypes(StateMachineBuilderImpl.this.extraParamTypes);
                abstractStateMachine.setTypeOfStateMachine(StateMachineBuilderImpl.this.stateMachineImplClazz);
                abstractStateMachine.setTypeOfState(StateMachineBuilderImpl.this.stateClazz);
                abstractStateMachine.setTypeOfEvent(StateMachineBuilderImpl.this.eventClazz);
                abstractStateMachine.setTypeOfContext(StateMachineBuilderImpl.this.contextClazz);
                abstractStateMachine.setScriptManager(StateMachineBuilderImpl.this.scriptManager);
            }
        });
        Method method = this.postConstructMethod;
        if (method != null && this.extraParamTypes.length == objArr.length) {
            try {
                ReflectUtils.invoke(method, t, objArr);
            } catch (SquirrelRuntimeException e3) {
                az.s("Invoke state machine postConstruct method failed.", e3.getTargetException());
                return null;
            }
        }
        postProcessStateMachine(this.stateMachineImplClazz, t);
        if (stateMachineConfiguration.isRemoteMonitorEnabled()) {
            getManagementService().register(t);
        }
        return t;
    }

    @Override // org.squirrelframework.foundation.fsm.StateMachineBuilder
    public EntryExitActionBuilder<T, S, E, C> onEntry(S s) {
        checkState();
        return FSM.newEntryExitActionBuilder(FSM.getState(this.states, s), true, this.executionContext);
    }

    @Override // org.squirrelframework.foundation.fsm.StateMachineBuilder
    public EntryExitActionBuilder<T, S, E, C> onExit(S s) {
        checkState();
        return FSM.newEntryExitActionBuilder(FSM.getState(this.states, s), false, this.executionContext);
    }

    public void setScanAnnotations(boolean z) {
        this.isScanAnnotations = z;
    }

    @Override // org.squirrelframework.foundation.fsm.StateMachineBuilder
    public void setStateMachineConfiguration(StateMachineConfiguration stateMachineConfiguration) {
        checkState();
        this.defaultConfiguration = stateMachineConfiguration;
    }

    @Override // org.squirrelframework.foundation.fsm.StateMachineBuilder
    public DeferBoundActionBuilder<T, S, E, C> transit() {
        checkState();
        return FSM.newDeferBoundActionBuilder(this.deferBoundActionInfoList, this.executionContext);
    }

    @Override // org.squirrelframework.foundation.fsm.StateMachineBuilder
    public ExternalTransitionBuilder<T, S, E, C> transition() {
        checkState();
        return externalTransition(1);
    }

    @Override // org.squirrelframework.foundation.fsm.StateMachineBuilder
    public MultiTransitionBuilder<T, S, E, C> transitions(int i2) {
        checkState();
        return FSM.newMultiTransitionBuilder(this.states, TransitionType.EXTERNAL, i2, this.executionContext);
    }

    @Override // org.squirrelframework.foundation.fsm.StateMachineBuilder
    public MultiTransitionBuilder<T, S, E, C> externalTransitions(int i2) {
        checkState();
        return transitions(i2);
    }

    @Override // org.squirrelframework.foundation.fsm.StateMachineBuilder
    public ExternalTransitionBuilder<T, S, E, C> transition(int i2) {
        checkState();
        return externalTransition(i2);
    }

    @Override // org.squirrelframework.foundation.fsm.StateMachineBuilder
    public ExternalTransitionBuilder<T, S, E, C> externalTransition() {
        checkState();
        return externalTransition(1);
    }

    @Override // org.squirrelframework.foundation.fsm.StateMachineBuilder
    public InternalTransitionBuilder<T, S, E, C> internalTransition() {
        checkState();
        return internalTransition(1);
    }

    @Override // org.squirrelframework.foundation.fsm.StateMachineBuilder
    public LocalTransitionBuilder<T, S, E, C> localTransition() {
        checkState();
        return localTransition(1);
    }

    @Override // org.squirrelframework.foundation.fsm.StateMachineBuilder
    public void defineNoInitSequentialStatesOn(S s, S... sArr) {
        checkState();
        defineNoInitSequentialStatesOn(s, HistoryType.NONE, sArr);
    }

    @Override // org.squirrelframework.foundation.fsm.StateMachineBuilder
    public void defineSequentialStatesOn(S s, S... sArr) {
        checkState();
        defineSequentialStatesOn(s, HistoryType.NONE, sArr);
    }

    @Override // org.squirrelframework.foundation.fsm.StateMachineBuilder
    public MultiTransitionBuilder<T, S, E, C> localTransitions() {
        checkState();
        return localTransitions(1);
    }

    @Override // org.squirrelframework.foundation.fsm.StateMachineBuilder
    public MultiTransitionBuilder<T, S, E, C> transitions() {
        checkState();
        return transitions(1);
    }

    @Override // org.squirrelframework.foundation.fsm.StateMachineBuilder
    public T newStateMachine(S s, Object... objArr) {
        return (T) newStateMachine(s, this.defaultConfiguration, objArr);
    }

    @Override // org.squirrelframework.foundation.fsm.StateMachineBuilder
    public T newStateMachine(S s) {
        return (T) newStateMachine(s, new Object[0]);
    }
}
