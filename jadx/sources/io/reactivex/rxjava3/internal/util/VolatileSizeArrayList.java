package io.reactivex.rxjava3.internal.util;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes4.dex */
public final class VolatileSizeArrayList<T> extends AtomicInteger implements List<T>, RandomAccess {
    private static final long serialVersionUID = 3972397474470203923L;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ArrayList f71126b;

    public VolatileSizeArrayList() {
        this.f71126b = new ArrayList();
    }

    @Override // java.util.List, java.util.Collection
    public final boolean add(Object obj) {
        ArrayList arrayList = this.f71126b;
        boolean zAdd = arrayList.add(obj);
        lazySet(arrayList.size());
        return zAdd;
    }

    @Override // java.util.List, java.util.Collection
    public final boolean addAll(Collection collection) {
        ArrayList arrayList = this.f71126b;
        boolean zAddAll = arrayList.addAll(collection);
        lazySet(arrayList.size());
        return zAddAll;
    }

    @Override // java.util.List, java.util.Collection
    public final void clear() {
        this.f71126b.clear();
        lazySet(0);
    }

    @Override // java.util.List, java.util.Collection
    public final boolean contains(Object obj) {
        return this.f71126b.contains(obj);
    }

    @Override // java.util.List, java.util.Collection
    public final boolean containsAll(Collection collection) {
        return this.f71126b.containsAll(collection);
    }

    @Override // java.util.List, java.util.Collection
    public final boolean equals(Object obj) {
        boolean z = obj instanceof VolatileSizeArrayList;
        ArrayList arrayList = this.f71126b;
        return z ? arrayList.equals(((VolatileSizeArrayList) obj).f71126b) : arrayList.equals(obj);
    }

    @Override // java.util.List
    public final Object get(int i2) {
        return this.f71126b.get(i2);
    }

    @Override // java.util.List, java.util.Collection
    public final int hashCode() {
        return this.f71126b.hashCode();
    }

    @Override // java.util.List
    public final int indexOf(Object obj) {
        return this.f71126b.indexOf(obj);
    }

    @Override // java.util.List, java.util.Collection
    public final boolean isEmpty() {
        return get() == 0;
    }

    @Override // java.util.List, java.util.Collection, java.lang.Iterable
    public final Iterator iterator() {
        return this.f71126b.iterator();
    }

    @Override // java.util.List
    public final int lastIndexOf(Object obj) {
        return this.f71126b.lastIndexOf(obj);
    }

    @Override // java.util.List
    public final ListIterator listIterator() {
        return this.f71126b.listIterator();
    }

    @Override // java.util.List, java.util.Collection
    public final boolean remove(Object obj) {
        ArrayList arrayList = this.f71126b;
        boolean zRemove = arrayList.remove(obj);
        lazySet(arrayList.size());
        return zRemove;
    }

    @Override // java.util.List, java.util.Collection
    public final boolean removeAll(Collection collection) {
        ArrayList arrayList = this.f71126b;
        boolean zRemoveAll = arrayList.removeAll(collection);
        lazySet(arrayList.size());
        return zRemoveAll;
    }

    @Override // java.util.List, java.util.Collection
    public final boolean retainAll(Collection collection) {
        ArrayList arrayList = this.f71126b;
        boolean zRetainAll = arrayList.retainAll(collection);
        lazySet(arrayList.size());
        return zRetainAll;
    }

    @Override // java.util.List
    public final Object set(int i2, Object obj) {
        return this.f71126b.set(i2, obj);
    }

    @Override // java.util.List, java.util.Collection
    public final int size() {
        return get();
    }

    @Override // java.util.List
    public final List subList(int i2, int i3) {
        return this.f71126b.subList(i2, i3);
    }

    @Override // java.util.List, java.util.Collection
    public final Object[] toArray() {
        return this.f71126b.toArray();
    }

    @Override // java.util.concurrent.atomic.AtomicInteger
    public final String toString() {
        return this.f71126b.toString();
    }

    @Override // java.util.List
    public final ListIterator listIterator(int i2) {
        return this.f71126b.listIterator(i2);
    }

    @Override // java.util.List, java.util.Collection
    public final Object[] toArray(Object[] objArr) {
        return this.f71126b.toArray(objArr);
    }

    public VolatileSizeArrayList(int i2) {
        this.f71126b = new ArrayList(i2);
    }

    @Override // java.util.List
    public final void add(int i2, Object obj) {
        ArrayList arrayList = this.f71126b;
        arrayList.add(i2, obj);
        lazySet(arrayList.size());
    }

    @Override // java.util.List
    public final boolean addAll(int i2, Collection collection) {
        ArrayList arrayList = this.f71126b;
        boolean zAddAll = arrayList.addAll(i2, collection);
        lazySet(arrayList.size());
        return zAddAll;
    }

    @Override // java.util.List
    public final Object remove(int i2) {
        ArrayList arrayList = this.f71126b;
        Object objRemove = arrayList.remove(i2);
        lazySet(arrayList.size());
        return objRemove;
    }
}
