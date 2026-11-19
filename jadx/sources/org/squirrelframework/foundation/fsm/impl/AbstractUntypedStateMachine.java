package org.squirrelframework.foundation.fsm.impl;

import com.google.common.base.Preconditions;
import org.squirrelframework.foundation.fsm.UntypedStateMachine;

/* JADX INFO: loaded from: classes5.dex */
public abstract class AbstractUntypedStateMachine extends AbstractStateMachine<UntypedStateMachine, Object, Object, Object> implements UntypedStateMachine {
    private void verifyParameterType(Object obj, Object obj2) {
        if (obj != null && !typeOfEvent().isAssignableFrom(obj.getClass())) {
            StringBuilder sb = new StringBuilder("Event type of state machine '");
            sb.append(typeOfEvent());
            Class<?> cls = obj.getClass();
            sb.append("' is not match '");
            sb.append(cls);
            sb.append("'.");
            throw new RuntimeException(sb.toString());
        }
        if (obj2 == null || typeOfContext().isAssignableFrom(obj2.getClass())) {
            return;
        }
        StringBuilder sb2 = new StringBuilder("Context type of state machine '");
        sb2.append(typeOfContext());
        Class<?> cls2 = obj2.getClass();
        sb2.append("' is not match '");
        sb2.append(cls2);
        sb2.append("'.");
        throw new RuntimeException(sb2.toString());
    }

    @Override // org.squirrelframework.foundation.fsm.impl.AbstractStateMachine, org.squirrelframework.foundation.fsm.StateMachine
    public void fire(Object obj, Object obj2) {
        Preconditions.m(obj, "Cannot fire null event.");
        verifyParameterType(obj, obj2);
        super.fire(obj, obj2);
    }

    @Override // org.squirrelframework.foundation.fsm.impl.AbstractStateMachine, org.squirrelframework.foundation.fsm.StateMachine
    public void fireImmediate(Object obj, Object obj2) {
        Preconditions.m(obj, "Cannot fire null event.");
        verifyParameterType(obj, obj2);
        super.fire(obj, obj2);
    }

    @Override // org.squirrelframework.foundation.fsm.impl.AbstractStateMachine, org.squirrelframework.foundation.fsm.StateMachine
    public void start(Object obj) {
        verifyParameterType(null, obj);
        super.start(obj);
    }

    @Override // org.squirrelframework.foundation.fsm.impl.AbstractStateMachine, org.squirrelframework.foundation.fsm.StateMachine
    public void terminate(Object obj) throws Throwable {
        verifyParameterType(null, obj);
        super.terminate(obj);
    }

    @Override // org.squirrelframework.foundation.fsm.impl.AbstractStateMachine, org.squirrelframework.foundation.fsm.StateMachine
    public Object test(Object obj, Object obj2) {
        Preconditions.m(obj, "Cannot fire null event.");
        verifyParameterType(obj, obj2);
        return super.test(obj, obj2);
    }
}
