package com.google.common.collect;

import com.google.common.base.Preconditions;
import com.google.common.base.Predicate;
import com.google.common.base.Predicates;
import defpackage.b21;
import java.util.AbstractSet;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import java.util.SortedSet;

/* JADX INFO: loaded from: classes2.dex */
public abstract class Sets {

    /* JADX INFO: renamed from: com.google.common.collect.Sets$2, reason: invalid class name */
    class AnonymousClass2 extends SetView<Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final /* synthetic */ Set f33726b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ Set f33727c;

        /* JADX INFO: renamed from: com.google.common.collect.Sets$2$1, reason: invalid class name */
        class AnonymousClass1 extends AbstractIterator<Object> {
            public final Iterator d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            public final /* synthetic */ Set f33728e;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            public final /* synthetic */ Set f33729f;

            public AnonymousClass1(Set set, Set set2) {
                this.f33728e = set;
                this.f33729f = set2;
                this.d = set.iterator();
            }

            @Override // com.google.common.collect.AbstractIterator
            public final Object a() {
                Object next;
                do {
                    Iterator it = this.d;
                    if (!it.hasNext()) {
                        this.f33512b = AbstractIterator.State.DONE;
                        return null;
                    }
                    next = it.next();
                } while (!this.f33729f.contains(next));
                return next;
            }
        }

