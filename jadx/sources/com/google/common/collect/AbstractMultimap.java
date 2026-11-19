package com.google.common.collect;

import java.util.AbstractCollection;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractMultimap<K, V> implements Multimap<K, V> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public transient Collection f33536b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public transient Set f33537c;
    public transient Collection d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public transient Map f33538e;

    public class Entries extends Multimaps.Entries<K, V> {
        public Entries() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public final Iterator iterator() {
            return AbstractMultimap.this.j();
        }
    }

    public final class EntrySet extends AbstractMultimap<K, V>.Entries implements Set<Map.Entry<K, V>> {
        @Override // java.util.Collection, java.util.Set
        public final boolean equals(Object obj) {
            return Sets.a(this, obj);
        }

        @Override // java.util.Collection, java.util.Set
        public final int hashCode() {
            return Sets.c(this);
        }
    }

    public final class Values extends AbstractCollection<V> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final /* synthetic */ AbstractMapBasedMultimap f33540b;

        public Values(AbstractMapBasedMultimap abstractMapBasedMultimap) {
            this.f33540b = abstractMapBasedMultimap;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final void clear() {
            this.f33540b.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final boolean contains(Object obj) {
            return this.f33540b.b(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public final Iterator iterator() {
            return new AbstractMapBasedMultimap.AnonymousClass1();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final int size() {
            return this.f33540b.size();
        }
    }

    public boolean b(Object obj) {
        Iterator<V> it = h().values().iterator();
        while (it.hasNext()) {
            if (((Collection) it.next()).contains(obj)) {
                return true;
            }
        }
        return false;
    }

    public abstract Map c();

    public abstract Collection d();

    public abstract Set e();

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof Multimap) {
            return h().equals(((Multimap) obj).h());
        }
        return false;
    }

    @Override // com.google.common.collect.Multimap
    public Collection f() {
        Collection collection = this.f33536b;
        if (collection != null) {
            return collection;
        }
        Collection collectionD = d();
        this.f33536b = collectionD;
        return collectionD;
    }

    public abstract Collection g();

    @Override // com.google.common.collect.Multimap
    public Map h() {
        Map map = this.f33538e;
        if (map != null) {
            return map;
        }
        Map mapC = c();
        this.f33538e = mapC;
        return mapC;
    }

    public int hashCode() {
        return h().hashCode();
    }

    @Override // com.google.common.collect.Multimap
    public boolean i(Object obj, Object obj2) {
        Collection collection = (Collection) h().get(obj);
        return collection != null && collection.contains(obj2);
    }

    public abstract Iterator j();

    public boolean k() {
        return size() == 0;
    }

    @Override // com.google.common.collect.Multimap
    public Set keySet() {
        Set set = this.f33537c;
        if (set != null) {
            return set;
        }
        Set setE = e();
        this.f33537c = setE;
        return setE;
    }

    @Override // com.google.common.collect.Multimap
    public boolean remove(Object obj, Object obj2) {
        Collection collection = (Collection) h().get(obj);
        return collection != null && collection.remove(obj2);
    }

    public String toString() {
        return h().toString();
    }

    @Override // com.google.common.collect.Multimap
    public Collection values() {
        Collection collection = this.d;
        if (collection != null) {
            return collection;
        }
        Collection collectionG = g();
        this.d = collectionG;
        return collectionG;
    }
}
