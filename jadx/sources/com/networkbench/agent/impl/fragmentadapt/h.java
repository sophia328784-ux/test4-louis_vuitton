package com.networkbench.agent.impl.fragmentadapt;

import defpackage.md;
import java.lang.ref.WeakReference;
import java.util.Collection;
import java.util.Iterator;
import java.util.Set;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes2.dex */
public class h<T> implements Set<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Object f37158a = new Object();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private transient WeakHashMap<T, Object> f37159b;

    public static class a<E> implements Iterator<E> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static a f37160a = new a();

        private a() {
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return false;
        }

        @Override // java.util.Iterator
        public E next() {
            throw new UnsupportedOperationException("EmptyIterator should not call this method directly");
        }

        @Override // java.util.Iterator
        public void remove() {
        }
    }

    public static class b<E> implements Iterator<E> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Iterator<WeakReference<E>> f37161a;

        private b(Iterator<WeakReference<E>> it) {
            this.f37161a = it;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f37161a.hasNext();
        }

        @Override // java.util.Iterator
        public E next() {
            return this.f37161a.next().get();
        }

        @Override // java.util.Iterator
        public void remove() {
        }
    }

    @Override // java.util.Set, java.util.Collection
    public boolean add(T t) {
        if (t == null) {
            md.n("The argument t can't be null");
            return false;
        }
        if (this.f37159b == null) {
            this.f37159b = new WeakHashMap<>();
        }
        return this.f37159b.put(t, f37158a) != null;
    }

    @Override // java.util.Set, java.util.Collection
    public boolean addAll(Collection<? extends T> collection) {
        throw new UnsupportedOperationException("method addAll not supported now");
    }

    @Override // java.util.Set, java.util.Collection
    public void clear() {
        WeakHashMap<T, Object> weakHashMap = this.f37159b;
        if (weakHashMap != null) {
            weakHashMap.clear();
        }
    }

    @Override // java.util.Set, java.util.Collection
    public boolean contains(Object obj) {
        if (isEmpty() || obj == null) {
            return false;
        }
        return this.f37159b.containsKey(obj);
    }

    @Override // java.util.Set, java.util.Collection
    public boolean containsAll(Collection<?> collection) {
        throw new UnsupportedOperationException("method containsAll not supported");
    }

    @Override // java.util.Set, java.util.Collection
    public boolean isEmpty() {
        return size() == 0;
    }

    @Override // java.util.Set, java.util.Collection, java.lang.Iterable
    public Iterator<T> iterator() {
        return isEmpty() ? a.f37160a : this.f37159b.keySet().iterator();
    }

    @Override // java.util.Set, java.util.Collection
    public boolean remove(Object obj) {
        return (isEmpty() || obj == null || this.f37159b.remove(obj) != f37158a) ? false : true;
    }

    @Override // java.util.Set, java.util.Collection
    public boolean removeAll(Collection<?> collection) {
        throw new UnsupportedOperationException("method removeAll not supported now");
    }

    @Override // java.util.Set, java.util.Collection
    public boolean retainAll(Collection<?> collection) {
        throw new UnsupportedOperationException("method retainAll not supported now");
    }

    @Override // java.util.Set, java.util.Collection
    public int size() {
        WeakHashMap<T, Object> weakHashMap = this.f37159b;
        if (weakHashMap == null) {
            return 0;
        }
        return weakHashMap.size();
    }

    @Override // java.util.Set, java.util.Collection
    public Object[] toArray() {
        throw new UnsupportedOperationException("method toArray() not supported");
    }

    @Override // java.util.Set, java.util.Collection
    public <T1> T1[] toArray(T1[] t1Arr) {
        throw new UnsupportedOperationException("method toArray(T[] a) not supported");
    }
}
