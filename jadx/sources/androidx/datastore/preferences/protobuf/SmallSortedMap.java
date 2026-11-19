package androidx.datastore.preferences.protobuf;

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
import java.util.Set;
import java.util.SortedMap;
import java.util.TreeMap;

/* JADX INFO: loaded from: classes.dex */
abstract class SmallSortedMap<K extends Comparable<K>, V> extends AbstractMap<K, V> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final /* synthetic */ int f12996h = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public List f12997b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Map f12998c;
    public boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public volatile EntrySet f12999e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Map f13000f;
    public volatile DescendingEntrySet g;

    /* JADX INFO: renamed from: androidx.datastore.preferences.protobuf.SmallSortedMap$1, reason: invalid class name */
    class AnonymousClass1 extends SmallSortedMap<FieldSet.FieldDescriptorLite<Object>, Object> {
        @Override // java.util.AbstractMap, java.util.Map
        public final /* bridge */ /* synthetic */ Object put(Object obj, Object obj2) {
            return h((Comparable) obj, obj2);
        }
    }

    public class DescendingEntryIterator implements Iterator<Map.Entry<K, V>> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f13001b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public Iterator f13002c;

        public DescendingEntryIterator() {
            this.f13001b = SmallSortedMap.this.f12997b.size();
        }

        public final Iterator a() {
            if (this.f13002c == null) {
                this.f13002c = SmallSortedMap.this.f13000f.entrySet().iterator();
            }
            return this.f13002c;
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            int i2 = this.f13001b;
            return (i2 > 0 && i2 <= SmallSortedMap.this.f12997b.size()) || a().hasNext();
        }

        @Override // java.util.Iterator
        public final Object next() {
            if (a().hasNext()) {
                return (Map.Entry) a().next();
            }
            List list = SmallSortedMap.this.f12997b;
            int i2 = this.f13001b - 1;
            this.f13001b = i2;
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

        @Override // androidx.datastore.preferences.protobuf.SmallSortedMap.EntrySet, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public final Iterator iterator() {
            return new DescendingEntryIterator();
        }
    }

    public class Entry implements Map.Entry<K, V>, Comparable<SmallSortedMap<K, V>.Entry> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Comparable f13004b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public Object f13005c;

        public Entry(Comparable comparable, Object obj) {
            this.f13004b = comparable;
            this.f13005c = obj;
        }

        @Override // java.lang.Comparable
        public final int compareTo(Object obj) {
            return this.f13004b.compareTo(((Entry) obj).f13004b);
        }

        @Override // java.util.Map.Entry
        public final boolean equals(Object obj) {
            boolean zEquals;
            boolean zEquals2;
            if (obj != this) {
                if (obj instanceof Map.Entry) {
                    Map.Entry entry = (Map.Entry) obj;
                    Object key = entry.getKey();
                    Comparable comparable = this.f13004b;
                    if (comparable == null) {
                        zEquals = key == null;
                    } else {
                        zEquals = comparable.equals(key);
                    }
                    if (zEquals) {
                        Object obj2 = this.f13005c;
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
            return this.f13004b;
        }

        @Override // java.util.Map.Entry
        public final Object getValue() {
            return this.f13005c;
        }

        @Override // java.util.Map.Entry
        public final int hashCode() {
            Comparable comparable = this.f13004b;
            int iHashCode = comparable == null ? 0 : comparable.hashCode();
            Object obj = this.f13005c;
            return iHashCode ^ (obj != null ? obj.hashCode() : 0);
        }

        @Override // java.util.Map.Entry
        public final Object setValue(Object obj) {
            int i2 = SmallSortedMap.f12996h;
            SmallSortedMap.this.c();
            Object obj2 = this.f13005c;
            this.f13005c = obj;
            return obj2;
        }

        public final String toString() {
            return this.f13004b + "=" + this.f13005c;
        }
    }

    public class EntryIterator implements Iterator<Map.Entry<K, V>> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f13006b = -1;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public boolean f13007c;
        public Iterator d;

        public EntryIterator() {
        }

        public final Iterator a() {
            if (this.d == null) {
                this.d = SmallSortedMap.this.f12998c.entrySet().iterator();
            }
            return this.d;
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            int i2 = this.f13006b + 1;
            SmallSortedMap smallSortedMap = SmallSortedMap.this;
            return i2 < smallSortedMap.f12997b.size() || (!smallSortedMap.f12998c.isEmpty() && a().hasNext());
        }

        @Override // java.util.Iterator
        public final Object next() {
            this.f13007c = true;
            int i2 = this.f13006b + 1;
            this.f13006b = i2;
            SmallSortedMap smallSortedMap = SmallSortedMap.this;
            return i2 < smallSortedMap.f12997b.size() ? (Map.Entry) smallSortedMap.f12997b.get(this.f13006b) : (Map.Entry) a().next();
        }

        @Override // java.util.Iterator
        public final void remove() {
            if (!this.f13007c) {
                md.k("remove() was called before next()");
                return;
            }
            this.f13007c = false;
            int i2 = SmallSortedMap.f12996h;
            SmallSortedMap smallSortedMap = SmallSortedMap.this;
            smallSortedMap.c();
            if (this.f13006b >= smallSortedMap.f12997b.size()) {
                a().remove();
                return;
            }
            int i3 = this.f13006b;
            this.f13006b = i3 - 1;
            smallSortedMap.i(i3);
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
            SmallSortedMap.this.h((Comparable) entry.getKey(), entry.getValue());
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

    public static AnonymousClass1 g() {
        AnonymousClass1 anonymousClass1 = new AnonymousClass1();
        anonymousClass1.f12997b = Collections.EMPTY_LIST;
        Map map = Collections.EMPTY_MAP;
        anonymousClass1.f12998c = map;
        anonymousClass1.f13000f = map;
        return anonymousClass1;
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
        int size = this.f12997b.size();
        int i5 = size - 1;
        if (i5 < 0) {
            i2 = 0;
            while (i2 <= i5) {
                i4 = (i2 + i5) / 2;
                iCompareTo = comparable.compareTo(((Entry) this.f12997b.get(i4)).f13004b);
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
            int iCompareTo2 = comparable.compareTo(((Entry) this.f12997b.get(i5)).f13004b);
            if (iCompareTo2 > 0) {
                i3 = size + 1;
            } else {
                if (iCompareTo2 == 0) {
                    return i5;
                }
                i2 = 0;
                while (i2 <= i5) {
                    i4 = (i2 + i5) / 2;
                    iCompareTo = comparable.compareTo(((Entry) this.f12997b.get(i4)).f13004b);
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
        if (this.d) {
            x1.i();
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final void clear() {
        c();
        if (!this.f12997b.isEmpty()) {
            this.f12997b.clear();
        }
        if (this.f12998c.isEmpty()) {
            return;
        }
        this.f12998c.clear();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean containsKey(Object obj) {
        Comparable comparable = (Comparable) obj;
        return a(comparable) >= 0 || this.f12998c.containsKey(comparable);
    }

    public final Map.Entry d(int i2) {
        return (Map.Entry) this.f12997b.get(i2);
    }

    public final Set e() {
        return this.f12998c.isEmpty() ? Collections.EMPTY_SET : this.f12998c.entrySet();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set entrySet() {
        if (this.f12999e == null) {
            this.f12999e = new EntrySet();
        }
        return this.f12999e;
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
            int size2 = this.f12997b.size();
            if (size2 != smallSortedMap.f12997b.size()) {
                return ((AbstractSet) entrySet()).equals(smallSortedMap.entrySet());
            }
            for (int i2 = 0; i2 < size2; i2++) {
                if (d(i2).equals(smallSortedMap.d(i2))) {
                }
            }
            if (size2 != size) {
                return this.f12998c.equals(smallSortedMap.f12998c);
            }
            return true;
        }
        return false;
    }

    public final SortedMap f() {
        c();
        if (this.f12998c.isEmpty() && !(this.f12998c instanceof TreeMap)) {
            TreeMap treeMap = new TreeMap();
            this.f12998c = treeMap;
            this.f13000f = treeMap.descendingMap();
        }
        return (SortedMap) this.f12998c;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object get(Object obj) {
        Comparable comparable = (Comparable) obj;
        int iA = a(comparable);
        return iA >= 0 ? ((Entry) this.f12997b.get(iA)).f13005c : this.f12998c.get(comparable);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final Object h(Comparable comparable, Object obj) {
        c();
        int iA = a(comparable);
        if (iA >= 0) {
            return ((Entry) this.f12997b.get(iA)).setValue(obj);
        }
        c();
        if (this.f12997b.isEmpty() && !(this.f12997b instanceof ArrayList)) {
            this.f12997b = new ArrayList(16);
        }
        int i2 = -(iA + 1);
        if (i2 >= 16) {
            return f().put(comparable, obj);
        }
        if (this.f12997b.size() == 16) {
            Entry entry = (Entry) this.f12997b.remove(15);
            f().put(entry.f13004b, entry.f13005c);
        }
        this.f12997b.add(i2, new Entry(comparable, obj));
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int hashCode() {
        int size = this.f12997b.size();
        int iHashCode = 0;
        for (int i2 = 0; i2 < size; i2++) {
            iHashCode += ((Entry) this.f12997b.get(i2)).hashCode();
        }
        return this.f12998c.size() > 0 ? this.f12998c.hashCode() + iHashCode : iHashCode;
    }

    public final Object i(int i2) {
        c();
        Object obj = ((Entry) this.f12997b.remove(i2)).f13005c;
        if (!this.f12998c.isEmpty()) {
            Iterator it = f().entrySet().iterator();
            List list = this.f12997b;
            Map.Entry entry = (Map.Entry) it.next();
            list.add(new Entry((Comparable) entry.getKey(), entry.getValue()));
            it.remove();
        }
        return obj;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object remove(Object obj) {
        c();
        Comparable comparable = (Comparable) obj;
        int iA = a(comparable);
        if (iA >= 0) {
            return i(iA);
        }
        if (this.f12998c.isEmpty()) {
            return null;
        }
        return this.f12998c.remove(comparable);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int size() {
        return this.f12998c.size() + this.f12997b.size();
    }
}
