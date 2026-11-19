package androidx.lifecycle;

import defpackage.d21;
import defpackage.fc;
import defpackage.md;
import defpackage.r81;
import defpackage.x1;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
final class ClassesInfoCache {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final ClassesInfoCache f13407c = new ClassesInfoCache();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final HashMap f13408a = new HashMap();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final HashMap f13409b = new HashMap();

    @Deprecated
    public static class CallbackInfo {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final HashMap f13410a = new HashMap();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final HashMap f13411b;

        public CallbackInfo(HashMap map) {
            this.f13411b = map;
            for (Map.Entry entry : map.entrySet()) {
                Lifecycle.Event event = (Lifecycle.Event) entry.getValue();
                List arrayList = (List) this.f13410a.get(event);
                if (arrayList == null) {
                    arrayList = new ArrayList();
                    this.f13410a.put(event, arrayList);
                }
                arrayList.add((MethodReference) entry.getKey());
            }
        }

        public static void a(List list, LifecycleOwner lifecycleOwner, Lifecycle.Event event, Object obj) {
            if (list != null) {
                for (int size = list.size() - 1; size >= 0; size--) {
                    MethodReference methodReference = (MethodReference) list.get(size);
                    Method method = methodReference.f13413b;
                    try {
                        int i2 = methodReference.f13412a;
                        if (i2 == 0) {
                            method.invoke(obj, null);
                        } else if (i2 == 1) {
                            method.invoke(obj, lifecycleOwner);
                        } else if (i2 == 2) {
                            method.invoke(obj, lifecycleOwner, event);
                        }
                    } catch (IllegalAccessException e2) {
                        x1.m(e2);
                        return;
                    } catch (InvocationTargetException e3) {
                        r81.g("Failed to call observer method", e3.getCause());
                        return;
                    }
                }
            }
        }
    }

    @Deprecated
    public static final class MethodReference {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f13412a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Method f13413b;

        public MethodReference(Method method, int i2) {
            this.f13412a = i2;
            this.f13413b = method;
            method.setAccessible(true);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof MethodReference)) {
                return false;
            }
            MethodReference methodReference = (MethodReference) obj;
            return this.f13412a == methodReference.f13412a && this.f13413b.getName().equals(methodReference.f13413b.getName());
        }

        public final int hashCode() {
            return this.f13413b.getName().hashCode() + (this.f13412a * 31);
        }
    }

    public static void c(HashMap map, MethodReference methodReference, Lifecycle.Event event, Class cls) {
        Lifecycle.Event event2 = (Lifecycle.Event) map.get(methodReference);
        if (event2 == null || event == event2) {
            if (event2 == null) {
                map.put(methodReference, event);
            }
        } else {
            String name = methodReference.f13413b.getName();
            String name2 = cls.getName();
            md.n(d21.p(fc.s("Method ", name, " in ", name2, " already declared with different @OnLifecycleEvent value: previous value "), String.valueOf(event2), ", new value ", String.valueOf(event)));
        }
    }

    public final CallbackInfo a(Class cls, Method[] methodArr) {
        int i2;
        Class superclass = cls.getSuperclass();
        HashMap map = new HashMap();
        if (superclass != null) {
            map.putAll(b(superclass).f13411b);
        }
        for (Class<?> cls2 : cls.getInterfaces()) {
            for (Map.Entry entry : b(cls2).f13411b.entrySet()) {
                c(map, (MethodReference) entry.getKey(), (Lifecycle.Event) entry.getValue(), cls);
            }
        }
        if (methodArr == null) {
            try {
                methodArr = cls.getDeclaredMethods();
            } catch (NoClassDefFoundError e2) {
                r81.j("The observer class has some methods that use newer APIs which are not available in the current OS version. Lifecycles cannot access even other methods so you should make sure that your observer classes only access framework classes that are available in your min API level OR use lifecycle:compiler annotation processor.", e2);
                return null;
            }
        }
        boolean z = false;
        for (Method method : methodArr) {
            OnLifecycleEvent onLifecycleEvent = (OnLifecycleEvent) method.getAnnotation(OnLifecycleEvent.class);
            if (onLifecycleEvent != null) {
                Class<?>[] parameterTypes = method.getParameterTypes();
                if (parameterTypes.length <= 0) {
                    i2 = 0;
                } else {
                    if (!LifecycleOwner.class.isAssignableFrom(parameterTypes[0])) {
                        md.n("invalid parameter type. Must be one and instanceof LifecycleOwner");
                        return null;
                    }
                    i2 = 1;
                }
                Lifecycle.Event eventValue = onLifecycleEvent.value();
                if (parameterTypes.length > 1) {
                    if (!Lifecycle.Event.class.isAssignableFrom(parameterTypes[1])) {
                        md.n("invalid parameter type. second arg must be an event");
                        return null;
                    }
                    if (eventValue != Lifecycle.Event.ON_ANY) {
                        md.n("Second arg is supported only for ON_ANY value");
                        return null;
                    }
                    i2 = 2;
                }
                if (parameterTypes.length > 2) {
                    md.n("cannot have more than 2 params");
                    return null;
                }
                c(map, new MethodReference(method, i2), eventValue, cls);
                z = true;
            }
        }
        CallbackInfo callbackInfo = new CallbackInfo(map);
        this.f13408a.put(cls, callbackInfo);
        this.f13409b.put(cls, Boolean.valueOf(z));
        return callbackInfo;
    }

    public final CallbackInfo b(Class cls) {
        CallbackInfo callbackInfo = (CallbackInfo) this.f13408a.get(cls);
        return callbackInfo != null ? callbackInfo : a(cls, null);
    }
}
