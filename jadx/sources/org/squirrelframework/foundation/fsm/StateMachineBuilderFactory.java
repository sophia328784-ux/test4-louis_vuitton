package org.squirrelframework.foundation.fsm;

import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import org.squirrelframework.foundation.component.SquirrelProvider;
import org.squirrelframework.foundation.util.TypeReference;

/* JADX INFO: loaded from: classes5.dex */
public class StateMachineBuilderFactory {
    public static <T extends StateMachine<T, S, E, C>, S, E, C> StateMachineBuilder<T, S, E, C> create(Class<? extends T> cls, Class<S> cls2, Class<E> cls3, Class<C> cls4, Class<?>... clsArr) {
        return (StateMachineBuilder) SquirrelProvider.getInstance().newInstance((TypeReference) new TypeReference<StateMachineBuilder<T, S, E, C>>() { // from class: org.squirrelframework.foundation.fsm.StateMachineBuilderFactory.2
        }, new Class[]{Class.class, Class.class, Class.class, Class.class, Class[].class}, new Object[]{cls, cls2, cls3, cls4, clsArr});
    }

    public static UntypedStateMachineBuilder create(Class<? extends UntypedStateMachine> cls, Class<?>... clsArr) {
        return create((StateMachineBuilder<UntypedStateMachine, Object, Object, Object>) create(cls, Object.class, Object.class, Object.class, clsArr));
    }

    public static UntypedStateMachineBuilder create(final StateMachineBuilder<UntypedStateMachine, Object, Object, Object> stateMachineBuilder) {
        return (UntypedStateMachineBuilder) Proxy.newProxyInstance(UntypedStateMachineBuilder.class.getClassLoader(), new Class[]{UntypedStateMachineBuilder.class}, new InvocationHandler() { // from class: org.squirrelframework.foundation.fsm.StateMachineBuilderFactory.1
            @Override // java.lang.reflect.InvocationHandler
            public Object invoke(Object obj, Method method, Object[] objArr) throws Throwable {
                Object obj2;
                Object obj3;
                try {
                    String name = method.getName();
                    if (!name.equals("newUntypedStateMachine") && !name.equals("newAnyStateMachine")) {
                        return method.invoke(stateMachineBuilder, objArr);
                    }
                    if (objArr.length == 3 && StateMachineConfiguration.class.isAssignableFrom(objArr[1].getClass()) && ((obj3 = objArr[2]) == null || obj3.getClass().isArray())) {
                        return stateMachineBuilder.newStateMachine(objArr[0], (StateMachineConfiguration) objArr[1], (Object[]) objArr[2]);
                    }
                    if (objArr.length == 2 && ((obj2 = objArr[1]) == null || obj2.getClass().isArray())) {
                        return stateMachineBuilder.newStateMachine(objArr[0], (Object[]) objArr[1]);
                    }
                    if (objArr.length == 1) {
                        return stateMachineBuilder.newStateMachine(objArr[0]);
                    }
                    throw new IllegalArgumentException("Illegal argument number.");
                } catch (InvocationTargetException e2) {
                    throw e2.getTargetException();
                }
            }
        });
    }

    public static <T extends StateMachine<T, S, E, C>, S, E, C> StateMachineBuilder<T, S, E, C> create(Class<? extends T> cls, Class<S> cls2, Class<E> cls3, Class<C> cls4) {
        return create(cls, cls2, cls3, cls4, new Class[0]);
    }

    public static UntypedStateMachineBuilder create(Class<? extends UntypedStateMachine> cls) {
        return create(cls, new Class[0]);
    }
}
