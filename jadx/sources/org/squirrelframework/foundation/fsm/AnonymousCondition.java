package org.squirrelframework.foundation.fsm;

/* JADX INFO: loaded from: classes5.dex */
public abstract class AnonymousCondition<C> implements Condition<C> {
    @Override // org.squirrelframework.foundation.fsm.Condition
    public String name() {
        return getClass().getSimpleName();
    }

    public final String toString() {
        return "instance#".concat(getClass().getName());
    }
}
