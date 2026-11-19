package kotlin.reflect.jvm.internal;

import java.util.concurrent.ConcurrentHashMap;
import kotlin.Metadata;
import kotlin.collections.EmptyList;
import kotlin.jvm.functions.Function1;
import kotlin.reflect.full.KClassifiers;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002*0\b\u0002\u0010\u0004\"\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00020\u0001\u0012\u0004\u0012\u00020\u00030\u00002\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00020\u0001\u0012\u0004\u0012\u00020\u00030\u0000¨\u0006\u0005"}, d2 = {"Lkotlin/Pair;", "", "Lkotlin/reflect/KTypeProjection;", "", "Key", "kotlin-reflection"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class CachesKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final CacheByClass f71977a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final CacheByClass f71978b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final CacheByClass f71979c;
    public static final CacheByClass d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final CacheByClass f71980e;

    static {
        CachesKt$$Lambda$0 cachesKt$$Lambda$0 = new Function1() { // from class: kotlin.reflect.jvm.internal.CachesKt$$Lambda$0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Class cls = (Class) obj;
                CacheByClass cacheByClass = CachesKt.f71977a;
                cls.getClass();
                return new KClassImpl(cls);
            }
        };
        int i2 = CacheByClassKt.f71976a;
        cachesKt$$Lambda$0.getClass();
        f71977a = new ConcurrentHashMapCache(cachesKt$$Lambda$0);
        CachesKt$$Lambda$1 cachesKt$$Lambda$1 = new Function1() { // from class: kotlin.reflect.jvm.internal.CachesKt$$Lambda$1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Class cls = (Class) obj;
                CacheByClass cacheByClass = CachesKt.f71977a;
                cls.getClass();
                return new KPackageImpl(cls);
            }
        };
        cachesKt$$Lambda$1.getClass();
        f71978b = new ConcurrentHashMapCache(cachesKt$$Lambda$1);
        CachesKt$$Lambda$2 cachesKt$$Lambda$2 = new Function1() { // from class: kotlin.reflect.jvm.internal.CachesKt$$Lambda$2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Class cls = (Class) obj;
                CacheByClass cacheByClass = CachesKt.f71977a;
                cls.getClass();
                KClassImpl kClassImplA = CachesKt.a(cls);
                EmptyList emptyList = EmptyList.f71768b;
                return KClassifiers.b(kClassImplA, emptyList, false, emptyList);
            }
        };
        cachesKt$$Lambda$2.getClass();
        f71979c = new ConcurrentHashMapCache(cachesKt$$Lambda$2);
        CachesKt$$Lambda$3 cachesKt$$Lambda$3 = new Function1() { // from class: kotlin.reflect.jvm.internal.CachesKt$$Lambda$3
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Class cls = (Class) obj;
                CacheByClass cacheByClass = CachesKt.f71977a;
                cls.getClass();
                KClassImpl kClassImplA = CachesKt.a(cls);
                EmptyList emptyList = EmptyList.f71768b;
                return KClassifiers.b(kClassImplA, emptyList, true, emptyList);
            }
        };
        cachesKt$$Lambda$3.getClass();
        d = new ConcurrentHashMapCache(cachesKt$$Lambda$3);
        CachesKt$$Lambda$4 cachesKt$$Lambda$4 = new Function1() { // from class: kotlin.reflect.jvm.internal.CachesKt$$Lambda$4
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                CacheByClass cacheByClass = CachesKt.f71977a;
                ((Class) obj).getClass();
                return new ConcurrentHashMap();
            }
        };
        cachesKt$$Lambda$4.getClass();
        f71980e = new ConcurrentHashMapCache(cachesKt$$Lambda$4);
    }

    public static final KClassImpl a(Class cls) {
        cls.getClass();
        Object objA = f71977a.a(cls);
        objA.getClass();
        return (KClassImpl) objA;
    }
}
