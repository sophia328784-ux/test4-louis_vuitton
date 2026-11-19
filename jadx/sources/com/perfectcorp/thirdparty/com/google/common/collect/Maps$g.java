package com.perfectcorp.thirdparty.com.google.common.collect;

import com.perfectcorp.thirdparty.com.google.common.collect.e.a.C0207a;
import java.util.AbstractCollection;
import java.util.AbstractMap;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes3.dex */
abstract class Maps$g<K, V> extends AbstractMap<K, V> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public transient Set f42218b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public transient Collection f42219c;

    @Override // java.util.AbstractMap, java.util.Map
    public final Set entrySet() {
        Set set = this.f42218b;
        if (set != null) {
            return set;
        }
        e.a.C0207a c0207a = ((e.a) this).new C0207a();
        this.f42218b = c0207a;
        return c0207a;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Collection values() {
        Collection collection = this.f42219c;
        if (collection != null) {
            return collection;
        }
        AbstractCollection<V> abstractCollection = new AbstractCollection<V>(this) { // from class: com.perfectcorp.thirdparty.com.google.common.collect.Maps$f

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final Map f42217b;

            {
                this.f42217b = this;
            }

            @Override // java.util.AbstractCollection, java.util.Collection
            public final void clear() {
                this.f42217b.clear();
            }

            @Override // java.util.AbstractCollection, java.util.Collection
            public final boolean contains(Object obj) {
                return this.f42217b.containsValue(obj);
            }

            @Override // java.util.AbstractCollection, java.util.Collection
            public final boolean isEmpty() {
                return this.f42217b.isEmpty();
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
            public final Iterator iterator() {
                return new bd(this.f42217b.entrySet().iterator());
            }

            @Override // java.util.AbstractCollection, java.util.Collection
            public final boolean remove(Object obj) {
                try {
                    return super.remove(obj);
                } catch (UnsupportedOperationException unused) {
                    Map map = this.f42217b;
                    for (Map.Entry<K, V> entry : map.entrySet()) {
                        if (com.perfectcorp.thirdparty.com.google.common.base.g.a.a(obj, entry.getValue())) {
                            map.remove(entry.getKey());
                            return true;
                        }
                    }
                    return false;
                }
            }

            @Override // java.util.AbstractCollection, java.util.Collection
            public final boolean removeAll(Collection collection2) {
                try {
                    collection2.getClass();
                    return super.removeAll(collection2);
                } catch (UnsupportedOperationException unused) {
                    HashSet hashSet = new HashSet();
                    Map map = this.f42217b;
                    for (Map.Entry<K, V> entry : map.entrySet()) {
                        if (collection2.contains(entry.getValue())) {
                            hashSet.add(entry.getKey());
                        }
                    }
                    return map.keySet().removeAll(hashSet);
                }
            }

            @Override // java.util.AbstractCollection, java.util.Collection
            public final boolean retainAll(Collection collection2) {
                try {
                    collection2.getClass();
                    return super.retainAll(collection2);
                } catch (UnsupportedOperationException unused) {
                    HashSet hashSet = new HashSet();
                    Map map = this.f42217b;
                    for (Map.Entry<K, V> entry : map.entrySet()) {
                        if (collection2.contains(entry.getValue())) {
                            hashSet.add(entry.getKey());
                        }
                    }
                    return map.keySet().retainAll(hashSet);
                }
            }

            @Override // java.util.AbstractCollection, java.util.Collection
            public final int size() {
                return this.f42217b.size();
            }
        };
        this.f42219c = abstractCollection;
        return abstractCollection;
    }
}
