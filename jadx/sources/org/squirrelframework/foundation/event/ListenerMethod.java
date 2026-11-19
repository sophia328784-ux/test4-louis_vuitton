package org.squirrelframework.foundation.event;

import com.google.common.base.Preconditions;
import io.jsonwebtoken.JwtParser;
import java.lang.reflect.Method;
import org.squirrelframework.foundation.component.SquirrelConfiguration;
import org.squirrelframework.foundation.exception.ErrorCodes;
import org.squirrelframework.foundation.exception.SquirrelRuntimeException;
import org.squirrelframework.foundation.util.ReflectUtils;

/* JADX INFO: loaded from: classes5.dex */
public class ListenerMethod {
    private final Class<?> eventType;
    private boolean hasParameter;
    private final boolean isAsync;
    private final Method method;
    private final Object target;
    private final long timeout;

    public ListenerMethod(Class<?> cls, Object obj, Method method) {
        this.hasParameter = false;
        Preconditions.h((cls == null || obj == null || method == null) ? false : true, "Parameters cannot be null.");
        Preconditions.h(method.getDeclaringClass().isAssignableFrom(obj.getClass()), "The method " + method.getName() + " cannot be used for the given target: " + obj.getClass().getName());
        this.eventType = cls;
        this.target = obj;
        this.method = method;
        boolean zIsAssignableFrom = AsyncEventListener.class.isAssignableFrom(obj.getClass());
        this.isAsync = zIsAssignableFrom;
        this.timeout = zIsAssignableFrom ? ((AsyncEventListener) AsyncEventListener.class.cast(obj)).timeout() : -1L;
        Class<?>[] parameterTypes = method.getParameterTypes();
        if (parameterTypes.length > 0) {
            if (parameterTypes.length != 1 || !parameterTypes[0].isAssignableFrom(cls)) {
                throw new SquirrelRuntimeException(ErrorCodes.METHOD_UNEXPECTED_PARAMETERS);
            }
            this.hasParameter = true;
        }
    }

    public boolean equals(Object obj) {
        Object obj2;
        Object obj3;
        Method method;
        Method method2;
        if (this == obj) {
            return true;
        }
        if (obj == null || obj.getClass() != getClass()) {
            return false;
        }
        ListenerMethod listenerMethod = (ListenerMethod) obj;
        Class<?> cls = this.eventType;
        Class<?> cls2 = listenerMethod.eventType;
        return (cls == cls2 || (cls != null && cls.equals(cls2))) && ((obj2 = this.target) == (obj3 = listenerMethod.target) || (obj2 != null && obj2.equals(obj3))) && ((method = this.method) == (method2 = listenerMethod.method) || (method != null && method.equals(method2)));
    }

    public Class<?> getEventType() {
        return this.eventType;
    }

    public Method getMethod() {
        return this.method;
    }

    public Object getTarget() {
        return this.target;
    }

    public int hashCode() {
        return this.method.hashCode() + ((this.target.hashCode() + (this.eventType.hashCode() * 17)) * 17);
    }

    public void invokeMethod(final Object obj) {
        Preconditions.g(this.eventType.isAssignableFrom(obj.getClass()));
        if (this.isAsync) {
            SquirrelConfiguration.getExecutor().execute(new Runnable() { // from class: org.squirrelframework.foundation.event.ListenerMethod.1
                @Override // java.lang.Runnable
                public void run() {
                    ReflectUtils.invoke(ListenerMethod.this.method, ListenerMethod.this.target, ListenerMethod.this.hasParameter ? new Object[]{obj} : new Object[0]);
                }
            });
            return;
        }
        synchronized (this.target) {
            try {
                ReflectUtils.invoke(this.method, this.target, this.hasParameter ? new Object[]{obj} : new Object[0]);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public boolean matches(Class<?> cls, Object obj, Method method) {
        return this.target == obj && cls.equals(this.eventType) && method.equals(this.method);
    }

    public String toString() {
        return this.target.getClass().getSimpleName() + JwtParser.SEPARATOR_CHAR + this.method.getName() + '(' + this.eventType.getSimpleName() + ')';
    }

    public boolean matches(Class<?> cls, Object obj) {
        return this.target == obj && cls.equals(this.eventType);
    }
}
