package kotlin.coroutines.jvm.internal;

import java.lang.reflect.Method;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\bÀ\u0002\u0018\u00002\u00020\u0001:\u0001\u0002¨\u0006\u0003"}, d2 = {"Lkotlin/coroutines/jvm/internal/ModuleNameRetriever;", "", "Cache", "kotlin-stdlib"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final class ModuleNameRetriever {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ModuleNameRetriever f71849a = new ModuleNameRetriever();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Cache f71850b = new Cache(null, null, null);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static Cache f71851c;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0002\u0018\u00002\u00020\u0001B%\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lkotlin/coroutines/jvm/internal/ModuleNameRetriever$Cache;", "", "Ljava/lang/reflect/Method;", "getModuleMethod", "getDescriptorMethod", "nameMethod", "<init>", "(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V", "kotlin-stdlib"}, k = 1, mv = {2, 4, 0}, xi = 48)
    public static final class Cache {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Method f71852a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Method f71853b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Method f71854c;

        public Cache(Method method, Method method2, Method method3) {
            this.f71852a = method;
            this.f71853b = method2;
            this.f71854c = method3;
        }
    }

    public static String a(BaseContinuationImpl baseContinuationImpl) {
        Method method;
        Object objInvoke;
        Method method2;
        Object objInvoke2;
        Cache cache = f71851c;
        Cache cache2 = f71850b;
        if (cache == null) {
            try {
                Cache cache3 = new Cache(Class.class.getDeclaredMethod("getModule", null), baseContinuationImpl.getClass().getClassLoader().loadClass("java.lang.Module").getDeclaredMethod("getDescriptor", null), baseContinuationImpl.getClass().getClassLoader().loadClass("java.lang.module.ModuleDescriptor").getDeclaredMethod("name", null));
                f71851c = cache3;
                cache = cache3;
            } catch (Exception unused) {
                f71851c = cache2;
                cache = cache2;
            }
        }
        if (cache == cache2 || (method = cache.f71852a) == null || (objInvoke = method.invoke(baseContinuationImpl.getClass(), null)) == null || (method2 = cache.f71853b) == null || (objInvoke2 = method2.invoke(objInvoke, null)) == null) {
            return null;
        }
        Method method3 = cache.f71854c;
        Object objInvoke3 = method3 != null ? method3.invoke(objInvoke2, null) : null;
        if (objInvoke3 instanceof String) {
            return (String) objInvoke3;
        }
        return null;
    }
}
