package com.perfectcorp.thirdparty.com.google.gson.internal;

import defpackage.b21;
import defpackage.r81;
import defpackage.v7;
import java.io.Serializable;
import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes3.dex */
public final class t<K, V> extends AbstractMap<K, V> implements Serializable {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final Comparator f42537i = new u();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Comparator f42538b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public d f42539c;
    public int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f42540e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final d f42541f;
    public a g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public b f42542h;

    public class a extends AbstractSet<Map.Entry<K, V>> {
        public a() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final void clear() {
            t.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean contains(Object obj) {
            d dVarA;
            Object obj2;
            Object value;
            if (obj instanceof Map.Entry) {
                t tVar = t.this;
                Map.Entry entry = (Map.Entry) obj;
                Object key = entry.getKey();
                d dVar = null;
                if (key != null) {
                    try {
                        dVarA = tVar.a(key, false);
                    } catch (ClassCastException unused) {
                        dVarA = null;
                    }
                } else {
                    dVarA = null;
                }
                if (dVarA != null && ((obj2 = dVarA.f42552h) == (value = entry.getValue()) || (obj2 != null && obj2.equals(value)))) {
                    dVar = dVarA;
                }
                if (dVar != null) {
                    return true;
                }
            }
            return false;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public final Iterator iterator() {
            return new v();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean remove(Object obj) {
            d dVarA;
            Object obj2;
            Object value;
            if (obj instanceof Map.Entry) {
                Map.Entry entry = (Map.Entry) obj;
                Object key = entry.getKey();
                t tVar = t.this;
                d dVar = null;
                if (key != null) {
                    try {
                        dVarA = tVar.a(key, false);
                    } catch (ClassCastException unused) {
                        dVarA = null;
                    }
                } else {
                    dVarA = null;
                }
                if (dVarA != null && ((obj2 = dVarA.f42552h) == (value = entry.getValue()) || (obj2 != null && obj2.equals(value)))) {
                    dVar = dVarA;
                }
                if (dVar != null) {
                    tVar.e(dVar, true);
                    return true;
                }
            }
            return false;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final int size() {
            return t.this.d;
        }
    }

    public final class b extends AbstractSet<K> {
        public b() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final void clear() {
            t.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean contains(Object obj) {
            return t.this.containsKey(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public final Iterator iterator() {
            return new w();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean remove(Object obj) {
            t tVar = t.this;
            d dVarA = null;
            if (obj != null) {
                try {
                    dVarA = tVar.a(obj, false);
                } catch (ClassCastException unused) {
                }
            }
            if (dVarA != null) {
                tVar.e(dVarA, true);
            }
            return dVarA != null;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final int size() {
            return t.this.d;
        }
    }

    public abstract class c<T> implements Iterator<T> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public d f42545b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public d f42546c = null;
        public int d;

        public c() {
            this.f42545b = t.this.f42541f.f42550e;
            this.d = t.this.f42540e;
        }

        @Override // java.util.Iterator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final d next() {
            d dVar = this.f42545b;
            t tVar = t.this;
            if (dVar == tVar.f42541f) {
                b21.x();
                return null;
            }
            if (tVar.f42540e != this.d) {
                v7.c();
                return null;
            }
            this.f42545b = dVar.f42550e;
            this.f42546c = dVar;
            return dVar;
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            return this.f42545b != t.this.f42541f;
        }

        @Override // java.util.Iterator
        public final void remove() {
            d dVar = this.f42546c;
            if (dVar == null) {
                r81.b();
                return;
            }
            t tVar = t.this;
            tVar.e(dVar, true);
            this.f42546c = null;
            this.d = tVar.f42540e;
        }
    }

    public t(int i2) {
        this.d = 0;
        this.f42540e = 0;
        this.f42541f = new d();
        this.f42538b = f42537i;
    }

    public final d a(Object obj, boolean z) {
        int iCompareTo;
        d dVar;
        d dVar2 = this.f42539c;
        Comparator comparator = f42537i;
        Comparator comparator2 = this.f42538b;
        if (dVar2 != null) {
            Comparable comparable = comparator2 == comparator ? (Comparable) obj : null;
            while (true) {
                Object obj2 = dVar2.g;
                iCompareTo = comparable != null ? comparable.compareTo(obj2) : comparator2.compare(obj, obj2);
                if (iCompareTo != 0) {
                    d dVar3 = iCompareTo < 0 ? dVar2.f42549c : dVar2.d;
                    if (dVar3 == null) {
                        break;
                    }
                    dVar2 = dVar3;
                } else {
                    return dVar2;
                }
            }
        } else {
            iCompareTo = 0;
        }
        if (!z) {
            return null;
        }
        d dVar4 = this.f42541f;
        if (dVar2 != null) {
            dVar = new d(dVar2, obj, dVar4, dVar4.f42551f);
            if (iCompareTo < 0) {
                dVar2.f42549c = dVar;
            } else {
                dVar2.d = dVar;
            }
            g(dVar2, true);
        } else {
            if (comparator2 == comparator && !(obj instanceof Comparable)) {
                throw new ClassCastException(obj.getClass().getName().concat(" is not Comparable"));
            }
            dVar = new d(dVar2, obj, dVar4, dVar4.f42551f);
            this.f42539c = dVar;
        }
        this.d++;
        this.f42540e++;
        return dVar;
    }

    public final void c(d dVar) {
        d dVar2 = dVar.f42549c;
        d dVar3 = dVar.d;
        d dVar4 = dVar3.f42549c;
        d dVar5 = dVar3.d;
        dVar.d = dVar4;
        if (dVar4 != null) {
            dVar4.f42548b = dVar;
        }
        d(dVar, dVar3);
        dVar3.f42549c = dVar;
        dVar.f42548b = dVar3;
        int iMax = Math.max(dVar2 != null ? dVar2.f42553i : 0, dVar4 != null ? dVar4.f42553i : 0) + 1;
        dVar.f42553i = iMax;
        dVar3.f42553i = Math.max(iMax, dVar5 != null ? dVar5.f42553i : 0) + 1;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final void clear() {
        this.f42539c = null;
        this.d = 0;
        this.f42540e++;
        d dVar = this.f42541f;
        dVar.f42551f = dVar;
        dVar.f42550e = dVar;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean containsKey(Object obj) {
        d dVarA = null;
        if (obj != null) {
            try {
                dVarA = a(obj, false);
            } catch (ClassCastException unused) {
            }
        }
        return dVarA != null;
    }

    public final void d(d dVar, d dVar2) {
        d dVar3 = dVar.f42548b;
        dVar.f42548b = null;
        if (dVar2 != null) {
            dVar2.f42548b = dVar3;
        }
        if (dVar3 == null) {
            this.f42539c = dVar2;
        } else if (dVar3.f42549c == dVar) {
            dVar3.f42549c = dVar2;
        } else {
            dVar3.d = dVar2;
        }
    }

    public final void e(d dVar, boolean z) {
        d dVar2;
        d dVar3;
        int i2;
        if (z) {
            d dVar4 = dVar.f42551f;
            dVar4.f42550e = dVar.f42550e;
            dVar.f42550e.f42551f = dVar4;
        }
        d dVar5 = dVar.f42549c;
        d dVar6 = dVar.d;
        d dVar7 = dVar.f42548b;
        int i3 = 0;
        if (dVar5 == null || dVar6 == null) {
            if (dVar5 != null) {
                d(dVar, dVar5);
                dVar.f42549c = null;
            } else if (dVar6 != null) {
                d(dVar, dVar6);
                dVar.d = null;
            } else {
                d(dVar, null);
            }
            g(dVar7, false);
            this.d--;
            this.f42540e++;
            return;
        }
        if (dVar5.f42553i > dVar6.f42553i) {
            do {
                dVar3 = dVar5;
                dVar5 = dVar5.d;
            } while (dVar5 != null);
        } else {
            do {
                dVar2 = dVar6;
                dVar6 = dVar6.f42549c;
            } while (dVar6 != null);
            dVar3 = dVar2;
        }
        e(dVar3, false);
        d dVar8 = dVar.f42549c;
        if (dVar8 != null) {
            i2 = dVar8.f42553i;
            dVar3.f42549c = dVar8;
            dVar8.f42548b = dVar3;
            dVar.f42549c = null;
        } else {
            i2 = 0;
        }
        d dVar9 = dVar.d;
        if (dVar9 != null) {
            i3 = dVar9.f42553i;
            dVar3.d = dVar9;
            dVar9.f42548b = dVar3;
            dVar.d = null;
        }
        dVar3.f42553i = Math.max(i2, i3) + 1;
        d(dVar, dVar3);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set entrySet() {
        a aVar = this.g;
        if (aVar != null) {
            return aVar;
        }
        a aVar2 = new a();
        this.g = aVar2;
        return aVar2;
    }

    public final void f(d dVar) {
        d dVar2 = dVar.f42549c;
        d dVar3 = dVar.d;
        d dVar4 = dVar2.f42549c;
        d dVar5 = dVar2.d;
        dVar.f42549c = dVar5;
        if (dVar5 != null) {
            dVar5.f42548b = dVar;
        }
        d(dVar, dVar2);
        dVar2.d = dVar;
        dVar.f42548b = dVar2;
        int iMax = Math.max(dVar3 != null ? dVar3.f42553i : 0, dVar5 != null ? dVar5.f42553i : 0) + 1;
        dVar.f42553i = iMax;
        dVar2.f42553i = Math.max(iMax, dVar4 != null ? dVar4.f42553i : 0) + 1;
    }

    public final void g(d dVar, boolean z) {
        while (dVar != null) {
            d dVar2 = dVar.f42549c;
            d dVar3 = dVar.d;
            int i2 = dVar2 != null ? dVar2.f42553i : 0;
            int i3 = dVar3 != null ? dVar3.f42553i : 0;
            int i4 = i2 - i3;
            if (i4 == -2) {
                d dVar4 = dVar3.f42549c;
                d dVar5 = dVar3.d;
                int i5 = (dVar4 != null ? dVar4.f42553i : 0) - (dVar5 != null ? dVar5.f42553i : 0);
                if (i5 != -1 && (i5 != 0 || z)) {
                    f(dVar3);
                }
                c(dVar);
                if (z) {
                    return;
                }
            } else if (i4 == 2) {
                d dVar6 = dVar2.f42549c;
                d dVar7 = dVar2.d;
                int i6 = (dVar6 != null ? dVar6.f42553i : 0) - (dVar7 != null ? dVar7.f42553i : 0);
                if (i6 != 1 && (i6 != 0 || z)) {
                    c(dVar2);
                }
                f(dVar);
                if (z) {
                    return;
                }
            } else if (i4 == 0) {
                dVar.f42553i = i2 + 1;
                if (z) {
                    return;
                }
            } else {
                dVar.f42553i = Math.max(i2, i3) + 1;
                if (!z) {
                    return;
                }
            }
            dVar = dVar.f42548b;
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object get(Object obj) {
        d dVarA;
        if (obj != null) {
            try {
                dVarA = a(obj, false);
            } catch (ClassCastException unused) {
                dVarA = null;
            }
        } else {
            dVarA = null;
        }
        if (dVarA != null) {
            return dVarA.f42552h;
        }
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set keySet() {
        b bVar = this.f42542h;
        if (bVar != null) {
            return bVar;
        }
        b bVar2 = new b();
        this.f42542h = bVar2;
        return bVar2;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object put(Object obj, Object obj2) {
        if (obj == null) {
            r81.d("key == null");
            return null;
        }
        d dVarA = a(obj, true);
        Object obj3 = dVarA.f42552h;
        dVarA.f42552h = obj2;
        return obj3;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object remove(Object obj) {
        d dVarA;
        if (obj != null) {
            try {
                dVarA = a(obj, false);
            } catch (ClassCastException unused) {
                dVarA = null;
            }
        } else {
            dVarA = null;
        }
        if (dVarA != null) {
            e(dVarA, true);
        }
        if (dVarA != null) {
            return dVarA.f42552h;
        }
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int size() {
        return this.d;
    }

    public static final class d<K, V> implements Map.Entry<K, V> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public d f42548b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public d f42549c;
        public d d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public d f42550e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public d f42551f;
        public final Object g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public Object f42552h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public int f42553i;

        public d(d dVar, Object obj, d dVar2, d dVar3) {
            this.f42548b = dVar;
            this.g = obj;
            this.f42553i = 1;
            this.f42550e = dVar2;
            this.f42551f = dVar3;
            dVar3.f42550e = this;
            dVar2.f42551f = this;
        }

        @Override // java.util.Map.Entry
        public final boolean equals(Object obj) {
            if (obj instanceof Map.Entry) {
                Map.Entry entry = (Map.Entry) obj;
                Object obj2 = this.g;
                if (obj2 != null ? obj2.equals(entry.getKey()) : entry.getKey() == null) {
                    Object obj3 = this.f42552h;
                    if (obj3 == null) {
                        if (entry.getValue() == null) {
                            return true;
                        }
                    } else if (obj3.equals(entry.getValue())) {
                        return true;
                    }
                }
            }
            return false;
        }

        @Override // java.util.Map.Entry
        public final Object getKey() {
            return this.g;
        }

        @Override // java.util.Map.Entry
        public final Object getValue() {
            return this.f42552h;
        }

        @Override // java.util.Map.Entry
        public final int hashCode() {
            Object obj = this.g;
            int iHashCode = obj == null ? 0 : obj.hashCode();
            Object obj2 = this.f42552h;
            return iHashCode ^ (obj2 != null ? obj2.hashCode() : 0);
        }

        @Override // java.util.Map.Entry
        public final Object setValue(Object obj) {
            Object obj2 = this.f42552h;
            this.f42552h = obj;
            return obj2;
        }

        public final String toString() {
            return this.g + "=" + this.f42552h;
        }

        public d() {
            this.g = null;
            this.f42551f = this;
            this.f42550e = this;
        }
    }

    public t() {
        this(0);
    }
}
