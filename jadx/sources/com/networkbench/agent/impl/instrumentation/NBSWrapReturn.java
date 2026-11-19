package com.networkbench.agent.impl.instrumentation;

import java.lang.annotation.ElementType;
import java.lang.annotation.Target;

/* JADX INFO: loaded from: classes2.dex */
@Target({ElementType.METHOD})
public @interface NBSWrapReturn {
    String className();

    String methodDesc();

    String methodName();
}
