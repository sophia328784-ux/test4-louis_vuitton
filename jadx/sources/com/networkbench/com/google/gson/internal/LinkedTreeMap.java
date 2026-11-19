package com.networkbench.com.google.gson.internal;

import defpackage.a61;
import defpackage.b21;
import defpackage.r81;
import defpackage.v7;
import java.io.ObjectStreamException;
import java.io.Serializable;
import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
public final class LinkedTreeMap<K, V> extends AbstractMap<K, V> implements Serializable {
    private static final Comparator<Comparable> NATURAL_ORDER = new Comparator<Comparable>() { // from class: com.networkbench.com.google.gson.internal.LinkedTreeMap.1
        @Override // java.util.Comparator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(Comparable comparable, Comparable comparable2) {
            return comparable.compareTo(comparable2);
        }
    };

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    static final /* synthetic */ boolean f38609f = true;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    Comparator<? super K> f38610a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    d<K, V> f38611b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    int f38612c;
    int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final d<K, V> f38613e;
    private LinkedTreeMap<K, V>.a entrySet;
    private LinkedTreeMap<K, V>.b keySet;

    public class a extends AbstractSet<Map.Entry<K, V>> {
        public a() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            LinkedTreeMap.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            return (obj instanceof Map.Entry) && LinkedTreeMap.this.a((Map.Entry<?, ?>) obj) != null;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<Map.Entry<K, V>> iterator() {
            return new c() { // from class: com.networkbench.com.google.gson.internal.LinkedTreeMap.a.1
                {
                    LinkedTreeMap linkedTreeMap = LinkedTreeMap.this;
                }

                @Override // java.util.Iterator
                /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                public Map.Entry<K, V> next() {
                    return b();
                }
            };
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            d<K, V> dVarA;
            if (!(obj instanceof Map.Entry) || (dVarA = LinkedTreeMap.this.a((Map.Entry<?, ?>) obj)) == null) {
                return false;
            }
            LinkedTreeMap.this.a((d) dVarA, true);
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return LinkedTreeMap.this.f38612c;
        }
    }

    public class b extends AbstractSet<K> {
        public b() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            LinkedTreeMap.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            return LinkedTreeMap.this.containsKey(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<K> iterator() {
            return new c() { // from class: com.networkbench.com.google.gson.internal.LinkedTreeMap.b.1
                {
                    LinkedTreeMap linkedTreeMap = LinkedTreeMap.this;
                }

                @Override // java.util.Iterator
                public K next() {
                    return b().f38625f;
                }
            };
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            return LinkedTreeMap.this.b(obj) != null;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return LinkedTreeMap.this.f38612c;
        }
    }

    public abstract class c<T> implements Iterator<T> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        d<K, V> f38618b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        d<K, V> f38619c;
        int d;

        private c() {
            this.f38618b = LinkedTreeMap.this.f38613e.d;
            this.f38619c = null;
            this.d = LinkedTreeMap.this.d;
        }

        public final d<K, V> b() {
            d<K, V> dVar = this.f38618b;
            LinkedTreeMap linkedTreeMap = LinkedTreeMap.this;
            if (dVar == linkedTreeMap.f38613e) {
                b21.x();
                return null;
            }
            if (linkedTreeMap.d != this.d) {
                v7.c();
                return null;
            }
            this.f38618b = dVar.d;
            this.f38619c = dVar;
            return dVar;
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            return this.f38618b != LinkedTreeMap.this.f38613e;
        }

        @Override // java.util.Iterator
        public final void remove() {
            d<K, V> dVar = this.f38619c;
            if (dVar == null) {
                r81.b();
                return;
            }
            LinkedTreeMap.this.a((d) dVar, true);
            this.f38619c = null;
            this.d = LinkedTreeMap.this.d;
        }
    }

    public LinkedTreeMap(Comparator<? super K> comparator) {
        this.f38612c = 0;
        this.d = 0;
        this.f38613e = new d<>();
        this.f38610a = comparator == null ? NATURAL_ORDER : comparator;
    }

    private boolean equal(Object obj, Object obj2) {
        if (obj != obj2) {
            return obj != null && obj.equals(obj2);
        }
        return true;
    }

    private void rebalance(d<K, V> dVar, boolean z) {
        while (dVar != null) {
            d<K, V> dVar2 = dVar.f38622b;
            d<K, V> dVar3 = dVar.f38623c;
            int i2 = dVar2 != null ? dVar2.f38626h : 0;
            int i3 = dVar3 != null ? dVar3.f38626h : 0;
            int i4 = i2 - i3;
            if (i4 == -2) {
                d<K, V> dVar4 = dVar3.f38622b;
                d<K, V> dVar5 = dVar3.f38623c;
                int i5 = (dVar4 != null ? dVar4.f38626h : 0) - (dVar5 != null ? dVar5.f38626h : 0);
                if (i5 == -1 || (i5 == 0 && !z)) {
                    rotateLeft(dVar);
                } else if (!f38609f && i5 != 1) {
                    a61.h();
                    return;
                } else {
                    rotateRight(dVar3);
                    rotateLeft(dVar);
                }
                if (z) {
                    return;
                }
            } else if (i4 == 2) {
                d<K, V> dVar6 = dVar2.f38622b;
                d<K, V> dVar7 = dVar2.f38623c;
                int i6 = (dVar6 != null ? dVar6.f38626h : 0) - (dVar7 != null ? dVar7.f38626h : 0);
                if (i6 == 1 || (i6 == 0 && !z)) {
                    rotateRight(dVar);
                } else if (!f38609f && i6 != -1) {
                    a61.h();
                    return;
                } else {
                    rotateLeft(dVar2);
                    rotateRight(dVar);
                }
                if (z) {
                    return;
                }
            } else if (i4 == 0) {
                dVar.f38626h = i2 + 1;
                if (z) {
                    return;
                }
            } else if (!f38609f && i4 != -1 && i4 != 1) {
                a61.h();
                return;
            } else {
                dVar.f38626h = Math.max(i2, i3) + 1;
                if (!z) {
                    return;
                }
            }
            dVar = dVar.f38621a;
        }
    }

    private void replaceInParent(d<K, V> dVar, d<K, V> dVar2) {
        d<K, V> dVar3 = dVar.f38621a;
        dVar.f38621a = null;
        if (dVar2 != null) {
            dVar2.f38621a = dVar3;
        }
        if (dVar3 == null) {
            this.f38611b = dVar2;
            return;
        }
        if (dVar3.f38622b == dVar) {
            dVar3.f38622b = dVar2;
        } else if (f38609f || dVar3.f38623c == dVar) {
            dVar3.f38623c = dVar2;
        } else {
            a61.h();
        }
    }

    private void rotateLeft(d<K, V> dVar) {
        d<K, V> dVar2 = dVar.f38622b;
        d<K, V> dVar3 = dVar.f38623c;
        d<K, V> dVar4 = dVar3.f38622b;
        d<K, V> dVar5 = dVar3.f38623c;
        dVar.f38623c = dVar4;
        if (dVar4 != null) {
            dVar4.f38621a = dVar;
        }
        replaceInParent(dVar, dVar3);
        dVar3.f38622b = dVar;
        dVar.f38621a = dVar3;
        int iMax = Math.max(dVar2 != null ? dVar2.f38626h : 0, dVar4 != null ? dVar4.f38626h : 0) + 1;
        dVar.f38626h = iMax;
        dVar3.f38626h = Math.max(iMax, dVar5 != null ? dVar5.f38626h : 0) + 1;
    }

    private void rotateRight(d<K, V> dVar) {
        d<K, V> dVar2 = dVar.f38622b;
        d<K, V> dVar3 = dVar.f38623c;
        d<K, V> dVar4 = dVar2.f38622b;
        d<K, V> dVar5 = dVar2.f38623c;
        dVar.f38622b = dVar5;
        if (dVar5 != null) {
            dVar5.f38621a = dVar;
        }
        replaceInParent(dVar, dVar2);
        dVar2.f38623c = dVar;
        dVar.f38621a = dVar2;
        int iMax = Math.max(dVar3 != null ? dVar3.f38626h : 0, dVar5 != null ? dVar5.f38626h : 0) + 1;
        dVar.f38626h = iMax;
        dVar2.f38626h = Math.max(iMax, dVar4 != null ? dVar4.f38626h : 0) + 1;
    }

    private Object writeReplace() throws ObjectStreamException {
        return new LinkedHashMap(this);
    }

    public d<K, V> a(K k2, boolean z) {
        int iCompareTo;
        d<K, V> dVar;
        Comparator<? super K> comparator = this.f38610a;
        d<K, V> dVar2 = this.f38611b;
        if (dVar2 != null) {
            Comparable comparable = comparator == NATURAL_ORDER ? (Comparable) k2 : null;
            while (true) {
                K k3 = dVar2.f38625f;
                iCompareTo = comparable != null ? comparable.compareTo(k3) : comparator.compare(k2, k3);
                if (iCompareTo == 0) {
                    return dVar2;
                }
                d<K, V> dVar3 = iCompareTo < 0 ? dVar2.f38622b : dVar2.f38623c;
                if (dVar3 == null) {
                    break;
                }
                dVar2 = dVar3;
            }
        } else {
            iCompareTo = 0;
        }
        if (!z) {
            return null;
        }
        d<K, V> dVar4 = this.f38613e;
        if (dVar2 != null) {
            dVar = new d<>(dVar2, k2, dVar4, dVar4.f38624e);
            if (iCompareTo < 0) {
                dVar2.f38622b = dVar;
            } else {
                dVar2.f38623c = dVar;
            }
            rebalance(dVar2, true);
        } else {
            if (comparator == NATURAL_ORDER && !(k2 instanceof Comparable)) {
                throw new ClassCastException(k2.getClass().getName().concat(" is not Comparable"));
            }
            dVar = new d<>(dVar2, k2, dVar4, dVar4.f38624e);
            this.f38611b = dVar;
        }
        this.f38612c++;
        this.d++;
        return dVar;
    }

    public d<K, V> b(Object obj) {
        d<K, V> dVarA = a(obj);
        if (dVarA != null) {
            a((d) dVarA, true);
        }
        return dVarA;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public void clear() {
        this.f38611b = null;
        this.f38612c = 0;
        this.d++;
        d<K, V> dVar = this.f38613e;
        dVar.f38624e = dVar;
        dVar.d = dVar;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsKey(Object obj) {
        return a(obj) != null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<Map.Entry<K, V>> entrySet() {
        LinkedTreeMap<K, V>.a aVar = this.entrySet;
        if (aVar != null) {
            return aVar;
        }
        LinkedTreeMap<K, V>.a aVar2 = new a();
        this.entrySet = aVar2;
        return aVar2;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V get(Object obj) {
        d<K, V> dVarA = a(obj);
        if (dVarA != null) {
            return dVarA.g;
        }
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<K> keySet() {
        LinkedTreeMap<K, V>.b bVar = this.keySet;
        if (bVar != null) {
            return bVar;
        }
        LinkedTreeMap<K, V>.b bVar2 = new b();
        this.keySet = bVar2;
        return bVar2;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V put(K k2, V v) {
        if (k2 == null) {
            r81.d("key == null");
            return null;
        }
        d<K, V> dVarA = a((Object) k2, true);
        V v2 = dVarA.g;
        dVarA.g = v;
        return v2;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V remove(Object obj) {
        d<K, V> dVarB = b(obj);
        if (dVarB != null) {
            return dVarB.g;
        }
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int size() {
        return this.f38612c;
    }

    public static final class d<K, V> implements Map.Entry<K, V> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        d<K, V> f38621a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        d<K, V> f38622b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        d<K, V> f38623c;
        d<K, V> d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        d<K, V> f38624e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final K f38625f;
        V g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        int f38626h;

        public d(d<K, V> dVar, K k2, d<K, V> dVar2, d<K, V> dVar3) {
            this.f38621a = dVar;
            this.f38625f = k2;
            this.f38626h = 1;
            this.d = dVar2;
            this.f38624e = dVar3;
            dVar3.d = this;
            dVar2.f38624e = this;
        }

        public d<K, V> a() {
            d<K, V> dVar = this.f38622b;
            while (true) {
                d<K, V> dVar2 = dVar;
                d<K, V> dVar3 = this;
                this = dVar2;
                if (this == null) {
                    return dVar3;
                }
                dVar = this.f38622b;
            }
        }

        public d<K, V> b() {
            d<K, V> dVar = this.f38623c;
            while (true) {
                d<K, V> dVar2 = dVar;
                d<K, V> dVar3 = this;
                this = dVar2;
                if (this == null) {
                    return dVar3;
                }
                dVar = this.f38623c;
            }
        }

        @Override // java.util.Map.Entry
        public boolean equals(Object obj) {
            if (obj instanceof Map.Entry) {
                Map.Entry entry = (Map.Entry) obj;
                K k2 = this.f38625f;
                if (k2 != null ? k2.equals(entry.getKey()) : entry.getKey() == null) {
                    V v = this.g;
                    if (v == null) {
                        if (entry.getValue() == null) {
                            return true;
                        }
                    } else if (v.equals(entry.getValue())) {
                        return true;
                    }
                }
            }
            return false;
        }

        @Override // java.util.Map.Entry
        public K getKey() {
            return this.f38625f;
        }

        @Override // java.util.Map.Entry
        public V getValue() {
            return this.g;
        }

        @Override // java.util.Map.Entry
        public int hashCode() {
            K k2 = this.f38625f;
            int iHashCode = k2 == null ? 0 : k2.hashCode();
            V v = this.g;
            return iHashCode ^ (v != null ? v.hashCode() : 0);
        }

        @Override // java.util.Map.Entry
        public V setValue(V v) {
            V v2 = this.g;
            this.g = v;
            return v2;
        }

        public String toString() {
            return this.f38625f + "=" + this.g;
        }

        public d() {
            this.f38625f = null;
            this.f38624e = this;
            this.d = this;
        }
    }

    public LinkedTreeMap() {
        this(NATURAL_ORDER);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public d<K, V> a(Object obj) {
        if (obj != 0) {
            try {
                return a(obj, false);
            } catch (ClassCastException unused) {
            }
        }
        return null;
    }

    public d<K, V> a(Map.Entry<?, ?> entry) {
        d<K, V> dVarA = a(entry.getKey());
        if (dVarA == null || !equal(dVarA.g, entry.getValue())) {
            return null;
        }
        return dVarA;
    }

    public void a(d<K, V> dVar, boolean z) {
        int i2;
        if (z) {
            d<K, V> dVar2 = dVar.f38624e;
            dVar2.d = dVar.d;
            dVar.d.f38624e = dVar2;
        }
        d<K, V> dVar3 = dVar.f38622b;
        d<K, V> dVar4 = dVar.f38623c;
        d<K, V> dVar5 = dVar.f38621a;
        int i3 = 0;
        if (dVar3 != null && dVar4 != null) {
            d<K, V> dVarB = dVar3.f38626h > dVar4.f38626h ? dVar3.b() : dVar4.a();
            a((d) dVarB, false);
            d<K, V> dVar6 = dVar.f38622b;
            if (dVar6 != null) {
                i2 = dVar6.f38626h;
                dVarB.f38622b = dVar6;
                dVar6.f38621a = dVarB;
                dVar.f38622b = null;
            } else {
                i2 = 0;
            }
            d<K, V> dVar7 = dVar.f38623c;
            if (dVar7 != null) {
                i3 = dVar7.f38626h;
                dVarB.f38623c = dVar7;
                dVar7.f38621a = dVarB;
                dVar.f38623c = null;
            }
            dVarB.f38626h = Math.max(i2, i3) + 1;
            replaceInParent(dVar, dVarB);
            return;
        }
        if (dVar3 != null) {
            replaceInParent(dVar, dVar3);
            dVar.f38622b = null;
        } else if (dVar4 != null) {
            replaceInParent(dVar, dVar4);
            dVar.f38623c = null;
        } else {
            replaceInParent(dVar, null);
        }
        rebalance(dVar5, false);
        this.f38612c--;
        this.d++;
    }
}
