package org.squirrelframework.foundation.fsm.impl;

import java.util.HashMap;
import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.squirrelframework.foundation.fsm.Condition;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes5.dex */
class MvelConditionImpl<C> implements Condition<C> {
    private static final Logger logger = LoggerFactory.getLogger(MvelConditionImpl.class);
    private final String mvelExpression;
    private final String name;
    private final String script;
    private final MvelScriptManager scriptManager;

    public MvelConditionImpl(String str, MvelScriptManager mvelScriptManager) {
        String[] strArrC = StringUtils.c(str);
        if (strArrC.length == 2) {
            this.name = strArrC[0].trim();
            this.mvelExpression = strArrC[1].trim();
        } else {
            this.name = "_NoName_";
            this.mvelExpression = strArrC[0].trim();
        }
        this.script = str;
        this.scriptManager = mvelScriptManager;
        mvelScriptManager.compile(this.mvelExpression);
    }

    @Override // org.squirrelframework.foundation.fsm.Condition
    public boolean isSatisfied(C c2) {
        try {
            HashMap map = new HashMap();
            map.put(MvelScriptManager.VAR_CONTEXT, c2);
            return this.scriptManager.evalBoolean(this.mvelExpression, map);
        } catch (Exception e2) {
            logger.error("Evaluate \"" + this.mvelExpression + "\" failed, which caused by " + e2.getCause().getMessage());
            return false;
        }
    }

    @Override // org.squirrelframework.foundation.fsm.Condition
    public String name() {
        return this.name;
    }

    public final String toString() {
        return "mvel#" + this.script;
    }
}
