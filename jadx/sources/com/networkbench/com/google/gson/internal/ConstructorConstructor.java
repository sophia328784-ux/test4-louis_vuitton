package com.networkbench.com.google.gson.internal;

import com.networkbench.com.google.gson.InstanceCreator;
import com.networkbench.com.google.gson.JsonIOException;
import com.networkbench.com.google.gson.reflect.TypeToken;
import defpackage.bm;
import defpackage.md;
import defpackage.r81;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Collection;
import java.util.EnumSet;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.LinkedList;
import java.util.Map;
import java.util.Queue;
import java.util.Set;
import java.util.SortedMap;
import java.util.SortedSet;
import java.util.TreeMap;
import java.util.TreeSet;

/* JADX INFO: loaded from: classes2.dex */
public final class ConstructorConstructor {
    private final Map<Type, InstanceCreator<?>> instanceCreators;

    public ConstructorConstructor(Map<Type, InstanceCreator<?>> map) {
        this.instanceCreators = map;
    }

    private <T> ObjectConstructor<T> newDefaultConstructor(Class<? super T> cls) {
        try {
            final Constructor<? super T> declaredConstructor = cls.getDeclaredConstructor(null);
            if (!declaredConstructor.isAccessible()) {
                declaredConstructor.setAccessible(true);
            }
            return new ObjectConstructor<T>() { // from class: com.networkbench.com.google.gson.internal.ConstructorConstructor.6
                @Override // com.networkbench.com.google.gson.internal.ObjectConstructor
                public T construct() {
                    try {
                        return (T) declaredConstructor.newInstance(null);
                    } catch (IllegalAccessException e2) {
                        md.h(e2);
                        return null;
                    } catch (InstantiationException e3) {
                        bm.h("Failed to invoke ", declaredConstructor, " with no args", e3);
                        return null;
                    } catch (InvocationTargetException e4) {
                        r81.g("Failed to invoke " + declaredConstructor + " with no args", e4.getTargetException());
                        return null;
                    }
                }
            };
        } catch (NoSuchMethodException unused) {
            return null;
        }
    }

    private <T> ObjectConstructor<T> newDefaultImplementationConstructor(final Type type, Class<? super T> cls) {
        if (!Collection.class.isAssignableFrom(cls)) {
            if (!Map.class.isAssignableFrom(cls)) {
                return null;
            }
            if (SortedMap.class.isAssignableFrom(cls)) {
                return new ObjectConstructor<T>() { // from class: com.networkbench.com.google.gson.internal.ConstructorConstructor.12
                    @Override // com.networkbench.com.google.gson.internal.ObjectConstructor
                    public T construct() {
                        return (T) new TreeMap();
                    }
                };
            }
            return (!(type instanceof ParameterizedType) || String.class.isAssignableFrom(TypeToken.get(((ParameterizedType) type).getActualTypeArguments()[0]).getRawType())) ? new ObjectConstructor<T>() { // from class: com.networkbench.com.google.gson.internal.ConstructorConstructor.3
                @Override // com.networkbench.com.google.gson.internal.ObjectConstructor
                public T construct() {
                    return (T) new LinkedTreeMap();
                }
            } : new ObjectConstructor<T>() { // from class: com.networkbench.com.google.gson.internal.ConstructorConstructor.2
                @Override // com.networkbench.com.google.gson.internal.ObjectConstructor
                public T construct() {
                    return (T) new LinkedHashMap();
                }
            };
        }
        if (SortedSet.class.isAssignableFrom(cls)) {
            return new ObjectConstructor<T>() { // from class: com.networkbench.com.google.gson.internal.ConstructorConstructor.7
                @Override // com.networkbench.com.google.gson.internal.ObjectConstructor
                public T construct() {
                    return (T) new TreeSet();
                }
            };
        }
        if (EnumSet.class.isAssignableFrom(cls)) {
            return new ObjectConstructor<T>() { // from class: com.networkbench.com.google.gson.internal.ConstructorConstructor.8
                @Override // com.networkbench.com.google.gson.internal.ObjectConstructor
                public T construct() {
                    Type type2 = type;
                    if (!(type2 instanceof ParameterizedType)) {
                        throw new JsonIOException("Invalid EnumSet type: " + type.toString());
                    }
                    Type type3 = ((ParameterizedType) type2).getActualTypeArguments()[0];
                    if (type3 instanceof Class) {
                        return (T) EnumSet.noneOf((Class) type3);
                    }
                    throw new JsonIOException("Invalid EnumSet type: " + type.toString());
                }
            };
        }
        if (Set.class.isAssignableFrom(cls)) {
            return new ObjectConstructor<T>() { // from class: com.networkbench.com.google.gson.internal.ConstructorConstructor.9
                @Override // com.networkbench.com.google.gson.internal.ObjectConstructor
                public T construct() {
                    return (T) new LinkedHashSet();
                }
            };
        }
        return Queue.class.isAssignableFrom(cls) ? new ObjectConstructor<T>() { // from class: com.networkbench.com.google.gson.internal.ConstructorConstructor.10
            @Override // com.networkbench.com.google.gson.internal.ObjectConstructor
            public T construct() {
                return (T) new LinkedList();
            }
        } : new ObjectConstructor<T>() { // from class: com.networkbench.com.google.gson.internal.ConstructorConstructor.11
            @Override // com.networkbench.com.google.gson.internal.ObjectConstructor
            public T construct() {
                return (T) new ArrayList();
            }
        };
    }

