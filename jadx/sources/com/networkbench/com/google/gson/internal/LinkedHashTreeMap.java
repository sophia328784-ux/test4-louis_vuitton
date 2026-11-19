package com.networkbench.com.google.gson.internal;

import defpackage.a61;
import defpackage.b21;
import defpackage.r81;
import defpackage.v7;
import java.io.ObjectStreamException;
import java.io.Serializable;
import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.Arrays;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
public final class LinkedHashTreeMap<K, V> extends AbstractMap<K, V> implements Serializable {
    private static final Comparator<Comparable> NATURAL_ORDER = new Comparator<Comparable>() { // from class: com.networkbench.com.google.gson.internal.LinkedHashTreeMap.1
        @Override // java.util.Comparator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(Comparable comparable, Comparable comparable2) {
            return comparable.compareTo(comparable2);
        }
    };
    static final /* synthetic */ boolean g = true;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    Comparator<? super K> f38586a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    f<K, V>[] f38587b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final f<K, V> f38588c;
    int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    int f38589e;
    private LinkedHashTreeMap<K, V>.c entrySet;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    int f38590f;
    private LinkedHashTreeMap<K, V>.d keySet;

    public class c extends AbstractSet<Map.Entry<K, V>> {
        public c() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            LinkedHashTreeMap.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            return (obj instanceof Map.Entry) && LinkedHashTreeMap.this.a((Map.Entry<?, ?>) obj) != null;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<Map.Entry<K, V>> iterator() {
            return new e() { // from class: com.networkbench.com.google.gson.internal.LinkedHashTreeMap.c.1
                {
                    LinkedHashTreeMap linkedHashTreeMap = LinkedHashTreeMap.this;
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
            f<K, V> fVarA;
            if (!(obj instanceof Map.Entry) || (fVarA = LinkedHashTreeMap.this.a((Map.Entry<?, ?>) obj)) == null) {
                return false;
            }
            LinkedHashTreeMap.this.a((f) fVarA, true);
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return LinkedHashTreeMap.this.d;
        }
    }

    public class d extends AbstractSet<K> {
        public d() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            LinkedHashTreeMap.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            return LinkedHashTreeMap.this.containsKey(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<K> iterator() {
            return new e() { // from class: com.networkbench.com.google.gson.internal.LinkedHashTreeMap.d.1
                {
                    LinkedHashTreeMap linkedHashTreeMap = LinkedHashTreeMap.this;
                }

                @Override // java.util.Iterator
                public K next() {
                    return b().f38606f;
                }
            };
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            return LinkedHashTreeMap.this.b(obj) != null;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return LinkedHashTreeMap.this.d;
        }
    }

    public abstract class e<T> implements Iterator<T> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        f<K, V> f38599b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        f<K, V> f38600c;
        int d;

        private e() {
            this.f38599b = LinkedHashTreeMap.this.f38588c.d;
            this.f38600c = null;
            this.d = LinkedHashTreeMap.this.f38589e;
        }

        public final f<K, V> b() {
            f<K, V> fVar = this.f38599b;
            LinkedHashTreeMap linkedHashTreeMap = LinkedHashTreeMap.this;
            if (fVar == linkedHashTreeMap.f38588c) {
                b21.x();
                return null;
            }
            if (linkedHashTreeMap.f38589e != this.d) {
                v7.c();
                return null;
            }
            this.f38599b = fVar.d;
            this.f38600c = fVar;
            return fVar;
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            return this.f38599b != LinkedHashTreeMap.this.f38588c;
        }

        @Override // java.util.Iterator
        public final void remove() {
            f<K, V> fVar = this.f38600c;
            if (fVar == null) {
                r81.b();
                return;
            }
            LinkedHashTreeMap.this.a((f) fVar, true);
            this.f38600c = null;
            this.d = LinkedHashTreeMap.this.f38589e;
        }
    }

    public LinkedHashTreeMap(Comparator<? super K> comparator) {
        this.d = 0;
        this.f38589e = 0;
        this.f38586a = comparator == null ? NATURAL_ORDER : comparator;
        this.f38588c = new f<>();
        f<K, V>[] fVarArr = new f[16];
        this.f38587b = fVarArr;
        this.f38590f = (fVarArr.length / 4) + (fVarArr.length / 2);
    }

    private void doubleCapacity() {
        f<K, V>[] fVarArrA = a((f[]) this.f38587b);
        this.f38587b = fVarArrA;
        this.f38590f = (fVarArrA.length / 4) + (fVarArrA.length / 2);
    }

    private boolean equal(Object obj, Object obj2) {
        if (obj != obj2) {
            return obj != null && obj.equals(obj2);
        }
        return true;
    }

    private void rebalance(f<K, V> fVar, boolean z) {
        while (fVar != null) {
            f<K, V> fVar2 = fVar.f38603b;
            f<K, V> fVar3 = fVar.f38604c;
            int i2 = fVar2 != null ? fVar2.f38608i : 0;
            int i3 = fVar3 != null ? fVar3.f38608i : 0;
            int i4 = i2 - i3;
            if (i4 == -2) {
                f<K, V> fVar4 = fVar3.f38603b;
                f<K, V> fVar5 = fVar3.f38604c;
                int i5 = (fVar4 != null ? fVar4.f38608i : 0) - (fVar5 != null ? fVar5.f38608i : 0);
                if (i5 == -1 || (i5 == 0 && !z)) {
                    rotateLeft(fVar);
                } else if (!g && i5 != 1) {
                    a61.h();
                    return;
                } else {
                    rotateRight(fVar3);
                    rotateLeft(fVar);
                }
                if (z) {
                    return;
                }
            } else if (i4 == 2) {
                f<K, V> fVar6 = fVar2.f38603b;
                f<K, V> fVar7 = fVar2.f38604c;
                int i6 = (fVar6 != null ? fVar6.f38608i : 0) - (fVar7 != null ? fVar7.f38608i : 0);
                if (i6 == 1 || (i6 == 0 && !z)) {
                    rotateRight(fVar);
                } else if (!g && i6 != -1) {
                    a61.h();
                    return;
                } else {
                    rotateLeft(fVar2);
                    rotateRight(fVar);
                }
                if (z) {
                    return;
                }
            } else if (i4 == 0) {
                fVar.f38608i = i2 + 1;
                if (z) {
                    return;
                }
            } else if (!g && i4 != -1 && i4 != 1) {
                a61.h();
                return;
            } else {
                fVar.f38608i = Math.max(i2, i3) + 1;
                if (!z) {
                    return;
                }
            }
            fVar = fVar.f38602a;
        }
    }

    private void replaceInParent(f<K, V> fVar, f<K, V> fVar2) {
        f<K, V> fVar3 = fVar.f38602a;
        fVar.f38602a = null;
        if (fVar2 != null) {
            fVar2.f38602a = fVar3;
        }
        if (fVar3 == null) {
            int i2 = fVar.g;
            f<K, V>[] fVarArr = this.f38587b;
            fVarArr[i2 & (fVarArr.length - 1)] = fVar2;
        } else if (fVar3.f38603b == fVar) {
            fVar3.f38603b = fVar2;
        } else if (g || fVar3.f38604c == fVar) {
            fVar3.f38604c = fVar2;
        } else {
            a61.h();
        }
    }

    private void rotateLeft(f<K, V> fVar) {
        f<K, V> fVar2 = fVar.f38603b;
        f<K, V> fVar3 = fVar.f38604c;
        f<K, V> fVar4 = fVar3.f38603b;
        f<K, V> fVar5 = fVar3.f38604c;
        fVar.f38604c = fVar4;
        if (fVar4 != null) {
            fVar4.f38602a = fVar;
        }
        replaceInParent(fVar, fVar3);
        fVar3.f38603b = fVar;
        fVar.f38602a = fVar3;
        int iMax = Math.max(fVar2 != null ? fVar2.f38608i : 0, fVar4 != null ? fVar4.f38608i : 0) + 1;
        fVar.f38608i = iMax;
        fVar3.f38608i = Math.max(iMax, fVar5 != null ? fVar5.f38608i : 0) + 1;
    }

    private void rotateRight(f<K, V> fVar) {
        f<K, V> fVar2 = fVar.f38603b;
        f<K, V> fVar3 = fVar.f38604c;
        f<K, V> fVar4 = fVar2.f38603b;
        f<K, V> fVar5 = fVar2.f38604c;
        fVar.f38603b = fVar5;
        if (fVar5 != null) {
            fVar5.f38602a = fVar;
        }
        replaceInParent(fVar, fVar2);
        fVar2.f38604c = fVar;
        fVar.f38602a = fVar2;
        int iMax = Math.max(fVar3 != null ? fVar3.f38608i : 0, fVar5 != null ? fVar5.f38608i : 0) + 1;
        fVar.f38608i = iMax;
        fVar2.f38608i = Math.max(iMax, fVar4 != null ? fVar4.f38608i : 0) + 1;
    }

    private static int secondaryHash(int i2) {
        int i3 = i2 ^ ((i2 >>> 20) ^ (i2 >>> 12));
        return (i3 >>> 4) ^ ((i3 >>> 7) ^ i3);
    }

    private Object writeReplace() throws ObjectStreamException {
        return new LinkedHashMap(this);
    }

    public f<K, V> a(K k2, boolean z) {
        int iCompareTo;
        f<K, V> fVar;
        Comparator<? super K> comparator = this.f38586a;
        f<K, V>[] fVarArr = this.f38587b;
        int iSecondaryHash = secondaryHash(k2.hashCode());
        int length = (fVarArr.length - 1) & iSecondaryHash;
        f<K, V> fVar2 = fVarArr[length];
        if (fVar2 != null) {
            Comparable comparable = comparator == NATURAL_ORDER ? (Comparable) k2 : null;
            while (true) {
                K k3 = fVar2.f38606f;
                iCompareTo = comparable != null ? comparable.compareTo(k3) : comparator.compare(k2, k3);
                if (iCompareTo == 0) {
                    return fVar2;
                }
                f<K, V> fVar3 = iCompareTo < 0 ? fVar2.f38603b : fVar2.f38604c;
                if (fVar3 == null) {
                    break;
                }
                fVar2 = fVar3;
            }
        } else {
            iCompareTo = 0;
        }
        int i2 = iCompareTo;
        if (!z) {
            return null;
        }
        f<K, V> fVar4 = this.f38588c;
        if (fVar2 != null) {
            f<K, V> fVar5 = fVar2;
            fVar = new f<>(fVar5, k2, iSecondaryHash, fVar4, fVar4.f38605e);
            if (i2 < 0) {
                fVar5.f38603b = fVar;
            } else {
                fVar5.f38604c = fVar;
            }
            rebalance(fVar5, true);
        } else {
            if (comparator == NATURAL_ORDER && !(k2 instanceof Comparable)) {
                throw new ClassCastException(k2.getClass().getName().concat(" is not Comparable"));
            }
            fVar = new f<>(fVar2, k2, iSecondaryHash, fVar4, fVar4.f38605e);
            fVarArr[length] = fVar;
        }
        int i3 = this.d;
        this.d = i3 + 1;
        if (i3 > this.f38590f) {
            doubleCapacity();
        }
        this.f38589e++;
        return fVar;
    }

    public f<K, V> b(Object obj) {
        f<K, V> fVarA = a(obj);
        if (fVarA != null) {
            a((f) fVarA, true);
        }
        return fVarA;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public void clear() {
        Arrays.fill(this.f38587b, (Object) null);
        this.d = 0;
        this.f38589e++;
        f<K, V> fVar = this.f38588c;
        f<K, V> fVar2 = fVar.d;
        while (fVar2 != fVar) {
            f<K, V> fVar3 = fVar2.d;
            fVar2.f38605e = null;
            fVar2.d = null;
            fVar2 = fVar3;
        }
        fVar.f38605e = fVar;
        fVar.d = fVar;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsKey(Object obj) {
        return a(obj) != null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<Map.Entry<K, V>> entrySet() {
        LinkedHashTreeMap<K, V>.c cVar = this.entrySet;
        if (cVar != null) {
            return cVar;
        }
        LinkedHashTreeMap<K, V>.c cVar2 = new c();
        this.entrySet = cVar2;
        return cVar2;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V get(Object obj) {
        f<K, V> fVarA = a(obj);
        if (fVarA != null) {
            return fVarA.f38607h;
        }
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<K> keySet() {
        LinkedHashTreeMap<K, V>.d dVar = this.keySet;
        if (dVar != null) {
            return dVar;
        }
        LinkedHashTreeMap<K, V>.d dVar2 = new d();
        this.keySet = dVar2;
        return dVar2;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V put(K k2, V v) {
        if (k2 == null) {
            r81.d("key == null");
            return null;
        }
        f<K, V> fVarA = a((Object) k2, true);
        V v2 = fVarA.f38607h;
        fVarA.f38607h = v;
        return v2;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V remove(Object obj) {
        f<K, V> fVarB = b(obj);
        if (fVarB != null) {
            return fVarB.f38607h;
        }
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int size() {
        return this.d;
    }

    public static final class f<K, V> implements Map.Entry<K, V> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        f<K, V> f38602a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        f<K, V> f38603b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        f<K, V> f38604c;
        f<K, V> d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        f<K, V> f38605e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final K f38606f;
        final int g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        V f38607h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        int f38608i;

        public f(f<K, V> fVar, K k2, int i2, f<K, V> fVar2, f<K, V> fVar3) {
            this.f38602a = fVar;
            this.f38606f = k2;
            this.g = i2;
            this.f38608i = 1;
            this.d = fVar2;
            this.f38605e = fVar3;
            fVar3.d = this;
            fVar2.f38605e = this;
        }

        public f<K, V> a() {
            f<K, V> fVar = this.f38603b;
            while (true) {
                f<K, V> fVar2 = fVar;
                f<K, V> fVar3 = this;
                this = fVar2;
                if (this == null) {
                    return fVar3;
                }
                fVar = this.f38603b;
            }
        }

        public f<K, V> b() {
            f<K, V> fVar = this.f38604c;
            while (true) {
                f<K, V> fVar2 = fVar;
                f<K, V> fVar3 = this;
                this = fVar2;
                if (this == null) {
                    return fVar3;
                }
                fVar = this.f38604c;
            }
        }

        @Override // java.util.Map.Entry
        public boolean equals(Object obj) {
            if (obj instanceof Map.Entry) {
                Map.Entry entry = (Map.Entry) obj;
                K k2 = this.f38606f;
                if (k2 != null ? k2.equals(entry.getKey()) : entry.getKey() == null) {
                    V v = this.f38607h;
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
            return this.f38606f;
        }

        @Override // java.util.Map.Entry
        public V getValue() {
            return this.f38607h;
        }

        @Override // java.util.Map.Entry
        public int hashCode() {
            K k2 = this.f38606f;
            int iHashCode = k2 == null ? 0 : k2.hashCode();
            V v = this.f38607h;
            return iHashCode ^ (v != null ? v.hashCode() : 0);
        }

        @Override // java.util.Map.Entry
        public V setValue(V v) {
            V v2 = this.f38607h;
            this.f38607h = v;
            return v2;
        }

        public String toString() {
            return this.f38606f + "=" + this.f38607h;
        }

        public f() {
            this.f38606f = null;
            this.g = -1;
            this.f38605e = this;
            this.d = this;
        }
    }

    public static class b<K, V> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private f<K, V> f38594a;

        public f<K, V> a() {
            f<K, V> fVar = this.f38594a;
            if (fVar == null) {
                return null;
            }
            f<K, V> fVar2 = fVar.f38602a;
            fVar.f38602a = null;
            f<K, V> fVar3 = fVar.f38604c;
            while (true) {
                f<K, V> fVar4 = fVar2;
                fVar2 = fVar3;
                if (fVar2 == null) {
                    this.f38594a = fVar4;
                    return fVar;
                }
                fVar2.f38602a = fVar4;
                fVar3 = fVar2.f38603b;
            }
        }

        public void a(f<K, V> fVar) {
            f<K, V> fVar2 = null;
            while (fVar != null) {
                fVar.f38602a = fVar2;
                fVar2 = fVar;
                fVar = fVar.f38603b;
            }
            this.f38594a = fVar2;
        }
    }

    public LinkedHashTreeMap() {
        this(NATURAL_ORDER);
    }

    public static final class a<K, V> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private f<K, V> f38591a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f38592b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private int f38593c;
        private int d;

        public void a(f<K, V> fVar) {
            fVar.f38604c = null;
            fVar.f38602a = null;
            fVar.f38603b = null;
            fVar.f38608i = 1;
            int i2 = this.f38592b;
            if (i2 > 0) {
                int i3 = this.d;
                if ((i3 & 1) == 0) {
                    this.d = i3 + 1;
                    this.f38592b = i2 - 1;
                    this.f38593c++;
                }
            }
            fVar.f38602a = this.f38591a;
            this.f38591a = fVar;
            int i4 = this.d;
            int i5 = i4 + 1;
            this.d = i5;
            int i6 = this.f38592b;
            if (i6 > 0 && (i5 & 1) == 0) {
                this.d = i4 + 2;
                this.f38592b = i6 - 1;
                this.f38593c++;
            }
            int i7 = 4;
            while (true) {
                int i8 = i7 - 1;
                if ((this.d & i8) != i8) {
                    return;
                }
                int i9 = this.f38593c;
                if (i9 == 0) {
                    f<K, V> fVar2 = this.f38591a;
                    f<K, V> fVar3 = fVar2.f38602a;
                    f<K, V> fVar4 = fVar3.f38602a;
                    fVar3.f38602a = fVar4.f38602a;
                    this.f38591a = fVar3;
                    fVar3.f38603b = fVar4;
                    fVar3.f38604c = fVar2;
                    fVar3.f38608i = fVar2.f38608i + 1;
                    fVar4.f38602a = fVar3;
                    fVar2.f38602a = fVar3;
                } else if (i9 == 1) {
                    f<K, V> fVar5 = this.f38591a;
                    f<K, V> fVar6 = fVar5.f38602a;
                    this.f38591a = fVar6;
                    fVar6.f38604c = fVar5;
                    fVar6.f38608i = fVar5.f38608i + 1;
                    fVar5.f38602a = fVar6;
                    this.f38593c = 0;
                } else if (i9 == 2) {
                    this.f38593c = 0;
                }
                i7 *= 2;
            }
        }

        public void a(int i2) {
            this.f38592b = ((Integer.highestOneBit(i2) * 2) - 1) - i2;
            this.d = 0;
            this.f38593c = 0;
            this.f38591a = null;
        }

        public f<K, V> a() {
            f<K, V> fVar = this.f38591a;
            if (fVar.f38602a == null) {
                return fVar;
            }
            r81.b();
            return null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public f<K, V> a(Object obj) {
        if (obj != 0) {
            try {
                return a(obj, false);
            } catch (ClassCastException unused) {
            }
        }
        return null;
    }

    public f<K, V> a(Map.Entry<?, ?> entry) {
        f<K, V> fVarA = a(entry.getKey());
        if (fVarA == null || !equal(fVarA.f38607h, entry.getValue())) {
            return null;
        }
        return fVarA;
    }

    public void a(f<K, V> fVar, boolean z) {
        int i2;
        if (z) {
            f<K, V> fVar2 = fVar.f38605e;
            fVar2.d = fVar.d;
            fVar.d.f38605e = fVar2;
            fVar.f38605e = null;
            fVar.d = null;
        }
        f<K, V> fVar3 = fVar.f38603b;
        f<K, V> fVar4 = fVar.f38604c;
        f<K, V> fVar5 = fVar.f38602a;
        int i3 = 0;
        if (fVar3 != null && fVar4 != null) {
            f<K, V> fVarB = fVar3.f38608i > fVar4.f38608i ? fVar3.b() : fVar4.a();
            a((f) fVarB, false);
            f<K, V> fVar6 = fVar.f38603b;
            if (fVar6 != null) {
                i2 = fVar6.f38608i;
                fVarB.f38603b = fVar6;
                fVar6.f38602a = fVarB;
                fVar.f38603b = null;
            } else {
                i2 = 0;
            }
            f<K, V> fVar7 = fVar.f38604c;
            if (fVar7 != null) {
                i3 = fVar7.f38608i;
                fVarB.f38604c = fVar7;
                fVar7.f38602a = fVarB;
                fVar.f38604c = null;
            }
            fVarB.f38608i = Math.max(i2, i3) + 1;
            replaceInParent(fVar, fVarB);
            return;
        }
        if (fVar3 != null) {
            replaceInParent(fVar, fVar3);
            fVar.f38603b = null;
        } else if (fVar4 != null) {
            replaceInParent(fVar, fVar4);
            fVar.f38604c = null;
        } else {
            replaceInParent(fVar, null);
        }
        rebalance(fVar5, false);
        this.d--;
        this.f38589e++;
    }

    public static <K, V> f<K, V>[] a(f<K, V>[] fVarArr) {
        int length = fVarArr.length;
        f<K, V>[] fVarArr2 = new f[length * 2];
        b bVar = new b();
        a aVar = new a();
        a aVar2 = new a();
        for (int i2 = 0; i2 < length; i2++) {
            f<K, V> fVar = fVarArr[i2];
            if (fVar != null) {
                bVar.a(fVar);
                int i3 = 0;
                int i4 = 0;
                while (true) {
                    f<K, V> fVarA = bVar.a();
                    if (fVarA == null) {
                        break;
                    }
                    if ((fVarA.g & length) == 0) {
                        i3++;
                    } else {
                        i4++;
                    }
                }
                aVar.a(i3);
                aVar2.a(i4);
                bVar.a(fVar);
                while (true) {
                    f<K, V> fVarA2 = bVar.a();
                    if (fVarA2 == null) {
                        break;
                    }
                    if ((fVarA2.g & length) == 0) {
                        aVar.a(fVarA2);
                    } else {
                        aVar2.a(fVarA2);
                    }
                }
                fVarArr2[i2] = i3 > 0 ? aVar.a() : null;
                fVarArr2[i2 + length] = i4 > 0 ? aVar2.a() : null;
            }
        }
        return fVarArr2;
    }
}
