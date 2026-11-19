package org.squirrelframework.foundation.component;

import com.google.common.base.Preconditions;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes5.dex */
public class SquirrelSingletonProvider implements SquirrelComponent, SquirrelSingleton {
    private static SquirrelSingletonProvider instance = new SquirrelSingletonProvider();
    private Map<String, Object> instanceRegistry = new ConcurrentHashMap();

    public static SquirrelSingletonProvider getInstance() {
        return instance;
    }

    public static void setInstance(SquirrelSingletonProvider squirrelSingletonProvider) {
        instance = squirrelSingletonProvider;
    }

    public void clearRegistry() {
        this.instanceRegistry.clear();
    }

    public <T> T get(Class<T> cls) {
        Object objNewInstance = this.instanceRegistry.get(cls.getName());
        if (objNewInstance == null) {
            try {
                objNewInstance = SquirrelProvider.getInstance().newInstance(cls);
            } catch (Exception unused) {
                objNewInstance = null;
            }
            if (objNewInstance != null) {
                register(cls, objNewInstance);
            }
        }
        if (objNewInstance != null) {
            return cls.cast(objNewInstance);
        }
        return null;
    }

    public <T> void register(Class<T> cls, Object obj) {
        Preconditions.g(cls.isAssignableFrom(obj.getClass()));
        this.instanceRegistry.put(cls.getName(), obj);
    }

    public void unregister(Class<?> cls) {
        this.instanceRegistry.remove(cls.getName());
    }
}
