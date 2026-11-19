package org.squirrelframework.foundation.fsm.impl;

import com.google.common.base.Preconditions;
import com.google.common.base.Stopwatch;
import com.google.common.collect.Lists;
import com.sightcall.universal.media.offline.FileUtils;
import java.lang.reflect.Method;
import java.util.HashMap;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.squirrelframework.foundation.fsm.Action;
import org.squirrelframework.foundation.fsm.MvelScriptManager;
import org.squirrelframework.foundation.fsm.StateMachine;
import org.squirrelframework.foundation.fsm.annotation.AsyncExecute;
import org.squirrelframework.foundation.fsm.annotation.ExecuteWhen;
import org.squirrelframework.foundation.fsm.annotation.LogExecTime;
import org.squirrelframework.foundation.util.ReflectUtils;

/* JADX INFO: loaded from: classes5.dex */
public class MethodCallActionImpl<T extends StateMachine<T, S, E, C>, S, E, C> implements Action<T, S, E, C> {
    static final Logger logger = LoggerFactory.getLogger(MethodCallActionImpl.class);
    private final String executeWhenExpr;
    private final ExecutionContext executionContext;
    private final boolean isAsync;
    private boolean logExecTime;
    private final Method method;
    private final String methodDesc;
    private final long timeout;
    private final int weight;

    public MethodCallActionImpl(Method method, int i2, ExecutionContext executionContext) {
        Preconditions.m(method, "Method of the action cannot be null.");
        this.method = method;
        this.weight = i2;
        this.executionContext = executionContext;
        AsyncExecute asyncExecute = (AsyncExecute) method.getAnnotation(AsyncExecute.class);
        this.isAsync = asyncExecute != null;
        this.timeout = asyncExecute != null ? asyncExecute.timeout() : -1L;
        boolean zIsAnnotatedWith = ReflectUtils.isAnnotatedWith(method, LogExecTime.class);
        this.logExecTime = zIsAnnotatedWith;
        if (!zIsAnnotatedWith) {
            this.logExecTime = method.getDeclaringClass().getAnnotation(LogExecTime.class) != null;
        }
        ExecuteWhen executeWhen = (ExecuteWhen) method.getAnnotation(ExecuteWhen.class);
        if (executeWhen != null) {
            String strValue = executeWhen.value();
            this.executeWhenExpr = strValue;
            executionContext.getScriptManager().compile(strValue);
        } else {
            this.executeWhenExpr = null;
        }
        this.methodDesc = ReflectUtils.logMethod(method);
    }

    private void invokeMethod(S s, S s2, E e2, C c2, T t) {
        if (this.executeWhenExpr != null) {
            HashMap map = new HashMap();
            map.put(MvelScriptManager.VAR_CONTEXT, c2);
            if (!this.executionContext.getScriptManager().evalBoolean(this.executeWhenExpr, map)) {
                return;
            }
        }
        Object[] array = Lists.b(s, s2, e2, c2).subList(0, this.executionContext.getMethodCallParamTypes().length).toArray();
        if (this.logExecTime) {
            Logger logger2 = logger;
            if (logger2.isDebugEnabled()) {
                Stopwatch stopwatch = new Stopwatch();
                stopwatch.a();
                ReflectUtils.invoke(this.method, t, array);
                logger2.debug("Execute Method \"" + this.methodDesc + "\" tooks " + stopwatch + FileUtils.HIDDEN_PREFIX);
                return;
            }
        }
        ReflectUtils.invoke(this.method, t, array);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null) {
            return false;
        }
        if ((obj instanceof MethodCallActionProxyImpl) && obj.equals(this)) {
            return true;
        }
        return getClass() == obj.getClass() && this.method.equals(((MethodCallActionImpl) MethodCallActionImpl.class.cast(obj)).method);
    }

    @Override // org.squirrelframework.foundation.fsm.Action
    public void execute(S s, S s2, E e2, C c2, T t) {
        invokeMethod(s, s2, e2, c2, t);
    }

    public int hashCode() {
        return this.method.hashCode();
    }

    @Override // org.squirrelframework.foundation.fsm.Action
    public boolean isAsync() {
        return this.isAsync;
    }

    @Override // org.squirrelframework.foundation.fsm.Action
    public String name() {
        return this.method.getName();
    }

    @Override // org.squirrelframework.foundation.fsm.Action
    public long timeout() {
        return this.timeout;
    }

    public final String toString() {
        return "method#" + this.method.getName() + ":" + this.weight;
    }

    @Override // org.squirrelframework.foundation.fsm.Action
    public int weight() {
        return this.weight;
    }
}
