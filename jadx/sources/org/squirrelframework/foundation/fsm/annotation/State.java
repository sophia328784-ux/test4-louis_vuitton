package org.squirrelframework.foundation.fsm.annotation;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import org.squirrelframework.foundation.fsm.HistoryType;
import org.squirrelframework.foundation.fsm.StateCompositeType;

/* JADX INFO: loaded from: classes5.dex */
@Target({ElementType.TYPE})
@Retention(RetentionPolicy.RUNTIME)
public @interface State {
    String alias() default "";

    StateCompositeType compositeType() default StateCompositeType.SEQUENTIAL;

    String entryCallMethod() default "";

    String exitCallMethod() default "";

    HistoryType historyType() default HistoryType.NONE;

    boolean initialState() default false;

    boolean isFinal() default false;

    String name();

    String parent() default "";
}
