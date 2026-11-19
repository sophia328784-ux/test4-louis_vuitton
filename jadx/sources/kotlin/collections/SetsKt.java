package kotlin.collections;

import java.util.Collection;
import java.util.Collections;
import java.util.LinkedHashSet;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.builders.MapBuilder;
import kotlin.collections.builders.SetBuilder;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"kotlin/collections/SetsKt__SetsJVMKt", "kotlin/collections/SetsKt__SetsKt", "kotlin/collections/SetsKt___SetsKt"}, k = 4, mv = {2, 4, 0}, xi = 49)
public abstract class SetsKt extends SetsKt___SetsKt {
    public static SetBuilder a(SetBuilder setBuilder) {
        MapBuilder mapBuilder = setBuilder.f71829b;
        mapBuilder.c();
        return mapBuilder.f71814j > 0 ? setBuilder : SetBuilder.d;
    }

    public static LinkedHashSet b(Object... objArr) {
        LinkedHashSet linkedHashSet = new LinkedHashSet(MapsKt.g(objArr.length));
        ArraysKt___ArraysKt.c(objArr, linkedHashSet);
        return linkedHashSet;
    }

    public static LinkedHashSet c(Set set, Object obj) {
        set.getClass();
        LinkedHashSet linkedHashSet = new LinkedHashSet(MapsKt.g(set.size()));
        boolean z = false;
        for (Object obj2 : set) {
            boolean z2 = true;
            if (!z && Intrinsics.c(obj2, obj)) {
                z = true;
                z2 = false;
            }
            if (z2) {
                linkedHashSet.add(obj2);
            }
        }
        return linkedHashSet;
    }

    public static Set d(Set set, Iterable iterable) {
        set.getClass();
        iterable.getClass();
        Collection<?> collectionC = CollectionsKt__MutableCollectionsKt.c(iterable);
        if (collectionC.isEmpty()) {
            return CollectionsKt.B0(set);
        }
        if (!(collectionC instanceof Set)) {
            LinkedHashSet linkedHashSet = new LinkedHashSet(set);
            linkedHashSet.removeAll(collectionC);
            return linkedHashSet;
        }
        LinkedHashSet linkedHashSet2 = new LinkedHashSet();
        for (Object obj : set) {
            if (!((Set) collectionC).contains(obj)) {
                linkedHashSet2.add(obj);
            }
        }
        return linkedHashSet2;
    }

    public static LinkedHashSet e(Object... objArr) {
        LinkedHashSet linkedHashSet = new LinkedHashSet(MapsKt.g(objArr.length));
        ArraysKt___ArraysKt.c(objArr, linkedHashSet);
        return linkedHashSet;
    }

    public static LinkedHashSet f(Set set, Iterable iterable) {
        int size;
        set.getClass();
        iterable.getClass();
        Integer numValueOf = iterable instanceof Collection ? Integer.valueOf(((Collection) iterable).size()) : null;
        if (numValueOf != null) {
            size = set.size() + numValueOf.intValue();
        } else {
            size = set.size() * 2;
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet(MapsKt.g(size));
        linkedHashSet.addAll(set);
        CollectionsKt.j(linkedHashSet, iterable);
        return linkedHashSet;
    }

    public static LinkedHashSet g(Set set, Object obj) {
        set.getClass();
        LinkedHashSet linkedHashSet = new LinkedHashSet(MapsKt.g(set.size() + 1));
        linkedHashSet.addAll(set);
        linkedHashSet.add(obj);
        return linkedHashSet;
    }

    public static Set h(Object obj) {
        Set setSingleton = Collections.singleton(obj);
        setSingleton.getClass();
        return setSingleton;
    }
}
