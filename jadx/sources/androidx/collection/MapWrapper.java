package androidx.collection;

import java.util.Collection;
import java.util.Map;
import java.util.Set;
import java.util.function.BiFunction;
import java.util.function.Function;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0012\u0018\u0000*\u0004\b\u0000\u0010\u0001*\u0004\b\u0001\u0010\u00022\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0003B\u001b\u0012\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Landroidx/collection/MapWrapper;", "K", "V", "", "Landroidx/collection/ScatterMap;", "parent", "<init>", "(Landroidx/collection/ScatterMap;)V", "collection"}, k = 1, mv = {1, 9, 0}, xi = 48)
class MapWrapper<K, V> implements Map<K, V>, KMappedMarker {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ScatterMap f3297b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Entries f3298c;
    public Keys d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Values f3299e;

    public MapWrapper(ScatterMap<K, V> scatterMap) {
        scatterMap.getClass();
        this.f3297b = scatterMap;
    }

    @Override // java.util.Map
    public final void clear() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Map
    public final Object compute(Object obj, BiFunction biFunction) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Map
    public final Object computeIfAbsent(Object obj, Function function) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Map
    public final Object computeIfPresent(Object obj, BiFunction biFunction) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Map
    public final boolean containsKey(Object obj) {
        return this.f3297b.c(obj);
    }

    @Override // java.util.Map
    public final boolean containsValue(Object obj) {
        return this.f3297b.d(obj);
    }

    @Override // java.util.Map
    public final Set entrySet() {
        Entries entries = this.f3298c;
        if (entries != null) {
            return entries;
        }
        Entries entries2 = new Entries(this.f3297b);
        this.f3298c = entries2;
        return entries2;
    }

    @Override // java.util.Map
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return Intrinsics.c(this.f3297b, ((MapWrapper) obj).f3297b);
    }

    @Override // java.util.Map
    public final Object get(Object obj) {
        return this.f3297b.e(obj);
    }

    @Override // java.util.Map
    public final int hashCode() {
        return this.f3297b.hashCode();
    }

    @Override // java.util.Map
    public final boolean isEmpty() {
        return this.f3297b.f();
    }

    @Override // java.util.Map
    public final Set keySet() {
        Keys keys = this.d;
        if (keys != null) {
            return keys;
        }
        Keys keys2 = new Keys(this.f3297b);
        this.d = keys2;
        return keys2;
    }

    @Override // java.util.Map
    public final Object merge(Object obj, Object obj2, BiFunction biFunction) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Map
    public final Object put(Object obj, Object obj2) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Map
    public final void putAll(Map map) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Map
    public final Object putIfAbsent(Object obj, Object obj2) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Map
    public final Object remove(Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Map
    public final Object replace(Object obj, Object obj2) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Map
    public final void replaceAll(BiFunction biFunction) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Map
    public final int size() {
        return this.f3297b.f3364e;
    }

    public final String toString() {
        return this.f3297b.toString();
    }

    @Override // java.util.Map
    public final Collection values() {
        Values values = this.f3299e;
        if (values != null) {
            return values;
        }
        Values values2 = new Values(this.f3297b);
        this.f3299e = values2;
        return values2;
    }

    @Override // java.util.Map
    public final boolean remove(Object obj, Object obj2) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Map
    public final boolean replace(Object obj, Object obj2, Object obj3) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
