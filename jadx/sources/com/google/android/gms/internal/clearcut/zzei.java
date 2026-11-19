package com.google.android.gms.internal.clearcut;

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

/* JADX INFO: loaded from: classes2.dex */
abstract class zzei<K extends Comparable<K>, V> extends AbstractMap<K, V> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final /* synthetic */ int f29724h = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f29725b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public List f29726c = Collections.EMPTY_LIST;
    public Map d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f29727e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public volatile zzer f29728f;
    public Map g;

    public zzei(int i2) {
        this.f29725b = i2;
        Map map = Collections.EMPTY_MAP;
        this.d = map;
        this.g = map;
    }

    /* JADX WARN: Code duplicated, block: B:13:0x0024  */
    /* JADX WARN: Code duplicated, block: B:17:0x003d  */
    /* JADX WARN: Code duplicated, block: B:21:0x003b A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:22:0x0040 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:23:0x0038 A[SYNTHETIC] */
    public final int a(Comparable comparable) {
        int i2;
        int i3;
        int i4;
        int iCompareTo;
        int size = this.f29726c.size();
        int i5 = size - 1;
        if (i5 < 0) {
            i2 = 0;
            while (i2 <= i5) {
                i4 = (i2 + i5) / 2;
                iCompareTo = comparable.compareTo(((zzep) this.f29726c.get(i4)).f29731b);
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
            int iCompareTo2 = comparable.compareTo(((zzep) this.f29726c.get(i5)).f29731b);
            if (iCompareTo2 > 0) {
                i3 = size + 1;
            } else {
                if (iCompareTo2 == 0) {
                    return i5;
                }
                i2 = 0;
                while (i2 <= i5) {
                    i4 = (i2 + i5) / 2;
                    iCompareTo = comparable.compareTo(((zzep) this.f29726c.get(i4)).f29731b);
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

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public final Object put(Comparable comparable, Object obj) {
        g();
        int iA = a(comparable);
        if (iA >= 0) {
            return ((zzep) this.f29726c.get(iA)).setValue(obj);
        }
        g();
        boolean zIsEmpty = this.f29726c.isEmpty();
        int i2 = this.f29725b;
        if (zIsEmpty && !(this.f29726c instanceof ArrayList)) {
            this.f29726c = new ArrayList(i2);
        }
        int i3 = -(iA + 1);
        if (i3 >= i2) {
            return h().put(comparable, obj);
        }
        if (this.f29726c.size() == i2) {
            zzep zzepVar = (zzep) this.f29726c.remove(i2 - 1);
            h().put(zzepVar.f29731b, zzepVar.f29732c);
        }
        this.f29726c.add(i3, new zzep(this, comparable, obj));
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final void clear() {
        g();
        if (!this.f29726c.isEmpty()) {
            this.f29726c.clear();
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
        return (Map.Entry) this.f29726c.get(i2);
    }

    public final Object e(int i2) {
        g();
        Object obj = ((zzep) this.f29726c.remove(i2)).f29732c;
        if (!this.d.isEmpty()) {
            Iterator it = h().entrySet().iterator();
            List list = this.f29726c;
            Map.Entry entry = (Map.Entry) it.next();
            list.add(new zzep(this, (Comparable) entry.getKey(), entry.getValue()));
            it.remove();
        }
        return obj;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set entrySet() {
        if (this.f29728f == null) {
            this.f29728f = new zzer(this);
        }
        return this.f29728f;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzei)) {
            return super.equals(obj);
        }
        zzei zzeiVar = (zzei) obj;
        int size = size();
        if (size == zzeiVar.size()) {
            int size2 = this.f29726c.size();
            if (size2 != zzeiVar.f29726c.size()) {
                return ((AbstractSet) entrySet()).equals(zzeiVar.entrySet());
            }
            for (int i2 = 0; i2 < size2; i2++) {
                if (d(i2).equals(zzeiVar.d(i2))) {
                }
            }
            if (size2 != size) {
                return this.d.equals(zzeiVar.d);
            }
            return true;
        }
        return false;
    }

    public final Iterable f() {
        return this.d.isEmpty() ? zzem.f29730b : this.d.entrySet();
    }

    public final void g() {
        if (this.f29727e) {
            x1.i();
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object get(Object obj) {
        Comparable comparable = (Comparable) obj;
        int iA = a(comparable);
        return iA >= 0 ? ((zzep) this.f29726c.get(iA)).f29732c : this.d.get(comparable);
    }

    public final SortedMap h() {
        g();
        if (this.d.isEmpty() && !(this.d instanceof TreeMap)) {
            TreeMap treeMap = new TreeMap();
            this.d = treeMap;
            this.g = treeMap.descendingMap();
        }
        return (SortedMap) this.d;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int hashCode() {
        int size = this.f29726c.size();
        int iHashCode = 0;
        for (int i2 = 0; i2 < size; i2++) {
            iHashCode += ((zzep) this.f29726c.get(i2)).hashCode();
        }
        return this.d.size() > 0 ? this.d.hashCode() + iHashCode : iHashCode;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object remove(Object obj) {
        g();
        Comparable comparable = (Comparable) obj;
        int iA = a(comparable);
        if (iA >= 0) {
            return e(iA);
        }
        if (this.d.isEmpty()) {
            return null;
        }
        return this.d.remove(comparable);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int size() {
        return this.d.size() + this.f29726c.size();
    }
}
