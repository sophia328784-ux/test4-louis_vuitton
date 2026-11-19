package kotlin.reflect.jvm.internal.impl.protobuf;

import defpackage.d21;
import defpackage.md;
import defpackage.x1;
import java.lang.Comparable;
import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
import java.util.SortedMap;
import java.util.TreeMap;

/* JADX INFO: loaded from: classes4.dex */
abstract class SmallSortedMap<K extends Comparable<K>, V> extends AbstractMap<K, V> {
    public static final /* synthetic */ int g = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f73759b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public List f73760c = Collections.EMPTY_LIST;
    public Map d = Collections.EMPTY_MAP;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f73761e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public volatile EntrySet f73762f;

    /* JADX INFO: renamed from: kotlin.reflect.jvm.internal.impl.protobuf.SmallSortedMap$1, reason: invalid class name */
    final class AnonymousClass1 extends SmallSortedMap<FieldSet.FieldDescriptorLite<Object>, Object> {
        @Override // java.util.AbstractMap, java.util.Map
        public final /* bridge */ /* synthetic */ Object put(Object obj, Object obj2) {
            return f((FieldSet.FieldDescriptorLite) obj, obj2);
        }
    }

    public static class EmptySet {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final Iterator f73763a = new AnonymousClass1();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final Iterable f73764b = new AnonymousClass2();

        /* JADX INFO: renamed from: kotlin.reflect.jvm.internal.impl.protobuf.SmallSortedMap$EmptySet$1, reason: invalid class name */
        public static class AnonymousClass1 implements Iterator<Object> {
            @Override // java.util.Iterator
            public final boolean hasNext() {
                return false;
            }

            @Override // java.util.Iterator
            public final Object next() {
                throw new NoSuchElementException();
            }

            @Override // java.util.Iterator
            public final void remove() {
                throw new UnsupportedOperationException();
            }
        }

        /* JADX INFO: renamed from: kotlin.reflect.jvm.internal.impl.protobuf.SmallSortedMap$EmptySet$2, reason: invalid class name */
        public static class AnonymousClass2 implements Iterable<Object> {
            @Override // java.lang.Iterable
            public final Iterator<Object> iterator() {
                return EmptySet.f73763a;
            }
        }
    }

    public class Entry implements Comparable<SmallSortedMap<K, V>.Entry>, Map.Entry<K, V> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Comparable f73765b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public Object f73766c;

        public Entry(Comparable comparable, Object obj) {
            this.f73765b = comparable;
            this.f73766c = obj;
        }

        @Override // java.lang.Comparable
        public final int compareTo(Object obj) {
            return this.f73765b.compareTo(((Entry) obj).f73765b);
        }

        @Override // java.util.Map.Entry
        public final boolean equals(Object obj) {
            boolean zEquals;
            boolean zEquals2;
            if (obj != this) {
                if (obj instanceof Map.Entry) {
                    Map.Entry entry = (Map.Entry) obj;
                    Object key = entry.getKey();
                    Comparable comparable = this.f73765b;
                    if (comparable == null) {
                        zEquals = key == null;
                    } else {
                        zEquals = comparable.equals(key);
                    }
                    if (zEquals) {
                        Object obj2 = this.f73766c;
                        Object value = entry.getValue();
                        if (obj2 == null) {
                            zEquals2 = value == null;
                        } else {
                            zEquals2 = obj2.equals(value);
                        }
                        if (zEquals2) {
                        }
                    }
                }
                return false;
            }
            return true;
        }

        @Override // java.util.Map.Entry
        public final Object getKey() {
            return this.f73765b;
        }

        @Override // java.util.Map.Entry
        public final Object getValue() {
            return this.f73766c;
        }

        @Override // java.util.Map.Entry
        public final int hashCode() {
            Comparable comparable = this.f73765b;
            int iHashCode = comparable == null ? 0 : comparable.hashCode();
            Object obj = this.f73766c;
            return iHashCode ^ (obj != null ? obj.hashCode() : 0);
        }

        @Override // java.util.Map.Entry
        public final Object setValue(Object obj) {
            int i2 = SmallSortedMap.g;
            SmallSortedMap.this.c();
            Object obj2 = this.f73766c;
            this.f73766c = obj;
            return obj2;
        }

