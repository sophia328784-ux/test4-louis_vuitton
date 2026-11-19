package com.google.common.collect;

import com.google.common.base.Preconditions;
import defpackage.md;
import defpackage.v7;
import java.io.Serializable;
import java.util.AbstractCollection;
import java.util.AbstractMap;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.NavigableMap;
import java.util.NavigableSet;
import java.util.Objects;
import java.util.RandomAccess;
import java.util.Set;
import java.util.SortedMap;
import java.util.SortedSet;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractMapBasedMultimap<K, V> extends AbstractMultimap<K, V> implements Serializable {
    private static final long serialVersionUID = 2447537837011683357L;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public transient Map f33514f;
    public transient int g;

    /* JADX INFO: renamed from: com.google.common.collect.AbstractMapBasedMultimap$1, reason: invalid class name */
    class AnonymousClass1 extends AbstractMapBasedMultimap<Object, Object>.Itr<Object> {
        @Override // com.google.common.collect.AbstractMapBasedMultimap.Itr
        public final Object a(Object obj, Object obj2) {
            return obj2;
        }
    }

    /* JADX INFO: renamed from: com.google.common.collect.AbstractMapBasedMultimap$2, reason: invalid class name */
    class AnonymousClass2 extends AbstractMapBasedMultimap<Object, Object>.Itr<Map.Entry<Object, Object>> {
        @Override // com.google.common.collect.AbstractMapBasedMultimap.Itr
        public final Object a(Object obj, Object obj2) {
            return new AbstractMap.SimpleImmutableEntry(obj, obj2);
        }
    }

    public class AsMap extends Maps.ViewCachingAbstractMap<K, Collection<V>> {
        public final transient Map d;

        public final class AsMapEntries extends Maps.EntrySet<K, Collection<V>> {
            public AsMapEntries() {
            }

            @Override // com.google.common.collect.Maps.EntrySet, java.util.AbstractCollection, java.util.Collection, java.util.Set
            public final boolean contains(Object obj) {
                Set<Map.Entry<K, V>> setEntrySet = AsMap.this.d.entrySet();
                setEntrySet.getClass();
                try {
                    return setEntrySet.contains(obj);
                } catch (ClassCastException | NullPointerException unused) {
                    return false;
                }
            }

            @Override // com.google.common.collect.Maps.EntrySet
            public final Map f() {
                return AsMap.this;
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
            public final Iterator iterator() {
                return AsMap.this.new AsMapIterator();
            }

            @Override // com.google.common.collect.Maps.EntrySet, java.util.AbstractCollection, java.util.Collection, java.util.Set
            public final boolean remove(Object obj) {
                Object objRemove;
                if (!contains(obj)) {
                    return false;
                }
                Map.Entry entry = (Map.Entry) obj;
                Objects.requireNonNull(entry);
                AbstractMapBasedMultimap abstractMapBasedMultimap = AbstractMapBasedMultimap.this;
                Object key = entry.getKey();
                Map map = abstractMapBasedMultimap.f33514f;
                map.getClass();
                try {
                    objRemove = map.remove(key);
                } catch (ClassCastException | NullPointerException unused) {
                    objRemove = null;
                }
                Collection collection = (Collection) objRemove;
                if (collection == null) {
                    return true;
                }
                int size = collection.size();
                collection.clear();
                abstractMapBasedMultimap.g -= size;
                return true;
            }
        }

        public final class AsMapIterator implements Iterator<Map.Entry<K, Collection<V>>> {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final Iterator f33517b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public Collection f33518c;

            public AsMapIterator() {
                this.f33517b = AsMap.this.d.entrySet().iterator();
            }

            @Override // java.util.Iterator
            public final boolean hasNext() {
                return this.f33517b.hasNext();
            }

            @Override // java.util.Iterator
            public final Object next() {
                Map.Entry entry = (Map.Entry) this.f33517b.next();
                this.f33518c = (Collection) entry.getValue();
                return AsMap.this.d(entry);
            }

            @Override // java.util.Iterator
            public final void remove() {
                Preconditions.p("no calls to next() since the last call to remove()", this.f33518c != null);
                this.f33517b.remove();
                AbstractMapBasedMultimap.this.g -= this.f33518c.size();
                this.f33518c.clear();
                this.f33518c = null;
            }
        }

        public AsMap(Map map) {
            this.d = map;
        }

        @Override // com.google.common.collect.Maps.ViewCachingAbstractMap
        public final Set c() {
            return new AsMapEntries();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public final void clear() {
            AbstractMapBasedMultimap abstractMapBasedMultimap = AbstractMapBasedMultimap.this;
            if (this.d == abstractMapBasedMultimap.f33514f) {
                abstractMapBasedMultimap.clear();
                return;
            }
            AsMapIterator asMapIterator = new AsMapIterator();
            while (asMapIterator.hasNext()) {
                asMapIterator.next();
                asMapIterator.remove();
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

        public final AbstractMap.SimpleImmutableEntry d(Map.Entry entry) {
            Object key = entry.getKey();
            return new AbstractMap.SimpleImmutableEntry(key, AbstractMapBasedMultimap.this.p(key, (Collection) entry.getValue()));
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
            return AbstractMapBasedMultimap.this.p(obj, collection);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public final int hashCode() {
            return this.d.hashCode();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public Set keySet() {
            return AbstractMapBasedMultimap.this.keySet();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public final Object remove(Object obj) {
            Collection collection = (Collection) this.d.remove(obj);
            if (collection == null) {
                return null;
            }
            AbstractMapBasedMultimap abstractMapBasedMultimap = AbstractMapBasedMultimap.this;
            Collection collectionL = abstractMapBasedMultimap.l();
            collectionL.addAll(collection);
            abstractMapBasedMultimap.g -= collection.size();
            collection.clear();
            return collectionL;
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

    public abstract class Itr<T> implements Iterator<T> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Iterator f33519b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public Object f33520c = null;
        public Collection d = null;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public Iterator f33521e = Iterators.EmptyModifiableIterator.INSTANCE;

        public Itr() {
            this.f33519b = AbstractMapBasedMultimap.this.f33514f.entrySet().iterator();
        }

        public abstract Object a(Object obj, Object obj2);

        @Override // java.util.Iterator
        public final boolean hasNext() {
            return this.f33519b.hasNext() || this.f33521e.hasNext();
        }

        @Override // java.util.Iterator
        public final Object next() {
            if (!this.f33521e.hasNext()) {
                Map.Entry entry = (Map.Entry) this.f33519b.next();
                this.f33520c = entry.getKey();
                Collection collection = (Collection) entry.getValue();
                this.d = collection;
                this.f33521e = collection.iterator();
            }
            return a(this.f33520c, this.f33521e.next());
        }

        @Override // java.util.Iterator
        public final void remove() {
            this.f33521e.remove();
            Collection collection = this.d;
            Objects.requireNonNull(collection);
            if (collection.isEmpty()) {
                this.f33519b.remove();
            }
            AbstractMapBasedMultimap.this.g--;
        }
    }

    public class KeySet extends Maps.KeySet<K, Collection<V>> {

        /* JADX INFO: renamed from: com.google.common.collect.AbstractMapBasedMultimap$KeySet$1, reason: invalid class name */
        class AnonymousClass1 implements Iterator<Object> {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public Map.Entry f33524b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ Iterator f33525c;
            public final /* synthetic */ KeySet d;

            public AnonymousClass1(KeySet keySet, Iterator it) {
                this.f33525c = it;
                this.d = keySet;
            }

            @Override // java.util.Iterator
            public final boolean hasNext() {
                return this.f33525c.hasNext();
            }

            @Override // java.util.Iterator
            public final Object next() {
                Map.Entry entry = (Map.Entry) this.f33525c.next();
                this.f33524b = entry;
                return entry.getKey();
            }

            @Override // java.util.Iterator
            public final void remove() {
                Preconditions.p("no calls to next() since the last call to remove()", this.f33524b != null);
                Collection collection = (Collection) this.f33524b.getValue();
                this.f33525c.remove();
                AbstractMapBasedMultimap.this.g -= collection.size();
                collection.clear();
                this.f33524b = null;
            }
        }

        public KeySet(Map map) {
            super(map);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final void clear() {
            Iterator it = iterator();
            while (true) {
                AnonymousClass1 anonymousClass1 = (AnonymousClass1) it;
                if (!anonymousClass1.hasNext()) {
                    return;
                }
                anonymousClass1.next();
                anonymousClass1.remove();
            }
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean containsAll(Collection collection) {
            return this.f33672b.keySet().containsAll(collection);
        }

        @Override // java.util.AbstractSet, java.util.Collection, java.util.Set
        public final boolean equals(Object obj) {
            return this == obj || this.f33672b.keySet().equals(obj);
        }

        @Override // java.util.AbstractSet, java.util.Collection, java.util.Set
        public final int hashCode() {
            return this.f33672b.keySet().hashCode();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public final Iterator iterator() {
            return new AnonymousClass1(this, this.f33672b.entrySet().iterator());
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean remove(Object obj) {
            int size;
            Collection collection = (Collection) this.f33672b.remove(obj);
            if (collection != null) {
                size = collection.size();
                collection.clear();
                AbstractMapBasedMultimap.this.g -= size;
            } else {
                size = 0;
            }
            return size > 0;
        }
    }

    public final class RandomAccessWrappedList extends AbstractMapBasedMultimap<K, V>.WrappedList implements RandomAccess {
    }

    public class SortedAsMap extends AbstractMapBasedMultimap<K, V>.AsMap implements SortedMap<K, Collection<V>> {

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public SortedSet f33528f;
        public final /* synthetic */ Multimaps.CustomListMultimap g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public SortedAsMap(Multimaps.CustomListMultimap customListMultimap, SortedMap sortedMap) {
            super(sortedMap);
            this.g = customListMultimap;
        }

        @Override // java.util.SortedMap
        public final Comparator comparator() {
            return g().comparator();
        }

        public SortedSet e() {
            return new SortedKeySet(this.g, g());
        }

        @Override // com.google.common.collect.AbstractMapBasedMultimap.AsMap, java.util.AbstractMap, java.util.Map
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public SortedSet keySet() {
            SortedSet sortedSet = this.f33528f;
            if (sortedSet != null) {
                return sortedSet;
            }
            SortedSet sortedSetE = e();
            this.f33528f = sortedSetE;
            return sortedSetE;
        }

        @Override // java.util.SortedMap
        public final Object firstKey() {
            return g().firstKey();
        }

        public SortedMap g() {
            return (SortedMap) this.d;
        }

        public SortedMap headMap(Object obj) {
            return new SortedAsMap(this.g, g().headMap(obj));
        }

        @Override // java.util.SortedMap
        public final Object lastKey() {
            return g().lastKey();
        }

        public SortedMap subMap(Object obj, Object obj2) {
            return new SortedAsMap(this.g, g().subMap(obj, obj2));
        }

        public SortedMap tailMap(Object obj) {
            return new SortedAsMap(this.g, g().tailMap(obj));
        }
    }

    public class SortedKeySet extends AbstractMapBasedMultimap<K, V>.KeySet implements SortedSet<K> {
        public final /* synthetic */ Multimaps.CustomListMultimap d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public SortedKeySet(Multimaps.CustomListMultimap customListMultimap, SortedMap sortedMap) {
            super(sortedMap);
            this.d = customListMultimap;
        }

        @Override // java.util.SortedSet
        public final Comparator comparator() {
            return f().comparator();
        }

        public SortedMap f() {
            return (SortedMap) this.f33672b;
        }

        @Override // java.util.SortedSet
        public final Object first() {
            return f().firstKey();
        }

        public SortedSet headSet(Object obj) {
            return new SortedKeySet(this.d, f().headMap(obj));
        }

        @Override // java.util.SortedSet
        public final Object last() {
            return f().lastKey();
        }

        public SortedSet subSet(Object obj, Object obj2) {
            return new SortedKeySet(this.d, f().subMap(obj, obj2));
        }

        public SortedSet tailSet(Object obj) {
            return new SortedKeySet(this.d, f().tailMap(obj));
        }
    }

    public final class WrappedSet extends AbstractMapBasedMultimap<K, V>.WrappedCollection implements Set<V> {
        public final /* synthetic */ AbstractSetMultimap g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public WrappedSet(AbstractSetMultimap abstractSetMultimap, Object obj, Set set) {
            super(obj, set, null);
            this.g = abstractSetMultimap;
        }

        @Override // com.google.common.collect.AbstractMapBasedMultimap.WrappedCollection, java.util.AbstractCollection, java.util.Collection
        public final boolean removeAll(Collection collection) {
            if (collection.isEmpty()) {
                return false;
            }
            int size = size();
            boolean zF = Sets.f((Set) this.f33530c, collection);
            if (zF) {
                this.g.g += this.f33530c.size() - size;
                i();
            }
            return zF;
        }
    }

    public AbstractMapBasedMultimap(Map map) {
        Preconditions.g(map.isEmpty());
        this.f33514f = map;
    }

    @Override // com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    public Collection a(Object obj) {
        Collection collection = (Collection) this.f33514f.remove(obj);
        if (collection == null) {
            return m();
        }
        Collection collectionL = l();
        collectionL.addAll(collection);
        this.g -= collection.size();
        collection.clear();
        return o(collectionL);
    }

    @Override // com.google.common.collect.AbstractMultimap
    public Map c() {
        return new AsMap(this.f33514f);
    }

    @Override // com.google.common.collect.Multimap
    public void clear() {
        Iterator<V> it = this.f33514f.values().iterator();
        while (it.hasNext()) {
            ((Collection) it.next()).clear();
        }
        this.f33514f.clear();
        this.g = 0;
    }

    @Override // com.google.common.collect.AbstractMultimap
    public final Collection d() {
        return this instanceof SetMultimap ? new AbstractMultimap.EntrySet() : new AbstractMultimap.Entries();
    }

    @Override // com.google.common.collect.AbstractMultimap
    public Set e() {
        return new KeySet(this.f33514f);
    }

    @Override // com.google.common.collect.AbstractMultimap
    public final Collection g() {
        return new AbstractMultimap.Values(this);
    }

    @Override // com.google.common.collect.AbstractMultimap
    public final Iterator j() {
        return new AnonymousClass2();
    }

    public abstract Collection l();

    public abstract Collection m();

    public final void n(Map map) {
        this.f33514f = map;
        this.g = 0;
        for (V v : map.values()) {
            Preconditions.g(!v.isEmpty());
            this.g = v.size() + this.g;
        }
    }

    public abstract Collection o(Collection collection);

    public abstract Collection p(Object obj, Collection collection);

    @Override // com.google.common.collect.Multimap
    public boolean put(Object obj, Object obj2) {
        Collection collection = (Collection) this.f33514f.get(obj);
        if (collection != null) {
            if (!collection.add(obj2)) {
                return false;
            }
            this.g++;
            return true;
        }
        Collection collectionL = l();
        if (!collectionL.add(obj2)) {
            md.h("New Collection violated the Collection spec");
            return false;
        }
        this.g++;
        this.f33514f.put(obj, collectionL);
        return true;
    }

    @Override // com.google.common.collect.Multimap
    public int size() {
        return this.g;
    }

    public class WrappedList extends AbstractMapBasedMultimap<K, V>.WrappedCollection implements List<V> {
        public WrappedList(Object obj, List list, WrappedCollection wrappedCollection) {
            super(obj, list, wrappedCollection);
        }

        @Override // java.util.List
        public final void add(int i2, Object obj) {
            h();
            boolean zIsEmpty = this.f33530c.isEmpty();
            ((List) this.f33530c).add(i2, obj);
            AbstractMapBasedMultimap.this.g++;
            if (zIsEmpty) {
                f();
            }
        }

        @Override // java.util.List
        public final boolean addAll(int i2, Collection collection) {
            if (collection.isEmpty()) {
                return false;
            }
            int size = size();
            boolean zAddAll = ((List) this.f33530c).addAll(i2, collection);
            if (zAddAll) {
                AbstractMapBasedMultimap.this.g += this.f33530c.size() - size;
                if (size == 0) {
                    f();
                }
            }
            return zAddAll;
        }

        @Override // java.util.List
        public final Object get(int i2) {
            h();
            return ((List) this.f33530c).get(i2);
        }

        @Override // java.util.List
        public final int indexOf(Object obj) {
            h();
            return ((List) this.f33530c).indexOf(obj);
        }

        @Override // java.util.List
        public final int lastIndexOf(Object obj) {
            h();
            return ((List) this.f33530c).lastIndexOf(obj);
        }

        @Override // java.util.List
        public final ListIterator listIterator() {
            h();
            return new WrappedListIterator();
        }

        @Override // java.util.List
        public final Object remove(int i2) {
            h();
            Object objRemove = ((List) this.f33530c).remove(i2);
            AbstractMapBasedMultimap.this.g--;
            i();
            return objRemove;
        }

        @Override // java.util.List
        public final Object set(int i2, Object obj) {
            h();
            return ((List) this.f33530c).set(i2, obj);
        }

        @Override // java.util.List
        public final List subList(int i2, int i3) {
            h();
            List listSubList = ((List) this.f33530c).subList(i2, i3);
            WrappedCollection wrappedCollection = this.d;
            if (wrappedCollection == null) {
                wrappedCollection = this;
            }
            boolean z = listSubList instanceof RandomAccess;
            AbstractMapBasedMultimap abstractMapBasedMultimap = AbstractMapBasedMultimap.this;
            Object obj = this.f33529b;
            return z ? new RandomAccessWrappedList(obj, listSubList, wrappedCollection) : new WrappedList(obj, listSubList, wrappedCollection);
        }

        @Override // java.util.List
        public final ListIterator listIterator(int i2) {
            h();
            return new WrappedListIterator(i2);
        }

        public final class WrappedListIterator extends AbstractMapBasedMultimap<K, V>.WrappedCollection.WrappedIterator implements ListIterator<V> {
            public WrappedListIterator(int i2) {
                super(WrappedList.this, ((List) WrappedList.this.f33530c).listIterator(i2));
            }

            @Override // java.util.ListIterator
            public final void add(Object obj) {
                WrappedList wrappedList = WrappedList.this;
                boolean zIsEmpty = wrappedList.isEmpty();
                b().add(obj);
                AbstractMapBasedMultimap.this.g++;
                if (zIsEmpty) {
                    wrappedList.f();
                }
            }

            public final ListIterator b() {
                a();
                return (ListIterator) this.f33533b;
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

            public WrappedListIterator() {
                super();
            }
        }
    }

    public final class NavigableAsMap extends AbstractMapBasedMultimap<K, V>.SortedAsMap implements NavigableMap<K, Collection<V>> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final /* synthetic */ Multimaps.CustomListMultimap f33526h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public NavigableAsMap(Multimaps.CustomListMultimap customListMultimap, NavigableMap navigableMap) {
            super(customListMultimap, navigableMap);
            this.f33526h = customListMultimap;
        }

        @Override // java.util.NavigableMap
        public final Map.Entry ceilingEntry(Object obj) {
            Map.Entry<K, V> entryCeilingEntry = g().ceilingEntry(obj);
            if (entryCeilingEntry == null) {
                return null;
            }
            return d(entryCeilingEntry);
        }

        @Override // java.util.NavigableMap
        public final Object ceilingKey(Object obj) {
            return g().ceilingKey(obj);
        }

        @Override // java.util.NavigableMap
        public final NavigableSet descendingKeySet() {
            return (NavigableSet) super.keySet();
        }

        @Override // java.util.NavigableMap
        public final NavigableMap descendingMap() {
            return new NavigableAsMap(this.f33526h, g().descendingMap());
        }

        @Override // com.google.common.collect.AbstractMapBasedMultimap.SortedAsMap
        public final SortedSet e() {
            return new NavigableKeySet(this.f33526h, g());
        }

        @Override // com.google.common.collect.AbstractMapBasedMultimap.SortedAsMap
        /* JADX INFO: renamed from: f */
        public final SortedSet keySet() {
            return (NavigableSet) super.keySet();
        }

        @Override // java.util.NavigableMap
        public final Map.Entry firstEntry() {
            Map.Entry<K, V> entryFirstEntry = g().firstEntry();
            if (entryFirstEntry == null) {
                return null;
            }
            return d(entryFirstEntry);
        }

        @Override // java.util.NavigableMap
        public final Map.Entry floorEntry(Object obj) {
            Map.Entry<K, V> entryFloorEntry = g().floorEntry(obj);
            if (entryFloorEntry == null) {
                return null;
            }
            return d(entryFloorEntry);
        }

        @Override // java.util.NavigableMap
        public final Object floorKey(Object obj) {
            return g().floorKey(obj);
        }

        public final AbstractMap.SimpleImmutableEntry h(Iterator it) {
            if (!it.hasNext()) {
                return null;
            }
            Map.Entry entry = (Map.Entry) it.next();
            Collection collectionL = this.f33526h.l();
            collectionL.addAll((Collection) entry.getValue());
            it.remove();
            return new AbstractMap.SimpleImmutableEntry(entry.getKey(), Collections.unmodifiableList((List) collectionL));
        }

        @Override // java.util.NavigableMap
        public final NavigableMap headMap(Object obj, boolean z) {
            return new NavigableAsMap(this.f33526h, g().headMap(obj, z));
        }

        @Override // java.util.NavigableMap
        public final Map.Entry higherEntry(Object obj) {
            Map.Entry<K, V> entryHigherEntry = g().higherEntry(obj);
            if (entryHigherEntry == null) {
                return null;
            }
            return d(entryHigherEntry);
        }

        @Override // java.util.NavigableMap
        public final Object higherKey(Object obj) {
            return g().higherKey(obj);
        }

        @Override // com.google.common.collect.AbstractMapBasedMultimap.SortedAsMap
        /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
        public final NavigableMap g() {
            return (NavigableMap) ((SortedMap) this.d);
        }

        @Override // com.google.common.collect.AbstractMapBasedMultimap.SortedAsMap, com.google.common.collect.AbstractMapBasedMultimap.AsMap, java.util.AbstractMap, java.util.Map
        public final Set keySet() {
            return (NavigableSet) super.keySet();
        }

        @Override // java.util.NavigableMap
        public final Map.Entry lastEntry() {
            Map.Entry<K, V> entryLastEntry = g().lastEntry();
            if (entryLastEntry == null) {
                return null;
            }
            return d(entryLastEntry);
        }

        @Override // java.util.NavigableMap
        public final Map.Entry lowerEntry(Object obj) {
            Map.Entry<K, V> entryLowerEntry = g().lowerEntry(obj);
            if (entryLowerEntry == null) {
                return null;
            }
            return d(entryLowerEntry);
        }

        @Override // java.util.NavigableMap
        public final Object lowerKey(Object obj) {
            return g().lowerKey(obj);
        }

        @Override // java.util.NavigableMap
        public final NavigableSet navigableKeySet() {
            return (NavigableSet) super.keySet();
        }

        @Override // java.util.NavigableMap
        public final Map.Entry pollFirstEntry() {
            return h(entrySet().iterator());
        }

        @Override // java.util.NavigableMap
        public final Map.Entry pollLastEntry() {
            return h(((Maps.ViewCachingAbstractMap) descendingMap()).entrySet().iterator());
        }

        @Override // java.util.NavigableMap
        public final NavigableMap subMap(Object obj, boolean z, Object obj2, boolean z2) {
            return new NavigableAsMap(this.f33526h, g().subMap(obj, z, obj2, z2));
        }

        @Override // java.util.NavigableMap
        public final NavigableMap tailMap(Object obj, boolean z) {
            return new NavigableAsMap(this.f33526h, g().tailMap(obj, z));
        }

        @Override // com.google.common.collect.AbstractMapBasedMultimap.SortedAsMap, java.util.SortedMap, java.util.NavigableMap
        public final SortedMap headMap(Object obj) {
            return headMap(obj, false);
        }

        @Override // com.google.common.collect.AbstractMapBasedMultimap.SortedAsMap, java.util.SortedMap, java.util.NavigableMap
        public final SortedMap subMap(Object obj, Object obj2) {
            return subMap(obj, true, obj2, false);
        }

        @Override // com.google.common.collect.AbstractMapBasedMultimap.SortedAsMap, java.util.SortedMap, java.util.NavigableMap
        public final SortedMap tailMap(Object obj) {
            return tailMap(obj, true);
        }
    }

    public final class NavigableKeySet extends AbstractMapBasedMultimap<K, V>.SortedKeySet implements NavigableSet<K> {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final /* synthetic */ Multimaps.CustomListMultimap f33527e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public NavigableKeySet(Multimaps.CustomListMultimap customListMultimap, NavigableMap navigableMap) {
            super(customListMultimap, navigableMap);
            this.f33527e = customListMultimap;
        }

        @Override // java.util.NavigableSet
        public final Object ceiling(Object obj) {
            return f().ceilingKey(obj);
        }

        @Override // java.util.NavigableSet
        public final Iterator descendingIterator() {
            return ((KeySet) descendingSet()).iterator();
        }

        @Override // java.util.NavigableSet
        public final NavigableSet descendingSet() {
            return new NavigableKeySet(this.f33527e, f().descendingMap());
        }

        @Override // java.util.NavigableSet
        public final Object floor(Object obj) {
            return f().floorKey(obj);
        }

        @Override // com.google.common.collect.AbstractMapBasedMultimap.SortedKeySet
        /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
        public final NavigableMap f() {
            return (NavigableMap) ((SortedMap) this.f33672b);
        }

        @Override // java.util.NavigableSet
        public final NavigableSet headSet(Object obj, boolean z) {
            return new NavigableKeySet(this.f33527e, f().headMap(obj, z));
        }

        @Override // java.util.NavigableSet
        public final Object higher(Object obj) {
            return f().higherKey(obj);
        }

        @Override // java.util.NavigableSet
        public final Object lower(Object obj) {
            return f().lowerKey(obj);
        }

        @Override // java.util.NavigableSet
        public final Object pollFirst() {
            KeySet.AnonymousClass1 anonymousClass1 = (KeySet.AnonymousClass1) iterator();
            if (!anonymousClass1.hasNext()) {
                return null;
            }
            Object next = anonymousClass1.next();
            anonymousClass1.remove();
            return next;
        }

        @Override // java.util.NavigableSet
        public final Object pollLast() {
            Iterator itDescendingIterator = descendingIterator();
            if (!itDescendingIterator.hasNext()) {
                return null;
            }
            Object next = itDescendingIterator.next();
            itDescendingIterator.remove();
            return next;
        }

        @Override // java.util.NavigableSet
        public final NavigableSet subSet(Object obj, boolean z, Object obj2, boolean z2) {
            return new NavigableKeySet(this.f33527e, f().subMap(obj, z, obj2, z2));
        }

        @Override // java.util.NavigableSet
        public final NavigableSet tailSet(Object obj, boolean z) {
            return new NavigableKeySet(this.f33527e, f().tailMap(obj, z));
        }

        @Override // com.google.common.collect.AbstractMapBasedMultimap.SortedKeySet, java.util.SortedSet, java.util.NavigableSet
        public final SortedSet headSet(Object obj) {
            return headSet(obj, false);
        }

        @Override // com.google.common.collect.AbstractMapBasedMultimap.SortedKeySet, java.util.SortedSet, java.util.NavigableSet
        public final SortedSet subSet(Object obj, Object obj2) {
            return subSet(obj, true, obj2, false);
        }

        @Override // com.google.common.collect.AbstractMapBasedMultimap.SortedKeySet, java.util.SortedSet, java.util.NavigableSet
        public final SortedSet tailSet(Object obj) {
            return tailSet(obj, true);
        }
    }

    public class WrappedCollection extends AbstractCollection<V> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Object f33529b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public Collection f33530c;
        public final WrappedCollection d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final Collection f33531e;

        public WrappedCollection(Object obj, Collection collection, WrappedCollection wrappedCollection) {
            this.f33529b = obj;
            this.f33530c = collection;
            this.d = wrappedCollection;
            this.f33531e = wrappedCollection == null ? null : wrappedCollection.f33530c;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final boolean add(Object obj) {
            h();
            boolean zIsEmpty = this.f33530c.isEmpty();
            boolean zAdd = this.f33530c.add(obj);
            if (zAdd) {
                AbstractMapBasedMultimap.this.g++;
                if (zIsEmpty) {
                    f();
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
            boolean zAddAll = this.f33530c.addAll(collection);
            if (zAddAll) {
                AbstractMapBasedMultimap.this.g += this.f33530c.size() - size;
                if (size == 0) {
                    f();
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
            this.f33530c.clear();
            AbstractMapBasedMultimap.this.g -= size;
            i();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final boolean contains(Object obj) {
            h();
            return this.f33530c.contains(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final boolean containsAll(Collection collection) {
            h();
            return this.f33530c.containsAll(collection);
        }

        @Override // java.util.Collection
        public final boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            h();
            return this.f33530c.equals(obj);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final void f() {
            WrappedCollection wrappedCollection = this.d;
            if (wrappedCollection != null) {
                wrappedCollection.f();
            } else {
                AbstractMapBasedMultimap.this.f33514f.put(this.f33529b, this.f33530c);
            }
        }

        public final void h() {
            Collection collection;
            WrappedCollection wrappedCollection = this.d;
            if (wrappedCollection != null) {
                wrappedCollection.h();
                if (wrappedCollection.f33530c == this.f33531e) {
                    return;
                }
                v7.c();
                return;
            }
            if (!this.f33530c.isEmpty() || (collection = (Collection) AbstractMapBasedMultimap.this.f33514f.get(this.f33529b)) == null) {
                return;
            }
            this.f33530c = collection;
        }

        @Override // java.util.Collection
        public final int hashCode() {
            h();
            return this.f33530c.hashCode();
        }

        public final void i() {
            WrappedCollection wrappedCollection = this.d;
            if (wrappedCollection != null) {
                wrappedCollection.i();
            } else if (this.f33530c.isEmpty()) {
                AbstractMapBasedMultimap.this.f33514f.remove(this.f33529b);
            }
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public final Iterator iterator() {
            h();
            return new WrappedIterator();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final boolean remove(Object obj) {
            h();
            boolean zRemove = this.f33530c.remove(obj);
            if (zRemove) {
                AbstractMapBasedMultimap.this.g--;
                i();
            }
            return zRemove;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean removeAll(Collection collection) {
            if (collection.isEmpty()) {
                return false;
            }
            int size = size();
            boolean zRemoveAll = this.f33530c.removeAll(collection);
            if (zRemoveAll) {
                AbstractMapBasedMultimap.this.g += this.f33530c.size() - size;
                i();
            }
            return zRemoveAll;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final boolean retainAll(Collection collection) {
            collection.getClass();
            int size = size();
            boolean zRetainAll = this.f33530c.retainAll(collection);
            if (zRetainAll) {
                AbstractMapBasedMultimap.this.g += this.f33530c.size() - size;
                i();
            }
            return zRetainAll;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final int size() {
            h();
            return this.f33530c.size();
        }

        @Override // java.util.AbstractCollection
        public final String toString() {
            h();
            return this.f33530c.toString();
        }

        public class WrappedIterator implements Iterator<V> {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final Iterator f33533b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final Collection f33534c;

            public WrappedIterator() {
                Collection collection = WrappedCollection.this.f33530c;
                this.f33534c = collection;
                this.f33533b = collection instanceof List ? ((List) collection).listIterator() : collection.iterator();
            }

            public final void a() {
                WrappedCollection wrappedCollection = WrappedCollection.this;
                wrappedCollection.h();
                if (wrappedCollection.f33530c == this.f33534c) {
                    return;
                }
                v7.c();
            }

            @Override // java.util.Iterator
            public final boolean hasNext() {
                a();
                return this.f33533b.hasNext();
            }

            @Override // java.util.Iterator
            public final Object next() {
                a();
                return this.f33533b.next();
            }

            @Override // java.util.Iterator
            public final void remove() {
                this.f33533b.remove();
                WrappedCollection wrappedCollection = WrappedCollection.this;
                AbstractMapBasedMultimap.this.g--;
                wrappedCollection.i();
            }

            public WrappedIterator(WrappedList wrappedList, ListIterator listIterator) {
                WrappedCollection.this = wrappedList;
                this.f33534c = wrappedList.f33530c;
                this.f33533b = listIterator;
            }
        }
    }
}
