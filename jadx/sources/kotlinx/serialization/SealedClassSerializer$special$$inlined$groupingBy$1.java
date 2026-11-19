package kotlinx.serialization;

import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.Grouping;
import kotlin.reflect.KClass;

/* JADX INFO: Add missing generic type declarations: [T] */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0001¨\u0006\u0002"}, d2 = {"kotlinx/serialization/SealedClassSerializer$special$$inlined$groupingBy$1", "Lkotlin/collections/Grouping;", "kotlin-stdlib"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class SealedClassSerializer$special$$inlined$groupingBy$1<T> implements Grouping<Map.Entry<? extends KClass<? extends T>, ? extends KSerializer<? extends T>>, String> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Iterable f75524a;

    public SealedClassSerializer$special$$inlined$groupingBy$1(Iterable iterable) {
        this.f75524a = iterable;
    }
}
