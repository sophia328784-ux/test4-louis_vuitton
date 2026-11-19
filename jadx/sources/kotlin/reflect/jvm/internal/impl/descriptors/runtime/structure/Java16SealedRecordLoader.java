package kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes4.dex */
public abstract class Java16SealedRecordLoader {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static Cache f72594a;

    public static final class Cache {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Method f72595a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Method f72596b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Method f72597c;
        public final Method d;

        public Cache(Method method, Method method2, Method method3, Method method4) {
            this.f72595a = method;
            this.f72596b = method2;
            this.f72597c = method3;
            this.d = method4;
        }
    }

    public static Cache a() {
        Cache cache;
        Cache cache2 = f72594a;
        if (cache2 != null) {
            return cache2;
        }
        try {
            cache = new Cache(Class.class.getMethod("isSealed", null), Class.class.getMethod("getPermittedSubclasses", null), Class.class.getMethod("isRecord", null), Class.class.getMethod("getRecordComponents", null));
        } catch (NoSuchMethodException unused) {
            cache = new Cache(null, null, null, null);
        }
        f72594a = cache;
        return cache;
    }

    public static Boolean b(Class cls) throws IllegalAccessException, InvocationTargetException {
        cls.getClass();
        Method method = a().f72595a;
        if (method == null) {
            return null;
        }
        Object objInvoke = method.invoke(cls, null);
        objInvoke.getClass();
        return (Boolean) objInvoke;
    }
}
