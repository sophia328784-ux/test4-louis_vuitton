package org.squirrelframework.foundation.component;

import com.google.common.base.Preconditions;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.squirrelframework.foundation.component.impl.CompositePostProcessorImpl;
import org.squirrelframework.foundation.util.ClassComparator;
import org.squirrelframework.foundation.util.ReflectUtils;
import org.squirrelframework.foundation.util.TypeReference;

/* JADX INFO: loaded from: classes5.dex */
public class SquirrelPostProcessorProvider implements SquirrelComponent, SquirrelSingleton {
    private static SquirrelPostProcessorProvider instance = new SquirrelPostProcessorProvider();
    private Map<Class<?>, SquirrelPostProcessor<?>> postProcessorRegistry = new ConcurrentHashMap();

    public static SquirrelPostProcessorProvider getInstance() {
        return instance;
    }

    public static void setInstance(SquirrelPostProcessorProvider squirrelPostProcessorProvider) {
        instance = squirrelPostProcessorProvider;
    }

    public void clearRegistry() {
        this.postProcessorRegistry.clear();
    }

    public <T> SquirrelPostProcessor<? super T> getBestMatchPostProcessor(Class<T> cls, Comparator<SquirrelPostProcessor<? super T>> comparator) {
        List<SquirrelPostProcessor<? super T>> callablePostProcessors = getCallablePostProcessors(cls);
        if (callablePostProcessors.isEmpty()) {
            return null;
        }
        Collections.sort(callablePostProcessors, comparator);
        return callablePostProcessors.get(0);
    }

    public <T> List<SquirrelPostProcessor<? super T>> getCallablePostProcessors(Class<T> cls) {
        ArrayList arrayList = new ArrayList();
        for (Map.Entry<Class<?>, SquirrelPostProcessor<?>> entry : this.postProcessorRegistry.entrySet()) {
            if (entry.getKey().isAssignableFrom(cls)) {
                arrayList.add(entry.getValue());
            }
        }
        return arrayList;
    }

    public <T> SquirrelPostProcessor<T> getPostProcessor(Class<T> cls) {
        return (SquirrelPostProcessor) this.postProcessorRegistry.get(cls);
    }

    public <T> void register(Class<T> cls, SquirrelPostProcessor<? super T> squirrelPostProcessor) {
        Method firstMethodOfName = ReflectUtils.getFirstMethodOfName(squirrelPostProcessor.getClass(), "postProcess");
        Class<?>[] parameterTypes = firstMethodOfName.getParameterTypes();
        Preconditions.h(parameterTypes.length == 1, "Parameter size of method " + firstMethodOfName.getName() + " is not match.");
        Preconditions.h(parameterTypes[0].isAssignableFrom(cls), "Parameter type of method " + firstMethodOfName.getName() + " is not correct.");
        boolean zContainsKey = this.postProcessorRegistry.containsKey(cls);
        Map<Class<?>, SquirrelPostProcessor<?>> map = this.postProcessorRegistry;
        if (!zContainsKey) {
            map.put(cls, squirrelPostProcessor);
            return;
        }
        SquirrelPostProcessor<?> squirrelPostProcessor2 = map.get(cls);
        if (squirrelPostProcessor2 instanceof CompositePostProcessorImpl) {
            ((CompositePostProcessorImpl) squirrelPostProcessor2).compose(squirrelPostProcessor);
            return;
        }
        this.postProcessorRegistry.remove(cls);
        CompositePostProcessorImpl compositePostProcessorImpl = new CompositePostProcessorImpl(squirrelPostProcessor2);
        compositePostProcessorImpl.compose(squirrelPostProcessor);
        this.postProcessorRegistry.put(cls, compositePostProcessorImpl);
    }

    public void unregister(Class<?> cls) {
        this.postProcessorRegistry.remove(cls);
    }

    public <T> SquirrelPostProcessor<? super T> getBestMatchPostProcessor(Class<T> cls) {
        return getBestMatchPostProcessor(cls, new ClassComparator());
    }

    public <T> void register(Class<T> cls, Class<? extends SquirrelPostProcessor<? super T>> cls2) {
        register(cls, (SquirrelPostProcessor) SquirrelProvider.getInstance().newInstance(cls2));
    }

    public <T> void register(Class<T> cls, TypeReference<? extends SquirrelPostProcessor<? super T>> typeReference) {
        register(cls, typeReference.getRawType());
    }

    public <T> void register(TypeReference<T> typeReference, SquirrelPostProcessor<? super T> squirrelPostProcessor) {
        register(typeReference.getRawType(), squirrelPostProcessor);
    }
}
