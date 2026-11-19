package com.google.common.collect;

import com.google.common.base.Preconditions;
import com.google.common.primitives.Ints;
import defpackage.b21;
import defpackage.pq0;
import defpackage.v7;
import java.io.IOException;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.AbstractCollection;
import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Objects;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
class CompactHashMap<K, V> extends AbstractMap<K, V> implements Serializable {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final Object f33548k = new Object();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public transient Object f33549b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public transient int[] f33550c;
    public transient Object[] d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public transient Object[] f33551e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public transient int f33552f;
    public transient int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public transient Set f33553h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public transient Set f33554i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public transient Collection f33555j;

    /* JADX INFO: renamed from: com.google.common.collect.CompactHashMap$2, reason: invalid class name */
    class AnonymousClass2 extends CompactHashMap<Object, Object>.Itr<Map.Entry<Object, Object>> {
        public AnonymousClass2() {
            super();
        }

        @Override // com.google.common.collect.CompactHashMap.Itr
        public final Object a(int i2) {
            return new MapEntry(i2);
        }
    }

    public final class EntrySetView extends AbstractSet<Map.Entry<K, V>> {
        public EntrySetView() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final void clear() {
            CompactHashMap.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean contains(Object obj) {
            CompactHashMap compactHashMap = CompactHashMap.this;
            Map mapH = compactHashMap.h();
            if (mapH != null) {
                return mapH.entrySet().contains(obj);
            }
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            int iN = compactHashMap.n(entry.getKey());
            return iN != -1 && Objects.equals(compactHashMap.w()[iN], entry.getValue());
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public final Iterator iterator() {
            CompactHashMap compactHashMap = CompactHashMap.this;
            Map mapH = compactHashMap.h();
            return mapH != null ? mapH.entrySet().iterator() : new AnonymousClass2();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean remove(Object obj) {
            CompactHashMap compactHashMap = CompactHashMap.this;
            Map mapH = compactHashMap.h();
            if (mapH != null) {
                return mapH.entrySet().remove(obj);
            }
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            if (compactHashMap.r()) {
                return false;
            }
            int iK = compactHashMap.k();
            Object key = entry.getKey();
            Object value = entry.getValue();
            Object obj2 = compactHashMap.f33549b;
            Objects.requireNonNull(obj2);
            int iD = CompactHashing.d(key, value, iK, obj2, compactHashMap.t(), compactHashMap.u(), compactHashMap.w());
            if (iD == -1) {
                return false;
            }
            compactHashMap.q(iD, iK);
            compactHashMap.g--;
            compactHashMap.m();
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final int size() {
            return CompactHashMap.this.size();
        }
    }

    public abstract class Itr<T> implements Iterator<T> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f33560b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f33561c;
        public int d = -1;

        public Itr() {
            this.f33560b = CompactHashMap.this.f33552f;
            this.f33561c = CompactHashMap.this.i();
        }

        public abstract Object a(int i2);

        @Override // java.util.Iterator
        public final boolean hasNext() {
            return this.f33561c >= 0;
        }

        @Override // java.util.Iterator
        public final Object next() {
            CompactHashMap compactHashMap = CompactHashMap.this;
            if (compactHashMap.f33552f != this.f33560b) {
                v7.c();
                return null;
            }
            if (!hasNext()) {
                b21.x();
                return null;
            }
            int i2 = this.f33561c;
            this.d = i2;
            Object objA = a(i2);
            this.f33561c = compactHashMap.j(this.f33561c);
            return objA;
        }

        @Override // java.util.Iterator
        public final void remove() {
            CompactHashMap compactHashMap = CompactHashMap.this;
            if (compactHashMap.f33552f != this.f33560b) {
                v7.c();
                return;
            }
            Preconditions.p("no calls to next() since the last call to remove()", this.d >= 0);
            this.f33560b += 32;
            compactHashMap.remove(compactHashMap.u()[this.d]);
            this.f33561c = compactHashMap.c(this.f33561c, this.d);
            this.d = -1;
        }
    }

    public final class KeySetView extends AbstractSet<K> {
        public KeySetView() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final void clear() {
            CompactHashMap.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean contains(Object obj) {
            return CompactHashMap.this.containsKey(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public final Iterator iterator() {
            final CompactHashMap compactHashMap = CompactHashMap.this;
            Map mapH = compactHashMap.h();
            return mapH != null ? mapH.keySet().iterator() : new CompactHashMap<Object, Object>.Itr<Object>() { // from class: com.google.common.collect.CompactHashMap.1
                @Override // com.google.common.collect.CompactHashMap.Itr
                public final Object a(int i2) {
                    Object obj = CompactHashMap.f33548k;
                    return CompactHashMap.this.u()[i2];
                }
            };
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean remove(Object obj) {
            CompactHashMap compactHashMap = CompactHashMap.this;
            Map mapH = compactHashMap.h();
            if (mapH != null) {
                return mapH.keySet().remove(obj);
            }
            return compactHashMap.s(obj) != CompactHashMap.f33548k;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final int size() {
            return CompactHashMap.this.size();
        }
    }

    public final class MapEntry extends AbstractMapEntry<K, V> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Object f33564b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f33565c;

        public MapEntry(int i2) {
            Object obj = CompactHashMap.f33548k;
            this.f33564b = CompactHashMap.this.u()[i2];
            this.f33565c = i2;
        }

        public final void a() {
            int i2 = this.f33565c;
            Object obj = this.f33564b;
            CompactHashMap compactHashMap = CompactHashMap.this;
            if (i2 != -1 && i2 < compactHashMap.size()) {
                if (Objects.equals(obj, compactHashMap.u()[this.f33565c])) {
                    return;
                }
            }
            Object obj2 = CompactHashMap.f33548k;
            this.f33565c = compactHashMap.n(obj);
        }

        @Override // java.util.Map.Entry
        public final Object getKey() {
            return this.f33564b;
        }

        @Override // java.util.Map.Entry
        public final Object getValue() {
            CompactHashMap compactHashMap = CompactHashMap.this;
            Map mapH = compactHashMap.h();
            if (mapH != null) {
                return mapH.get(this.f33564b);
            }
            a();
            int i2 = this.f33565c;
            if (i2 == -1) {
                return null;
            }
            return compactHashMap.w()[i2];
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.collect.AbstractMapEntry, java.util.Map.Entry
        public final Object setValue(Object obj) {
            CompactHashMap compactHashMap = CompactHashMap.this;
            Map mapH = compactHashMap.h();
            Object obj2 = this.f33564b;
            if (mapH != 0) {
                return mapH.put(obj2, obj);
            }
            a();
            int i2 = this.f33565c;
            if (i2 == -1) {
                compactHashMap.put(obj2, obj);
                return null;
            }
            Object obj3 = compactHashMap.w()[i2];
            compactHashMap.w()[this.f33565c] = obj;
            return obj3;
        }
    }

    public final class ValuesView extends AbstractCollection<V> {
        public ValuesView() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final void clear() {
            CompactHashMap.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public final Iterator iterator() {
            final CompactHashMap compactHashMap = CompactHashMap.this;
            Map mapH = compactHashMap.h();
            return mapH != null ? mapH.values().iterator() : new CompactHashMap<Object, Object>.Itr<Object>() { // from class: com.google.common.collect.CompactHashMap.3
                @Override // com.google.common.collect.CompactHashMap.Itr
                public final Object a(int i2) {
                    Object obj = CompactHashMap.f33548k;
                    return CompactHashMap.this.w()[i2];
                }
            };
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final int size() {
            return CompactHashMap.this.size();
        }
    }

    public CompactHashMap(int i2) {
        o(i2);
    }

    public static CompactHashMap f() {
        CompactHashMap compactHashMap = new CompactHashMap();
        compactHashMap.o(3);
        return compactHashMap;
    }

    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
        int i2 = objectInputStream.readInt();
        if (i2 < 0) {
            throw new InvalidObjectException(pq0.k(i2, "Invalid size: "));
        }
        o(i2);
        for (int i3 = 0; i3 < i2; i3++) {
            put(objectInputStream.readObject(), objectInputStream.readObject());
        }
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeInt(size());
        Map mapH = h();
        Iterator<Map.Entry<K, V>> it = mapH != null ? mapH.entrySet().iterator() : new AnonymousClass2();
        while (it.hasNext()) {
            Map.Entry<K, V> next = it.next();
            objectOutputStream.writeObject(next.getKey());
            objectOutputStream.writeObject(next.getValue());
        }
    }

    public void a(int i2) {
    }

    public int c(int i2, int i3) {
        return i2 - 1;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public void clear() {
        if (r()) {
            return;
        }
        m();
        Map mapH = h();
        if (mapH != null) {
            this.f33552f = Ints.c(size(), 3);
            mapH.clear();
            this.f33549b = null;
            this.g = 0;
            return;
        }
        Arrays.fill(u(), 0, this.g, (Object) null);
        Arrays.fill(w(), 0, this.g, (Object) null);
        Object obj = this.f33549b;
        Objects.requireNonNull(obj);
        if (obj instanceof byte[]) {
            Arrays.fill((byte[]) obj, (byte) 0);
        } else if (obj instanceof short[]) {
            Arrays.fill((short[]) obj, (short) 0);
        } else {
            Arrays.fill((int[]) obj, 0);
        }
        Arrays.fill(t(), 0, this.g, 0);
        this.g = 0;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean containsKey(Object obj) {
        Map mapH = h();
        if (mapH != null) {
            return mapH.containsKey(obj);
        }
        return n(obj) != -1;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean containsValue(Object obj) {
        Map mapH = h();
        if (mapH != null) {
            return mapH.containsValue(obj);
        }
        for (int i2 = 0; i2 < this.g; i2++) {
            if (Objects.equals(obj, w()[i2])) {
                return true;
            }
        }
        return false;
    }

    public int d() {
        Preconditions.p("Arrays already allocated", r());
        int i2 = this.f33552f;
        int iMax = Math.max(i2 + 1, 2);
        int iHighestOneBit = Integer.highestOneBit(iMax);
        if (iMax > ((int) (1.0d * ((double) iHighestOneBit))) && (iHighestOneBit = iHighestOneBit << 1) <= 0) {
            iHighestOneBit = 1073741824;
        }
        int iMax2 = Math.max(4, iHighestOneBit);
        this.f33549b = CompactHashing.a(iMax2);
        this.f33552f = CompactHashing.b(this.f33552f, 32 - Integer.numberOfLeadingZeros(iMax2 - 1), 31);
        this.f33550c = new int[i2];
        this.d = new Object[i2];
        this.f33551e = new Object[i2];
        return i2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Map e() {
        LinkedHashMap linkedHashMapG = g(k() + 1);
        int i2 = i();
        while (i2 >= 0) {
            linkedHashMapG.put(u()[i2], w()[i2]);
            i2 = j(i2);
        }
        this.f33549b = linkedHashMapG;
        this.f33550c = null;
        this.d = null;
        this.f33551e = null;
        m();
        return linkedHashMapG;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set entrySet() {
        Set set = this.f33554i;
        if (set != null) {
            return set;
        }
        EntrySetView entrySetView = new EntrySetView();
        this.f33554i = entrySetView;
        return entrySetView;
    }

    public LinkedHashMap g(int i2) {
        return new LinkedHashMap(i2, 1.0f);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object get(Object obj) {
        Map mapH = h();
        if (mapH != null) {
            return mapH.get(obj);
        }
        int iN = n(obj);
        if (iN == -1) {
            return null;
        }
        a(iN);
        return w()[iN];
    }

    public final Map h() {
        Object obj = this.f33549b;
        if (obj instanceof Map) {
            return (Map) obj;
        }
        return null;
    }

    public int i() {
        return isEmpty() ? -1 : 0;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean isEmpty() {
        return size() == 0;
    }

    public int j(int i2) {
        int i3 = i2 + 1;
        if (i3 < this.g) {
            return i3;
        }
        return -1;
    }

    public final int k() {
        return (1 << (this.f33552f & 31)) - 1;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set keySet() {
        Set set = this.f33553h;
        if (set != null) {
            return set;
        }
        KeySetView keySetView = new KeySetView();
        this.f33553h = keySetView;
        return keySetView;
    }

    public final void m() {
        this.f33552f += 32;
    }

    public final int n(Object obj) {
        if (r()) {
            return -1;
        }
        int iB = Hashing.b(obj);
        int iK = k();
        Object obj2 = this.f33549b;
        Objects.requireNonNull(obj2);
        int iE = CompactHashing.e(iB & iK, obj2);
        if (iE == 0) {
            return -1;
        }
        int i2 = ~iK;
        int i3 = iB & i2;
        do {
            int i4 = iE - 1;
            int i5 = t()[i4];
            if ((i5 & i2) == i3 && Objects.equals(obj, u()[i4])) {
                return i4;
            }
            iE = i5 & iK;
        } while (iE != 0);
        return -1;
    }

    public void o(int i2) {
        Preconditions.h(i2 >= 0, "Expected size must be >= 0");
        this.f33552f = Ints.c(i2, 1);
    }

    public void p(Object obj, int i2, int i3, Object obj2, int i4) {
        t()[i2] = CompactHashing.b(i3, 0, i4);
        u()[i2] = obj;
        w()[i2] = obj2;
    }

    /* JADX WARN: Code duplicated, block: B:33:0x00a5  */
    /* JADX WARN: Code duplicated, block: B:35:0x00b8  */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public final Object put(Object obj, Object obj2) {
        int i2;
        int iY;
        int length;
        int iMin;
        Object obj3 = obj;
        Object obj4 = obj2;
        if (r()) {
            d();
        }
        Map mapH = h();
        if (mapH != 0) {
            return mapH.put(obj3, obj4);
        }
        int[] iArrT = t();
        Object[] objArrU = u();
        Object[] objArrW = w();
        int i3 = this.g;
        int i4 = i3 + 1;
        int iB = Hashing.b(obj3);
        int iK = k();
        int i5 = iB & iK;
        Object obj5 = this.f33549b;
        Objects.requireNonNull(obj5);
        int iE = CompactHashing.e(i5, obj5);
        int i6 = 1;
        if (iE == 0) {
            if (i4 > iK) {
                iY = y(iK, CompactHashing.c(iK), iB, i3);
                i2 = 1;
            } else {
                Object obj6 = this.f33549b;
                Objects.requireNonNull(obj6);
                CompactHashing.f(i5, i4, obj6);
                i2 = 1;
            }
            length = t().length;
            if (i4 > length) {
                int i7 = i2;
                iMin = Math.min(1073741823, (Math.max(i7, length >>> 1) + length) | i7);
                if (iMin != length) {
                    x(iMin);
                }
            }
            p(obj3, i3, iB, obj4, iY);
            this.g = i4;
            m();
            return null;
        }
        int i8 = ~iK;
        int i9 = iB & i8;
        int i10 = 0;
        while (true) {
            int i11 = iE - i6;
            int i12 = iArrT[i11];
            i2 = i6;
            if ((i12 & i8) == i9 && Objects.equals(obj3, objArrU[i11])) {
                Object obj7 = objArrW[i11];
                objArrW[i11] = obj4;
                a(i11);
                return obj7;
            }
            int i13 = i12 & iK;
            i10++;
            if (i13 == 0) {
                if (i10 < 9) {
                    if (i4 <= iK) {
                        iArrT[i11] = CompactHashing.b(i12, i4, iK);
                        break;
                    }
                    iK = y(iK, CompactHashing.c(iK), iB, i3);
                    break;
                }
                return e().put(obj3, obj4);
            }
            obj3 = obj;
            obj4 = obj2;
            iE = i13;
            i6 = i2;
        }
        iY = iK;
        length = t().length;
        if (i4 > length) {
            int i14 = i2;
            iMin = Math.min(1073741823, (Math.max(i14, length >>> 1) + length) | i14);
            if (iMin != length) {
                x(iMin);
            }
        }
        p(obj3, i3, iB, obj4, iY);
        this.g = i4;
        m();
        return null;
    }

    public void q(int i2, int i3) {
        Object obj = this.f33549b;
        Objects.requireNonNull(obj);
        int[] iArrT = t();
        Object[] objArrU = u();
        Object[] objArrW = w();
        int size = size();
        int i4 = size - 1;
        if (i2 >= i4) {
            objArrU[i2] = null;
            objArrW[i2] = null;
            iArrT[i2] = 0;
            return;
        }
        Object obj2 = objArrU[i4];
        objArrU[i2] = obj2;
        objArrW[i2] = objArrW[i4];
        objArrU[i4] = null;
        objArrW[i4] = null;
        iArrT[i2] = iArrT[i4];
        iArrT[i4] = 0;
        int iB = Hashing.b(obj2) & i3;
        int iE = CompactHashing.e(iB, obj);
        if (iE == size) {
            CompactHashing.f(iB, i2 + 1, obj);
            return;
        }
        while (true) {
            int i5 = iE - 1;
            int i6 = iArrT[i5];
            int i7 = i6 & i3;
            if (i7 == size) {
                iArrT[i5] = CompactHashing.b(i6, i2 + 1, i3);
                return;
            }
            iE = i7;
        }
    }

    public final boolean r() {
        return this.f33549b == null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object remove(Object obj) {
        Map mapH = h();
        if (mapH != null) {
            return mapH.remove(obj);
        }
        Object objS = s(obj);
        if (objS == f33548k) {
            return null;
        }
        return objS;
    }

    public final Object s(Object obj) {
        boolean zR = r();
        Object obj2 = f33548k;
        if (zR) {
            return obj2;
        }
        int iK = k();
        Object obj3 = this.f33549b;
        Objects.requireNonNull(obj3);
        int iD = CompactHashing.d(obj, null, iK, obj3, t(), u(), null);
        if (iD == -1) {
            return obj2;
        }
        Object obj4 = w()[iD];
        q(iD, iK);
        this.g--;
        m();
        return obj4;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int size() {
        Map mapH = h();
        return mapH != null ? mapH.size() : this.g;
    }

    public final int[] t() {
        int[] iArr = this.f33550c;
        Objects.requireNonNull(iArr);
        return iArr;
    }

    public final Object[] u() {
        Object[] objArr = this.d;
        Objects.requireNonNull(objArr);
        return objArr;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Collection values() {
        Collection collection = this.f33555j;
        if (collection != null) {
            return collection;
        }
        ValuesView valuesView = new ValuesView();
        this.f33555j = valuesView;
        return valuesView;
    }

    public final Object[] w() {
        Object[] objArr = this.f33551e;
        Objects.requireNonNull(objArr);
        return objArr;
    }

    public void x(int i2) {
        this.f33550c = Arrays.copyOf(t(), i2);
        this.d = Arrays.copyOf(u(), i2);
        this.f33551e = Arrays.copyOf(w(), i2);
    }

    public final int y(int i2, int i3, int i4, int i5) {
        Object objA = CompactHashing.a(i3);
        int i6 = i3 - 1;
        if (i5 != 0) {
            CompactHashing.f(i4 & i6, i5 + 1, objA);
        }
        Object obj = this.f33549b;
        Objects.requireNonNull(obj);
        int[] iArrT = t();
        for (int i7 = 0; i7 <= i2; i7++) {
            int iE = CompactHashing.e(i7, obj);
            while (iE != 0) {
                int i8 = iE - 1;
                int i9 = iArrT[i8];
                int i10 = ((~i2) & i9) | i7;
                int i11 = i10 & i6;
                int iE2 = CompactHashing.e(i11, objA);
                CompactHashing.f(i11, iE, objA);
                iArrT[i8] = CompactHashing.b(i10, iE2, i6);
                iE = i9 & i2;
            }
        }
        this.f33549b = objA;
        this.f33552f = CompactHashing.b(this.f33552f, 32 - Integer.numberOfLeadingZeros(i6), 31);
        return i6;
    }
}
