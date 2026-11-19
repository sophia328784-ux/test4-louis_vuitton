package org.squirrelframework.foundation.fsm;

import org.squirrelframework.foundation.fsm.StateMachine;

/* JADX INFO: loaded from: classes5.dex */
public interface StateMachineDataSerializer<T extends StateMachine<T, S, E, C>, S, E, C> {
    StateMachineData.Reader<T, S, E, C> deserialize(String str);

    String serialize(StateMachineData.Reader<T, S, E, C> reader);
}
