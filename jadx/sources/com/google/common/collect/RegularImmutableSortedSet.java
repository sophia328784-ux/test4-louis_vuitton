package com.google.common.collect;

import defpackage.b21;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
final class RegularImmutableSortedSet<E> extends ImmutableSortedSet<E> {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final RegularImmutableSortedSet f33722i;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final transient ImmutableList f33723h;

    static {
        UnmodifiableListIterator unmodifiableListIterator = ImmutableList.f33587c;
        f33722i = new RegularImmutableSortedSet(RegularImmutableList.f33698f, NaturalOrdering.f33684b);
    }

    public RegularImmutableSortedSet(ImmutableList immutableList, Comparator comparator) {
        super(comparator);
        this.f33723h = immutableList;
    }

    public final RegularImmutableSortedSet F(int i2, int i3) {
        ImmutableList immutableList = this.f33723h;
        if (i2 == 0 && i3 == immutableList.size()) {
            return this;
        }
        Comparator comparator = this.f33620e;
        if (i2 < i3) {
            return new RegularImmutableSortedSet(immutableList.subList(i2, i3), comparator);
        }
        return NaturalOrdering.f33684b != comparator ? new RegularImmutableSortedSet(RegularImmutableList.f33698f, comparator) : f33722i;
    }

    public final int G(Object obj, boolean z) {
        obj.getClass();
        int iBinarySearch = Collections.binarySearch(this.f33723h, obj, this.f33620e);
        if (iBinarySearch >= 0) {
            return z ? iBinarySearch + 1 : iBinarySearch;
        }
        return ~iBinarySearch;
    }

    public final int I(Object obj, boolean z) {
        obj.getClass();
        int iBinarySearch = Collections.binarySearch(this.f33723h, obj, this.f33620e);
        if (iBinarySearch >= 0) {
            return z ? iBinarySearch : iBinarySearch + 1;
        }
        return ~iBinarySearch;
    }

    @Override // java.util.NavigableSet
    public final Object ceiling(Object obj) {
        int I = I(obj, true);
        ImmutableList immutableList = this.f33723h;
        if (I == immutableList.size()) {
            return null;
        }
        return immutableList.get(I);
    }

    @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection
    public final boolean contains(Object obj) {
        if (obj != null) {
            try {
                if (Collections.binarySearch(this.f33723h, obj, this.f33620e) >= 0) {
                    return true;
                }
            } catch (ClassCastException unused) {
            }
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean containsAll(Collection collection) {
        if (collection instanceof Multiset) {
            collection = ((Multiset) collection).j0();
        }
        Comparator comparator = this.f33620e;
        if (!SortedIterables.a(comparator, collection) || collection.size() <= 1) {
            return super.containsAll(collection);
        }
        UnmodifiableIterator it = iterator();
        Iterator<E> it2 = collection.iterator();
        AbstractIndexedListIterator abstractIndexedListIterator = (AbstractIndexedListIterator) it;
        if (!abstractIndexedListIterator.hasNext()) {
            return false;
        }
        E next = it2.next();
        Object next2 = abstractIndexedListIterator.next();
        while (true) {
            try {
                int iCompare = comparator.compare(next2, next);
                if (iCompare < 0) {
                    if (!abstractIndexedListIterator.hasNext()) {
                        return false;
                    }
                    next2 = abstractIndexedListIterator.next();
                } else if (iCompare == 0) {
                    if (!it2.hasNext()) {
                        return true;
                    }
                    next = it2.next();
                } else if (iCompare > 0) {
                    return false;
                }
            } catch (ClassCastException | NullPointerException unused) {
                return false;
            }
        }
    }

    @Override // java.util.NavigableSet
    public final Iterator descendingIterator() {
        return this.f33723h.F().listIterator(0);
    }

    @Override // com.google.common.collect.ImmutableSet, java.util.Collection, java.util.Set
    public final boolean equals(Object obj) {
        Object next;
        E next2;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Set)) {
            return false;
        }
        Set set = (Set) obj;
        if (this.f33723h.size() != set.size()) {
            return false;
        }
        if (isEmpty()) {
            return true;
        }
        Comparator comparator = this.f33620e;
        if (!SortedIterables.a(comparator, set)) {
            return containsAll(set);
        }
        Iterator<E> it = set.iterator();
        try {
            UnmodifiableIterator it2 = iterator();
            do {
                AbstractIndexedListIterator abstractIndexedListIterator = (AbstractIndexedListIterator) it2;
                if (!abstractIndexedListIterator.hasNext()) {
                    return true;
                }
                next = abstractIndexedListIterator.next();
                next2 = it.next();
                if (next2 == null) {
                    return false;
                }
            } while (comparator.compare(next, next2) == 0);
            return false;
        } catch (ClassCastException | NoSuchElementException unused) {
            return false;
        }
    }

    @Override // com.google.common.collect.ImmutableSet, com.google.common.collect.ImmutableCollection
    public final ImmutableList f() {
        return this.f33723h;
    }

    @Override // java.util.SortedSet
    public final Object first() {
        if (!isEmpty()) {
            return this.f33723h.get(0);
        }
        b21.x();
        return null;
    }

    @Override // java.util.NavigableSet
    public final Object floor(Object obj) {
        int iG = G(obj, true) - 1;
        if (iG == -1) {
            return null;
        }
        return this.f33723h.get(iG);
    }

    @Override // com.google.common.collect.ImmutableCollection
    public final int h(int i2, Object[] objArr) {
        return this.f33723h.h(i2, objArr);
    }

    @Override // java.util.NavigableSet
    public final Object higher(Object obj) {
        int I = I(obj, false);
        ImmutableList immutableList = this.f33723h;
        if (I == immutableList.size()) {
            return null;
        }
        return immutableList.get(I);
    }

    @Override // com.google.common.collect.ImmutableCollection
    public final Object[] i() {
        return this.f33723h.i();
    }

    @Override // java.util.SortedSet
    public final Object last() {
        if (isEmpty()) {
            b21.x();
            return null;
        }
        ImmutableList immutableList = this.f33723h;
        return immutableList.get(immutableList.size() - 1);
    }

    @Override // java.util.NavigableSet
    public final Object lower(Object obj) {
        int iG = G(obj, false) - 1;
        if (iG == -1) {
            return null;
        }
        return this.f33723h.get(iG);
    }

    @Override // com.google.common.collect.ImmutableCollection
    public final int m() {
        return this.f33723h.m();
    }

    @Override // com.google.common.collect.ImmutableCollection
    public final int n() {
        return this.f33723h.n();
    }

    @Override // com.google.common.collect.ImmutableCollection
    public final boolean o() {
        return this.f33723h.o();
    }

    @Override // com.google.common.collect.ImmutableCollection
    /* JADX INFO: renamed from: p */
    public final UnmodifiableIterator iterator() {
        return this.f33723h.listIterator(0);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.f33723h.size();
    }

    @Override // com.google.common.collect.ImmutableSortedSet, com.google.common.collect.ImmutableSet, com.google.common.collect.ImmutableCollection
    public Object writeReplace() {
        return super.writeReplace();
    }
}
