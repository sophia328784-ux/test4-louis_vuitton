package org.squirrelframework.foundation.fsm.impl;

import java.lang.reflect.Method;
import java.util.List;
import java.util.Map;
import org.squirrelframework.foundation.component.SquirrelProvider;
import org.squirrelframework.foundation.fsm.Action;
import org.squirrelframework.foundation.fsm.ActionExecutionService;
import org.squirrelframework.foundation.fsm.Actions;
import org.squirrelframework.foundation.fsm.Condition;
import org.squirrelframework.foundation.fsm.ImmutableState;
import org.squirrelframework.foundation.fsm.MutableLinkedState;
import org.squirrelframework.foundation.fsm.MutableState;
import org.squirrelframework.foundation.fsm.MutableTimedState;
import org.squirrelframework.foundation.fsm.MutableTransition;
import org.squirrelframework.foundation.fsm.MvelScriptManager;
import org.squirrelframework.foundation.fsm.StateContext;
import org.squirrelframework.foundation.fsm.StateMachine;
import org.squirrelframework.foundation.fsm.StateMachineData;
import org.squirrelframework.foundation.fsm.TransitionResult;
import org.squirrelframework.foundation.fsm.TransitionType;
import org.squirrelframework.foundation.fsm.builder.DeferBoundActionBuilder;
import org.squirrelframework.foundation.fsm.builder.EntryExitActionBuilder;
import org.squirrelframework.foundation.fsm.builder.ExternalTransitionBuilder;
import org.squirrelframework.foundation.fsm.builder.InternalTransitionBuilder;
import org.squirrelframework.foundation.fsm.builder.LocalTransitionBuilder;
import org.squirrelframework.foundation.fsm.builder.MultiTransitionBuilder;
import org.squirrelframework.foundation.util.TypeReference;

/* JADX INFO: loaded from: classes5.dex */
abstract class FSM {
    public static <T extends StateMachine<T, S, E, C>, S, E, C> MutableState<T, S, E, C> getState(Map<S, MutableState<T, S, E, C>> map, S s) {
        MutableState<T, S, E, C> mutableState = map.get(s);
        if (mutableState != null) {
            return mutableState;
        }
        MutableState<T, S, E, C> mutableStateNewState = newState(s);
        map.put(s, mutableStateNewState);
        return mutableStateNewState;
    }

    public static <T extends StateMachine<T, S, E, C>, S, E, C> Actions<T, S, E, C> newActions() {
        return (Actions) SquirrelProvider.getInstance().newInstance((TypeReference) new TypeReference<Actions<T, S, E, C>>() { // from class: org.squirrelframework.foundation.fsm.impl.FSM.13
        });
    }

    public static <T extends StateMachine<T, S, E, C>, S, E, C> DeferBoundActionBuilder<T, S, E, C> newDeferBoundActionBuilder(List<DeferBoundActionInfo<T, S, E, C>> list, ExecutionContext executionContext) {
        return (DeferBoundActionBuilder) SquirrelProvider.getInstance().newInstance((TypeReference) new TypeReference<DeferBoundActionBuilderImpl<T, S, E, C>>() { // from class: org.squirrelframework.foundation.fsm.impl.FSM.5
        }, new Class[]{List.class, ExecutionContext.class}, new Object[]{list, executionContext});
    }

    public static <T extends StateMachine<T, S, E, C>, S, E, C> EntryExitActionBuilder<T, S, E, C> newEntryExitActionBuilder(MutableState<T, S, E, C> mutableState, boolean z, ExecutionContext executionContext) {
        return (EntryExitActionBuilder) SquirrelProvider.getInstance().newInstance((TypeReference) new TypeReference<EntryExitActionBuilderImpl<T, S, E, C>>() { // from class: org.squirrelframework.foundation.fsm.impl.FSM.10
        }, new Class[]{MutableState.class, Boolean.TYPE, ExecutionContext.class}, new Object[]{mutableState, Boolean.valueOf(z), executionContext});
    }

