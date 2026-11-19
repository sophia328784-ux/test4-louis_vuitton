package org.squirrelframework.foundation.fsm.impl;

import com.sightcall.universal.media.offline.FileUtils;
import defpackage.aa;
import java.lang.reflect.Method;
import java.util.stream.Stream;
import org.apache.commons.lang3.StringUtils;
import org.apache.commons.lang3.stream.LangCollectors;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.squirrelframework.foundation.fsm.Action;
import org.squirrelframework.foundation.fsm.StateMachine;

/* JADX INFO: loaded from: classes5.dex */
public class MethodCallActionProxyImpl<T extends StateMachine<T, S, E, C>, S, E, C> implements Action<T, S, E, C> {
    private static final Logger logger = LoggerFactory.getLogger(MethodCallActionProxyImpl.class);
    private Action<T, S, E, C> delegator;
    private final ExecutionContext executionContext;
    private final String methodName;
    private final int weight;

    public MethodCallActionProxyImpl(String str, ExecutionContext executionContext) {
        String[] strArrD = StringUtils.d(str, ':');
        this.methodName = strArrD[0];
        if (strArrD.length > 1 && strArrD[1].matches("[\\+-]?\\d+")) {
            if (strArrD[1].startsWith("+")) {
                strArrD[1] = strArrD[1].substring(1);
            }
            this.weight = Integer.valueOf(strArrD[1]).intValue();
        } else if (strArrD.length > 1 && strArrD[1].equals("ignore")) {
            this.weight = Integer.MIN_VALUE;
        } else if (str.startsWith("before")) {
            this.weight = 100;
        } else if (str.startsWith("after")) {
            this.weight = -100;
        } else {
            this.weight = 0;
        }
        this.executionContext = executionContext;
    }

    private Action<T, S, E, C> getDelegator() {
        String str;
        if (this.delegator == null) {
            Class<?> executionTargetType = this.executionContext.getExecutionTargetType();
            Method methodFindMethodCallActionInternal = StateMachineBuilderImpl.findMethodCallActionInternal(executionTargetType, this.methodName, this.executionContext.getMethodCallParamTypes());
            if (methodFindMethodCallActionInternal != null) {
                this.delegator = FSM.newMethodCallAction(methodFindMethodCallActionInternal, this.weight, this.executionContext);
            } else {
                Logger logger2 = logger;
                if (logger2.isInfoEnabled()) {
                    StringBuilder sb = new StringBuilder("Cannot find method '");
                    sb.append(this.methodName);
                    sb.append("' with parameters '[");
                    Class<?>[] methodCallParamTypes = this.executionContext.getMethodCallParamTypes();
                    int i2 = StringUtils.f77543a;
                    if (methodCallParamTypes != null) {
                        str = (String) Stream.of((Object[]) methodCallParamTypes).skip(0L).limit(Math.max(0, methodCallParamTypes.length)).collect(LangCollectors.a(", ", new aa(6)));
                    } else {
                        str = null;
                    }
                    sb.append(str);
                    sb.append("]' in class ");
                    sb.append(executionTargetType);
                    sb.append(FileUtils.HIDDEN_PREFIX);
                    logger2.warn(sb.toString());
                }
                this.delegator = Action.DUMMY_ACTION;
            }
        }
        return this.delegator;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null) {
            return false;
        }
        if ((obj instanceof MethodCallActionImpl) && ((MethodCallActionImpl) MethodCallActionImpl.class.cast(obj)).name().equals(this.methodName)) {
            return true;
        }
        return getClass() == obj.getClass() && this.methodName.equals(((MethodCallActionProxyImpl) MethodCallActionProxyImpl.class.cast(obj)).methodName);
    }

    @Override // org.squirrelframework.foundation.fsm.Action
    public void execute(S s, S s2, E e2, C c2, T t) {
        t.getClass();
        getDelegator().execute(s, s2, e2, c2, t);
    }

    public int hashCode() {
        return this.methodName.hashCode();
    }

    @Override // org.squirrelframework.foundation.fsm.Action
    public boolean isAsync() {
        return getDelegator().isAsync();
    }

    @Override // org.squirrelframework.foundation.fsm.Action
    public String name() {
        return this.methodName;
    }

    @Override // org.squirrelframework.foundation.fsm.Action
    public long timeout() {
        return getDelegator().timeout();
    }

    public final String toString() {
        return "method#" + this.methodName + ":" + this.weight;
    }

    @Override // org.squirrelframework.foundation.fsm.Action
    public int weight() {
        return this.weight;
    }
}
