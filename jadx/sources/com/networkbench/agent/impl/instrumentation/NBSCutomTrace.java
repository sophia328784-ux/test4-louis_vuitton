package com.networkbench.agent.impl.instrumentation;

import com.networkbench.agent.impl.harvest.type.MetricCategory;
import java.lang.annotation.ElementType;
import java.lang.annotation.Target;

/* JADX INFO: loaded from: classes2.dex */
@Target({ElementType.METHOD})
public @interface NBSCutomTrace {
    public static final String NULL = "";

    MetricCategory category() default MetricCategory.NONE;

    String metricName() default "";

    boolean skipTransactionTrace() default false;
}
