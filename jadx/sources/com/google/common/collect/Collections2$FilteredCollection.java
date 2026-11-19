package com.google.common.collect;

import com.google.common.base.Preconditions;
import com.google.common.base.Predicate;
import java.util.AbstractCollection;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.RandomAccess;

/* JADX INFO: loaded from: classes2.dex */
abstract class Collections2$FilteredCollection<E> extends AbstractCollection<E> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Collection f33544b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Predicate f33545c;

    public Collections2$FilteredCollection(Collection collection, Predicate predicate) {
        this.f33544b = collection;
        this.f33545c = predicate;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean add(Object obj) {
        Preconditions.g(this.f33545c.apply(obj));
        return this.f33544b.add(obj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean addAll(Collection collection) {
        Iterator<E> it = collection.iterator();
        while (it.hasNext()) {
            Preconditions.g(this.f33545c.apply(it.next()));
        }
        return this.f33544b.addAll(collection);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractCollection, java.util.Collection
    public final void clear() {
        Collection collection = this.f33544b;
        boolean z = collection instanceof RandomAccess;
        Predicate predicate = this.f33545c;
        if (!z || !(collection instanceof List)) {
            Iterators.a(collection.iterator(), predicate);
            return;
        }
        List list = (List) collection;
        predicate.getClass();
        int i2 = 0;
        for (int i3 = 0; i3 < list.size(); i3++) {
            Object obj = list.get(i3);
            if (!predicate.apply(obj)) {
                if (i3 > i2) {
                    try {
                        list.set(i2, obj);
                    } catch (IllegalArgumentException unused) {
                        Iterables.c(list, predicate, i2, i3);
                        return;
                    } catch (UnsupportedOperationException unused2) {
                        Iterables.c(list, predicate, i2, i3);
                        return;
                    }
                }
                i2++;
            }
        }
        list.subList(i2, list.size()).clear();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean contains(Object obj) {
        boolean zContains;
        Collection collection = this.f33544b;
        collection.getClass();
        try {
            zContains = collection.contains(obj);
        } catch (ClassCastException | NullPointerException unused) {
            zContains = false;
        }
        if (zContains) {
            return this.f33545c.apply(obj);
        }
        return false;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean containsAll(Collection collection) {
        Iterator<E> it = collection.iterator();
        while (it.hasNext()) {
            if (!contains(it.next())) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean isEmpty() {
        Iterator it = this.f33544b.iterator();
        Predicate predicate = this.f33545c;
        Preconditions.m(predicate, "predicate");
        int i2 = 0;
        while (true) {
            if (!it.hasNext()) {
                i2 = -1;
                break;
            }
            if (predicate.apply(it.next())) {
                break;
            }
            i2++;
        }
        return true ^ (i2 != -1);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public final Iterator iterator() {
        Iterator<E> it = this.f33544b.iterator();
        it.getClass();
        Predicate predicate = this.f33545c;
        predicate.getClass();
        return new AbstractIterator<Object>() { // from class: com.google.common.collect.Iterators.5
            public final /* synthetic */ Iterator d;

            /* JADX INFO: renamed from: e */
            public final /* synthetic */ Predicate f33625e;

            public AnonymousClass5() {
                it = it;
                predicate = predicate;
            }

            @Override // com.google.common.collect.AbstractIterator
            public final Object a() {
                Object next;
                do {
                    Iterator it2 = it;
                    if (!it2.hasNext()) {
                        this.f33512b = AbstractIterator.State.DONE;
                        return null;
                    }
                    next = it2.next();
                } while (!predicate.apply(next));
                return next;
            }
        };
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean remove(Object obj) {
        return contains(obj) && this.f33544b.remove(obj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean removeAll(Collection collection) {
        Iterator<E> it = this.f33544b.iterator();
        boolean z = false;
        while (it.hasNext()) {
            E next = it.next();
            if (this.f33545c.apply(next) && collection.contains(next)) {
                it.remove();
                z = true;
            }
        }
        return z;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean retainAll(Collection collection) {
        Iterator<E> it = this.f33544b.iterator();
        boolean z = false;
        while (it.hasNext()) {
            E next = it.next();
            if (this.f33545c.apply(next) && !collection.contains(next)) {
                it.remove();
                z = true;
            }
        }
        return z;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final int size() {
        Iterator<E> it = this.f33544b.iterator();
        int i2 = 0;
        while (it.hasNext()) {
            if (this.f33545c.apply(it.next())) {
                i2++;
            }
        }
        return i2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractCollection, java.util.Collection
    public final Object[] toArray() {
        Iterator it = iterator();
        ArrayList arrayList = new ArrayList();
        while (true) {
            AbstractIterator abstractIterator = (AbstractIterator) it;
            if (!abstractIterator.hasNext()) {
                return arrayList.toArray();
            }
            arrayList.add(abstractIterator.next());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractCollection, java.util.Collection
    public final Object[] toArray(Object[] objArr) {
        Iterator it = iterator();
        ArrayList arrayList = new ArrayList();
        while (true) {
            AbstractIterator abstractIterator = (AbstractIterator) it;
            if (abstractIterator.hasNext()) {
                arrayList.add(abstractIterator.next());
            } else {
                return arrayList.toArray(objArr);
            }
        }
    }
}
