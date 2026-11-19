package org.squirrelframework.foundation.fsm.impl;

import defpackage.fc;
import java.util.HashMap;
import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.squirrelframework.foundation.fsm.Action;
import org.squirrelframework.foundation.fsm.MvelScriptManager;
import org.squirrelframework.foundation.fsm.StateMachine;

/* JADX INFO: loaded from: classes5.dex */
class MvelActionImpl<T extends StateMachine<T, S, E, C>, S, E, C> implements Action<T, S, E, C> {
    private static final Logger logger = LoggerFactory.getLogger(MvelActionImpl.class);
    private final String mvelExpression;
    private final String name;
    private final String script;
    private final MvelScriptManager scriptManager;

    public MvelActionImpl(String str, ExecutionContext executionContext) {
        str.getClass();
        String[] strArrC = StringUtils.c(str);
        if (strArrC.length == 2) {
            this.name = strArrC[0].trim();
            this.mvelExpression = strArrC[1].trim();
        } else {
            this.name = "_NoName_";
            this.mvelExpression = strArrC[0].trim();
        }
        this.script = str;
        MvelScriptManager scriptManager = executionContext.getScriptManager();
        this.scriptManager = scriptManager;
        scriptManager.compile(this.mvelExpression);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        MvelActionImpl mvelActionImpl = (MvelActionImpl) obj;
        String str = this.mvelExpression;
        String str2 = mvelActionImpl.mvelExpression;
        if (str == null) {
            if (str2 != null) {
                return false;
            }
        } else if (!str.equals(str2)) {
            return false;
        }
        String str3 = this.name;
        String str4 = mvelActionImpl.name;
        if (str3 == null) {
            if (str4 != null) {
                return false;
            }
        } else if (!str3.equals(str4)) {
            return false;
        }
        return true;
    }

    @Override // org.squirrelframework.foundation.fsm.Action
    public void execute(S s, S s2, E e2, C c2, T t) {
        try {
            HashMap map = new HashMap();
            map.put("from", s);
            map.put(MvelScriptManager.VAR_TO, s2);
            map.put(MvelScriptManager.VAR_EVENT, e2);
            map.put(MvelScriptManager.VAR_CONTEXT, c2);
            map.put(MvelScriptManager.VAR_STATE_MACHINE, t);
            this.scriptManager.eval(this.mvelExpression, map, Void.class);
        } catch (RuntimeException e3) {
            logger.error("Evaluate \"" + this.mvelExpression + "\" failed, which caused by " + e3.getCause().getMessage());
            throw e3;
        }
    }

    public int hashCode() {
        return this.name.hashCode() + fc.b(31, 31, this.mvelExpression);
    }

    @Override // org.squirrelframework.foundation.fsm.Action
    public boolean isAsync() {
        return false;
    }

    @Override // org.squirrelframework.foundation.fsm.Action
    public String name() {
        return this.name;
    }

    @Override // org.squirrelframework.foundation.fsm.Action
    public long timeout() {
        return -1L;
    }

    public final String toString() {
        return "mvel#" + this.script;
    }

    @Override // org.squirrelframework.foundation.fsm.Action
    public int weight() {
        return 0;
    }
}
