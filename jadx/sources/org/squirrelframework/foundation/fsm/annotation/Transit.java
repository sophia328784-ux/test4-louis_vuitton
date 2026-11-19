package org.squirrelframework.foundation.fsm.annotation;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import org.squirrelframework.foundation.fsm.Condition;
import org.squirrelframework.foundation.fsm.Conditions;
import org.squirrelframework.foundation.fsm.TransitionType;

/* JADX INFO: loaded from: classes5.dex */
@Target({ElementType.TYPE})
@Retention(RetentionPolicy.RUNTIME)
public @interface Transit {
    String callMethod() default "";

    String from();

    boolean isTargetFinal() default false;

    String on();

    int priority() default 1;

    String to();

    TransitionType type() default TransitionType.EXTERNAL;

    Class<? extends Condition> when() default Conditions.Always.class;

    String whenMvel() default "";
}