        public AnonymousClass2(Set set, Set set2) {
            this.f33726b = set;
            this.f33727c = set2;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean contains(Object obj) {
            return this.f33726b.contains(obj) && this.f33727c.contains(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean containsAll(Collection collection) {
            return this.f33726b.containsAll(collection) && this.f33727c.containsAll(collection);
        }

        @Override // com.google.common.collect.Sets.SetView
        public final int f() {
            Set set = this.f33726b;
            int iF = set instanceof SetView ? ((SetView) set).f() : set.size();
            Set set2 = this.f33727c;
            return Math.min(iF, set2 instanceof SetView ? ((SetView) set2).f() : set2.size());
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean isEmpty() {
            return Collections.disjoint(this.f33727c, this.f33726b);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public final Iterator iterator() {
            return new AnonymousClass1(this.f33726b, this.f33727c);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final int size() {
            Iterator it = this.f33726b.iterator();
            int i2 = 0;
            while (it.hasNext()) {
                if (this.f33727c.contains(it.next())) {
                    i2++;
                }
            }
            return i2;
        }
    }

    public static class FilteredSet<E> extends Collections2$FilteredCollection<E> implements Set<E> {
        @Override // java.util.Collection, java.util.Set
        public final boolean equals(Object obj) {
            return Sets.a(this, obj);
        }

        @Override // java.util.Collection, java.util.Set
        public final int hashCode() {
            return Sets.c(this);
        }
    }

    public static class FilteredSortedSet<E> extends FilteredSet<E> implements SortedSet<E> {
        @Override // java.util.SortedSet
        public final Comparator comparator() {
            return ((SortedSet) this.f33544b).comparator();
        }

        @Override // java.util.SortedSet
        public final Object first() {
            Iterator<E> it = this.f33544b.iterator();
            it.getClass();
            Predicate predicate = this.f33545c;
            predicate.getClass();
            while (it.hasNext()) {
                E next = it.next();
                if (predicate.apply(next)) {
                    return next;
                }
            }
            b21.x();
            return null;
        }

        @Override // java.util.SortedSet
        public final SortedSet headSet(Object obj) {
            return new FilteredSortedSet(((SortedSet) this.f33544b).headSet(obj), this.f33545c);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v2, types: [java.util.SortedSet] */
        /* JADX WARN: Type inference failed for: r0v4 */
        /* JADX WARN: Type inference failed for: r0v5 */
        @Override // java.util.SortedSet
        public final Object last() {
            ?? HeadSet = (SortedSet) this.f33544b;
            while (true) {
                Object objLast = HeadSet.last();
                if (this.f33545c.apply(objLast)) {
                    return objLast;
                }
                HeadSet = HeadSet.headSet(objLast);
            }
        }

        @Override // java.util.SortedSet
        public final SortedSet subSet(Object obj, Object obj2) {
            return new FilteredSortedSet(((SortedSet) this.f33544b).subSet(obj, obj2), this.f33545c);
        }

        @Override // java.util.SortedSet
        public final SortedSet tailSet(Object obj) {
            return new FilteredSortedSet(((SortedSet) this.f33544b).tailSet(obj), this.f33545c);
        }
    }

    public static abstract class ImprovedAbstractSet<E> extends AbstractSet<E> {
        @Override // java.util.AbstractSet, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean removeAll(Collection collection) {
            return Sets.f(this, collection);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean retainAll(Collection collection) {
            collection.getClass();
            return super.retainAll(collection);
        }
    }

    public static abstract class SetView<E> extends AbstractSet<E> {
        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean add(Object obj) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean addAll(Collection collection) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final void clear() {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.AbstractSet, java.util.Collection, java.util.Set
        public final boolean equals(Object obj) {
            if (obj != this) {
                if (obj instanceof Set) {
                    Set set = (Set) obj;
                    boolean z = set instanceof SetView;
                    int iF = z ? ((SetView) set).f() : set.size();
                    if (iF >= 0) {
                        int size = z ? 0 : set.size();
                        if (f() >= size) {
                            AnonymousClass2 anonymousClass2 = (AnonymousClass2) this;
                            AnonymousClass2.AnonymousClass1 anonymousClass1 = new AnonymousClass2.AnonymousClass1(anonymousClass2.f33726b, anonymousClass2.f33727c);
                            int i2 = 0;
                            while (anonymousClass1.hasNext()) {
                                try {
                                    if (set.contains(anonymousClass1.next())) {
                                        i2++;
                                    }
                                } catch (ClassCastException | NullPointerException unused) {
                                }
                            }
                            if (i2 != iF) {
                                if (i2 >= size) {
                                    Iterator<E> it = set.iterator();
                                    int i3 = 0;
                                    while (it.hasNext()) {
                                        it.next();
                                        i3++;
                                        if (i3 > i2) {
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
                return false;
            }
            return true;
        }

        public abstract int f();

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean remove(Object obj) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.AbstractSet, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean removeAll(Collection collection) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean retainAll(Collection collection) {
            throw new UnsupportedOperationException();
        }
    }

    public static boolean a(Set set, Object obj) {
        if (set == obj) {
            return true;
        }
        if (!(obj instanceof Set)) {
            return false;
        }
        Set set2 = (Set) obj;
        try {
            return set.size() == set2.size() && set.containsAll(set2);
        } catch (ClassCastException | NullPointerException unused) {
            return false;
        }
    }

    public static Set b(Set set, Predicate predicate) {
        if (set instanceof SortedSet) {
            Collection collection = (SortedSet) set;
            if (!(collection instanceof FilteredSet)) {
                return new FilteredSortedSet(collection, predicate);
            }
            FilteredSet filteredSet = (FilteredSet) collection;
            return new FilteredSortedSet((SortedSet) filteredSet.f33544b, Predicates.b(filteredSet.f33545c, predicate));
        }
        if (!(set instanceof FilteredSet)) {
            set.getClass();
            return new FilteredSet(set, predicate);
        }
        FilteredSet filteredSet2 = (FilteredSet) set;
        return new FilteredSet((Set) filteredSet2.f33544b, Predicates.b(filteredSet2.f33545c, predicate));
    }

    public static int c(Set set) {
        Iterator it = set.iterator();
        int i2 = 0;
        while (it.hasNext()) {
            Object next = it.next();
            i2 = ~(~(i2 + (next != null ? next.hashCode() : 0)));
        }
        return i2;
    }

    public static SetView d(Set set, ImmutableSet immutableSet) {
        Preconditions.m(set, "set1");
        Preconditions.m(immutableSet, "set2");
        return new AnonymousClass2(set, immutableSet);
    }

    public static HashSet e(int i2) {
        int iCeil;
        if (i2 < 3) {
            CollectPreconditions.b(i2, "expectedSize");
            iCeil = i2 + 1;
        } else {
            iCeil = i2 < 1073741824 ? (int) Math.ceil(((double) i2) / 0.75d) : Integer.MAX_VALUE;
        }
        return new HashSet(iCeil);
    }

    public static boolean f(Set set, Collection collection) {
        collection.getClass();
        if (collection instanceof Multiset) {
            collection = ((Multiset) collection).j0();
        }
        boolean zRemove = false;
        if (!(collection instanceof Set) || collection.size() <= set.size()) {
            Iterator it = collection.iterator();
            while (it.hasNext()) {
                zRemove |= set.remove(it.next());
            }
            return zRemove;
        }
        Iterator it2 = set.iterator();
        while (it2.hasNext()) {
            if (collection.contains(it2.next())) {
                it2.remove();
                zRemove = true;
            }
        }
        return zRemove;
    }
}
