package org.squirrelframework.foundation.fsm;

/* JADX INFO: loaded from: classes5.dex */
public interface Condition<C> {
    boolean isSatisfied(C c2);

    String name();
}
