package com.google.crypto.tink.shaded.protobuf;

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

/* JADX INFO: loaded from: classes2.dex */
abstract class SmallSortedMap<K extends Comparable<K>, V> extends AbstractMap<K, V> {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final /* synthetic */ int f34238i = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f34239b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public List f34240c = Collections.EMPTY_LIST;
    public Map d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f34241e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public volatile EntrySet f34242f;
    public Map g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public volatile DescendingEntrySet f34243h;

    /* JADX INFO: renamed from: com.google.crypto.tink.shaded.protobuf.SmallSortedMap$1, reason: invalid class name */
    class AnonymousClass1 extends SmallSortedMap<FieldSet.FieldDescriptorLite<Object>, Object> {
        @Override // java.util.AbstractMap, java.util.Map
        public final /* bridge */ /* synthetic */ Object put(Object obj, Object obj2) {
            return g((Comparable) obj, obj2);
        }
    }

    public class DescendingEntryIterator implements Iterator<Map.Entry<K, V>> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f34244b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public Iterator f34245c;

        public DescendingEntryIterator() {
            this.f34244b = SmallSortedMap.this.f34240c.size();
        }

        public final Iterator a() {
            if (this.f34245c == null) {
                this.f34245c = SmallSortedMap.this.g.entrySet().iterator();
            }
            return this.f34245c;
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            int i2 = this.f34244b;
            return (i2 > 0 && i2 <= SmallSortedMap.this.f34240c.size()) || a().hasNext();
        }

        @Override // java.util.Iterator
        public final Object next() {
            if (a().hasNext()) {
                return (Map.Entry) a().next();
            }
            List list = SmallSortedMap.this.f34240c;
            int i2 = this.f34244b - 1;
            this.f34244b = i2;
            return (Map.Entry) list.get(i2);
        }

