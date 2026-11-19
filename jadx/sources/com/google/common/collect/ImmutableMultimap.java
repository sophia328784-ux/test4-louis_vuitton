package com.google.common.collect;

import com.google.errorprone.annotations.DoNotMock;
import java.io.Serializable;
import java.util.AbstractMap;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
public abstract class ImmutableMultimap<K, V> extends BaseImmutableMultimap<K, V> implements Serializable {
    private static final long serialVersionUID = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final transient ImmutableMap f33602f;
    public final transient int g;

    /* JADX INFO: renamed from: com.google.common.collect.ImmutableMultimap$1, reason: invalid class name */
    class AnonymousClass1 extends UnmodifiableIterator<Map.Entry<Object, Object>> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final UnmodifiableIterator f33603b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public Object f33604c;
        public UnmodifiableIterator d;

        public AnonymousClass1(ImmutableMultimap immutableMultimap) {
            ImmutableMap immutableMap = immutableMultimap.f33602f;
            ImmutableSet immutableSetD = immutableMap.f33592b;
            if (immutableSetD == null) {
                immutableSetD = immutableMap.d();
                immutableMap.f33592b = immutableSetD;
            }
            this.f33603b = immutableSetD.iterator();
            this.f33604c = null;
            this.d = Iterators.ArrayItr.f33627e;
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            return this.d.hasNext() || this.f33603b.hasNext();
        }

        @Override // java.util.Iterator
        public final Object next() {
            if (!this.d.hasNext()) {
                Map.Entry entry = (Map.Entry) this.f33603b.next();
                this.f33604c = entry.getKey();
                this.d = ((ImmutableCollection) entry.getValue()).iterator();
            }
            Object obj = this.f33604c;
            Objects.requireNonNull(obj);
            return new AbstractMap.SimpleImmutableEntry(obj, this.d.next());
        }
    }

    @DoNotMock
    public static class Builder<K, V> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public Map f33607a;
    }

    public static final class EntryCollection<K, V> extends ImmutableCollection<Map.Entry<K, V>> {
        private static final long serialVersionUID = 0;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final ImmutableMultimap f33608c;

        public EntryCollection(ImmutableMultimap immutableMultimap) {
            this.f33608c = immutableMultimap;
        }

        @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection
        public final boolean contains(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            return this.f33608c.i(entry.getKey(), entry.getValue());
        }

        @Override // com.google.common.collect.ImmutableCollection
        /* JADX INFO: renamed from: p */
        public final UnmodifiableIterator iterator() {
            ImmutableMultimap immutableMultimap = this.f33608c;
            immutableMultimap.getClass();
            return new AnonymousClass1(immutableMultimap);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final int size() {
            return this.f33608c.g;
        }

        @Override // com.google.common.collect.ImmutableCollection
        public Object writeReplace() {
            return super.writeReplace();
        }
    }

    public static final class Values<K, V> extends ImmutableCollection<V> {
        private static final long serialVersionUID = 0;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final transient ImmutableMultimap f33609c;

        public Values(ImmutableMultimap immutableMultimap) {
            this.f33609c = immutableMultimap;
        }

        @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection
        public final boolean contains(Object obj) {
            return this.f33609c.b(obj);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.collect.ImmutableCollection
        public final int h(int i2, Object[] objArr) {
            UnmodifiableIterator it = this.f33609c.f33602f.values().iterator();
            while (it.hasNext()) {
                i2 = ((ImmutableCollection) it.next()).h(i2, objArr);
            }
            return i2;
        }

        @Override // com.google.common.collect.ImmutableCollection
        /* JADX INFO: renamed from: p */
        public final UnmodifiableIterator iterator() {
            ImmutableMultimap immutableMultimap = this.f33609c;
            immutableMultimap.getClass();
            return new UnmodifiableIterator<Object>(immutableMultimap) { // from class: com.google.common.collect.ImmutableMultimap.2

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public final UnmodifiableIterator f33605b;

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public UnmodifiableIterator f33606c = Iterators.ArrayItr.f33627e;

                {
                    this.f33605b = immutableMultimap.f33602f.values().iterator();
                }

                @Override // java.util.Iterator
                public final boolean hasNext() {
                    return this.f33606c.hasNext() || this.f33605b.hasNext();
                }

                /* JADX WARN: Multi-variable type inference failed */
                @Override // java.util.Iterator
                public final Object next() {
                    if (!this.f33606c.hasNext()) {
                        this.f33606c = ((ImmutableCollection) this.f33605b.next()).iterator();
                    }
                    return this.f33606c.next();
                }
            };
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final int size() {
            return this.f33609c.g;
        }

        @Override // com.google.common.collect.ImmutableCollection
        public Object writeReplace() {
            return super.writeReplace();
        }
    }

    public ImmutableMultimap(ImmutableMap immutableMap, int i2) {
        this.f33602f = immutableMap;
        this.g = i2;
    }

    @Override // com.google.common.collect.AbstractMultimap
    public final boolean b(Object obj) {
        return obj != null && super.b(obj);
    }

    @Override // com.google.common.collect.AbstractMultimap
    public final Map c() {
        throw new AssertionError("should never be called");
    }

    @Override // com.google.common.collect.Multimap
    public final void clear() {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.collect.AbstractMultimap
    public final Collection d() {
        return new EntryCollection(this);
    }

    @Override // com.google.common.collect.AbstractMultimap
    public final Set e() {
        throw new AssertionError("unreachable");
    }

    @Override // com.google.common.collect.AbstractMultimap, com.google.common.collect.Multimap
    public final Collection f() {
        return (ImmutableCollection) super.f();
    }

    @Override // com.google.common.collect.AbstractMultimap
    public final Collection g() {
        return new Values(this);
    }

    @Override // com.google.common.collect.AbstractMultimap
    public final Iterator j() {
        return new AnonymousClass1(this);
    }

    @Override // com.google.common.collect.AbstractMultimap, com.google.common.collect.Multimap
    public final Set keySet() {
        return this.f33602f.keySet();
    }

    @Override // com.google.common.collect.AbstractMultimap, com.google.common.collect.Multimap
    /* JADX INFO: renamed from: l, reason: merged with bridge method [inline-methods] */
    public ImmutableMap h() {
        return this.f33602f;
    }

    @Override // com.google.common.collect.Multimap
    public final boolean put(Object obj, Object obj2) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.collect.AbstractMultimap, com.google.common.collect.Multimap
    public final boolean remove(Object obj, Object obj2) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.collect.Multimap
    public final int size() {
        return this.g;
    }
}