    public static <T extends StateMachine<T, S, E, C>, S, E, C> ExternalTransitionBuilder<T, S, E, C> newExternalTransitionBuilder(Map<S, MutableState<T, S, E, C>> map, int i2, ExecutionContext executionContext) {
        return (ExternalTransitionBuilder) SquirrelProvider.getInstance().newInstance((TypeReference) new TypeReference<TransitionBuilderImpl<T, S, E, C>>() { // from class: org.squirrelframework.foundation.fsm.impl.FSM.7
        }, new Class[]{Map.class, TransitionType.class, Integer.TYPE, ExecutionContext.class}, new Object[]{map, TransitionType.EXTERNAL, Integer.valueOf(i2), executionContext});
    }

    public static <T extends StateMachine<T, S, E, C>, S, E, C> InternalTransitionBuilder<T, S, E, C> newInternalTransitionBuilder(Map<S, MutableState<T, S, E, C>> map, int i2, ExecutionContext executionContext) {
        return (InternalTransitionBuilder) SquirrelProvider.getInstance().newInstance((TypeReference) new TypeReference<TransitionBuilderImpl<T, S, E, C>>() { // from class: org.squirrelframework.foundation.fsm.impl.FSM.9
        }, new Class[]{Map.class, TransitionType.class, Integer.TYPE, ExecutionContext.class}, new Object[]{map, TransitionType.INTERNAL, Integer.valueOf(i2), executionContext});
    }

    public static <T extends StateMachine<T, S, E, C>, S, E, C> MutableLinkedState<T, S, E, C> newLinkedState(S s) {
        return (MutableLinkedState) SquirrelProvider.getInstance().newInstance((TypeReference) new TypeReference<LinkedStateImpl<T, S, E, C>>() { // from class: org.squirrelframework.foundation.fsm.impl.FSM.3
        }, new Class[]{Object.class}, new Object[]{s});
    }

    public static <T extends StateMachine<T, S, E, C>, S, E, C> LocalTransitionBuilder<T, S, E, C> newLocalTransitionBuilder(Map<S, MutableState<T, S, E, C>> map, int i2, ExecutionContext executionContext) {
        return (LocalTransitionBuilder) SquirrelProvider.getInstance().newInstance((TypeReference) new TypeReference<TransitionBuilderImpl<T, S, E, C>>() { // from class: org.squirrelframework.foundation.fsm.impl.FSM.8
        }, new Class[]{Map.class, TransitionType.class, Integer.TYPE, ExecutionContext.class}, new Object[]{map, TransitionType.LOCAL, Integer.valueOf(i2), executionContext});
    }

    public static <T extends StateMachine<T, S, E, C>, S, E, C> MethodCallActionImpl<T, S, E, C> newMethodCallAction(Method method, int i2, ExecutionContext executionContext) {
        return (MethodCallActionImpl) SquirrelProvider.getInstance().newInstance((TypeReference) new TypeReference<MethodCallActionImpl<T, S, E, C>>() { // from class: org.squirrelframework.foundation.fsm.impl.FSM.11
        }, new Class[]{Method.class, Integer.TYPE, ExecutionContext.class}, new Object[]{method, Integer.valueOf(i2), executionContext});
    }

    public static <T extends StateMachine<T, S, E, C>, S, E, C> MethodCallActionProxyImpl<T, S, E, C> newMethodCallActionProxy(String str, ExecutionContext executionContext) {
        return (MethodCallActionProxyImpl) SquirrelProvider.getInstance().newInstance((TypeReference) new TypeReference<MethodCallActionProxyImpl<T, S, E, C>>() { // from class: org.squirrelframework.foundation.fsm.impl.FSM.12
        }, new Class[]{String.class, ExecutionContext.class}, new Object[]{str, executionContext});
    }

    public static <T extends StateMachine<T, S, E, C>, S, E, C> MultiTransitionBuilder<T, S, E, C> newMultiTransitionBuilder(Map<S, MutableState<T, S, E, C>> map, TransitionType transitionType, int i2, ExecutionContext executionContext) {
        return (MultiTransitionBuilder) SquirrelProvider.getInstance().newInstance((TypeReference) new TypeReference<MultiTransitionBuilderImpl<T, S, E, C>>() { // from class: org.squirrelframework.foundation.fsm.impl.FSM.6
        }, new Class[]{Map.class, TransitionType.class, Integer.TYPE, ExecutionContext.class}, new Object[]{map, transitionType, Integer.valueOf(i2), executionContext});
    }

