package org.squirrelframework.foundation.fsm;

import org.squirrelframework.foundation.component.SquirrelComponent;
import org.squirrelframework.foundation.fsm.StateMachine;

/* JADX INFO: loaded from: classes5.dex */
public interface Action<T extends StateMachine<T, S, E, C>, S, E, C> extends SquirrelComponent {
    public static final int AFTER_WEIGHT = -100;
    public static final int BEFORE_WEIGHT = 100;
    public static final Action DUMMY_ACTION = new AnonymousAction() { // from class: org.squirrelframework.foundation.fsm.Action.1
        @Override // org.squirrelframework.foundation.fsm.Action
        public void execute(Object obj, Object obj2, Object obj3, Object obj4, StateMachine stateMachine) {
        }

        @Override // org.squirrelframework.foundation.fsm.AnonymousAction, org.squirrelframework.foundation.fsm.Action
        public String name() {
            return "__DUMMY_ACTION";
        }
    };
    public static final int EXTENSION_WEIGHT = -10;
    public static final int IGNORE_WEIGHT = Integer.MIN_VALUE;
    public static final int MAX_WEIGHT = 2147483646;
    public static final int MIN_WEIGHT = -2147483647;
    public static final int NORMAL_WEIGHT = 0;

    void execute(S s, S s2, E e2, C c2, T t);

    boolean isAsync();

    String name();

    long timeout();

    int weight();
}