        public final String toString() {
            String strValueOf = String.valueOf(this.f73765b);
            String strValueOf2 = String.valueOf(this.f73766c);
            return d21.p(new StringBuilder(strValueOf2.length() + strValueOf.length() + 1), strValueOf, "=", strValueOf2);
        }
    }

    public class EntryIterator implements Iterator<Map.Entry<K, V>> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f73767b = -1;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public boolean f73768c;
        public Iterator d;

        public EntryIterator() {
        }

        public final Iterator a() {
            if (this.d == null) {
                this.d = SmallSortedMap.this.d.entrySet().iterator();
            }
            return this.d;
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            return this.f73767b + 1 < SmallSortedMap.this.f73760c.size() || a().hasNext();
        }

        @Override // java.util.Iterator
        public final Object next() {
            this.f73768c = true;
            int i2 = this.f73767b + 1;
            this.f73767b = i2;
            SmallSortedMap smallSortedMap = SmallSortedMap.this;
            return i2 < smallSortedMap.f73760c.size() ? (Map.Entry) smallSortedMap.f73760c.get(this.f73767b) : (Map.Entry) a().next();
        }

        @Override // java.util.Iterator
        public final void remove() {
            if (!this.f73768c) {
                md.k("remove() was called before next()");
                return;
            }
            this.f73768c = false;
            int i2 = SmallSortedMap.g;
            SmallSortedMap smallSortedMap = SmallSortedMap.this;
            smallSortedMap.c();
            if (this.f73767b >= smallSortedMap.f73760c.size()) {
                a().remove();
                return;
            }
            int i3 = this.f73767b;
            this.f73767b = i3 - 1;
            smallSortedMap.g(i3);
        }
    }

    public class EntrySet extends AbstractSet<Map.Entry<K, V>> {
        public EntrySet() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean add(Object obj) {
            Map.Entry entry = (Map.Entry) obj;
            if (contains(entry)) {
                return false;
            }
            SmallSortedMap.this.f((Comparable) entry.getKey(), entry.getValue());
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final void clear() {
            SmallSortedMap.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean contains(Object obj) {
            Map.Entry entry = (Map.Entry) obj;
            Object obj2 = SmallSortedMap.this.get(entry.getKey());
            Object value = entry.getValue();
            if (obj2 != value) {
                return obj2 != null && obj2.equals(value);
            }
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public final Iterator iterator() {
            return new EntryIterator();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean remove(Object obj) {
            Map.Entry entry = (Map.Entry) obj;
            if (!contains(entry)) {
                return false;
            }
            SmallSortedMap.this.remove(entry.getKey());
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final int size() {
            return SmallSortedMap.this.size();
        }
    }

    public SmallSortedMap(int i2) {
        this.f73759b = i2;
    }

    /* JADX WARN: Code duplicated, block: B:13:0x0024  */
    /* JADX WARN: Code duplicated, block: B:17:0x003e  */
    /* JADX WARN: Code duplicated, block: B:21:0x003c A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:22:0x0042 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:23:0x0038 A[SYNTHETIC] */
    public final int a(Comparable comparable) {
        int i2;
        int i3;
        int i4;
        int iCompareTo;
        int size = this.f73760c.size();
        int i5 = size - 1;
        if (i5 < 0) {
            i2 = 0;
            while (i2 <= i5) {
                i4 = (i2 + i5) / 2;
                iCompareTo = comparable.compareTo(((Entry) this.f73760c.get(i4)).f73765b);
                if (iCompareTo < 0) {
                    i5 = i4 - 1;
                } else {
                    if (iCompareTo > 0) {
                        return i4;
                    }
                    i2 = i4 + 1;
                }
            }
            i3 = i2 + 1;
        } else {
            int iCompareTo2 = comparable.compareTo(((Entry) this.f73760c.get(i5)).f73765b);
            if (iCompareTo2 > 0) {
                i3 = size + 1;
            } else {
                if (iCompareTo2 == 0) {
                    return i5;
                }
                i2 = 0;
                while (i2 <= i5) {
                    i4 = (i2 + i5) / 2;
                    iCompareTo = comparable.compareTo(((Entry) this.f73760c.get(i4)).f73765b);
                    if (iCompareTo < 0) {
                        i5 = i4 - 1;
                    } else {
                        if (iCompareTo > 0) {
                            return i4;
                        }
                        i2 = i4 + 1;
                    }
                }
                i3 = i2 + 1;
            }
        }
        return -i3;
    }

    public final void c() {
        if (this.f73761e) {
            x1.i();
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final void clear() {
        c();
        if (!this.f73760c.isEmpty()) {
            this.f73760c.clear();
        }
        if (this.d.isEmpty()) {
            return;
        }
        this.d.clear();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean containsKey(Object obj) {
        Comparable comparable = (Comparable) obj;
        return a(comparable) >= 0 || this.d.containsKey(comparable);
    }

    public final Iterable d() {
        return this.d.isEmpty() ? EmptySet.f73764b : this.d.entrySet();
    }

    public final SortedMap e() {
        c();
        if (this.d.isEmpty() && !(this.d instanceof TreeMap)) {
            this.d = new TreeMap();
        }
        return (SortedMap) this.d;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set entrySet() {
        if (this.f73762f == null) {
            this.f73762f = new EntrySet();
        }
        return this.f73762f;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final Object f(Comparable comparable, Object obj) {
        c();
        int iA = a(comparable);
        if (iA >= 0) {
            return ((Entry) this.f73760c.get(iA)).setValue(obj);
        }
        c();
        boolean zIsEmpty = this.f73760c.isEmpty();
        int i2 = this.f73759b;
        if (zIsEmpty && !(this.f73760c instanceof ArrayList)) {
            this.f73760c = new ArrayList(i2);
        }
        int i3 = -(iA + 1);
        if (i3 >= i2) {
            return e().put(comparable, obj);
        }
        if (this.f73760c.size() == i2) {
            Entry entry = (Entry) this.f73760c.remove(i2 - 1);
            e().put(entry.f73765b, entry.f73766c);
        }
        this.f73760c.add(i3, new Entry(comparable, obj));
        return null;
    }

    public final Object g(int i2) {
        c();
        Object obj = ((Entry) this.f73760c.remove(i2)).f73766c;
        if (!this.d.isEmpty()) {
            Iterator it = e().entrySet().iterator();
            List list = this.f73760c;
            Map.Entry entry = (Map.Entry) it.next();
            list.add(new Entry((Comparable) entry.getKey(), entry.getValue()));
            it.remove();
        }
        return obj;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object get(Object obj) {
        Comparable comparable = (Comparable) obj;
        int iA = a(comparable);
        return iA >= 0 ? ((Entry) this.f73760c.get(iA)).f73766c : this.d.get(comparable);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object remove(Object obj) {
        c();
        Comparable comparable = (Comparable) obj;
        int iA = a(comparable);
        if (iA >= 0) {
            return g(iA);
        }
        if (this.d.isEmpty()) {
            return null;
        }
        return this.d.remove(comparable);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int size() {
        return this.d.size() + this.f73760c.size();
    }
}
