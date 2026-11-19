package com.networkbench.agent.impl.instrumentation;

/* JADX INFO: loaded from: classes2.dex */
public @interface NBSReplaceCallSite {
    boolean isStatic() default false;

    String scope() default "";
}
