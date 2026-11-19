package com.google.common.collect;

import com.google.common.base.Supplier;
import defpackage.fw;
import defpackage.mw;
import defpackage.uh;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.AbstractCollection;
import java.util.AbstractMap;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.NavigableMap;
import java.util.Objects;
import java.util.Set;
import java.util.SortedMap;

/* JADX INFO: loaded from: classes2.dex */
public abstract class Multimaps {

    public static final class AsMap<K, V> extends Maps.ViewCachingAbstractMap<K, Collection<V>> {
        public final LinkedListMultimap d;

        public final class EntrySet extends Maps.EntrySet<K, Collection<V>> {
            public EntrySet() {
            }

            @Override // com.google.common.collect.Maps.EntrySet
            public final Map f() {
                return AsMap.this;
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
            public final Iterator iterator() {
                LinkedListMultimap linkedListMultimap = AsMap.this.d;
                Set setKeySet = linkedListMultimap.keySet();
                Objects.requireNonNull(linkedListMultimap);
                final mw mwVar = new mw(linkedListMultimap, 2);
                final Iterator it = setKeySet.iterator();
                return new TransformedIterator<Object, Map.Entry<Object, Object>>(it) { // from class: com.google.common.collect.Maps.3

                    /* JADX INFO: renamed from: c */
                    public final /* synthetic */ mw f33668c;

                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    public AnonymousClass3(final Iterator it2) {
                        super(it2);
                        mwVar = mwVar;
                    }

                    @Override // com.google.common.collect.TransformedIterator
                    public final Object a(Object obj) {
                        return new AbstractMap.SimpleImmutableEntry(obj, ((Multimap) mwVar.f76373c).get(obj));
                    }
                };
            }

            @Override // com.google.common.collect.Maps.EntrySet, java.util.AbstractCollection, java.util.Collection, java.util.Set
            public final boolean remove(Object obj) {
                if (!contains(obj)) {
                    return false;
                }
                Map.Entry entry = (Map.Entry) obj;
                Objects.requireNonNull(entry);
                AsMap.this.d.keySet().remove(entry.getKey());
                return true;
            }
        }

        public AsMap(LinkedListMultimap linkedListMultimap) {
            this.d = linkedListMultimap;
        }

