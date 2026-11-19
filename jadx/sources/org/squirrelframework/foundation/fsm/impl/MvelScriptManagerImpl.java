package org.squirrelframework.foundation.fsm.impl;

import java.io.Serializable;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.mvel2.MVEL;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes5.dex */
public class MvelScriptManagerImpl implements MvelScriptManager {
    private Map<String, Object> compiledExpressions;

    private Map<String, Object> getCompiledExpression() {
        if (this.compiledExpressions == null) {
            this.compiledExpressions = new ConcurrentHashMap();
        }
        return this.compiledExpressions;
    }

    @Override // org.squirrelframework.foundation.fsm.MvelScriptManager
    public void compile(String str) {
        Serializable serializableCompileExpression;
        if (getCompiledExpression().containsKey(str) || (serializableCompileExpression = MVEL.compileExpression(str)) == null) {
            return;
        }
        getCompiledExpression().put(str, serializableCompileExpression);
    }

    @Override // org.squirrelframework.foundation.fsm.MvelScriptManager
    public <T> T eval(String str, Object obj, Class<T> cls) {
        return cls.cast(getCompiledExpression().containsKey(str) ? MVEL.executeExpression(getCompiledExpression().get(str), obj) : MVEL.eval(str, obj));
    }

    @Override // org.squirrelframework.foundation.fsm.MvelScriptManager
    public boolean evalBoolean(String str, Object obj) {
        return ((Boolean) eval(str, obj, Boolean.class)).booleanValue();
    }
}
