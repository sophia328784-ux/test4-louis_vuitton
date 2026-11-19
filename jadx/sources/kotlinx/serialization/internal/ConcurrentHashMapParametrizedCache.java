package kotlinx.serialization.internal;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.JvmClassMappingKt;
import kotlin.jvm.functions.Function2;
import kotlin.reflect.KClass;
import kotlin.reflect.KType;
import kotlinx.serialization.KSerializer;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0002\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u0002B5\u0012,\u0010\t\u001a(\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00050\u0004\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u0006\u0012\f\u0012\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\b0\u0003¢\u0006\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Lkotlinx/serialization/internal/ConcurrentHashMapParametrizedCache;", "T", "Lkotlinx/serialization/internal/ParametrizedSerializerCache;", "Lkotlin/Function2;", "Lkotlin/reflect/KClass;", "", "", "Lkotlin/reflect/KType;", "Lkotlinx/serialization/KSerializer;", "compute", "<init>", "(Lkotlin/jvm/functions/Function2;)V", "kotlinx-serialization-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
final class ConcurrentHashMapParametrizedCache<T> implements ParametrizedSerializerCache<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Function2 f75597a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ConcurrentHashMap f75598b;

    public ConcurrentHashMapParametrizedCache(Function2<? super KClass<Object>, ? super List<? extends KType>, ? extends KSerializer<T>> function2) {
        function2.getClass();
        this.f75597a = function2;
        this.f75598b = new ConcurrentHashMap();
    }

    @Override // kotlinx.serialization.internal.ParametrizedSerializerCache
    public final Object a(KClass kClass, ArrayList arrayList) {
        Object failure;
        Object objPutIfAbsent;
        Class clsB = JvmClassMappingKt.b(kClass);
        ConcurrentHashMap concurrentHashMap = this.f75598b;
        Object parametrizedCacheEntry = concurrentHashMap.get(clsB);
        if (parametrizedCacheEntry == null && (objPutIfAbsent = concurrentHashMap.putIfAbsent(clsB, (parametrizedCacheEntry = new ParametrizedCacheEntry()))) != null) {
            parametrizedCacheEntry = objPutIfAbsent;
        }
        ParametrizedCacheEntry parametrizedCacheEntry2 = (ParametrizedCacheEntry) parametrizedCacheEntry;
        ArrayList arrayList2 = new ArrayList(CollectionsKt.t(arrayList, 10));
        Iterator<T> it = arrayList.iterator();
        while (it.hasNext()) {
            arrayList2.add(new KTypeWrapper((KType) it.next()));
        }
        ConcurrentHashMap concurrentHashMap2 = parametrizedCacheEntry2.f75657a;
        Object obj = concurrentHashMap2.get(arrayList2);
        if (obj == null) {
            try {
                Result.Companion companion = Result.INSTANCE;
                failure = (KSerializer) this.f75597a.invoke(kClass, arrayList);
            } catch (Throwable th) {
                Result.Companion companion2 = Result.INSTANCE;
                failure = new Result.Failure(th);
            }
            Result result = new Result(failure);
            Object objPutIfAbsent2 = concurrentHashMap2.putIfAbsent(arrayList2, result);
            obj = objPutIfAbsent2 == null ? result : objPutIfAbsent2;
        }
        return ((Result) obj).f71708b;
    }
}
