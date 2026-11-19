package com.perfectcorp.thirdparty.com.google.common.collect;

import java.util.AbstractCollection;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes3.dex */
public abstract class j<K, V> implements Multimap<K, V> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public transient Collection f42316b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public transient Set f42317c;
    public transient Collection d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public transient Map f42318e;

    public class a extends Multimaps.a<K, V> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final /* synthetic */ e f42319b;

        public a(e eVar) {
            this.f42319b = eVar;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public final Iterator iterator() {
            return new g();
        }
    }

    public class b extends j<K, V>.a implements Set<Map.Entry<K, V>> {
        @Override // java.util.Collection, java.util.Set
        public final boolean equals(Object obj) {
            return Sets.b(this, obj);
        }

        @Override // java.util.Collection, java.util.Set
        public final int hashCode() {
            return Sets.a(this);
        }
    }

    public class c extends AbstractCollection<V> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final /* synthetic */ e f42320b;

        public c(e eVar) {
            this.f42320b = eVar;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final void clear() {
            this.f42320b.d();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final boolean contains(Object obj) {
            return this.f42320b.b(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public final Iterator iterator() {
            return new f();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final int size() {
            return this.f42320b.size();
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

    @Override // com.perfectcorp.thirdparty.com.google.common.collect.Multimap
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof Multimap) {
            return h().equals(((Multimap) obj).h());
        }
        return false;
    }

    @Override // com.perfectcorp.thirdparty.com.google.common.collect.Multimap
    public int hashCode() {
        return h().hashCode();
    }

    @Override // com.perfectcorp.thirdparty.com.google.common.collect.Multimap
    public boolean i(Object obj, Object obj2) {
        Collection collection = (Collection) h().get(obj);
        return collection != null && collection.contains(obj2);
    }

    @Override // com.perfectcorp.thirdparty.com.google.common.collect.Multimap
    public boolean n(Iterable iterable, Object obj) {
        iterable.getClass();
        if (iterable instanceof Collection) {
            Collection collection = (Collection) iterable;
            return !collection.isEmpty() && get(obj).addAll(collection);
        }
        Iterator it = iterable.iterator();
        return it.hasNext() && at.b(get(obj), it);
    }

    public String toString() {
        return h().toString();
    }
}