    private <T> ObjectConstructor<T> newUnsafeAllocator(final Type type, final Class<? super T> cls) {
        return new ObjectConstructor<T>() { // from class: com.networkbench.com.google.gson.internal.ConstructorConstructor.4
            private final UnsafeAllocator d = UnsafeAllocator.create();

            @Override // com.networkbench.com.google.gson.internal.ObjectConstructor
            public T construct() {
                try {
                    return (T) this.d.newInstance(cls);
                } catch (Throwable th) {
                    bm.h("Unable to invoke no-args constructor for ", type, ". Register an InstanceCreator with Gson for this type may fix this problem.", th);
                    return null;
                }
            }
        };
    }

    public <T> ObjectConstructor<T> get(TypeToken<T> typeToken) {
        final Type type = typeToken.getType();
        Class<? super T> rawType = typeToken.getRawType();
        final InstanceCreator<?> instanceCreator = this.instanceCreators.get(type);
        if (instanceCreator != null) {
            return new ObjectConstructor<T>() { // from class: com.networkbench.com.google.gson.internal.ConstructorConstructor.1
                @Override // com.networkbench.com.google.gson.internal.ObjectConstructor
                public T construct() {
                    return (T) instanceCreator.createInstance(type);
                }
            };
        }
        final InstanceCreator<?> instanceCreator2 = this.instanceCreators.get(rawType);
        if (instanceCreator2 != null) {
            return new ObjectConstructor<T>() { // from class: com.networkbench.com.google.gson.internal.ConstructorConstructor.5
                @Override // com.networkbench.com.google.gson.internal.ObjectConstructor
                public T construct() {
                    return (T) instanceCreator2.createInstance(type);
                }
            };
        }
        ObjectConstructor<T> objectConstructorNewDefaultConstructor = newDefaultConstructor(rawType);
        if (objectConstructorNewDefaultConstructor != null) {
            return objectConstructorNewDefaultConstructor;
        }
        ObjectConstructor<T> objectConstructorNewDefaultImplementationConstructor = newDefaultImplementationConstructor(type, rawType);
        return objectConstructorNewDefaultImplementationConstructor != null ? objectConstructorNewDefaultImplementationConstructor : newUnsafeAllocator(type, rawType);
    }

    public String toString() {
        return this.instanceCreators.toString();
    }
}
