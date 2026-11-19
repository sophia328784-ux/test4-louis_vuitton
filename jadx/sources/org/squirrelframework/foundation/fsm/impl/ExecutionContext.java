package org.squirrelframework.foundation.fsm.impl;

import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes5.dex */
class ExecutionContext {
    private final Class<?> executionTargetType;
    private final Class<?>[] methodCallParamTypes;
    private final MvelScriptManager scriptManager;

    public ExecutionContext(MvelScriptManager mvelScriptManager, Class<?> cls, Class<?>[] clsArr) {
        this.scriptManager = mvelScriptManager;
        this.executionTargetType = cls;
        this.methodCallParamTypes = clsArr;
    }

    public Class<?> getExecutionTargetType() {
        return this.executionTargetType;
    }

    public Class<?>[] getMethodCallParamTypes() {
        return this.methodCallParamTypes;
    }

    public MvelScriptManager getScriptManager() {
        return this.scriptManager;
    }
}
