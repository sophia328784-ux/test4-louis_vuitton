package kotlinx.serialization.internal;

import kotlin.Metadata;
import kotlin.jvm.JvmClassMappingKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.reflect.KClass;
import kotlinx.serialization.KSerializer;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0002\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u0002B'\u0012\u001e\u0010\u0006\u001a\u001a\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u0004\u0012\f\u0012\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u00050\u0003¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lkotlinx/serialization/internal/ClassValueCache;", "T", "Lkotlinx/serialization/internal/SerializerCache;", "Lkotlin/Function1;", "Lkotlin/reflect/KClass;", "Lkotlinx/serialization/KSerializer;", "compute", "<init>", "(Lkotlin/jvm/functions/Function1;)V", "kotlinx-serialization-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
final class ClassValueCache<T> implements SerializerCache<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Function1 f75588a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ClassValueReferences f75589b;

    public ClassValueCache(Function1<? super KClass<?>, ? extends KSerializer<T>> function1) {
        function1.getClass();
        this.f75588a = function1;
        this.f75589b = new ClassValueReferences();
    }

    @Override // kotlinx.serialization.internal.SerializerCache
    public final KSerializer a(final KClass kClass) {
        MutableSoftReference<T> mutableSoftReference = this.f75589b.get(JvmClassMappingKt.b(kClass));
        mutableSoftReference.getClass();
        MutableSoftReference<T> mutableSoftReference2 = mutableSoftReference;
        Object objA = mutableSoftReference2.f75645a.get();
        if (objA == null) {
            objA = mutableSoftReference2.a(new Function0<Object>() { // from class: kotlinx.serialization.internal.ClassValueCache$get$$inlined$getOrSet$1
                @Override // kotlin.jvm.functions.Function0
                /* JADX INFO: renamed from: invoke */
                public final Object mo47invoke() {
                    return new CacheEntry((KSerializer) this.f75590b.f75588a.invoke(kClass));
                }
            });
        }
        return ((CacheEntry) objA).f75581a;
    }
}
