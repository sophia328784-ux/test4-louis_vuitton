package androidx.collection;

import defpackage.b21;
import defpackage.md;
import defpackage.r81;
import java.lang.reflect.Array;
import java.util.AbstractSet;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public class ArrayMap<K, V> extends SimpleArrayMap<K, V> implements Map<K, V> {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public EntrySet f3219e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public KeySet f3220f;
    public ValueCollection g;

    public final class EntrySet extends AbstractSet<Map.Entry<K, V>> {
        public EntrySet() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public final Iterator iterator() {
            return new MapIterator();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final int size() {
            return ArrayMap.this.d;
        }
    }

    public final class KeyIterator extends IndexBasedArrayIterator<K> {
        public KeyIterator() {
            super(ArrayMap.this.d);
        }

        @Override // androidx.collection.IndexBasedArrayIterator
        public final Object a(int i2) {
            return ArrayMap.this.g(i2);
        }

        @Override // androidx.collection.IndexBasedArrayIterator
        public final void c(int i2) {
            ArrayMap.this.i(i2);
        }
    }

    public final class MapIterator implements Iterator<Map.Entry<K, V>>, Map.Entry<K, V> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f3224b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f3225c = -1;
        public boolean d;

        public MapIterator() {
            this.f3224b = ArrayMap.this.d - 1;
        }

        @Override // java.util.Map.Entry
        public final boolean equals(Object obj) {
            if (!this.d) {
                md.k("This container does not support retaining Map.Entry objects");
                return false;
            }
            if (obj instanceof Map.Entry) {
                Map.Entry entry = (Map.Entry) obj;
                Object key = entry.getKey();
                int i2 = this.f3225c;
                ArrayMap arrayMap = ArrayMap.this;
                if (Intrinsics.c(key, arrayMap.g(i2)) && Intrinsics.c(entry.getValue(), arrayMap.k(this.f3225c))) {
                    return true;
                }
            }
            return false;
        }

        @Override // java.util.Map.Entry
        public final Object getKey() {
            if (this.d) {
                return ArrayMap.this.g(this.f3225c);
            }
            md.k("This container does not support retaining Map.Entry objects");
            return null;
        }

        @Override // java.util.Map.Entry
        public final Object getValue() {
            if (this.d) {
                return ArrayMap.this.k(this.f3225c);
            }
            md.k("This container does not support retaining Map.Entry objects");
            return null;
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            return this.f3225c < this.f3224b;
        }

        @Override // java.util.Map.Entry
        public final int hashCode() {
            if (!this.d) {
                md.k("This container does not support retaining Map.Entry objects");
                return 0;
            }
            int i2 = this.f3225c;
            ArrayMap arrayMap = ArrayMap.this;
            Object objG = arrayMap.g(i2);
            Object objK = arrayMap.k(this.f3225c);
            return (objG == null ? 0 : objG.hashCode()) ^ (objK != null ? objK.hashCode() : 0);
        }

        @Override // java.util.Iterator
        public final Object next() {
            if (!hasNext()) {
                b21.x();
                return null;
            }
            this.f3225c++;
            this.d = true;
            return this;
        }

        @Override // java.util.Iterator
        public final void remove() {
            if (!this.d) {
                r81.b();
                return;
            }
            ArrayMap.this.i(this.f3225c);
            this.f3225c--;
            this.f3224b--;
            this.d = false;
        }

        @Override // java.util.Map.Entry
        public final Object setValue(Object obj) {
            if (this.d) {
                return ArrayMap.this.j(this.f3225c, obj);
            }
            md.k("This container does not support retaining Map.Entry objects");
            return null;
        }

        public final String toString() {
            return getKey() + "=" + getValue();
        }
    }

    public final class ValueIterator extends IndexBasedArrayIterator<V> {
        public ValueIterator() {
            super(ArrayMap.this.d);
        }

        @Override // androidx.collection.IndexBasedArrayIterator
        public final Object a(int i2) {
            return ArrayMap.this.k(i2);
        }

        @Override // androidx.collection.IndexBasedArrayIterator
        public final void c(int i2) {
            ArrayMap.this.i(i2);
        }
    }

    public ArrayMap() {
    }

    @Override // java.util.Map
    public final Set entrySet() {
        EntrySet entrySet = this.f3219e;
        if (entrySet != null) {
            return entrySet;
        }
        EntrySet entrySet2 = new EntrySet();
        this.f3219e = entrySet2;
        return entrySet2;
    }

    @Override // java.util.Map
    public final Set keySet() {
        KeySet keySet = this.f3220f;
        if (keySet != null) {
            return keySet;
        }
        KeySet keySet2 = new KeySet();
        this.f3220f = keySet2;
        return keySet2;
    }

    public final boolean m(Collection collection) {
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            if (!super.containsKey(it.next())) {
                return false;
            }
        }
        return true;
    }

    public final boolean n(Collection collection) {
        int i2 = this.d;
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            super.remove(it.next());
        }
        return i2 != this.d;
    }

    public final boolean o(Collection collection) {
        int i2 = this.d;
        for (int i3 = i2 - 1; i3 >= 0; i3--) {
            if (!collection.contains(g(i3))) {
                i(i3);
            }
        }
        return i2 != this.d;
    }

    @Override // java.util.Map
    public final void putAll(Map map) {
        c(map.size() + this.d);
        for (Map.Entry<K, V> entry : map.entrySet()) {
            put(entry.getKey(), entry.getValue());
        }
    }

    @Override // java.util.Map
    public final Collection values() {
        ValueCollection valueCollection = this.g;
        if (valueCollection != null) {
            return valueCollection;
        }
        ValueCollection valueCollection2 = new ValueCollection();
        this.g = valueCollection2;
        return valueCollection2;
    }

    public ArrayMap(int i2) {
        super(i2);
    }

    public ArrayMap(SimpleArrayMap simpleArrayMap) {
        super(simpleArrayMap);
    }

    public final class KeySet implements Set<K> {
        public KeySet() {
        }

        @Override // java.util.Set, java.util.Collection
        public final boolean add(Object obj) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Set, java.util.Collection
        public final boolean addAll(Collection collection) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Set, java.util.Collection
        public final void clear() {
            ArrayMap.this.clear();
        }

        @Override // java.util.Set, java.util.Collection
        public final boolean contains(Object obj) {
            return ArrayMap.this.containsKey(obj);
        }

        @Override // java.util.Set, java.util.Collection
        public final boolean containsAll(Collection collection) {
            return ArrayMap.this.m(collection);
        }

        @Override // java.util.Set, java.util.Collection
        public final boolean equals(Object obj) {
            ArrayMap arrayMap = ArrayMap.this;
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Set)) {
                return false;
            }
            Set set = (Set) obj;
            try {
                return arrayMap.d == set.size() && arrayMap.m(set);
            } catch (ClassCastException | NullPointerException unused) {
                return false;
            }
        }

        @Override // java.util.Set, java.util.Collection
        public final int hashCode() {
            ArrayMap arrayMap = ArrayMap.this;
            int iHashCode = 0;
            for (int i2 = arrayMap.d - 1; i2 >= 0; i2--) {
                Object objG = arrayMap.g(i2);
                iHashCode += objG == null ? 0 : objG.hashCode();
            }
            return iHashCode;
        }

        @Override // java.util.Set, java.util.Collection
        public final boolean isEmpty() {
            return ArrayMap.this.isEmpty();
        }

        @Override // java.util.Set, java.util.Collection, java.lang.Iterable
        public final Iterator iterator() {
            return new KeyIterator();
        }

        @Override // java.util.Set, java.util.Collection
        public final boolean remove(Object obj) {
            ArrayMap arrayMap = ArrayMap.this;
            int iE = arrayMap.e(obj);
            if (iE < 0) {
                return false;
            }
            arrayMap.i(iE);
            return true;
        }

        @Override // java.util.Set, java.util.Collection
        public final boolean removeAll(Collection collection) {
            return ArrayMap.this.n(collection);
        }

        @Override // java.util.Set, java.util.Collection
        public final boolean retainAll(Collection collection) {
            return ArrayMap.this.o(collection);
        }

        @Override // java.util.Set, java.util.Collection
        public final int size() {
            return ArrayMap.this.d;
        }

        @Override // java.util.Set, java.util.Collection
        public final Object[] toArray(Object[] objArr) {
            ArrayMap arrayMap = ArrayMap.this;
            int i2 = arrayMap.d;
            if (objArr.length < i2) {
                objArr = (Object[]) Array.newInstance(objArr.getClass().getComponentType(), i2);
            }
            for (int i3 = 0; i3 < i2; i3++) {
                objArr[i3] = arrayMap.g(i3);
            }
            if (objArr.length > i2) {
                objArr[i2] = null;
            }
            return objArr;
        }

        @Override // java.util.Set, java.util.Collection
        public final Object[] toArray() {
            ArrayMap arrayMap = ArrayMap.this;
            int i2 = arrayMap.d;
            Object[] objArr = new Object[i2];
            for (int i3 = 0; i3 < i2; i3++) {
                objArr[i3] = arrayMap.g(i3);
            }
            return objArr;
        }
    }

    public final class ValueCollection implements Collection<V> {
        public ValueCollection() {
        }

        @Override // java.util.Collection
        public final boolean add(Object obj) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Collection
        public final boolean addAll(Collection collection) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Collection
        public final void clear() {
            ArrayMap.this.clear();
        }

        @Override // java.util.Collection
        public final boolean contains(Object obj) {
            return ArrayMap.this.a(obj) >= 0;
        }

        @Override // java.util.Collection
        public final boolean containsAll(Collection collection) {
            Iterator it = collection.iterator();
            while (it.hasNext()) {
                if (!contains(it.next())) {
                    return false;
                }
            }
            return true;
        }

        @Override // java.util.Collection
        public final boolean isEmpty() {
            return ArrayMap.this.isEmpty();
        }

        @Override // java.util.Collection, java.lang.Iterable
        public final Iterator iterator() {
            return new ValueIterator();
        }

        @Override // java.util.Collection
        public final boolean remove(Object obj) {
            ArrayMap arrayMap = ArrayMap.this;
            int iA = arrayMap.a(obj);
            if (iA < 0) {
                return false;
            }
            arrayMap.i(iA);
            return true;
        }

        @Override // java.util.Collection
        public final boolean removeAll(Collection collection) {
            ArrayMap arrayMap = ArrayMap.this;
            int i2 = arrayMap.d;
            int i3 = 0;
            boolean z = false;
            while (i3 < i2) {
                if (collection.contains(arrayMap.k(i3))) {
                    arrayMap.i(i3);
                    i3--;
                    i2--;
                    z = true;
                }
                i3++;
            }
            return z;
        }

        @Override // java.util.Collection
        public final boolean retainAll(Collection collection) {
            ArrayMap arrayMap = ArrayMap.this;
            int i2 = arrayMap.d;
            int i3 = 0;
            boolean z = false;
            while (i3 < i2) {
                if (!collection.contains(arrayMap.k(i3))) {
                    arrayMap.i(i3);
                    i3--;
                    i2--;
                    z = true;
                }
                i3++;
            }
            return z;
        }

        @Override // java.util.Collection
        public final int size() {
            return ArrayMap.this.d;
        }

        @Override // java.util.Collection
        public final Object[] toArray(Object[] objArr) {
            ArrayMap arrayMap = ArrayMap.this;
            int i2 = arrayMap.d;
            if (objArr.length < i2) {
                objArr = (Object[]) Array.newInstance(objArr.getClass().getComponentType(), i2);
            }
            for (int i3 = 0; i3 < i2; i3++) {
                objArr[i3] = arrayMap.k(i3);
            }
            if (objArr.length > i2) {
                objArr[i2] = null;
            }
            return objArr;
        }

        @Override // java.util.Collection
        public final Object[] toArray() {
            ArrayMap arrayMap = ArrayMap.this;
            int i2 = arrayMap.d;
            Object[] objArr = new Object[i2];
            for (int i3 = 0; i3 < i2; i3++) {
                objArr[i3] = arrayMap.k(i3);
            }
            return objArr;
        }
    }
}
