package kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure;

import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes4.dex */
abstract class Java16RecordComponentsLoader {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static Cache f72591a;

    public static final class Cache {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Method f72592a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Method f72593b;

        public Cache(Method method, Method method2) {
            this.f72592a = method;
            this.f72593b = method2;
        }
    }

    public static Cache a(Object obj) {
        Cache cache;
        Cache cache2 = f72591a;
        if (cache2 != null) {
            return cache2;
        }
        Class<?> cls = obj.getClass();
        try {
            cache = new Cache(cls.getMethod("getType", null), cls.getMethod("getAccessor", null));
        } catch (NoSuchMethodException unused) {
            cache = new Cache(null, null);
        }
        f72591a = cache;
        return cache;
    }
}