        @Override // java.util.Iterator
        public final void remove() {
            throw new UnsupportedOperationException();
        }
    }

    public class DescendingEntrySet extends SmallSortedMap<K, V>.EntrySet {
        public DescendingEntrySet() {
            super();
        }

        @Override // com.google.crypto.tink.shaded.protobuf.SmallSortedMap.EntrySet, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public final Iterator iterator() {
            return new DescendingEntryIterator();
        }
    }

    public static class EmptySet {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final Iterator f34247a = new AnonymousClass1();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final Iterable f34248b = new AnonymousClass2();

        /* JADX INFO: renamed from: com.google.crypto.tink.shaded.protobuf.SmallSortedMap$EmptySet$1, reason: invalid class name */
        public class AnonymousClass1 implements Iterator<Object> {
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

        /* JADX INFO: renamed from: com.google.crypto.tink.shaded.protobuf.SmallSortedMap$EmptySet$2, reason: invalid class name */
        public class AnonymousClass2 implements Iterable<Object> {
            @Override // java.lang.Iterable
            public final Iterator<Object> iterator() {
                return EmptySet.f34247a;
            }
        }
    }

    public class Entry implements Map.Entry<K, V>, Comparable<SmallSortedMap<K, V>.Entry> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Comparable f34249b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public Object f34250c;

        public Entry(Comparable comparable, Object obj) {
            this.f34249b = comparable;
            this.f34250c = obj;
        }

        @Override // java.lang.Comparable
        public final int compareTo(Object obj) {
            return this.f34249b.compareTo(((Entry) obj).f34249b);
        }

        @Override // java.util.Map.Entry
        public final boolean equals(Object obj) {
            boolean zEquals;
            boolean zEquals2;
            if (obj != this) {
                if (obj instanceof Map.Entry) {
                    Map.Entry entry = (Map.Entry) obj;
                    Object key = entry.getKey();
                    Comparable comparable = this.f34249b;
                    if (comparable == null) {
                        zEquals = key == null;
                    } else {
                        zEquals = comparable.equals(key);
                    }
                    if (zEquals) {
                        Object obj2 = this.f34250c;
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
            return this.f34249b;
        }

        @Override // java.util.Map.Entry
        public final Object getValue() {
            return this.f34250c;
        }

        @Override // java.util.Map.Entry
        public final int hashCode() {
            Comparable comparable = this.f34249b;
            int iHashCode = comparable == null ? 0 : comparable.hashCode();
            Object obj = this.f34250c;
            return iHashCode ^ (obj != null ? obj.hashCode() : 0);
        }

        @Override // java.util.Map.Entry
        public final Object setValue(Object obj) {
            int i2 = SmallSortedMap.f34238i;
            SmallSortedMap.this.c();
            Object obj2 = this.f34250c;
            this.f34250c = obj;
            return obj2;
        }

        public final String toString() {
            return this.f34249b + "=" + this.f34250c;
        }
    }

    public class EntryIterator implements Iterator<Map.Entry<K, V>> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f34251b = -1;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public boolean f34252c;
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
            int i2 = this.f34251b + 1;
            SmallSortedMap smallSortedMap = SmallSortedMap.this;
            return i2 < smallSortedMap.f34240c.size() || (!smallSortedMap.d.isEmpty() && a().hasNext());
        }

        @Override // java.util.Iterator
        public final Object next() {
            this.f34252c = true;
            int i2 = this.f34251b + 1;
            this.f34251b = i2;
            SmallSortedMap smallSortedMap = SmallSortedMap.this;
            return i2 < smallSortedMap.f34240c.size() ? (Map.Entry) smallSortedMap.f34240c.get(this.f34251b) : (Map.Entry) a().next();
        }

        @Override // java.util.Iterator
        public final void remove() {
            if (!this.f34252c) {
                md.k("remove() was called before next()");
                return;
            }
            this.f34252c = false;
            int i2 = SmallSortedMap.f34238i;
            SmallSortedMap smallSortedMap = SmallSortedMap.this;
            smallSortedMap.c();
            if (this.f34251b >= smallSortedMap.f34240c.size()) {
                a().remove();
                return;
            }
            int i3 = this.f34251b;
            this.f34251b = i3 - 1;
            smallSortedMap.h(i3);
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
            SmallSortedMap.this.g((Comparable) entry.getKey(), entry.getValue());
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
        public Iterator iterator() {
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
        this.f34239b = i2;
        Map map = Collections.EMPTY_MAP;
        this.d = map;
        this.g = map;
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
        int size = this.f34240c.size();
        int i5 = size - 1;
        if (i5 < 0) {
            i2 = 0;
            while (i2 <= i5) {
                i4 = (i2 + i5) / 2;
                iCompareTo = comparable.compareTo(((Entry) this.f34240c.get(i4)).f34249b);
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
            int iCompareTo2 = comparable.compareTo(((Entry) this.f34240c.get(i5)).f34249b);
            if (iCompareTo2 > 0) {
                i3 = size + 1;
            } else {
                if (iCompareTo2 == 0) {
                    return i5;
                }
                i2 = 0;
                while (i2 <= i5) {
                    i4 = (i2 + i5) / 2;
                    iCompareTo = comparable.compareTo(((Entry) this.f34240c.get(i4)).f34249b);
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
        if (this.f34241e) {
            x1.i();
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final void clear() {
        c();
        if (!this.f34240c.isEmpty()) {
            this.f34240c.clear();
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

    public final Map.Entry d(int i2) {
        return (Map.Entry) this.f34240c.get(i2);
    }

    public final Iterable e() {
        return this.d.isEmpty() ? EmptySet.f34248b : this.d.entrySet();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set entrySet() {
        if (this.f34242f == null) {
            this.f34242f = new EntrySet();
        }
        return this.f34242f;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SmallSortedMap)) {
            return super.equals(obj);
        }
        SmallSortedMap smallSortedMap = (SmallSortedMap) obj;
        int size = size();
        if (size == smallSortedMap.size()) {
            int size2 = this.f34240c.size();
            if (size2 != smallSortedMap.f34240c.size()) {
                return ((AbstractSet) entrySet()).equals(smallSortedMap.entrySet());
            }
            for (int i2 = 0; i2 < size2; i2++) {
                if (d(i2).equals(smallSortedMap.d(i2))) {
                }
            }
            if (size2 != size) {
                return this.d.equals(smallSortedMap.d);
            }
            return true;
        }
        return false;
    }

    public final SortedMap f() {
        c();
        if (this.d.isEmpty() && !(this.d instanceof TreeMap)) {
            TreeMap treeMap = new TreeMap();
            this.d = treeMap;
            this.g = treeMap.descendingMap();
        }
        return (SortedMap) this.d;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final Object g(Comparable comparable, Object obj) {
        c();
        int iA = a(comparable);
        if (iA >= 0) {
            return ((Entry) this.f34240c.get(iA)).setValue(obj);
        }
        c();
        boolean zIsEmpty = this.f34240c.isEmpty();
        int i2 = this.f34239b;
        if (zIsEmpty && !(this.f34240c instanceof ArrayList)) {
            this.f34240c = new ArrayList(i2);
        }
        int i3 = -(iA + 1);
        if (i3 >= i2) {
            return f().put(comparable, obj);
        }
        if (this.f34240c.size() == i2) {
            Entry entry = (Entry) this.f34240c.remove(i2 - 1);
            f().put(entry.f34249b, entry.f34250c);
        }
        this.f34240c.add(i3, new Entry(comparable, obj));
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object get(Object obj) {
        Comparable comparable = (Comparable) obj;
        int iA = a(comparable);
        return iA >= 0 ? ((Entry) this.f34240c.get(iA)).f34250c : this.d.get(comparable);
    }

    public final Object h(int i2) {
        c();
        Object obj = ((Entry) this.f34240c.remove(i2)).f34250c;
        if (!this.d.isEmpty()) {
            Iterator it = f().entrySet().iterator();
            List list = this.f34240c;
            Map.Entry entry = (Map.Entry) it.next();
            list.add(new Entry((Comparable) entry.getKey(), entry.getValue()));
            it.remove();
        }
        return obj;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int hashCode() {
        int size = this.f34240c.size();
        int iHashCode = 0;
        for (int i2 = 0; i2 < size; i2++) {
            iHashCode += ((Entry) this.f34240c.get(i2)).hashCode();
        }
        return this.d.size() > 0 ? this.d.hashCode() + iHashCode : iHashCode;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object remove(Object obj) {
        c();
        Comparable comparable = (Comparable) obj;
        int iA = a(comparable);
        if (iA >= 0) {
            return h(iA);
        }
        if (this.d.isEmpty()) {
            return null;
        }
        return this.d.remove(comparable);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int size() {
        return this.d.size() + this.f34240c.size();
    }
}
