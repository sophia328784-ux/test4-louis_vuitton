package org.squirrelframework.foundation.component.impl;

import java.lang.reflect.Method;
import javax.annotation.PostConstruct;
import org.squirrelframework.foundation.component.SquirrelPostProcessor;
import org.squirrelframework.foundation.util.ReflectUtils;

/* JADX INFO: loaded from: classes5.dex */
public class PostConstructPostProcessorImpl implements SquirrelPostProcessor<Object> {
    @Override // org.squirrelframework.foundation.component.SquirrelPostProcessor
    public void postProcess(final Object obj) {
        ReflectUtils.doWithMethods(obj.getClass(), new ReflectUtils.MethodCallback() { // from class: org.squirrelframework.foundation.component.impl.PostConstructPostProcessorImpl.1
            @Override // org.squirrelframework.foundation.util.ReflectUtils.MethodCallback
            public void doWith(Method method) {
                ReflectUtils.invoke(method, obj);
            }
        }, new ReflectUtils.MethodFilter() { // from class: org.squirrelframework.foundation.component.impl.PostConstructPostProcessorImpl.2
            @Override // org.squirrelframework.foundation.util.ReflectUtils.MethodFilter
            public boolean matches(Method method) {
                if (ReflectUtils.isAnnotatedWith(method, PostConstruct.class)) {
                    return method.getParameterTypes() == null || method.getParameterTypes().length == 0;
                }
                return false;
            }
        });
    }
}
