package org.squirrelframework.foundation.fsm;

/* JADX INFO: loaded from: classes5.dex */
public interface UntypedStateMachineBuilder extends StateMachineBuilder<UntypedStateMachine, Object, Object, Object> {
    <T> T newAnyStateMachine(Object obj);

    <T> T newAnyStateMachine(Object obj, StateMachineConfiguration stateMachineConfiguration, Object... objArr);

    <T> T newAnyStateMachine(Object obj, Object... objArr);

    <T extends UntypedStateMachine> T newUntypedStateMachine(Object obj);

    <T extends UntypedStateMachine> T newUntypedStateMachine(Object obj, StateMachineConfiguration stateMachineConfiguration, Object... objArr);

    <T extends UntypedStateMachine> T newUntypedStateMachine(Object obj, Object... objArr);
}
