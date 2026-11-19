package com.perfectcorp.thirdparty.com.google.common.collect;

import com.perfectcorp.thirdparty.com.google.common.base.Predicate;
import com.perfectcorp.thirdparty.com.google.common.base.Predicates;
import defpackage.b21;
import defpackage.f7;
import java.util.AbstractSet;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import java.util.SortedSet;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes3.dex */
public abstract class Sets {

    public static class a<E> extends Collections2.a<E> implements Set<E> {
        @Override // java.util.Collection, java.util.Set
        public final boolean equals(Object obj) {
            return Sets.b(this, obj);
        }

        @Override // java.util.Collection, java.util.Set
        public final int hashCode() {
            return Sets.a(this);
        }
    }

    public static class b<E> extends a<E> implements SortedSet<E> {
        @Override // java.util.SortedSet
        public final Comparator comparator() {
            return ((SortedSet) this.f42194b).comparator();
        }

        @Override // java.util.SortedSet
        public final Object first() {
            Iterator<E> it = this.f42194b.iterator();
            it.getClass();
            Predicate predicate = this.f42195c;
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
            return new b(((SortedSet) this.f42194b).headSet(obj), this.f42195c);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v2, types: [java.util.SortedSet] */
        /* JADX WARN: Type inference failed for: r0v4 */
        /* JADX WARN: Type inference failed for: r0v5 */
        @Override // java.util.SortedSet
        public final Object last() {
            ?? HeadSet = (SortedSet) this.f42194b;
            while (true) {
                Object objLast = HeadSet.last();
                if (this.f42195c.apply(objLast)) {
                    return objLast;
                }
                HeadSet = HeadSet.headSet(objLast);
            }
        }

        @Override // java.util.SortedSet
        public final SortedSet subSet(Object obj, Object obj2) {
            return new b(((SortedSet) this.f42194b).subSet(obj, obj2), this.f42195c);
        }

        @Override // java.util.SortedSet
        public final SortedSet tailSet(Object obj) {
            return new b(((SortedSet) this.f42194b).tailSet(obj), this.f42195c);
        }
    }

    public static abstract class c<E> extends AbstractSet<E> {
        @Override // java.util.AbstractSet, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean removeAll(Collection collection) {
            return Sets.c(this, collection);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean retainAll(Collection collection) {
            collection.getClass();
            return super.retainAll(collection);
        }
    }

    public static int a(Set set) {
        Iterator it = set.iterator();
        int i2 = 0;
        while (it.hasNext()) {
            Object next = it.next();
            i2 = ~(~(i2 + (next != null ? next.hashCode() : 0)));
        }
        return i2;
    }

    public static boolean b(Set set, Object obj) {
        if (set == obj) {
            return true;
        }
        if (obj instanceof Set) {
            Set set2 = (Set) obj;
            try {
                if (set.size() == set2.size() && set.containsAll(set2)) {
                    return true;
                }
            } catch (ClassCastException | NullPointerException unused) {
            }
        }
        return false;
    }

    public static boolean c(Set set, Collection collection) {
        collection.getClass();
        if (collection instanceof bh) {
            collection = ((bh) collection).a();
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

    /* JADX WARN: Multi-variable type inference failed */
    public static Set d(HashSet hashSet, f7 f7Var) {
        if (!(hashSet instanceof SortedSet)) {
            return new a(hashSet, f7Var);
        }
        Collection collection = (SortedSet) hashSet;
        if (!(collection instanceof a)) {
            return new b(collection, f7Var);
        }
        a aVar = (a) collection;
        return new b((SortedSet) aVar.f42194b, Predicates.a(aVar.f42195c, f7Var));
    }

    public static Set e() {
        return Collections.newSetFromMap(new ConcurrentHashMap());
    }
}
