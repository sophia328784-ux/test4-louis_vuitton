package com.perfectcorp.thirdparty.com.google.common.collect;

import java.io.Serializable;
import java.lang.reflect.Array;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.RandomAccess;
import java.util.Set;
import java.util.SortedSet;

/* JADX INFO: loaded from: classes3.dex */
abstract class bs {

    public static class a<K, V> extends f<K, Collection<V>> {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public transient Set f42287e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public transient Collection f42288f;

        @Override // java.util.Map
        public final boolean containsValue(Object obj) {
            return values().contains(obj);
        }

        @Override // java.util.Map
        public final Set entrySet() {
            Set set;
            synchronized (this.f42292c) {
                try {
                    if (this.f42287e == null) {
                        this.f42287e = new b(((Map) this.f42291b).entrySet(), this.f42292c);
                    }
                    set = this.f42287e;
                } catch (Throwable th) {
                    throw th;
                }
            }
            return set;
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.collect.bs.f, java.util.Map
        public final Object get(Object obj) {
            Collection collectionA;
            synchronized (this.f42292c) {
                Collection collection = (Collection) super.get(obj);
                collectionA = collection == null ? null : bs.a(this.f42292c, collection);
            }
            return collectionA;
        }

        @Override // java.util.Map
        public final Collection values() {
            Collection collection;
            synchronized (this.f42292c) {
                try {
                    if (this.f42288f == null) {
                        this.f42288f = new c(((Map) this.f42291b).values(), this.f42292c);
                    }
                    collection = this.f42288f;
                } catch (Throwable th) {
                    throw th;
                }
            }
            return collection;
        }
    }

    public static class c<V> extends d<Collection<V>> {
        @Override // com.perfectcorp.thirdparty.com.google.common.collect.bs.d, java.util.Collection, java.lang.Iterable, java.util.Set
        public final Iterator iterator() {
            return new bv(this, super.iterator());
        }
    }

    public static class f<K, V> extends h implements Map<K, V> {
        public transient Set d;

        @Override // java.util.Map
        public final void clear() {
            synchronized (this.f42292c) {
                ((Map) this.f42291b).clear();
            }
        }

        @Override // java.util.Map
        public final boolean containsKey(Object obj) {
            boolean zContainsKey;
            synchronized (this.f42292c) {
                zContainsKey = ((Map) this.f42291b).containsKey(obj);
            }
            return zContainsKey;
        }

        @Override // java.util.Map
        public final boolean equals(Object obj) {
            boolean zEquals;
            if (obj == this) {
                return true;
            }
            synchronized (this.f42292c) {
                zEquals = ((Map) this.f42291b).equals(obj);
            }
            return zEquals;
        }

        public Object get(Object obj) {
            Object obj2;
            synchronized (this.f42292c) {
                obj2 = ((Map) this.f42291b).get(obj);
            }
            return obj2;
        }

        @Override // java.util.Map
        public final int hashCode() {
            int iHashCode;
            synchronized (this.f42292c) {
                iHashCode = ((Map) this.f42291b).hashCode();
            }
            return iHashCode;
        }

        @Override // java.util.Map
        public final boolean isEmpty() {
            boolean zIsEmpty;
            synchronized (this.f42292c) {
                zIsEmpty = ((Map) this.f42291b).isEmpty();
            }
            return zIsEmpty;
        }

        @Override // java.util.Map
        public final Set keySet() {
            Set set;
            synchronized (this.f42292c) {
                try {
                    if (this.d == null) {
                        this.d = new j(((Map) this.f42291b).keySet(), this.f42292c);
                    }
                    set = this.d;
                } catch (Throwable th) {
                    throw th;
                }
            }
            return set;
        }

        @Override // java.util.Map
        public final Object put(Object obj, Object obj2) {
            Object objPut;
            synchronized (this.f42292c) {
                objPut = ((Map) this.f42291b).put(obj, obj2);
            }
            return objPut;
        }

        @Override // java.util.Map
        public final void putAll(Map map) {
            synchronized (this.f42292c) {
                ((Map) this.f42291b).putAll(map);
            }
        }

