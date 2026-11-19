package org.squirrelframework.foundation.fsm;

import java.util.Stack;

/* JADX INFO: loaded from: classes5.dex */
public class StateMachineContext {
    private static ThreadLocal<Stack<StateMachineContext>> contextContainer = new ThreadLocal<Stack<StateMachineContext>>() { // from class: org.squirrelframework.foundation.fsm.StateMachineContext.1
        @Override // java.lang.ThreadLocal
        public Stack<StateMachineContext> initialValue() {
            return new Stack<>();
        }
    };
    private final Object currentInstance;
    private final boolean isTestEvent;

    public StateMachineContext(Object obj, boolean z) {
        this.currentInstance = obj;
        this.isTestEvent = z;
    }

    public static <T> T currentInstance() {
        if (contextContainer.get().size() > 0) {
            return (T) contextContainer.get().peek().currentInstance;
        }
        return null;
    }

    public static boolean isTestEvent() {
        if (contextContainer.get().size() > 0) {
            return contextContainer.get().peek().isTestEvent;
        }
        return false;
    }

    public static void set(Object obj, boolean z) {
        if (obj == null) {
            contextContainer.get().pop();
        } else {
            contextContainer.get().push(new StateMachineContext(obj, z));
        }
    }

    public static void set(Object obj) {
        set(obj, false);
    }
}
