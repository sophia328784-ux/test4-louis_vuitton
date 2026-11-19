package androidx.arch.core.internal;

import java.util.Iterator;
import java.util.Map;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes.dex */
public class SafeIterableMap<K, V> implements Iterable<Map.Entry<K, V>> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Entry f1358b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Entry f1359c;
    public final WeakHashMap d = new WeakHashMap();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f1360e = 0;

    public static class AscendingIterator<K, V> extends ListIterator<K, V> {
    }

    public static class Entry<K, V> implements Map.Entry<K, V> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Object f1361b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Object f1362c;
        public Entry d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public Entry f1363e;

        public Entry(Object obj, Object obj2) {
            this.f1361b = obj;
            this.f1362c = obj2;
        }

        @Override // java.util.Map.Entry
        public final boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof Entry)) {
                return false;
            }
            Entry entry = (Entry) obj;
            return this.f1361b.equals(entry.f1361b) && this.f1362c.equals(entry.f1362c);
        }

        @Override // java.util.Map.Entry
        public final Object getKey() {
            return this.f1361b;
        }

        @Override // java.util.Map.Entry
        public final Object getValue() {
            return this.f1362c;
        }

        @Override // java.util.Map.Entry
        public final int hashCode() {
            return this.f1362c.hashCode() ^ this.f1361b.hashCode();
        }

        @Override // java.util.Map.Entry
        public final Object setValue(Object obj) {
            throw new UnsupportedOperationException("An entry modification is not supported");
        }

        public final String toString() {
            return this.f1361b + "=" + this.f1362c;
        }
    }

    public class IteratorWithAdditions extends SupportRemove<K, V> implements Iterator<Map.Entry<K, V>> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public Entry f1364b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public boolean f1365c = true;

        public IteratorWithAdditions() {
        }

        @Override // androidx.arch.core.internal.SafeIterableMap.SupportRemove
        public final void a(Entry entry) {
            Entry entry2 = this.f1364b;
            if (entry == entry2) {
                Entry entry3 = entry2.f1363e;
                this.f1364b = entry3;
                this.f1365c = entry3 == null;
            }
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            if (this.f1365c) {
                return SafeIterableMap.this.f1358b != null;
            }
            Entry entry = this.f1364b;
            return (entry == null || entry.d == null) ? false : true;
        }

        @Override // java.util.Iterator
        public final Object next() {
            if (this.f1365c) {
                this.f1365c = false;
                this.f1364b = SafeIterableMap.this.f1358b;
            } else {
                Entry entry = this.f1364b;
                this.f1364b = entry != null ? entry.d : null;
            }
            return this.f1364b;
        }
    }

    public static abstract class ListIterator<K, V> extends SupportRemove<K, V> implements Iterator<Map.Entry<K, V>> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public Entry f1366b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public Entry f1367c;

        @Override // androidx.arch.core.internal.SafeIterableMap.SupportRemove
        public final void a(Entry entry) {
            Entry entry2 = null;
            if (this.f1366b == entry && entry == this.f1367c) {
                this.f1367c = null;
                this.f1366b = null;
            }
            Entry entry3 = this.f1366b;
            if (entry3 == entry) {
                this.f1366b = entry3.f1363e;
            }
            Entry entry4 = this.f1367c;
            if (entry4 == entry) {
                Entry entry5 = this.f1366b;
                if (entry4 != entry5 && entry5 != null) {
                    entry2 = entry4.d;
                }
                this.f1367c = entry2;
            }
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            return this.f1367c != null;
        }

        @Override // java.util.Iterator
        public final Object next() {
            Entry entry = this.f1367c;
            Entry entry2 = this.f1366b;
            this.f1367c = (entry == entry2 || entry2 == null) ? null : entry.d;
            return entry;
        }
    }

    public static abstract class SupportRemove<K, V> {
        public abstract void a(Entry entry);
    }

    public final Object a(Object obj, Object obj2) {
        Entry entry = this.f1358b;
        while (entry != null && !entry.f1361b.equals(obj)) {
            entry = entry.d;
        }
        if (entry != null) {
            return entry.f1362c;
        }
        Entry entry2 = new Entry(obj, obj2);
        this.f1360e++;
        Entry entry3 = this.f1359c;
        if (entry3 == null) {
            this.f1358b = entry2;
            this.f1359c = entry2;
            return null;
        }
        entry3.d = entry2;
        entry2.f1363e = entry3;
        this.f1359c = entry2;
        return null;
    }

    public final Object b(Object obj) {
        Entry entry = this.f1358b;
        while (entry != null && !entry.f1361b.equals(obj)) {
            entry = entry.d;
        }
        if (entry == null) {
            return null;
        }
        this.f1360e--;
        WeakHashMap weakHashMap = this.d;
        if (!weakHashMap.isEmpty()) {
            Iterator<K> it = weakHashMap.keySet().iterator();
            while (it.hasNext()) {
                ((SupportRemove) it.next()).a(entry);
            }
        }
        Entry entry2 = entry.f1363e;
        Entry entry3 = entry.d;
        if (entry2 != null) {
            entry2.d = entry3;
        } else {
            this.f1358b = entry3;
        }
        Entry entry4 = entry.d;
        if (entry4 != null) {
            entry4.f1363e = entry2;
        } else {
            this.f1359c = entry2;
        }
        entry.d = null;
        entry.f1363e = null;
        return entry.f1362c;
    }

    public final boolean equals(Object obj) {
        ListIterator listIterator;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof SafeIterableMap)) {
            return false;
        }
        SafeIterableMap safeIterableMap = (SafeIterableMap) obj;
        if (this.f1360e != safeIterableMap.f1360e) {
            return false;
        }
        Iterator it = iterator();
        Iterator it2 = safeIterableMap.iterator();
        while (true) {
            listIterator = (ListIterator) it;
            if (!listIterator.hasNext()) {
                break;
            }
            ListIterator listIterator2 = (ListIterator) it2;
            if (!listIterator2.hasNext()) {
                break;
            }
            Map.Entry entry = (Map.Entry) listIterator.next();
            Object next = listIterator2.next();
            if ((entry == null && next != null) || (entry != null && !entry.equals(next))) {
                return false;
            }
        }
        return (listIterator.hasNext() || ((ListIterator) it2).hasNext()) ? false : true;
    }

    public final int hashCode() {
        Iterator it = iterator();
        int iHashCode = 0;
        while (true) {
            ListIterator listIterator = (ListIterator) it;
            if (!listIterator.hasNext()) {
                return iHashCode;
            }
            iHashCode += ((Map.Entry) listIterator.next()).hashCode();
        }
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        Entry entry = this.f1358b;
        Entry entry2 = this.f1359c;
        AscendingIterator ascendingIterator = new AscendingIterator();
        ascendingIterator.f1366b = entry2;
        ascendingIterator.f1367c = entry;
        this.d.put(ascendingIterator, Boolean.FALSE);
        return ascendingIterator;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("[");
        Iterator it = iterator();
        while (true) {
            ListIterator listIterator = (ListIterator) it;
            if (!listIterator.hasNext()) {
                sb.append("]");
                return sb.toString();
            }
            sb.append(((Map.Entry) listIterator.next()).toString());
            if (listIterator.hasNext()) {
                sb.append(", ");
            }
        }
    }
}
