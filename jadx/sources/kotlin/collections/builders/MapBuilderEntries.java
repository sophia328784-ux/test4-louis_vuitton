package kotlin.collections.builders;

import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010'\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u0000*\u0004\b\u0000\u0010\u0001*\u0004\b\u0001\u0010\u00022 \u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0004\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0003B\u001d\b\u0000\u0012\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0005¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lkotlin/collections/builders/MapBuilderEntries;", "K", "V", "Lkotlin/collections/builders/AbstractMapBuilderEntrySet;", "", "Lkotlin/collections/builders/MapBuilder;", "backing", "<init>", "(Lkotlin/collections/builders/MapBuilder;)V", "kotlin-stdlib"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final class MapBuilderEntries<K, V> extends AbstractMapBuilderEntrySet<Map.Entry<K, V>, K, V> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final MapBuilder f71821b;

    public MapBuilderEntries(MapBuilder<K, V> mapBuilder) {
        mapBuilder.getClass();
        this.f71821b = mapBuilder;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean add(Object obj) {
        ((Map.Entry) obj).getClass();
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean addAll(Collection collection) {
        collection.getClass();
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final void clear() {
        this.f71821b.clear();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean containsAll(Collection collection) {
        collection.getClass();
        return this.f71821b.f(collection);
    }

    @Override // kotlin.collections.AbstractMutableSet
    public final int f() {
        return this.f71821b.f71814j;
    }

    @Override // kotlin.collections.builders.AbstractMapBuilderEntrySet
    public final boolean h(Map.Entry entry) {
        entry.getClass();
        MapBuilder mapBuilder = this.f71821b;
        mapBuilder.getClass();
        int iH = mapBuilder.h(entry.getKey());
        if (iH < 0) {
            return false;
        }
        Object[] objArr = mapBuilder.f71809c;
        objArr.getClass();
        return Intrinsics.c(objArr[iH], entry.getValue());
    }

    @Override // kotlin.collections.builders.AbstractMapBuilderEntrySet
    public final boolean i(Map.Entry entry) {
        entry.getClass();
        MapBuilder mapBuilder = this.f71821b;
        mapBuilder.getClass();
        entry.getClass();
        mapBuilder.d();
        int iH = mapBuilder.h(entry.getKey());
        if (iH < 0) {
            return false;
        }
        Object[] objArr = mapBuilder.f71809c;
        objArr.getClass();
        if (!Intrinsics.c(objArr[iH], entry.getValue())) {
            return false;
        }
        mapBuilder.n(iH);
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean isEmpty() {
        return this.f71821b.isEmpty();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator iterator() {
        MapBuilder mapBuilder = this.f71821b;
        mapBuilder.getClass();
        return new MapBuilder.EntriesItr(mapBuilder);
    }

    @Override // java.util.AbstractSet, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean removeAll(Collection collection) {
        collection.getClass();
        this.f71821b.d();
        return super.removeAll(collection);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean retainAll(Collection collection) {
        collection.getClass();
        this.f71821b.d();
        return super.retainAll(collection);
    }
}
