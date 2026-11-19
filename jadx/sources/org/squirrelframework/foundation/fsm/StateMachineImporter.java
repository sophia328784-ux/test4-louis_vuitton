package org.squirrelframework.foundation.fsm;

import java.io.File;
import java.io.InputStream;
import org.squirrelframework.foundation.fsm.StateMachine;

/* JADX INFO: loaded from: classes5.dex */
public interface StateMachineImporter<T extends StateMachine<T, S, E, C>, S, E, C> {
    StateMachineBuilder<T, S, E, C> importFromFile(File file);

    StateMachineBuilder<T, S, E, C> importFromInputStream(InputStream inputStream);

    StateMachineBuilder<T, S, E, C> importFromString(String str);

    void registerReusableInstance(Object obj);

    void registerReusableInstance(String str, Object obj);

    void unregisterReusableInstance(String str);
}