        @Override // com.google.common.collect.Maps.ViewCachingAbstractMap
        public final Set c() {
            return new EntrySet();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public final void clear() {
            this.d.clear();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public final boolean containsKey(Object obj) {
            return this.d.f33631h.containsKey(obj);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public final Object get(Object obj) {
            LinkedListMultimap linkedListMultimap = this.d;
            if (linkedListMultimap.f33631h.containsKey(obj)) {
                return new LinkedListMultimap.AnonymousClass1(linkedListMultimap, obj);
            }
            return null;
        }

        @Override // java.util.AbstractMap, java.util.Map
        public final boolean isEmpty() {
            return this.d.k();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public final Set keySet() {
            return this.d.keySet();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public final Object remove(Object obj) {
            LinkedListMultimap linkedListMultimap = this.d;
            if (linkedListMultimap.f33631h.containsKey(obj)) {
                return linkedListMultimap.a(obj);
            }
            return null;
        }

        @Override // java.util.AbstractMap, java.util.Map
        public final int size() {
            return this.d.keySet().size();
        }
    }

    public static final class CustomListMultimap<K, V> extends AbstractListMultimap<K, V> {
        private static final long serialVersionUID = 0;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public transient Supplier f33682h;

        private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
            objectInputStream.defaultReadObject();
            Object object = objectInputStream.readObject();
            Objects.requireNonNull(object);
            this.f33682h = (Supplier) object;
            Object object2 = objectInputStream.readObject();
            Objects.requireNonNull(object2);
            n((Map) object2);
        }

        private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
            objectOutputStream.defaultWriteObject();
            objectOutputStream.writeObject(this.f33682h);
            objectOutputStream.writeObject(this.f33514f);
        }

        @Override // com.google.common.collect.AbstractMapBasedMultimap, com.google.common.collect.AbstractMultimap
        public final Map c() {
            Map map = this.f33514f;
            if (map instanceof NavigableMap) {
                return new AbstractMapBasedMultimap.NavigableAsMap(this, (NavigableMap) this.f33514f);
            }
            return map instanceof SortedMap ? new AbstractMapBasedMultimap.SortedAsMap(this, (SortedMap) this.f33514f) : new AbstractMapBasedMultimap.AsMap(this.f33514f);
        }

        @Override // com.google.common.collect.AbstractMapBasedMultimap, com.google.common.collect.AbstractMultimap
        public final Set e() {
            Map map = this.f33514f;
            if (map instanceof NavigableMap) {
                return new AbstractMapBasedMultimap.NavigableKeySet(this, (NavigableMap) this.f33514f);
            }
            return map instanceof SortedMap ? new AbstractMapBasedMultimap.SortedKeySet(this, (SortedMap) this.f33514f) : new AbstractMapBasedMultimap.KeySet(this.f33514f);
        }

        @Override // com.google.common.collect.AbstractMapBasedMultimap
        public final Collection l() {
            return (List) this.f33682h.get();
        }
    }

    public static abstract class Entries<K, V> extends AbstractCollection<Map.Entry<K, V>> {
        @Override // java.util.AbstractCollection, java.util.Collection
        public final void clear() {
            AbstractMultimap.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final boolean contains(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            return AbstractMultimap.this.i(entry.getKey(), entry.getValue());
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final boolean remove(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            return AbstractMultimap.this.remove(entry.getKey(), entry.getValue());
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final int size() {
            return AbstractMultimap.this.size();
        }
    }

    public static final class TransformedEntriesListMultimap<K, V1, V2> extends TransformedEntriesMultimap<K, V1, V2> implements ListMultimap<K, V2> {
        @Override // com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
        public final List a(Object obj) {
            return Lists.d(new b(this, obj), (List) this.f33683f.a(obj));
        }

        @Override // com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
        public final List get(Object obj) {
            return Lists.d(new b(this, obj), (List) this.f33683f.get(obj));
        }
    }

    public static class TransformedEntriesMultimap<K, V1, V2> extends AbstractMultimap<K, V2> {

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final Multimap f33683f;
        public final fw g;

        public TransformedEntriesMultimap(ListMultimap listMultimap, fw fwVar) {
            listMultimap.getClass();
            this.f33683f = listMultimap;
            this.g = fwVar;
        }

        @Override // com.google.common.collect.AbstractMultimap
        public final Map c() {
            return new Maps.TransformedEntriesMap(this.f33683f.h(), new Maps.EntryTransformer() { // from class: com.google.common.collect.c
                @Override // com.google.common.collect.Maps.EntryTransformer
                public final Object c(Object obj, Object obj2) {
                    return Lists.d(new b((Multimaps.TransformedEntriesListMultimap) this.f33736b, obj), (List) ((Collection) obj2));
                }
            });
        }

        @Override // com.google.common.collect.Multimap
        public final void clear() {
            this.f33683f.clear();
        }

        @Override // com.google.common.collect.AbstractMultimap
        public final Collection d() {
            return new AbstractMultimap.Entries();
        }

        @Override // com.google.common.collect.AbstractMultimap
        public final Set e() {
            return this.f33683f.keySet();
        }

        @Override // com.google.common.collect.AbstractMultimap
        public final Collection g() {
            final Collection collectionF = this.f33683f.f();
            final a aVar = new a(this, 1);
            return new AbstractCollection<T>(collectionF, aVar) { // from class: com.google.common.collect.Collections2$TransformedCollection

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public final Collection f33546b;

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public final a f33547c;

                {
                    collectionF.getClass();
                    this.f33546b = collectionF;
                    this.f33547c = aVar;
                }

                @Override // java.util.AbstractCollection, java.util.Collection
                public final void clear() {
                    this.f33546b.clear();
                }

                @Override // java.util.AbstractCollection, java.util.Collection
                public final boolean isEmpty() {
                    return this.f33546b.isEmpty();
                }

                @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
                public final Iterator iterator() {
                    Iterator it = this.f33546b.iterator();
                    a aVar2 = this.f33547c;
                    aVar2.getClass();
                    return new Iterators.AnonymousClass6(it, aVar2);
                }

                @Override // java.util.AbstractCollection, java.util.Collection
                public final int size() {
                    return this.f33546b.size();
                }
            };
        }

        @Override // com.google.common.collect.AbstractMultimap
        public final Iterator j() {
            return new Iterators.AnonymousClass6(this.f33683f.f().iterator(), new a(this.g, 0));
        }

        @Override // com.google.common.collect.Multimap
        public final boolean put(Object obj, Object obj2) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.AbstractMultimap, com.google.common.collect.Multimap
        public final boolean remove(Object obj, Object obj2) {
            return ((TransformedEntriesListMultimap) this).get(obj).remove(obj2);
        }

        @Override // com.google.common.collect.Multimap
        public final int size() {
            return this.f33683f.size();
        }
    }

    public static ListMultimap a(ListMultimap listMultimap, uh uhVar) {
        return new TransformedEntriesListMultimap(listMultimap, new fw(uhVar, 27));
    }
}