        @Override // java.util.Map
        public final Object remove(Object obj) {
            Object objRemove;
            synchronized (this.f42292c) {
                objRemove = ((Map) this.f42291b).remove(obj);
            }
            return objRemove;
        }

        @Override // java.util.Map
        public final int size() {
            int size;
            synchronized (this.f42292c) {
                size = ((Map) this.f42291b).size();
            }
            return size;
        }
    }

    public static class g<K, V> extends h implements Multimap<K, V> {
        public transient Set d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public transient Collection f42289e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public transient Collection f42290f;
        public transient Map g;

        @Override // com.perfectcorp.thirdparty.com.google.common.collect.Multimap
        public final Collection a(Object obj) {
            throw null;
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.collect.Multimap
        public final void d() {
            synchronized (this.f42292c) {
                ((Multimap) this.f42291b).d();
            }
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.collect.Multimap
        public final boolean equals(Object obj) {
            boolean zEquals;
            if (obj == this) {
                return true;
            }
            synchronized (this.f42292c) {
                zEquals = ((Multimap) this.f42291b).equals(obj);
            }
            return zEquals;
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.collect.Multimap
        public final Collection f() {
            Collection collection;
            synchronized (this.f42292c) {
                try {
                    if (this.f42290f == null) {
                        this.f42290f = bs.a(this.f42292c, ((Multimap) this.f42291b).f());
                    }
                    collection = this.f42290f;
                } catch (Throwable th) {
                    throw th;
                }
            }
            return collection;
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.collect.Multimap, com.perfectcorp.thirdparty.com.google.common.collect.ListMultimap
        public final Collection get(Object obj) {
            Collection collectionA;
            synchronized (this.f42292c) {
                collectionA = bs.a(this.f42292c, ((Multimap) this.f42291b).get(obj));
            }
            return collectionA;
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.collect.Multimap
        public final Map h() {
            Map map;
            synchronized (this.f42292c) {
                try {
                    if (this.g == null) {
                        this.g = new a(((Multimap) this.f42291b).h(), this.f42292c);
                    }
                    map = this.g;
                } catch (Throwable th) {
                    throw th;
                }
            }
            return map;
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.collect.Multimap
        public final int hashCode() {
            int iHashCode;
            synchronized (this.f42292c) {
                iHashCode = ((Multimap) this.f42291b).hashCode();
            }
            return iHashCode;
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.collect.Multimap
        public final boolean i(Object obj, Object obj2) {
            throw null;
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.collect.Multimap
        public final Set keySet() {
            Set set;
            synchronized (this.f42292c) {
                try {
                    if (this.d == null) {
                        Set setKeySet = ((Multimap) this.f42291b).keySet();
                        Object obj = this.f42292c;
                        this.d = setKeySet instanceof SortedSet ? new k((SortedSet) setKeySet, obj) : new j(setKeySet, obj);
                    }
                    set = this.d;
                } catch (Throwable th) {
                    throw th;
                }
            }
            return set;
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.collect.Multimap
        public final boolean m(Object obj, Object obj2) {
            throw null;
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.collect.Multimap
        public final boolean n(Iterable iterable, Object obj) {
            boolean zN;
            synchronized (this.f42292c) {
                zN = ((Multimap) this.f42291b).n(iterable, obj);
            }
            return zN;
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.collect.Multimap
        public final boolean put(Object obj, Object obj2) {
            boolean zPut;
            synchronized (this.f42292c) {
                zPut = ((Multimap) this.f42291b).put(obj, obj2);
            }
            return zPut;
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.collect.Multimap
        public final int size() {
            int size;
            synchronized (this.f42292c) {
                size = ((Multimap) this.f42291b).size();
            }
            return size;
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.collect.Multimap
        public final Collection values() {
            Collection collection;
            synchronized (this.f42292c) {
                try {
                    if (this.f42289e == null) {
                        this.f42289e = new d(((Multimap) this.f42291b).values(), this.f42292c);
                    }
                    collection = this.f42289e;
                } catch (Throwable th) {
                    throw th;
                }
            }
            return collection;
        }
    }

    public static class h implements Serializable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Object f42291b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Object f42292c;

        public h(Object obj, Object obj2) {
            obj.getClass();
            this.f42291b = obj;
            this.f42292c = obj2 == null ? this : obj2;
        }

        public final String toString() {
            String string;
            synchronized (this.f42292c) {
                string = this.f42291b.toString();
            }
            return string;
        }
    }

    public static class i<E> extends e<E> implements RandomAccess {
    }

    public static class j<E> extends d<E> implements Set<E> {
        public boolean equals(Object obj) {
            boolean zEquals;
            if (obj == this) {
                return true;
            }
            synchronized (this.f42292c) {
                zEquals = o().equals(obj);
            }
            return zEquals;
        }

        @Override // java.util.Collection, java.util.Set
        public final int hashCode() {
            int iHashCode;
            synchronized (this.f42292c) {
                iHashCode = o().hashCode();
            }
            return iHashCode;
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.collect.bs.d
        /* JADX INFO: renamed from: p, reason: merged with bridge method [inline-methods] */
        public Set o() {
            return (Set) ((Collection) this.f42291b);
        }
    }

    public static class k<E> extends j<E> implements SortedSet<E> {
        @Override // java.util.SortedSet
        public final Comparator comparator() {
            Comparator<? super E> comparator;
            synchronized (this.f42292c) {
                comparator = ((SortedSet) super.o()).comparator();
            }
            return comparator;
        }

        @Override // java.util.SortedSet
        public final Object first() {
            Object objFirst;
            synchronized (this.f42292c) {
                objFirst = ((SortedSet) super.o()).first();
            }
            return objFirst;
        }

        @Override // java.util.SortedSet
        public final SortedSet headSet(Object obj) {
            k kVar;
            synchronized (this.f42292c) {
                kVar = new k(((SortedSet) super.o()).headSet(obj), this.f42292c);
            }
            return kVar;
        }

        @Override // java.util.SortedSet
        public final Object last() {
            Object objLast;
            synchronized (this.f42292c) {
                objLast = ((SortedSet) super.o()).last();
            }
            return objLast;
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.collect.bs.j, com.perfectcorp.thirdparty.com.google.common.collect.bs.d
        public final /* synthetic */ Collection o() {
            return (SortedSet) super.o();
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.collect.bs.j
        /* JADX INFO: renamed from: p */
        public final /* bridge */ /* synthetic */ Set o() {
            return (SortedSet) super.o();
        }

        @Override // java.util.SortedSet
        public final SortedSet subSet(Object obj, Object obj2) {
            k kVar;
            synchronized (this.f42292c) {
                kVar = new k(((SortedSet) super.o()).subSet(obj, obj2), this.f42292c);
            }
            return kVar;
        }

        @Override // java.util.SortedSet
        public final SortedSet tailSet(Object obj) {
            k kVar;
            synchronized (this.f42292c) {
                kVar = new k(((SortedSet) super.o()).tailSet(obj), this.f42292c);
            }
            return kVar;
        }
    }

    public static Collection a(Object obj, Collection collection) {
        if (collection instanceof SortedSet) {
            return new k((SortedSet) collection, obj);
        }
        if (collection instanceof Set) {
            return new j((Set) collection, obj);
        }
        if (!(collection instanceof List)) {
            return new d(collection, obj);
        }
        List list = (List) collection;
        return list instanceof RandomAccess ? new i(list, obj) : new e(list, obj);
    }

    public static class e<E> extends d<E> implements List<E> {
        @Override // java.util.List
        public final void add(int i2, Object obj) {
            synchronized (this.f42292c) {
                ((List) ((Collection) this.f42291b)).add(i2, obj);
            }
        }

        @Override // java.util.List
        public final boolean addAll(int i2, Collection collection) {
            boolean zAddAll;
            synchronized (this.f42292c) {
                zAddAll = ((List) ((Collection) this.f42291b)).addAll(i2, collection);
            }
            return zAddAll;
        }

        @Override // java.util.Collection, java.util.List
        public final boolean equals(Object obj) {
            boolean zEquals;
            if (obj == this) {
                return true;
            }
            synchronized (this.f42292c) {
                zEquals = ((List) ((Collection) this.f42291b)).equals(obj);
            }
            return zEquals;
        }

        @Override // java.util.List
        public final Object get(int i2) {
            Object obj;
            synchronized (this.f42292c) {
                obj = ((List) ((Collection) this.f42291b)).get(i2);
            }
            return obj;
        }

        @Override // java.util.Collection, java.util.List
        public final int hashCode() {
            int iHashCode;
            synchronized (this.f42292c) {
                iHashCode = ((List) ((Collection) this.f42291b)).hashCode();
            }
            return iHashCode;
        }

        @Override // java.util.List
        public final int indexOf(Object obj) {
            int iIndexOf;
            synchronized (this.f42292c) {
                iIndexOf = ((List) ((Collection) this.f42291b)).indexOf(obj);
            }
            return iIndexOf;
        }

        @Override // java.util.List
        public final int lastIndexOf(Object obj) {
            int iLastIndexOf;
            synchronized (this.f42292c) {
                iLastIndexOf = ((List) ((Collection) this.f42291b)).lastIndexOf(obj);
            }
            return iLastIndexOf;
        }

        @Override // java.util.List
        public final ListIterator listIterator() {
            return ((List) ((Collection) this.f42291b)).listIterator();
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.collect.bs.d
        public final Collection o() {
            return (List) ((Collection) this.f42291b);
        }

        @Override // java.util.List
        public final Object remove(int i2) {
            Object objRemove;
            synchronized (this.f42292c) {
                objRemove = ((List) ((Collection) this.f42291b)).remove(i2);
            }
            return objRemove;
        }

        @Override // java.util.List
        public final Object set(int i2, Object obj) {
            Object obj2;
            synchronized (this.f42292c) {
                obj2 = ((List) ((Collection) this.f42291b)).set(i2, obj);
            }
            return obj2;
        }

        @Override // java.util.List
        public final List subList(int i2, int i3) {
            List iVar;
            synchronized (this.f42292c) {
                List<E> listSubList = ((List) ((Collection) this.f42291b)).subList(i2, i3);
                Object obj = this.f42292c;
                iVar = listSubList instanceof RandomAccess ? new i(listSubList, obj) : new e(listSubList, obj);
            }
            return iVar;
        }

        @Override // java.util.List
        public final ListIterator listIterator(int i2) {
            return ((List) ((Collection) this.f42291b)).listIterator(i2);
        }
    }

    public static class d<E> extends h implements Collection<E> {
        @Override // java.util.Collection
        public final boolean add(Object obj) {
            boolean zAdd;
            synchronized (this.f42292c) {
                zAdd = o().add(obj);
            }
            return zAdd;
        }

        @Override // java.util.Collection
        public final boolean addAll(Collection collection) {
            boolean zAddAll;
            synchronized (this.f42292c) {
                zAddAll = o().addAll(collection);
            }
            return zAddAll;
        }

        @Override // java.util.Collection
        public final void clear() {
            synchronized (this.f42292c) {
                o().clear();
            }
        }

        public boolean contains(Object obj) {
            boolean zContains;
            synchronized (this.f42292c) {
                zContains = o().contains(obj);
            }
            return zContains;
        }

        public boolean containsAll(Collection collection) {
            boolean zContainsAll;
            synchronized (this.f42292c) {
                zContainsAll = o().containsAll(collection);
            }
            return zContainsAll;
        }

        @Override // java.util.Collection
        public final boolean isEmpty() {
            boolean zIsEmpty;
            synchronized (this.f42292c) {
                zIsEmpty = o().isEmpty();
            }
            return zIsEmpty;
        }

        public Iterator iterator() {
            return o().iterator();
        }

        public Collection o() {
            return (Collection) this.f42291b;
        }

        public boolean remove(Object obj) {
            boolean zRemove;
            synchronized (this.f42292c) {
                zRemove = o().remove(obj);
            }
            return zRemove;
        }

        public boolean removeAll(Collection collection) {
            boolean zRemoveAll;
            synchronized (this.f42292c) {
                zRemoveAll = o().removeAll(collection);
            }
            return zRemoveAll;
        }

        public boolean retainAll(Collection collection) {
            boolean zRetainAll;
            synchronized (this.f42292c) {
                zRetainAll = o().retainAll(collection);
            }
            return zRetainAll;
        }

        @Override // java.util.Collection
        public final int size() {
            int size;
            synchronized (this.f42292c) {
                size = o().size();
            }
            return size;
        }

        public Object[] toArray() {
            Object[] array;
            synchronized (this.f42292c) {
                array = o().toArray();
            }
            return array;
        }

        public Object[] toArray(Object[] objArr) {
            Object[] array;
            synchronized (this.f42292c) {
                array = o().toArray(objArr);
            }
            return array;
        }
    }

    public static class b<K, V> extends j<Map.Entry<K, Collection<V>>> {
        @Override // com.perfectcorp.thirdparty.com.google.common.collect.bs.d, java.util.Collection, java.util.Set
        public final boolean contains(Object obj) {
            boolean zContains;
            synchronized (this.f42292c) {
                Set setO = o();
                if (obj instanceof Map.Entry) {
                    be beVar = new be();
                    beVar.f42268b = (Map.Entry) obj;
                    zContains = setO.contains(beVar);
                } else {
                    zContains = false;
                }
            }
            return zContains;
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.collect.bs.d, java.util.Collection, java.util.Set
        public final boolean containsAll(Collection collection) {
            boolean z;
            synchronized (this.f42292c) {
                Set setO = o();
                Iterator it = collection.iterator();
                while (it.hasNext()) {
                    if (!setO.contains(it.next())) {
                        z = false;
                    }
                }
                z = true;
            }
            return z;
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.collect.bs.j, java.util.Collection, java.util.Set
        public final boolean equals(Object obj) {
            boolean zB;
            if (obj == this) {
                return true;
            }
            synchronized (this.f42292c) {
                zB = Sets.b(o(), obj);
            }
            return zB;
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.collect.bs.d, java.util.Collection, java.lang.Iterable, java.util.Set
        public final Iterator iterator() {
            return new bt(this, super.iterator());
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.collect.bs.d, java.util.Collection, java.util.Set
        public final boolean remove(Object obj) {
            boolean zRemove;
            synchronized (this.f42292c) {
                Set setO = o();
                if (obj instanceof Map.Entry) {
                    be beVar = new be();
                    beVar.f42268b = (Map.Entry) obj;
                    zRemove = setO.remove(beVar);
                } else {
                    zRemove = false;
                }
            }
            return zRemove;
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.collect.bs.d, java.util.Collection, java.util.Set
        public final boolean removeAll(Collection collection) {
            boolean z;
            synchronized (this.f42292c) {
                Iterator it = o().iterator();
                collection.getClass();
                z = false;
                while (it.hasNext()) {
                    if (collection.contains(it.next())) {
                        it.remove();
                        z = true;
                    }
                }
            }
            return z;
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.collect.bs.d, java.util.Collection, java.util.Set
        public final boolean retainAll(Collection collection) {
            boolean z;
            synchronized (this.f42292c) {
                try {
                    Iterator it = o().iterator();
                    collection.getClass();
                    z = false;
                    while (it.hasNext()) {
                        if (!collection.contains(it.next())) {
                            it.remove();
                            z = true;
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            return z;
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.collect.bs.d, java.util.Collection, java.util.Set
        public final Object[] toArray(Object[] objArr) {
            synchronized (this.f42292c) {
                Set setO = o();
                int size = setO.size();
                if (objArr.length < size) {
                    objArr = (Object[]) Array.newInstance(objArr.getClass().getComponentType(), size);
                }
                Iterator it = setO.iterator();
                int i2 = 0;
                while (it.hasNext()) {
                    objArr[i2] = it.next();
                    i2++;
                }
                if (objArr.length > size) {
                    objArr[size] = null;
                }
            }
            return objArr;
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.collect.bs.d, java.util.Collection, java.util.Set
        public final Object[] toArray() {
            Object[] objArr;
            synchronized (this.f42292c) {
                Set setO = o();
                objArr = new Object[setO.size()];
                Iterator it = setO.iterator();
                int i2 = 0;
                while (it.hasNext()) {
                    objArr[i2] = it.next();
                    i2++;
                }
            }
            return objArr;
        }
    }
}
