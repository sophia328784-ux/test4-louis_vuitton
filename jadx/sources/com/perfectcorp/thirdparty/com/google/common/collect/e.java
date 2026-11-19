package com.perfectcorp.thirdparty.com.google.common.collect;

import com.perfectcorp.thirdparty.com.google.common.base.Preconditions;
import defpackage.md;
import defpackage.v7;
import java.io.Serializable;
import java.util.AbstractCollection;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.RandomAccess;
import java.util.Set;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes3.dex */
public abstract class e<K, V> extends j<K, V> implements Serializable {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final transient Map f42297f;
    public transient int g;

    public class a extends Maps$g<K, Collection<V>> {
        public final transient Map d;

        /* JADX INFO: renamed from: com.perfectcorp.thirdparty.com.google.common.collect.e$a$a, reason: collision with other inner class name */
        public class C0207a extends Maps$b<K, Collection<V>> {
            public C0207a() {
            }

            @Override // com.perfectcorp.thirdparty.com.google.common.collect.Maps$b, java.util.AbstractCollection, java.util.Collection, java.util.Set
            public final boolean contains(Object obj) {
                Set<Map.Entry<K, V>> setEntrySet = a.this.d.entrySet();
                setEntrySet.getClass();
                try {
                    return setEntrySet.contains(obj);
                } catch (ClassCastException | NullPointerException unused) {
                    return false;
                }
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
            public final Iterator iterator() {
                return a.this.new b();
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public final boolean remove(Object obj) {
                Object objRemove;
                if (!contains(obj)) {
                    return false;
                }
                e eVar = e.this;
                Object key = ((Map.Entry) obj).getKey();
                Map map = eVar.f42297f;
                map.getClass();
                try {
                    objRemove = ((q) map).remove(key);
                } catch (ClassCastException | NullPointerException unused) {
                    objRemove = null;
                }
                Collection collection = (Collection) objRemove;
                if (collection == null) {
                    return true;
                }
                int size = collection.size();
                collection.clear();
                eVar.g -= size;
                return true;
            }
        }

        public class b implements Iterator<Map.Entry<K, Collection<V>>> {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final Iterator f42300b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public Collection f42301c;

            public b() {
                this.f42300b = a.this.d.entrySet().iterator();
            }

            @Override // java.util.Iterator
            public final boolean hasNext() {
                return this.f42300b.hasNext();
            }

            @Override // java.util.Iterator
            public final Object next() {
                Map.Entry entry = (Map.Entry) this.f42300b.next();
                this.f42301c = (Collection) entry.getValue();
                Object key = entry.getKey();
                Collection collectionC = e.this.c(key, (Collection) entry.getValue());
                aj ajVar = new aj();
                ajVar.f42231b = key;
                ajVar.f42232c = collectionC;
                return ajVar;
            }

            @Override // java.util.Iterator
            public final void remove() {
                Preconditions.h("no calls to next() since the last call to remove()", this.f42301c != null);
                this.f42300b.remove();
                e.this.g -= this.f42301c.size();
                this.f42301c.clear();
                this.f42301c = null;
            }
        }

        public a(Map map) {
            this.d = map;
        }

        @Override // java.util.AbstractMap, java.util.Map
        public final void clear() {
            e eVar = e.this;
            if (this.d == eVar.f42297f) {
                eVar.d();
                return;
            }
            b bVar = new b();
            while (bVar.hasNext()) {
                bVar.next();
                bVar.remove();
            }
        }

        @Override // java.util.AbstractMap, java.util.Map
        public final boolean containsKey(Object obj) {
            Map map = this.d;
            map.getClass();
            try {
                return map.containsKey(obj);
            } catch (ClassCastException | NullPointerException unused) {
                return false;
            }
        }

        @Override // java.util.AbstractMap, java.util.Map
        public final boolean equals(Object obj) {
            return this == obj || this.d.equals(obj);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public final Object get(Object obj) {
            Object obj2;
            Map map = this.d;
            map.getClass();
            try {
                obj2 = map.get(obj);
            } catch (ClassCastException | NullPointerException unused) {
                obj2 = null;
            }
            Collection collection = (Collection) obj2;
            if (collection == null) {
                return null;
            }
            return e.this.c(obj, collection);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public final int hashCode() {
            return this.d.hashCode();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public final Set keySet() {
            return e.this.keySet();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public final /* synthetic */ Object remove(Object obj) {
            Collection collection = (Collection) this.d.remove(obj);
            if (collection == null) {
                return null;
            }
            e eVar = e.this;
            Collection collectionE = eVar.e();
            collectionE.addAll(collection);
            eVar.g -= collection.size();
            collection.clear();
            return collectionE;
        }

        @Override // java.util.AbstractMap, java.util.Map
        public final int size() {
            return this.d.size();
        }

        @Override // java.util.AbstractMap
        public final String toString() {
            return this.d.toString();
        }
    }

    public abstract class b<T> implements Iterator<T> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Iterator f42302b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public Object f42303c = null;
        public Collection d = null;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public Iterator f42304e = at.c.f42249a;

        public b() {
            this.f42302b = ((q) e.this.f42297f).entrySet().iterator();
        }

        public abstract Object a(Object obj, Object obj2);

        @Override // java.util.Iterator
        public final boolean hasNext() {
            return this.f42302b.hasNext() || this.f42304e.hasNext();
        }

        @Override // java.util.Iterator
        public final Object next() {
            if (!this.f42304e.hasNext()) {
                Map.Entry entry = (Map.Entry) this.f42302b.next();
                this.f42303c = entry.getKey();
                Collection collection = (Collection) entry.getValue();
                this.d = collection;
                this.f42304e = collection.iterator();
            }
            return a(this.f42303c, this.f42304e.next());
        }

        @Override // java.util.Iterator
        public final void remove() {
            this.f42304e.remove();
            if (this.d.isEmpty()) {
                this.f42302b.remove();
            }
            e.this.g--;
        }
    }

    public class c extends Maps$e<K, Collection<V>> {
        public c(Map map) {
            super(map);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final void clear() {
            Iterator it = iterator();
            while (true) {
                h hVar = (h) it;
                if (!hVar.hasNext()) {
                    return;
                }
                hVar.next();
                hVar.remove();
            }
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean containsAll(Collection collection) {
            return this.f42216b.keySet().containsAll(collection);
        }

        @Override // java.util.AbstractSet, java.util.Collection, java.util.Set
        public final boolean equals(Object obj) {
            return this == obj || this.f42216b.keySet().equals(obj);
        }

        @Override // java.util.AbstractSet, java.util.Collection, java.util.Set
        public final int hashCode() {
            return this.f42216b.keySet().hashCode();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public final Iterator iterator() {
            Iterator<Map.Entry<K, V>> it = this.f42216b.entrySet().iterator();
            h hVar = new h();
            hVar.d = this;
            hVar.f42315c = it;
            return hVar;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean remove(Object obj) {
            int size;
            Collection collection = (Collection) this.f42216b.remove(obj);
            if (collection != null) {
                size = collection.size();
                collection.clear();
                e.this.g -= size;
            } else {
                size = 0;
            }
            return size > 0;
        }
    }

    public class d extends e<K, V>.f implements RandomAccess {
    }

    public class g extends e<K, V>.C0208e implements Set<V> {
        public final /* synthetic */ l g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public g(l lVar, Object obj, Set set) {
            super(obj, set, null);
            this.g = lVar;
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.collect.e.C0208e, java.util.AbstractCollection, java.util.Collection
        public final boolean removeAll(Collection collection) {
            if (collection.isEmpty()) {
                return false;
            }
            int size = size();
            boolean zC = Sets.c((Set) this.f42308c, collection);
            if (zC) {
                this.g.g += this.f42308c.size() - size;
                h();
            }
            return zC;
        }
    }

    public e(Map map) {
        Preconditions.f(((q) map).isEmpty());
        this.f42297f = map;
    }

    @Override // com.perfectcorp.thirdparty.com.google.common.collect.Multimap
    public Collection a(Object obj) {
        Collection collection = (Collection) ((q) this.f42297f).remove(obj);
        if (collection == null) {
            return g();
        }
        Collection collectionE = e();
        collectionE.addAll(collection);
        this.g -= collection.size();
        collection.clear();
        return d(collectionE);
    }

    public abstract Collection c(Object obj, Collection collection);

    public abstract Collection d(Collection collection);

    @Override // com.perfectcorp.thirdparty.com.google.common.collect.Multimap
    public void d() {
        Map map = this.f42297f;
        Iterator<V> it = map.values().iterator();
        while (it.hasNext()) {
            ((Collection) it.next()).clear();
        }
        map.clear();
        this.g = 0;
    }

    public abstract Collection e();

    @Override // com.perfectcorp.thirdparty.com.google.common.collect.Multimap
    public Collection f() {
        Collection bVar = this.f42316b;
        if (bVar == null) {
            bVar = this instanceof SetMultimap ? new j.b(this) : new j.a(this);
            this.f42316b = bVar;
        }
        return bVar;
    }

    public abstract Collection g();

    public final Set j() {
        return new c(this.f42297f);
    }

    public final Map l() {
        return new a(this.f42297f);
    }

    @Override // com.perfectcorp.thirdparty.com.google.common.collect.Multimap
    public boolean put(Object obj, Object obj2) {
        q qVar = (q) this.f42297f;
        Collection collection = (Collection) qVar.get(obj);
        if (collection != null) {
            if (!collection.add(obj2)) {
                return false;
            }
            this.g++;
            return true;
        }
        Collection collectionE = e();
        if (!collectionE.add(obj2)) {
            md.h("New Collection violated the Collection spec");
            return false;
        }
        this.g++;
        qVar.put(obj, collectionE);
        return true;
    }

    @Override // com.perfectcorp.thirdparty.com.google.common.collect.Multimap
    public Collection values() {
        Collection collection = this.d;
        if (collection != null) {
            return collection;
        }
        j.c cVar = new j.c(this);
        this.d = cVar;
        return cVar;
    }

    public class f extends e<K, V>.C0208e implements List<V> {
        public f(Object obj, List list, C0208e c0208e) {
            super(obj, list, c0208e);
        }

        @Override // java.util.List
        public final void add(int i2, Object obj) {
            f();
            boolean zIsEmpty = this.f42308c.isEmpty();
            ((List) this.f42308c).add(i2, obj);
            e.this.g++;
            if (zIsEmpty) {
                i();
            }
        }

        @Override // java.util.List
        public final boolean addAll(int i2, Collection collection) {
            if (collection.isEmpty()) {
                return false;
            }
            int size = size();
            boolean zAddAll = ((List) this.f42308c).addAll(i2, collection);
            if (zAddAll) {
                e.this.g += this.f42308c.size() - size;
                if (size == 0) {
                    i();
                }
            }
            return zAddAll;
        }

        @Override // java.util.List
        public final Object get(int i2) {
            f();
            return ((List) this.f42308c).get(i2);
        }

        @Override // java.util.List
        public final int indexOf(Object obj) {
            f();
            return ((List) this.f42308c).indexOf(obj);
        }

        @Override // java.util.List
        public final int lastIndexOf(Object obj) {
            f();
            return ((List) this.f42308c).lastIndexOf(obj);
        }

        @Override // java.util.List
        public final ListIterator listIterator() {
            f();
            return new a();
        }

        @Override // java.util.List
        public final Object remove(int i2) {
            f();
            Object objRemove = ((List) this.f42308c).remove(i2);
            e.this.g--;
            h();
            return objRemove;
        }

        @Override // java.util.List
        public final Object set(int i2, Object obj) {
            f();
            return ((List) this.f42308c).set(i2, obj);
        }

        @Override // java.util.List
        public final List subList(int i2, int i3) {
            f();
            List listSubList = ((List) this.f42308c).subList(i2, i3);
            C0208e c0208e = this.d;
            if (c0208e == null) {
                c0208e = this;
            }
            boolean z = listSubList instanceof RandomAccess;
            e eVar = e.this;
            Object obj = this.f42307b;
            return z ? new d(obj, listSubList, c0208e) : new f(obj, listSubList, c0208e);
        }

        @Override // java.util.List
        public final ListIterator listIterator(int i2) {
            f();
            return new a(i2);
        }

        public class a extends e<K, V>.C0208e.a implements ListIterator<V> {
            public a(int i2) {
                super(f.this, ((List) f.this.f42308c).listIterator(i2));
            }

            @Override // java.util.ListIterator
            public final void add(Object obj) {
                f fVar = f.this;
                boolean zIsEmpty = fVar.isEmpty();
                b().add(obj);
                e.this.g++;
                if (zIsEmpty) {
                    fVar.i();
                }
            }

            public final ListIterator b() {
                a();
                return (ListIterator) this.f42311b;
            }

            @Override // java.util.ListIterator
            public final boolean hasPrevious() {
                return b().hasPrevious();
            }

            @Override // java.util.ListIterator
            public final int nextIndex() {
                return b().nextIndex();
            }

            @Override // java.util.ListIterator
            public final Object previous() {
                return b().previous();
            }

            @Override // java.util.ListIterator
            public final int previousIndex() {
                return b().previousIndex();
            }

            @Override // java.util.ListIterator
            public final void set(Object obj) {
                b().set(obj);
            }

            public a() {
                super();
            }
        }
    }

    /* JADX INFO: renamed from: com.perfectcorp.thirdparty.com.google.common.collect.e$e, reason: collision with other inner class name */
    public class C0208e extends AbstractCollection<V> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Object f42307b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public Collection f42308c;
        public final C0208e d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final Collection f42309e;

        public C0208e(Object obj, Collection collection, C0208e c0208e) {
            this.f42307b = obj;
            this.f42308c = collection;
            this.d = c0208e;
            this.f42309e = c0208e == null ? null : c0208e.f42308c;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final boolean add(Object obj) {
            f();
            boolean zIsEmpty = this.f42308c.isEmpty();
            boolean zAdd = this.f42308c.add(obj);
            if (zAdd) {
                e.this.g++;
                if (zIsEmpty) {
                    i();
                }
            }
            return zAdd;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final boolean addAll(Collection collection) {
            if (collection.isEmpty()) {
                return false;
            }
            int size = size();
            boolean zAddAll = this.f42308c.addAll(collection);
            if (zAddAll) {
                e.this.g += this.f42308c.size() - size;
                if (size == 0) {
                    i();
                }
            }
            return zAddAll;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final void clear() {
            int size = size();
            if (size == 0) {
                return;
            }
            this.f42308c.clear();
            e.this.g -= size;
            h();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final boolean contains(Object obj) {
            f();
            return this.f42308c.contains(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final boolean containsAll(Collection collection) {
            f();
            return this.f42308c.containsAll(collection);
        }

        @Override // java.util.Collection
        public final boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            f();
            return this.f42308c.equals(obj);
        }

        public final void f() {
            C0208e c0208e = this.d;
            if (c0208e != null) {
                c0208e.f();
                if (c0208e.f42308c == this.f42309e) {
                    return;
                }
                v7.c();
                return;
            }
            if (this.f42308c.isEmpty()) {
                Collection collection = (Collection) ((q) e.this.f42297f).get(this.f42307b);
                if (collection != null) {
                    this.f42308c = collection;
                }
            }
        }

        public final void h() {
            C0208e c0208e = this.d;
            if (c0208e != null) {
                c0208e.h();
            } else if (this.f42308c.isEmpty()) {
                ((q) e.this.f42297f).remove(this.f42307b);
            }
        }

        @Override // java.util.Collection
        public final int hashCode() {
            f();
            return this.f42308c.hashCode();
        }

        public final void i() {
            C0208e c0208e = this.d;
            if (c0208e != null) {
                c0208e.i();
                return;
            }
            Map map = e.this.f42297f;
            ((q) map).put(this.f42307b, this.f42308c);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public final Iterator iterator() {
            f();
            return new a();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final boolean remove(Object obj) {
            f();
            boolean zRemove = this.f42308c.remove(obj);
            if (zRemove) {
                e.this.g--;
                h();
            }
            return zRemove;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean removeAll(Collection collection) {
            if (collection.isEmpty()) {
                return false;
            }
            int size = size();
            boolean zRemoveAll = this.f42308c.removeAll(collection);
            if (zRemoveAll) {
                e.this.g += this.f42308c.size() - size;
                h();
            }
            return zRemoveAll;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final boolean retainAll(Collection collection) {
            collection.getClass();
            int size = size();
            boolean zRetainAll = this.f42308c.retainAll(collection);
            if (zRetainAll) {
                e.this.g += this.f42308c.size() - size;
                h();
            }
            return zRetainAll;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final int size() {
            f();
            return this.f42308c.size();
        }

        @Override // java.util.AbstractCollection
        public final String toString() {
            f();
            return this.f42308c.toString();
        }

        /* JADX INFO: renamed from: com.perfectcorp.thirdparty.com.google.common.collect.e$e$a */
        public class a implements Iterator<V> {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final Iterator f42311b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final Collection f42312c;

            public a() {
                Collection collection = C0208e.this.f42308c;
                this.f42312c = collection;
                this.f42311b = collection instanceof List ? ((List) collection).listIterator() : collection.iterator();
            }

            public final void a() {
                C0208e c0208e = C0208e.this;
                c0208e.f();
                if (c0208e.f42308c == this.f42312c) {
                    return;
                }
                v7.c();
            }

            @Override // java.util.Iterator
            public final boolean hasNext() {
                a();
                return this.f42311b.hasNext();
            }

            @Override // java.util.Iterator
            public final Object next() {
                a();
                return this.f42311b.next();
            }

            @Override // java.util.Iterator
            public final void remove() {
                this.f42311b.remove();
                C0208e c0208e = C0208e.this;
                e.this.g--;
                c0208e.h();
            }

            public a(f fVar, ListIterator listIterator) {
                C0208e.this = fVar;
                this.f42312c = fVar.f42308c;
                this.f42311b = listIterator;
            }
        }
    }
}
