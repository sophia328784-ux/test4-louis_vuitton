package org.squirrelframework.foundation.component;

import defpackage.a61;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import org.squirrelframework.foundation.util.ReflectUtils;
import org.squirrelframework.foundation.util.TypeReference;

/* JADX INFO: loaded from: classes5.dex */
public class SquirrelProvider implements SquirrelSingleton {
    private static SquirrelProvider instance = new SquirrelProvider();
    private Map<Class<?>, Class<?>> implementationRegistry = new ConcurrentHashMap();

    private <T> Class<T> findImplementationClass(Class<T> cls) {
        try {
            return (Class<T>) Class.forName(cls.getName().concat("Impl"));
        } catch (ClassNotFoundException unused) {
            return (Class<T>) ReflectUtils.getClass(ReflectUtils.getPackageName(cls.getName()) + ".impl." + cls.getSimpleName() + "Impl");
        }
    }

    private <T> Class<T> fromRegistry(Class<T> cls) {
        return (Class) this.implementationRegistry.get(cls);
    }

    public static SquirrelProvider getInstance() {
        return instance;
    }

    private <T> T postProcess(Class<T> cls, T t) {
        SquirrelPostProcessor<T> postProcessor = SquirrelPostProcessorProvider.getInstance().getPostProcessor(cls);
        if (postProcessor != null && t != null) {
            postProcessor.postProcess(t);
        }
        return t;
    }

    private <T> Class<T> resolveImplIfInterface(Class<T> cls, Set<Class<?>> set) {
        if (!set.add(cls)) {
            a61.q(set, "Registration cycles: ");
            return null;
        }
        if (!cls.isInterface()) {
            Class<T> clsFromRegistry = fromRegistry(cls);
            return (clsFromRegistry == null || clsFromRegistry.isInterface()) ? cls : clsFromRegistry;
        }
        Class<T> clsFromRegistry2 = fromRegistry(cls);
        if (clsFromRegistry2 == null) {
            clsFromRegistry2 = findImplementationClass(cls);
            register(cls, clsFromRegistry2);
        }
        return resolveImplIfInterface(clsFromRegistry2, set);
    }

    public static void setInstance(SquirrelProvider squirrelProvider) {
        instance = squirrelProvider;
    }

    public void clearRegistry() {
        this.implementationRegistry.clear();
    }

    public <T> Class<T> getImplementation(Class<T> cls) {
        return resolveImplIfInterface(cls, new HashSet());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <T> T newInstance(Class<T> cls, Class<?>[] clsArr, Object[] objArr) {
        Class implementation = getImplementation(cls);
        return objArr == null ? (T) postProcess(cls, ReflectUtils.newInstance(implementation)) : (T) postProcess(cls, ReflectUtils.newInstance(ReflectUtils.getConstructor(implementation, clsArr), objArr));
    }

    public void register(Class<?> cls, Class<?> cls2) {
        this.implementationRegistry.put(cls, cls2);
    }

    public void unregister(Class<?> cls) {
        this.implementationRegistry.remove(cls);
    }

    public <T> T newInstance(TypeReference<T> typeReference, Class<?>[] clsArr, Object[] objArr) {
        Class<T> rawType = typeReference.getRawType();
        return rawType.cast(newInstance(rawType, clsArr, objArr));
    }

    public <T> T newInstance(Class<T> cls) {
        return (T) newInstance(cls, (Class<?>[]) null, (Object[]) null);
    }

    public <T> T newInstance(TypeReference<T> typeReference) {
        return (T) newInstance(typeReference, (Class<?>[]) null, (Object[]) null);
    }
}
