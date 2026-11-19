package org.squirrelframework.foundation.fsm;

import com.sightcall.universal.media.offline.FileUtils;
import defpackage.az;
import java.io.File;
import java.io.InputStream;
import org.squirrelframework.foundation.component.SquirrelProvider;
import org.squirrelframework.foundation.util.TypeReference;

/* JADX INFO: loaded from: classes5.dex */
public class UntypedStateMachineImporter {
    private final StateMachineImporter<UntypedStateMachine, Object, Object, Object> delegator = (StateMachineImporter) SquirrelProvider.getInstance().newInstance(new TypeReference<StateMachineImporter<UntypedStateMachine, Object, Object, Object>>() { // from class: org.squirrelframework.foundation.fsm.UntypedStateMachineImporter.1
    });

    public UntypedStateMachineBuilder importDefinition(Object obj) {
        StateMachineBuilder stateMachineBuilderImportFromInputStream;
        if (obj instanceof String) {
            stateMachineBuilderImportFromInputStream = this.delegator.importFromString((String) obj);
        } else if (obj instanceof File) {
            stateMachineBuilderImportFromInputStream = this.delegator.importFromFile((File) obj);
        } else {
            if (!(obj instanceof InputStream)) {
                az.r("Cannot support import from ", obj.getClass().getName(), FileUtils.HIDDEN_PREFIX);
                return null;
            }
            stateMachineBuilderImportFromInputStream = this.delegator.importFromInputStream((InputStream) obj);
        }
        return StateMachineBuilderFactory.create((StateMachineBuilder<UntypedStateMachine, Object, Object, Object>) stateMachineBuilderImportFromInputStream);
    }

    public void registerReusableInstance(Object obj) {
        this.delegator.registerReusableInstance(obj);
    }

    public void unregisterReusableInstance(String str) {
        this.delegator.unregisterReusableInstance(str);
    }

    public void registerReusableInstance(String str, Object obj) {
        this.delegator.registerReusableInstance(str, obj);
    }
}