    public static <T extends StateMachine<T, S, E, C>, S, E, C> Action<T, S, E, C> newMvelAction(String str, ExecutionContext executionContext) {
        return (Action) SquirrelProvider.getInstance().newInstance((TypeReference) new TypeReference<MvelActionImpl<T, S, E, C>>() { // from class: org.squirrelframework.foundation.fsm.impl.FSM.16
        }, new Class[]{String.class, ExecutionContext.class}, new Object[]{str, executionContext});
    }

    public static <C> Condition<C> newMvelCondition(String str, MvelScriptManager mvelScriptManager) {
        return (Condition) SquirrelProvider.getInstance().newInstance(new TypeReference<MvelConditionImpl<C>>() { // from class: org.squirrelframework.foundation.fsm.impl.FSM.15
        }, new Class[]{String.class, MvelScriptManager.class}, new Object[]{str, mvelScriptManager});
    }

    public static <T extends StateMachine<T, S, E, C>, S, E, C> TransitionResult<T, S, E, C> newResult(boolean z, ImmutableState<T, S, E, C> immutableState, TransitionResult<T, S, E, C> transitionResult) {
        return ((TransitionResult) SquirrelProvider.getInstance().newInstance((TypeReference) new TypeReference<TransitionResult<T, S, E, C>>() { // from class: org.squirrelframework.foundation.fsm.impl.FSM.14
        })).setAccepted(z).setTargetState(immutableState).setParent(transitionResult);
    }

    public static <T extends StateMachine<T, S, E, C>, S, E, C> MutableState<T, S, E, C> newState(S s) {
        return (MutableState) SquirrelProvider.getInstance().newInstance((TypeReference) new TypeReference<StateImpl<T, S, E, C>>() { // from class: org.squirrelframework.foundation.fsm.impl.FSM.2
        }, new Class[]{Object.class}, new Object[]{s});
    }

    public static <T extends StateMachine<T, S, E, C>, S, E, C> StateContext<T, S, E, C> newStateContext(StateMachine<T, S, E, C> stateMachine, StateMachineData<T, S, E, C> stateMachineData, ImmutableState<T, S, E, C> immutableState, E e2, C c2, TransitionResult<T, S, E, C> transitionResult, ActionExecutionService<T, S, E, C> actionExecutionService) {
        return new StateContextImpl(stateMachine, stateMachineData, immutableState, e2, c2, transitionResult, actionExecutionService);
    }

    public static <T extends StateMachine<T, S, E, C>, S, E, C> StateMachineData<T, S, E, C> newStateMachineData(Map<S, ? extends ImmutableState<T, S, E, C>> map) {
        return (StateMachineData) SquirrelProvider.getInstance().newInstance((TypeReference) new TypeReference<StateMachineData<T, S, E, C>>() { // from class: org.squirrelframework.foundation.fsm.impl.FSM.17
        }, new Class[]{Map.class}, new Object[]{map});
    }

    public static <T extends StateMachine<T, S, E, C>, S, E, C> MutableTimedState<T, S, E, C> newTimedState(S s) {
        return (MutableTimedState) SquirrelProvider.getInstance().newInstance((TypeReference) new TypeReference<TimedStateImpl<T, S, E, C>>() { // from class: org.squirrelframework.foundation.fsm.impl.FSM.4
        }, new Class[]{Object.class}, new Object[]{s});
    }

    public static <T extends StateMachine<T, S, E, C>, S, E, C> MutableTransition<T, S, E, C> newTransition() {
        return (MutableTransition) SquirrelProvider.getInstance().newInstance((TypeReference) new TypeReference<TransitionImpl<T, S, E, C>>() { // from class: org.squirrelframework.foundation.fsm.impl.FSM.1
        });
    }
}
